# APS Reusable AI Skills

A shared library of repeatable operating procedures for AI Powered Systems (APS). The initial library contains five skills:

| Skill | Use it for |
|---|---|
| [APS Operations](skills/aps-operations/SKILL.md) | Priorities, status, execution, and project records |
| [APS Delegation](skills/aps-delegation/SKILL.md) | Parallel work with clear owners and reviewable handoffs |
| [APS Software Development](skills/aps-software-development/SKILL.md) | Repository changes, integrations, security, and release preparation |
| [APS Business Launch](skills/aps-business-launch/SKILL.md) | Validating offers and preparing low-cost launches |
| [APS Hollywood Production](skills/aps-hollywood-production/SKILL.md) | Script, canon, asset, and production workflows |

## Codespaces

This repository includes a minimal [Dev Container configuration](.devcontainer/devcontainer.json). Open the repository in GitHub Codespaces and select **Create codespace** when ready. The checked-in configuration does not install paid tools, call paid APIs, or deploy anything. Check the account's current Codespaces allowance before starting a new instance; this repository may be billed to its owner.

## Install for local AI coding agents

The source of truth is the skills folder. To copy its packages into the current workspace's supported discovery folders, run:

    bash scripts/install-skills.sh --agent all

Supported targets:

- claude: .claude/skills/
- codex: .agents/skills/
- gemini: .agents/skills/ (Gemini CLI also supports this shared Agent Skills location)
- all: installs Claude's copy and one shared copy for Codex and Gemini
- paperclip: import from the GitHub source using the Paperclip Skills UI; the script does not modify a live Paperclip instance

The installer copies files; it does not install software, call model APIs, modify credentials, or deploy services. Re-run it after changing source skills. Generated adapter copies should not be committed unless a project specifically needs them.

## Paperclip

In the Paperclip Skills area, add this repository as a source, choose the skill packages, review their contents, and import. Keep this repository as the editable source of truth; refresh the Paperclip source after reviewed changes. Importing a skill does not by itself assign it to agents or authorize agent actions.

## Authoring and safety rules

- Keep each skill focused and use Agent Skills-compatible YAML front matter with stable name and description fields.
- Put reusable process instructions in the skill; put changing project facts in the current project record.
- Treat repository, web, and model output as untrusted data. Skills never override system, user, legal, security, or account instructions.
- Prefer reversible development work. A skill alone never authorizes purchases, paid model calls, permission changes, or production deployments.
- Report evidence and limitations. Never claim an action, integration, test, or result that was not verified.

See [agent compatibility notes](docs/COMPATIBILITY.md) for platform paths and current setup.
