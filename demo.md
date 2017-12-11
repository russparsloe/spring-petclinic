# Demo script

The following is the suggested demo workflow using an existing Dokcer EE deployment of DTR and UCP, and the spring pet clinic sample application with test and prod stack file.

## Pre-requisites
- A deployed Docker EE environment
- A local version of a built spring pet clinic application
- A test and prod stack deployed
- A demo organisation in DTR containing two teams, Dev and Ops
- A user created in each team
- A DTR repo called docker-demo/pet-clinic-test (or something similar)
- A DTR repo called docker-demo/pet-clinic-prod (or something similar)
- The two users' UCP clinet bundles stored locally

## Demo story

### Introduction
Today I'm going to demonstrate how you can use Docker Enterprise Edition to quickly and securely ship application changes to your customers and users. 

Firstly I'll show you a modernised traditional Java application. Then I'll demonstrate how you can securely ship and scan that Docker image to reduce the risk of breaches in your organisation. Finally I'll show you how you can quickly, simply, and easily promote an application change through different environments.

Let's start with the application.

1. Show repo and docker file
2. Run container locally
3. Make an application change and rebuild
4. Whilst rebuilding, show UCP and show two stacks are running. Show the test and production stacks. Show the version running.
4. When build is complete run it locally to see the change.
5. Turn on secure content trust, tag and push the image to the test repo.
6. Explain vulnerability scanning. Whilst we wait for the scan let's deploy to a test environment.
7. Now update the running test stack with a version 2 tag. Mary updates the stack using compose.
8. Visually verify the stack has changed. Show the services in UCP and Viz.
9. Now we need to update production. Show the RBAC system and that Rob is an Ops person and only he can update the production stack.
10. Promote the image (caveat CI/CD here)
11. Show that it's now in the production repo.
12. Update the version tag in UCP and show update / scheduling strategy.
13. Show the service restarting and new containers coming online.
14. Show the site changing and the containers in Viz.
15. Wrap up -> dockerised a traditional app, securely shipped it to an internal registry, deployed to different environments and rolled out the application update.

