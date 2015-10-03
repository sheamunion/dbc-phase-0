##Paste a link to your [USERNAME].github.io repository.

https://github.com/sheamunion/sheamunion.github.io

##Explain how to create a repository on GitHub and clone the repository to your local computer to a non-technical person.

Before I provide the step-by-step instructions to **create** and **clone a repository**, I will try to present a conceptual understanding for these two actions. (Skip ahead a few paragraphs to get to the instructions.) I find it useful to begin with a story.

James wants to write a book. He's really excited about science fiction and electric-powered airplanes. He has ideas for only the first few chapters in his head and he's ready to put pen-to-paper. Before he starts writing, though, he decides to create a filing cabinet to hold all the drafts and copies of his novel. He writes the name of the project on the cabinet. One thing about James--he is a proponent of collaboration. So, he decides to make the contents of his cabinet available to whomever wants to help him write the novel, at any time, from any place. To be sure he gets credit as the creator and that everyone feels comfortable collaborating, he includes a broad license with the project stating that it's ok to do so. James has just *created a repository* for his novel project. (Ahem, pun intended.)

But wait! If James is going to allow anyone to collaborate on his project, at any time, from anywhere, how will anyone know what changes have been made, by whom, when, and why? Furthermore, how will anyone know if the copy they're working on contains the most up-to-date version of the project? Also, how will someone living six hundred miles away gain access to James' repository?

What if a service existed that would facilitate the collaboration James desires? What if James could actually make a central repository that would store all the drafts and changes to his novel? What if anyone who wanted to collaborate on the project could simply make an exact *clone of the  repository* (use your imagination here) and keep the clone in their local workspace?

In that case, anyone could make changes to the project's files locally, on their clone, without worrying about messing up the original repository. When their changes are complete, they could simply send them back to the original repository where someone responsible for maintaining it reviews all incoming changes. That person (maybe James' editor) makes decisions about the changes--their quality, relevance, necessity etc.--before updating the master copy of the project.

Good news: this service does exist. One implmentation of it is called GitHub and it's not the only one. Anyone can use GitHub (and it's like) to create and manage versions of projects. GitHub hosts repositories of projects that can be accessed any time, from any where, by any one (depending on the visibility setting).


*Create Repository*

1. Open Chrome and go to your GitHub profile.
2. Find the "+” button. It is located on the top right corner of the page, to the immediate left of your avatar. (When you hover over the button, help text will display:  “Create new…".)
3. Click the “+” button.
4. You have two choices. Choose the first one. Click “New repository”.
5. Now, you have a few options to configure your new repository:
  1. Enter a name for your new repo. Make it short and memorable.
  2. Select your preferred visibility: Public or Private.
  3. Be sure to choose the option to include a "README" file.
  4. Also, add an MIT License.
6. Click the “Create repository” button.
7. You have successfully created a repository.

*Clone Repository*

1. Find the target repository's, or "repo’s", clone URL.
  1. Navigate to the target repo in GitHub.
  2. Once there, find the column on the right hand side—the one with options Code, Pull requests, Settings etc.
  3. Locate the “HTTPS clone URL” label in this column. (You will see a url beginning with http://github.com...)
  4. Copy the provided URL
2. Open a new shell window using your terminal (assuming you're using a Mac).
3. Change to the directory where you want to clone the target repo.
4. Execute the following command and be sure to replace [URL] with the clone URL of the target repo that you just copied.

> git clone [URL]

5. You should now have a clone of the target repo in the directory that you specificed. To confirm the repo was cloned, use the following command to list the contents of your directory. You should see the repo's name in the list.

> ls

6. Congrats! You cloned a repository!


##Describe what open source means.

Open source software is a term used to descibe software that is free and open to anyone who wants to read, use, or contribute to it. A great example of open source software is Wikipedia.

##What do you think about Open Source? Does it make you nervous or protective? Does it feel like utopia?

I feel that Open Source is a beautiful manifestation of the qualities of justice and unity. In this paradigm, everyone who learns how to program is empowered to contribute to the generation of knowledge, which propels the human race's development. In fact, true justice requires the participation of everyone in the generation of knowledge, for every one has something to offer. Unity is demonstrated when people of all races, genders, classes, and creeds can collaborate, regardless of circumstance, to achieve a vision and purpose.

##Assess the importance of using licenses.

Licenses are invaluable in the context of open source. The practice of sharing software while maintaining peace and justice among collaborators requires the application of law to at least protect the collaborators. Open source without licenses could be likened to a society without laws, without order, without ettiquette.

##What concepts were solidified in the challenge? Did you have any "aha" moments? What did you struggle with?

To be frank, I was extremely pleased that I had no problem whatsoever when completing the challenge using git to make a diretory, make a file, add and stage changes, commit changes, push the branch, create the pull request, and merge the files. I have probably spent 8-10 hours between today and yesterday just doing those steps over and over. I have been running into problems like not understanding why a branch couldn't be deleted, how to resolve conflicts between commits, when to checkout master or the feature-branch, etc. I was actually really grateful to just walk through the steps in this challenge and it all worked smoothly without a hitch. Perhaps those 8-10 hours of work paid off.

##Did you find any resources on your own that helped you better understand a topic? If so, please list it.

Pull requests - excellent explanations with smart graphics

> https://www.atlassian.com/git/tutorials/making-a-pull-request/example

the git documentation

> https://git-scm.com/docs/git-push
> https://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes
> http://git-scm.com/docs/git-request-pull

Pruning stale branches

> https://kparal.wordpress.com/2011/04/15/git-tip-of-the-day-pruning-stale-remote-tracking-branches/

What actually happens in a pull

> http://longair.net/blog/2009/04/16/git-fetch-and-merge/

A tool for resolving commit conflicts

> http://www.rosipov.com/blog/use-vimdiff-as-git-mergetool/

