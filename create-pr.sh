#!/bin/bash
BRANCH="$(date +%s)"
git switch -c ${BRANCH}
git commit -m "empty commit" --allow-empty
git push origin ${BRANCH}
gh pr create -f
# gh merge
