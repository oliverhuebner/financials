# Production Readiness Plan — Project Nova / financials

This plan turns the current Flutter prototype into a production-grade advanced financial literacy app focused on topics such as **advanced options**, **wash sales**, and **tax-loss harvesting**.

## Current state (baseline)

| Area | Today |
|------|--------|
| Stack | Flutter (Cupertino), `go_router`, Freezed models, Firebase Auth config present |
| Content | 6 beginner lessons in `assets/levels.json` (investing → stocks → inflation → index funds) |
| Auth | `firebase_auth` + `firebase_options.dart` exist; `AuthService` / `AuthRepository` empty; Firebase not initialized in `main.dart` |
| Learning loop | Level list → level intro → lesson pages → questions (partial) |
| Persistence | None (no progress, answers, or user profile) |
| Tests / CI | None |
| App identity | `com.example.financials`, README stub, version `0.1.0+1` |
| Compliance | No educational disclaimers, privacy policy, or terms |

**Implication:** the product vision (advanced tax/options literacy) is ahead of both content and platform maturity. Production work must advance **curriculum**, **product architecture**, and **compliance** in parallel—not only polish the existing beginner JSON lessons.

---

## Product definition (lock before build)

1. **Positioning:** Educational app that teaches advanced US retail investor concepts through structured modules, scenarios, and assessments—not a brokerage, tax filer, or personalized advice engine.
2. **Primary audience:** Intermediate investors who already understand stocks/ETFs and want depth on options mechanics, IRS wash-sale rules, and tax-loss harvesting strategy.
3. **Non-goals (v1):** Live trade execution, connecting brokerage accounts for tax lots, automated harvesting recommendations, CPA/legal advice.
4. **Success metrics:** Module completion rate, quiz accuracy improvement, time-to-complete core tracks, retention D7/D30, crash-free sessions ≥ 99.5%, App Store / Play review ≥ 4.5.

---

## Phase 0 — Stabilize the prototype foundation

Fix structural debt so later features do not build on sand.

### Architecture & DI
- Initialize Firebase in `main.dart` (`Firebase.initializeApp` + `DefaultFirebaseOptions`).
- Replace per-route `DataService()` / `DataRepository()` construction in `lib/routing/router.dart` with a single app-scoped dependency graph (e.g. `provider`, `riverpod`, or manual `AppScope`).
- Complete `AuthService` / `AuthRepository`; wire email/password + Google sign-in already declared in `firebase.json`.
- Add auth gate: unauthenticated → onboarding/sign-up; authenticated → home. Align naming (`StartViewModel` vs `SignUpViewModel`).
- Cache `levels.json` parsing (today every call reloads the asset and re-decodes JSON).

### Core learning loop bugs
- Levels without `questions` still navigate to the question route after the last page → crash / empty UI. Add explicit flow: pages → optional quiz → completion.
- Drive radio options from `QuestionModel.options` (hardcoded Yes/No in `question_radio.dart` today).
- Model correct answers (`correct_option_id` / explanation), score submission, and feedback screens.
- Persist in-progress page/question index so back/forward and process death do not reset state.
- Remove debug `print`s; use a structured logger with levels.

### App identity
- Rename package/bundle IDs off `com.example.*`.
- Real app name, icons, splash, store listing copy.
- Expand README with vision, architecture, run instructions, and content authoring guide.

**Exit criteria:** App launches with Firebase, auth works, beginner path completes without crashes, progress survives restart.

---

## Phase 1 — Curriculum & content system (advanced topics)

Content is the product. Treat it as a versioned, reviewable system—not a single static JSON dump.

### Content architecture
- Move curriculum out of a monolithic `assets/levels.json` into a structured CMS-like schema, e.g.:
  - **Tracks** (Options, Tax Rules, Portfolio Strategy)
  - **Modules** (ordered lessons)
  - **Lessons** (pages + media + glossary terms)
  - **Assessments** (MCQ, scenario, numeric estimate, ordering)
  - **Simulators** (interactive wash-sale / harvesting / options P&amp;L sandboxes)
- Support remote delivery (Firestore / Cloud Storage / custom CMS) with local cache + content versioning so lessons can update without a full app release when safe.
- Add content metadata: difficulty, estimated minutes, prerequisites, last-reviewed date, IRS/publication citations, jurisdiction (`US`).

### Recommended track map (v1 curriculum)

**Track A — Tax-loss harvesting**
1. Realized vs unrealized gains; short-term vs long-term holding periods  
2. Harvesting mechanics and portfolio drift risk  
3. Replacement securities and correlation risk  
4. Year-end timing, wash-sale interaction, and “harvest then repurchase” pitfalls  
5. Scenario lab: multi-lot loss with partial repurchase  

