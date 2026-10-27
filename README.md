# MedTerms Quest — Flutter Prototype

Arabic-English interactive medical terminology learning prototype.

## Features in this prototype
- RTL Arabic-first interface with English medical terms.
- Learning path cards, lesson progress, XP and hearts display.
- Interactive lesson screens and immediate feedback.
- 150 starter medical terminology and medicine-learning cards embedded in the source.
- Curriculum and quick-review list generated from the term bank.
- Multiple-choice distractors selected from the expanded term bank.
- Demonstration content based on Open RN, *Medical Terminology*, 2nd edition.

## Run locally
1. Install Flutter SDK and an Android emulator/device.
2. Unzip this folder.
3. In the project directory, run:
   ```bash
   flutter pub get
   flutter run
   ```
4. For a web build:
   ```bash
   flutter create . --platforms web
   flutter run -d chrome
   ```

## Scientific content and licensing
Primary open reference:
Open RN, *Medical Terminology*, 2nd edition (2024), NCBI Bookshelf:
https://www.ncbi.nlm.nih.gov/books/NBK607454/

The book is distributed under CC BY 4.0. Follow the license attribution and indicate modifications where applicable. This prototype's Arabic explanations are educational paraphrases, not copied dictionary entries. Clinical definitions should be verified against a current authoritative medical dictionary and reviewed by a qualified medical educator before public release.

Stedman's and Dorland's are suggested for cross-checking, but their entries/audio/images must only be incorporated subject to their own licensing and terms.

## Important prototype limitations
- This is source code, not a compiled APK or app-store release.
- Progress, XP, hearts and completion are held in memory and reset when the app restarts.
- Spaced repetition is not yet persisted; the next iteration should add a local database and a tested scheduling algorithm.
- Audio playback is not wired yet. Add licensed recordings or professionally reviewed recordings.
- The included 150 entries are a starter educational dataset, not a comprehensive medical dictionary or verified Iraq-market medicine registry. Review and source-check every clinical entry before public deployment. The current lesson flow remains a prototype and still needs persistent progress, search/filter, categories, and proper spaced repetition.
- The drag-and-drop exercise is represented as an introductory word-parts interaction, not a production-grade drag-and-drop engine.

## Suggested next engineering steps
1. Add unit tests for scoring, answer normalization and schedule calculations.
2. Add SQLite/Drift or Isar for local progress and review due dates.
3. Add a content schema with source edition, entry/page, reviewer, review date and license fields.
4. Add audio assets and accessible pronunciation controls.
5. Add analytics only with appropriate consent and privacy controls.


## Build APK from a phone using GitHub Actions
This project includes `.github/workflows/build-apk.yml`. Upload the project files (not only this ZIP) to a GitHub repository on the `main` branch. The workflow runs on pushes to `main` and can also be started manually from the repository's Actions tab using **Build MedTerms Quest APK**. After the run succeeds, open the run, scroll to **Artifacts**, and download `medterms-quest-apk`. Extract the artifact ZIP to get `app-release.apk`.

The first build may fail if Flutter/Gradle compatibility changes or if the source has compile errors. Review the workflow logs if that happens. This workflow produces a test APK using the default debug signing fallback unless release signing is configured; do not treat it as a Play Store release build.
