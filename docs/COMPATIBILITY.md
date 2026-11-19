# Agent compatibility

The repository keeps one platform-neutral source copy of each skill under skills/<name>/SKILL.md. This avoids divergent copies in the source repository. Each package uses the common Agent Skills name and description front matter.

| Environment | Supported path or workflow | Notes |
|---|---|---|
| Claude Code | .claude/skills/<name>/SKILL.md | Use bash scripts/install-skills.sh --agent claude. |
| Codex CLI | .agents/skills/<name>/SKILL.md | Use bash scripts/install-skills.sh --agent codex. |
| Gemini CLI | .agents/skills/<name>/SKILL.md | Gemini CLI supports the shared Agent Skills location; its native workspace path .gemini/skills/ is also available. Use --agent gemini for the shared location. |
| Paperclip | Import this GitHub repository in Skills → Sources, then select the skill packages. | Review the GitHub source and selected skills before importing. A repository import does not attach a skill to an agent or authorize agent actions. |

The installer copies current source packages into the workspace, so re-run it after changing a skill. Keep generated copies out of commits unless a consumer specifically requires them. If a runtime changes its discovery rules, update this table after confirming its current official documentation.

## Sources checked for this initial setup

- Claude Code skills: https://docs.anthropic.com/en/docs/claude-code/skills
- Codex skills: https://developers.openai.com/codex/skills
- Gemini CLI Agent Skills: https://github.com/google-gemini/gemini-cli/blob/main/docs/cli/skills.md
- Paperclip skill sources: https://docs.paperclip.ing/guides/org/skills/
