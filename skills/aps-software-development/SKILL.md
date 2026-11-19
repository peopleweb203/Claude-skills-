---
name: aps-software-development
description: Implement and review APS software changes in an existing repository with minimal targeted verification, secure defaults, isolated branches, and clear completion evidence. Use for coding, integrations, bug fixes, and technical readiness.
---

# APS Software Development

## Workflow

1. **Inspect before editing.** Read repository guidance, including AGENTS.md, CLAUDE.md, and project instructions, branch state, architecture, package scripts, and relevant code. Preserve user changes and avoid replacing an existing system without evidence.
2. **Define the change.** Identify user-visible behavior, interfaces, data affected, acceptance criteria, failure modes, and the smallest implementation. Note assumptions and keep scope focused.
3. **Work safely.** Use a development branch or isolated workspace. Follow existing conventions. Keep secrets out of source, logs, commits, prompts, and screenshots. Validate inputs and permissions; use least privilege; handle errors and retries explicitly.
4. **Respect service boundaries.** Do not add a paid provider, call a billable API, change credentials or access, expose data, alter production services, or deploy unless the user has specifically authorized that action. Label placeholders, mocks, and demos honestly.
5. **Verify proportionately.** Run only checks that are requested or necessary to verify the changed behavior and its risk. Prefer focused checks over broad suites. Do not add or run tests merely as a ritual. If verification was not run, say so; do not imply a pass.
6. **Review the diff.** Check changed paths, unintended edits, secret exposure, dependency changes, compatibility, and migration/recovery needs. Keep unrelated cleanup out.
7. **Commit and hand off.** When authorized, make a focused commit on the intended development branch. Report the branch, changed behavior, evidence, checks actually run, and remaining deployment or user steps.

## Integrations

For each external integration, document:
- provider and exact endpoint or SDK surface
- authentication method and required scopes
- data sent and received
- quota and cost assumptions
- timeout, retry, idempotency, and error behavior
- development versus production settings
- recovery and disable procedure

Never put credentials in committed config. Use existing secret stores only when their use is authorized. Do not silently fall back to a paid provider.

## Definition of done

A change is complete when the agreed behavior exists in the authorized development scope, its limitations are recorded, relevant focused checks have actual results or are explicitly marked not run, and a reviewer can locate the files and commit.
