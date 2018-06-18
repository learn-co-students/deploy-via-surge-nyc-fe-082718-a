# Deploy Via Surge.sh

## Problem Statement

Deploying your web site "to the internet" can be really challenging. You might
need to buy a plan, configure a software program, learn more Unix commands,
learn to compress your web site...etc. It's an extra bit of work that, while
important, is not really the heart of learning to write HTML.

In order to keep your eyes on skills of writing HTML and CSS and _not_ on the
skills of "managing web site deployments," we're going to teach you to use a
cool new service called "[surge.sh][surgesh]." Surge provides a simple program
(the `surge` "client"), that lets you deploy a static site with one simple
command in the terminal.

At the end of the deployment process, Surge will provide you a URL that can be
used to see your site "on the internet." The address will be a random-name in
front of `.surge.sh`.  You can share this URL with family, friends, poodles, or
your rally unicycling team.

## Objectives

1. State how to find a list of Surge commands
2. State the syntax for deploying with Surge
3. State the syntax for re-deploying a deployed site with Surge

## State How To Find a List Of Surge Commands

> **TYPOGRAPHIC NOTE**: We'll call the program you run in the terminal, the
> "client," `surge`. The company will be written "Surge."

Surge is a service whose home page can be found [here][surgesh]. They provide a
piece of software called `surge`. While their site describes an installation
process, _**it is already installed on the Flatiron in-browser IDE**_. You can
see that the client is running by typing `surge` in the terminal.

<img alt="Surge client in the terminal" src="https://curriculum-content.s3.amazonaws.com/web-development/deploy-via-surge/surge_bare_command.png">

As you can see, `surge` is _already_ trying to deploy the current directory
we're in as a web page. Here it's asking whether it should try to deploy the
directory onto Surge. Let's not deploy anything just yet and cancel with
`Control + c`.

To find out more of the commands you can use with Surge, type `surge --help`.

<img alt="Surge client --help output" src="https://curriculum-content.s3.amazonaws.com/web-development/deploy-via-surge/surge_help.png">

_A portion of the `surge --help` output_

The most important line is the **Usage:** line.

This line means: type in `surge`, a directory you wish to deploy on your
system, and the "Surge domain" that you'd like to use.  It just so happens that
typing `surge`, as we did above, is interpreted as:

`surge this-directory get-me-a-new-domain-name`

Also very important are the commands at the very end:

```text
  Guides:
    Getting started     surge.sh/help/getting-started-with-surge
    Custom domains      surge.sh/help/adding-a-custom-domain
    Additional help     surge.sh/help

  When in doubt, run surge from within you project directory.
```

Here the `surge` client tries to help us get a better understanding of how to
deploy a site. We'd recommend you check out these guides after you finish this
lesson.

## State The Syntax For Deploying With Surge

Let's create a simple site for surge to deploy. In the in-browser IDE, I'll
create a directory called `test-surge` that has a simple [`index.html`][isrc]
file and a simple [`style.css`][ssrc] file. I'll then use `httpserver` to test
out my files. You can copy and paste these files into the in-browser IDE, if
you like.

<img alt="View running httpserver process" src="https://curriculum-content.s3.amazonaws.com/web-development/deploy-via-surge/basic_site_and_httpserver.png" width=450px>

With `httpserver` running, we can visit our site:
`http://174.138.35.103:38808/test-surge`

<img alt="httpserver running our site" src="https://curriculum-content.s3.amazonaws.com/web-development/deploy-via-surge/httpserver_running_local_site.png" width=450>

Let's suppose that we're happy with this (very-)purple site and decide that we
want to share it with the world. To do so with Surge, do the following

1. End `httpserver` with `Control + c`, if required
2. Change into the `test-surge` directory: `cd test-surge`
3. Type `surge`
4. Since we're in the `test-surge` directory, Surge asks if that's what we want
   to deploy. It is. So we hit `Enter`
5. Surge creates a site name, in this case, called `witty-range.surge.sh`. This
   seems good enough. So hit `Enter`
6. `surge` client uploads the site to Surge
7. Open up `witty-range.surge.sh` in a browser tab

Our site is now live on the real-deal internet. We could text this to a friend
and have them see our (very-)purple creation.

<img alt="Surge running our site" src="https://curriculum-content.s3.amazonaws.com/web-development/deploy-via-surge/surge_running_site.png" width=450>

## State The Syntax For Re-deploying a Deployed Site With Surge

Let's suppose that we no longer want to have this mega-purple site. Let's
change the CSS to be `#aaa`. We'll change the `background` property for `body`
to be `#aaa` in `style.css`.

<img alt="Test page running locally with a gray background" src="https://curriculum-content.s3.amazonaws.com/web-development/deploy-via-surge/httpserver_running_local_gray_site.png" width=450>

But we now want to deploy our updates to Surge. That's easy enough, just run
`surge` from within `test-surge` again! But here we run into a little snag...

![Surge Redeployment](https://curriculum-content.s3.amazonaws.com/web-development/deploy-via-surge/bare_surge_new_dest.png)

That's not what I want. I _might_ occasionally wish to deploy my site to a new
random name, but I personally liked `witty-range`. I'm going to `Control + C`
out and apply the **Usage** instruction I got a short time ago and type: `surge
. witty-range.surge.sh`.

> **RECALL**: `.` in Unix means, "this current directory."

I told the `surge` client to do its thing using the current directory as the
`project` and the `domain` of `witty-range.surge.sh`. That, in effect, is a
"redeploy." Let's try it out:

![Surge Redeployment Corrected](https://curriculum-content.s3.amazonaws.com/web-development/deploy-via-surge/bare_surge_new_dest.png)

And it looks like this on Surge:

<img alt="Surge running our graysite" src="https://curriculum-content.s3.amazonaws.com/web-development/deploy-via-surge/surge_running_gray_site.png" width=450>

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
