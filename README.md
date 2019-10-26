# continuous-gitlab

Use `docker-compose up` to start a local GitLab instance and GitLab-runner in one network.

Get a registration token (for Group Runners). Paste it into `.register-gitlab-runner.sh`
 and run it to register the GitLab-runner at GitLab after it's start is complete.

In `GitLab > $group_name > Settings > CI/CD: Variables` define:

`Nexus_REPO_URL: http://nexus:8081`

`Nexus_REPO_USER: admin`

`Nexus_REPO_PASS: nfa`

See also repository clone in `continuous-gitlab-repos/simple-maven-dep`
GitLab_pwd: rettnera