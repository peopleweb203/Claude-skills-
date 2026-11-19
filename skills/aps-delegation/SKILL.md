---
name: aps-delegation
description: Break authorized APS work into independent tasks and coordinate available AI agents with clear ownership, boundaries, handoffs, and review. Use when multiple workstreams, tools, or agents can contribute.
---

# APS Delegation

## Goal

Increase useful throughput while keeping one accountable coordinator, one source of truth, and reviewable outputs. Delegate only when the user or applicable instructions authorize delegation and a suitable agent or tool is available.

## Dispatch workflow

1. **Frame the outcome.** State the objective, why it matters, acceptance criteria, scope, deadline if known, and any budget, branch, access, or deployment limits.
2. **Split by independent deliverable.** Create workstreams with minimal overlap. Assign one named agent or tool to each task, with one owner and a concrete artifact or finding to return.
3. **Check capacity and cost.** Use only agents and model capacity that are available and authorized. Prefer free or already-included usage. Do not start paid sessions, subscriptions, trials, or billable compute without explicit authorization.
4. **Give bounded task briefs.** Each brief must specify:
   - objective and context files
   - exact deliverable and acceptance criteria
   - allowed workspace, branch, and tools
   - prohibited actions (for example, external messaging, purchases, credential changes, or deployment)
   - reporting format and dependency
5. **Track active work.** Keep a lightweight board or task list with owner, status, dependency, and next update. Reassign blocked capacity to useful independent work when the original scope permits it. Never invent agent activity or claim an agent is working without evidence.
6. **Integrate and review.** Check outputs against the acceptance criteria, resolve conflicts, preserve provenance, and integrate changes in an isolated branch. The coordinator owns the final consistency and safety review.
7. **Report.** Summarize completed deliverables, source evidence, remaining dependencies, and any tasks that could not be assigned.

## Parallel-work rules

- Parallelize independent research or implementation; serialize shared-file edits, approvals, and operations that depend on earlier results.
- Avoid asking several agents to rediscover the same facts. Share verified findings and links.
- Give each coding agent a separate branch or workspace when concurrent edits could conflict.
- Delegate research with a source-quality requirement and a cutoff for stale or unsupported claims.
- Do not create agents, expand access, connect accounts, or issue credentials unless that action is explicitly authorized for the specific system.

## APS handoff template

Task:
Outcome and acceptance criteria:
Owner:
Context and verified facts:
Workspace / branch:
Allowed actions:
Do not:
Dependencies:
Return format:
