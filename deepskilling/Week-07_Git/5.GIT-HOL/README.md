# Git Clean Up and Push to Remote Repository - Hands-on

## Objective

This hands-on demonstrates how to clean up the local repository, synchronize with the remote repository, and push local changes to GitHub.

## Prerequisites

- Git installed and configured
- Local Git repository connected to a remote GitHub repository
- Completion of previous Git hands-on exercises

---

## Steps Performed

### 1. Verify Repository Status

Check whether the current branch is clean.

```bash
git status
```

Expected Output:

```
On branch main
nothing to commit, working tree clean
```

---

### 2. List All Available Branches

Display all local and remote branches.

```bash
git branch -a
```

---

### 3. Pull Latest Changes from Remote Repository

Synchronize the local repository with the remote repository.

```bash
git pull origin main
```

---

### 4. Push Local Changes to Remote Repository

Upload all committed local changes to GitHub.

```bash
git push origin main
```

---

### 5. Verify Changes on GitHub

Open the GitHub repository in a web browser.

Verify that:

- Latest commits are visible.
- Newly added files and folders are present.
- Repository is synchronized with the local repository.

---

## Git Commands Used

- `git status`
- `git branch -a`
- `git pull origin main`
- `git push origin main`

---

## Outcome

- Verified the repository status.
- Listed all local and remote branches.
- Pulled the latest changes from the remote repository.
- Successfully pushed local commits to GitHub.
- Verified that the remote repository reflects the latest changes.
