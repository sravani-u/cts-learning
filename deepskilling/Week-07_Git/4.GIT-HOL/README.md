# Git Merge Conflict Resolution - Hands-on

## Objective

This hands-on demonstrates how to resolve merge conflicts when two branches modify the same file.

## Prerequisites

- Git installed and configured
- Existing Git repository
- Basic knowledge of Git branching and merging

## Steps Performed

### 1. Verify Repository Status

```bash
git status
```

### 2. Create a New Branch

```bash
git switch -c GitWork
```

### 3. Create hello.xml in GitWork Branch

```bash
notepad hello.xml
```

Sample content:

```xml
<message>Hello from GitWork branch</message>
```

### 4. Check Status

```bash
git status
```

### 5. Commit the Changes

```bash
git add hello.xml
git commit -m "Added hello.xml in GitWork"
```

### 6. Switch Back to Main Branch

```bash
git switch main
```

### 7. Create hello.xml with Different Content

```bash
notepad hello.xml
```

Sample content:

```xml
<message>Hello from Main branch</message>
```

### 8. Commit Changes

```bash
git add hello.xml
git commit -m "Added hello.xml in main"
```

### 9. View Commit History

```bash
git log --oneline --graph --decorate --all
```

### 10. Compare Branches

```bash
git diff main GitWork
```

### 11. Visual Comparison

```bash
git difftool main GitWork
```

### 12. Merge GitWork into Main

```bash
git merge GitWork
```

Git reports a merge conflict because both branches modified the same file.

### 13. Resolve the Conflict

Open `hello.xml` and remove the conflict markers.

Example resolved content:

```xml
<message>Hello from Main branch</message>
<message>Hello from GitWork branch</message>
```

### 14. Complete the Merge

```bash
git add hello.xml
git commit -m "Resolved merge conflict"
```

### 15. Check Repository Status

```bash
git status
```

### 16. Ignore Backup Files

Edit `.gitignore` and add:

```text
*.bak
```

Commit the changes:

```bash
git add .gitignore
git commit -m "Ignore backup files"
```

### 17. List Branches

```bash
git branch
```

### 18. Delete the Merged Branch

```bash
git branch -d GitWork
```

### 19. View Final Commit History

```bash
git log --oneline --graph --decorate
```

## Commands Used

- git status
- git switch
- git branch
- git add
- git commit
- git diff
- git difftool
- git merge
- git log
- git branch -d

## Outcome

- Created a new branch.
- Modified the same file in two branches.
- Generated a merge conflict.
- Resolved the conflict successfully.
- Updated `.gitignore`.
- Deleted the merged branch.
- Verified the commit history.