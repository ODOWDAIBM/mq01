# Git your MQ: Tutorial 1

This repository is the first in a set of progressive tutorials that shows you
the benefits of managing your IBM MQ queue managers using DevOps on the
Kubernetes platform. This tutorial assumes that you have a basic knowledge of
MQ, but are new to DevOps and/or Kubernetes.

In this first tutorial we learn about:

- [Git your MQ: Tutorial 1](#git-your-mq-tutorial-1)
  - [The structure of a queue manager](#the-structure-of-a-queue-manager)
  - [How to define your queue manager as code](#how-to-define-your-queue-manager-as-code)
  - [Installing `Minikube` Kubernetes](#installing-minikube-kubernetes)
  - [Running your queue manager in Kubernetes](#running-your-queue-manager-in-kubernetes)
  - [Next Tutorial](#next-tutorial)

At the end of this turotial, you'll have your own queue manager, defined in
`git` running in a Kubernetes cluster on your local machine.

---

## The structure of a queue manager

Whenever we first create a new queue manager, we start by installing some IBM
provided binary code on our local operating system. We can then use the `crtmqm`
command (with its associated `qm.ini` file) to create an instance of a queue
manager. Once created, we can use the `runmqsc` CLI to customize it with the
queues, channels and other MQ artefacts required by connected applications.

We can therefore represent a queue manager instance like this:

<p align="center">
  <img src="./docs/images/diagram1.drawio.png">
  <br clear="center"/>
  The structure of a queue manager instance
</p>

Notice how:

- The **binary code** provided by IBM is relatively static; it only changes when
  a new release (including fix or patch) is made available.
- The **configuration**, as defined in the `qm.ini` file, changes more frequently
  than binary code, but is still relatively static.
- The **customization**, as defined in an `mqsc` file, is the most frequently
  changing component of a queue manager.

Let's use this conceptual model to create and manage a queue manager.

---

## How to define your queue manager as code

Best practice is to define every queue manager in its own git repository in
[GitHub](https://github.com/). We'll quickly see the advantages this brings.

1. *Create your queue manager repository*

    To help you get started, here's a [template
    repository](https://github.com/GitYourMQ/gityourmq-01) you can use. Using a
    template is just like a regular forked copy, but with a fresh history. If
    you're new to GitHub, read about [repository
    templates](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template).

2. *Clone repository to your local machine*

   Now that you have your own fork of this repository, clone it to your local
   machine to exmaine it.

   Open a terminal window. To make it easy to work with your GitHub account from
   your local machine, set up the following environment variable:

   ```
   export GITUSER=<Your GitHub userID>
   ```

   It's popular to clone your GitHub repositories to a common folder on your local
   file system, such as `/git`.

   ```
   cd $HOME/git
   git clone git@github.com:$GITUSER/gityourmq-01.git
   cd gityourmq-01
   ```

   If you're new to GitHub, read about [cloning a
   repository](https://docs.github.com/en/get-started/quickstart/fork-a-repo#cloning-your-forked-repository).

3. *Examine the repository structure*

   From the terminal, issue the following command:
   ```
   tree .
   ```
   to show the structure of the queue manager repository:

   ```
   .
   ├── config.mqsc
   ├── Dockerfile
   ├── LICENSE
   ├── qm.ini
   ├── README.md
   └── docs
       └── images
           ├── diagram1.drawio
           └── diagram1.drawio.png
   ```

   Note how simple it is:

   - `Dockerfile`: Defines the queue manager binary code using an OCI-compliant
     container image.
   - `qm.ini`: defines the queue manager configuration parameters.
   - `config.mqsc`: defines the queue manager application customizations.
   - `README.md`: This tutorial text. We use
     [Markdown](https://www.markdownguide.org/), becuase is simple and easy to
     use to create well formatted documents.
   - `docs`: Extended documentation for this tutorial.
   - `LICENSE`: A permissive MIT licence that allows you to use this example
     freely in your own work.

**ADVANTAGE:** Using Markdown based documentation in `README.md` file and `doc`
folders enables other uses to quickly understand a queue manager. Follow this as
best practice.

---

## Installing `Minikube` Kubernetes

To get you up and running quickly with Kubernetes on your local machine, it's a
good idea to start with [MiniKube](https://minikube.sigs.k8s.io/docs/start/).
Minikube is a Kubernetes distribution that you can use on a realtively modest
laptop to try out the ideas in the GitYourMQ tutorials.

1. *Install Minikube*

    Follow [instruction step 1](https://minikube.sigs.k8s.io/docs/start/) to
    install Minkube on MacOS, Linux or Windows.

2. *Start your instance of Minikube*



---

## Running your queue manager in Kubernetes

Run your queue manager

---

## Next Tutorial

Look out for the next tutorial in this series.