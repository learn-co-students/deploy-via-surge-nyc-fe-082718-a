# Deploy Via Surge.sh

## Problem Statement

Deploying your web site "to the internet" can be really challenging. You might
need to buy a plan, configure a software program, learn more Unix commands,
learn to compress your web site, etc... It's an extra bit of work that, while
important, is not really the heart of learning to write HTML.

In order to keep your eyes on skills of writing HTML and CSS and _not_ on the
skills of "managing web site deployments," we're going to teach you to use a
cool new service called "[surge.sh][surgesh]." Surge provides a simple program
(the `surge` "client"), that lets you deploy a static site with one simple
command in the terminal.

At the end of the deployment process, Surge will provide you a URL that can be
used to see your site "on the internet." The address is a random name in
front of `.surge.sh`. You can share this URL with family, friends, poodles, or
your rally unicycling team.

## Objectives

1.  State how to find a list of Surge commands
2.  State the syntax for deploying with Surge
3.  State the syntax for re-deploying a deployed site with Surge

## State How To Find a List Of Surge Commands

Surge provides a piece of software called `surge`. _**It is already installed
on the Flatiron in-browser IDE**_. You can try it out by typing `surge` in the
terminal.

> **TYPOGRAPHIC NOTE**: We'll call the program you run in the terminal, the
> "client," `surge`. "Surge" the company or product appears as "Surge."

![Surge Client](https://curriculum-content.s3.amazonaws.com/web-development/deploy-via-surge/surge_bare_command.png)

As you can see, `surge` is _already_ trying to deploy the current directory
we're in as a web page. Here it's asking whether it should try to deploy the
directory onto Surge. Let's not deploy anything just yet and cancel with
`Control + c`.

To find out more of the commands you can use with Surge, type `surge --help`.

![Surge Help](https://curriculum-content.s3.amazonaws.com/skills-front-end-web-development/surge/surge_help.png)

_A portion of the `surge --help` output_

The most important line is the **Usage:** line.

This line means: type in `surge`, a "project" (directory) you wish to deploy on
your system, and the "Surge domain" that you'd like to use. It just so happens
that typing `surge`, as we did above, means:

`surge this-directory get-me-a-new-domain-name`

Also, very important are the commands at the very end:

```text
  Guides:
    Getting started     surge.sh/help/getting-started-with-surge
    Custom domains      surge.sh/help/adding-a-custom-domain
    Additional help     surge.sh/help

  When in doubt, run surge from within you project directory.
```

Here the `surge` client tries to teach us how to use it. We'd recommend you
check out these guides after you finish this lesson.

## State The Syntax For Deploying With Surge

Let's create a simple site for surge to deploy. In this lesson, we've got a
simple [`index.html`][isrc] file and a simple [`style.css`][ssrc] file. Let's
use `httpserver` to test out these files.

![Run httpserver](https://curriculum-content.s3.amazonaws.com/skills-front-end-web-development/surge/01_httpserver.png)

With `httpserver` running, we can visit our site (in the example above its
`http://69.205.165.109:59038`, but this will be different each time):

![Running Server](https://curriculum-content.s3.amazonaws.com/skills-front-end-web-development/surge/02_httpserver_running.png)

Let's suppose that we're happy with this (very-)purple site and decide that we
want to share it with the world. To do so with Surge, do the following

1.  End `httpserver` with `Control + c`, if required
2.  Type `surge`
3.  At this point, you will be prompted to create an account. Make sure you go to
    your email inbox to verify it.
4.  Log into account with newly created email and password. When you type your
    password into the terminal the cursor won't move!
5.  Since we're in the `test-surge` directory, Surge asks if that's what we want
    to deploy. It is. So we hit `Enter`
6.  Surge creates a site name, in our example its `wooden-quiet.surge.sh`. This
    seems good enough. So hit `Enter`
7.  `surge` client uploads the site to Surge
8.  Open up `wooden-quiet.surge.sh` in a browser tab

Our site is now live on the real-deal internet. We could text this to a friend
and have them see our (very-)purple creation.

![Surge Running](https://curriculum-content.s3.amazonaws.com/skills-front-end-web-development/surge/03_surge_running.png)

## State The Syntax For Re-deploying a Deployed Site With Surge

Let's suppose that we no longer want to have this mega-purple site. Let's
change the CSS to be `#aaa`. We'll change the `background` property for `body`
to be `#aaa` in `style.css`.

![Test Page](https://curriculum-content.s3.amazonaws.com/skills-front-end-web-development/surge/04_httpserver_css_change.png)

But we now want to deploy our updates to Surge. That's easy enough, just run
`surge` from within `test-surge` again! But here we run into a little snag...

![Surge Redeployment](https://curriculum-content.s3.amazonaws.com/skills-front-end-web-development/surge/05_surge_wants_new_name.png)

That's not what I want. By default, `surge` wants to create a _new_ domain. This
time, though, I want to keep using `wooden-quiet.surge.sh`. Let's `Control + C`
out and type: `surge . wooden-quiet.surge.sh`.

> **SIDE-NOTE**: The `surge` command expects its first argument to be a directory
> name. `.` in Unix means, "this current directory."

I told `surge` to deploy the current directory (as the `project`) to the
`domain` of `wooden-quiet.surge.sh`. That, in effect, is a "redeploy." Let's try
it out:

![Surge Redeployment Corrected](https://curriculum-content.s3.amazonaws.com/skills-front-end-web-development/surge/06_surge_old_name.png)

And it looks like this on Surge:

![Surge Updated Site](https://curriculum-content.s3.amazonaws.com/skills-front-end-web-development/surge/07_updated_surge.png)

## Completion

In order to complete this lab, put the name of your site in the `my_url.txt`
file. Type `learn` to run the test and `learn submit` to move on.

## Conclusion

Now that you've been through this lesson you should be able to easily put your
HTML sites onto the internet using Surge. Remember that the `surge --help`
command can usually provide all the help you need!

[surgesh]: http://surge.sh/
[isrc]: https://raw.githubusercontent.com/learn-co-curriculum/deploy-via-surge/master/index.html
[ssrc]: https://raw.githubusercontent.com/learn-co-curriculum/deploy-via-surge/master/style.css