**Track B — Wash sales (IRC §1091 concepts, educational framing)**
1. What triggers a wash sale (substantially identical securities, 30-day window)  
2. Options, preferred stock, and “substantially identical” edge cases (conceptual)  
3. Disallowed loss → basis adjustment; deferred recognition  
4. Multiple accounts / spouses / IRAs (common failure modes)  
5. Scenario lab: timeline scrubber showing buy/sell dates and whether a wash sale applies  

**Track C — Advanced options literacy**
1. Calls/puts, long/short, payoff diagrams  
2. Greeks at an intuition level (delta/theta/IV) without pretending to be a trading terminal  
3. Covered calls, protective puts, spreads  
4. Assignment, exercise, early exercise risk  
5. Tax-aware options topics: holding period effects, wash-sale interactions with options, LEAPS conceptual notes  
6. Scenario lab: payoff builder + “what happens at expiration” quiz  

**Track D — Capstone**
- Multi-concept case studies combining harvesting + wash sale + options overlay decisions, with scored explanations.

### Content quality bar (non-negotiable for production)
- Expert review by a licensed tax professional / CFA or equivalent SME for Tracks A–C before public launch.
- Every tax/options claim cites primary or reputable secondary sources (IRS pubs, FINRA, OCC options disclosures, peer-reviewed or standard textbooks)—shown in an in-app “Sources” sheet.
- Editorial style guide: plain language, no brokerage promotion disguised as education, consistent terminology.
- Fact-check checklist + changelog for each content version.
- **Mandatory disclaimer** on first launch, settings, and sensitive modules: educational only; not tax, legal, or investment advice; laws change; consult a qualified professional.

**Exit criteria:** At least Tracks A–C have reviewed modules, quizzes with explanations, and one interactive scenario each.

---

## Phase 2 — Learning product features

### Progress & mastery
- Per-user progress in Firestore (or equivalent): module status, quiz scores, streak, last activity.
- Spaced repetition / weak-topic review for missed wash-sale and options items.
- Certificates or “mastery badges” only if scoring thresholds are clear and not misleading as credentials.

### Pedagogy UX
- Lesson reader with progress bar, glossary tooltips, diagram support (payoff charts, 61-day wash-sale window visuals).
- Quiz modes: check-as-you-go vs end-of-module exam.
- Mistake explanations that re-teach the rule, not only “incorrect.”
- Offline-first reading for downloaded tracks.

### Interactive simulators (differentiate from generic courses)
- **Wash-sale timeline:** drag trades on a calendar; app explains trigger / basis adjustment in educational terms.
- **Harvest sandbox:** choose lots to sell; show illustrative tax impact with clearly labeled *hypothetical* assumptions.
- **Options payoff lab:** build simple structures; show max gain/loss/breakeven; never suggest live trades.

### Onboarding
- Skill self-assessment → recommended starting track.
- Risk/education acknowledgment acceptance (timestamped).
- Optional goals: “understand wash sales,” “options basics,” “year-end tax prep literacy.”

**Exit criteria:** Signed-in users see personalized progress; simulators cover the three flagship topics; onboarding routes users by skill.

---

## Phase 3 — Platform, security, and compliance

### Security & privacy
- Privacy policy + Terms of Use + educational disclaimer (hosted + in-app).
- Firebase Auth security rules; Firestore rules: users can only read/write their own progress.
- Minimize PII; no SSN, tax IDs, or brokerage credentials in v1.
- If analytics is added: consent where required (ATT on iOS, GDPR/CCPA flows).
- Secrets: no API keys in git; use `--dart-define` / CI secrets; rotate any keys that were committed in example configs.
- Certificate pinning / App Check for Firebase if APIs become sensitive.

### Regulatory / trust posture
- Clear “not a registered investment adviser / not a tax preparer” language.
- Avoid personalized “you should sell X” outputs; keep simulators hypothetical and user-driven.
- Age gate if required by store policies / content.
- Accessibility: Dynamic Type / text scaling, VoiceOver/TalkBack labels, sufficient contrast (Cupertino defaults alone are not enough).
- Support contact + content-correction reporting (“Report an error in this lesson”).

### Reliability & observability
- Crashlytics + Performance Monitoring.
- Analytics events: lesson_start, lesson_complete, quiz_submit, simulator_use, auth_funnel.
- Remote Config for kill switches (disable a contested tax module pending review).
- Error boundaries / user-friendly empty and offline states.

**Exit criteria:** Legal docs live; rules tested; crash/analytics pipelines verified in staging; App Check enabled for production Firebase project.

---

## Phase 4 — Engineering quality bar

### Testing
- Unit tests: JSON parsing, progress reducers, wash-sale timeline logic, quiz scoring.
- Widget tests: level list, page navigation, quiz selection, auth gate.
- Golden tests for payoff diagrams / critical educational visuals.
- Integration tests (Patrol / integration_test) for happy-path module completion.
- Content schema validation in CI (every lesson has pages, valid IDs, cited sources, at least one assessment where required).

### CI/CD
- GitHub Actions: `flutter analyze`, `flutter test`, format check, build iOS/Android artifacts.
- Codemagic, Fastlane, or GitHub + store APIs for TestFlight / Play internal tracks.
- Environment flavors: `dev` / `staging` / `prod` with separate Firebase projects.
- Semantic versioning + changelog; block release if SME “content approved” flag missing for changed tax modules.

### Code health
- Move `build_runner` / codegen deps to `dev_dependencies` where appropriate.
- Enforce lint rules beyond default `flutter_lints` (prefer `very_good_analysis` or custom).
- Feature modules: `auth`, `catalog`, `lesson`, `assessment`, `simulators`, `profile`.
- Design system: typography, spacing, color tokens—replace ad-hoc grey buttons.

**Exit criteria:** CI green on main; ≥ critical-path test coverage for scoring/simulators; reproducible staging builds.

---

## Phase 5 — Launch & operations

### Soft launch
1. Internal dogfood on staging with full Tracks A–C.
2. Closed beta (TestFlight + Play internal) with intermediate investors + 1–2 SMEs.
3. Measure completion/quiz difficulty; revise weak lessons.
4. Public launch of education-only v1; marketing that matches disclaimers.

### Store readiness
- Screenshots showing advanced topics without implying brokerage returns.
- Privacy nutrition labels / Data safety forms accurate to actual SDK usage.
- Account deletion flow (App Store requirement) wired to Firebase user + progress wipe.

### Post-launch
- Content ops calendar (tax-law change review at least annually and after major IRS updates).
- Support SLA for content error reports.
- Roadmap candidates: community challenges, partner CPE-style partnerships (careful with credential claims), brokerage deep-links as *informational* only.

---

## Suggested implementation order (technical dependency)

```
Phase 0 foundation
    → Phase 1 content schema + Track A/B draft
        → Phase 2 progress + quiz engine
            → Phase 1 simulators + Track C
                → Phase 3 compliance/security in parallel with Phase 2 polish
                    → Phase 4 tests/CI continuously from Phase 0 onward
                        → Phase 5 beta → launch
```

CI, analytics stubs, and disclaimer copy should start in Phase 0—not after UI polish.

---

## Concrete repo backlog (near-term tickets)

1. Initialize Firebase; implement auth repository; protect routes.  
2. Fix question flow for levels with zero questions; add completion screen.  
3. Extend `QuestionModel` with `correctOptionId` + `explanation`; score and persist.  
4. Introduce `UserProgress` model + local + cloud sync.  
5. Replace monolithic JSON with versioned track/module schema; author Tracks A–B outlines.  
6. Add global educational disclaimer + links to Privacy/Terms placeholders.  
7. Add `test/` for data parsing and quiz scoring; wire GitHub Actions.  
8. Wash-sale timeline MVP simulator (pure Dart domain logic + simple Cupertino UI).  
9. Remote Config + Crashlytics.  
10. Flavors, bundle ID rename, store assets.

---

## Risk register

| Risk | Why it matters | Mitigation |
|------|----------------|------------|
| Inaccurate tax/options content | Legal and trust failure | SME review, citations, Remote Config kill switch |
| Product feels like advice | Regulatory exposure | Hypothetical framing; no personalized recommendations |
| Scope creep into brokerage features | Delays education core | Explicit non-goals for v1 |
| Content stuck in beginner JSON | Misses stated advanced positioning | Parallel curriculum rebuild in Phase 1 |
| Auth/Firebase half-integrated | Security and account bugs at launch | Finish Phase 0 before feature expansion |
| No tests around wash-sale logic | Silent educational errors | Domain unit tests as acceptance criteria for simulators |

---

## Definition of “production level” for this app

The app is production-ready when:

1. **Users** can sign up, learn advanced modules, complete scored assessments, and resume progress reliably.  
2. **Content** on options, wash sales, and tax-loss harvesting is SME-reviewed, cited, and disclaimer-framed.  
3. **Platform** has environments, CI, crash reporting, privacy/legal docs, and secure per-user data rules.  
4. **Quality** bars are enforced: automated tests for scoring/simulators, accessibility basics, and store compliance (including account deletion).  
5. **Operations** can update or disable contested lessons without waiting solely on app-store review when appropriate.

Until those five hold, treat the project as a prototype with a production roadmap—not a production app.
