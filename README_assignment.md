# Flutter engineering assessment

## Introduction

This test involves just a single main screen and a secondary screen, so the idea is it doesn't take much time for an experienced mobile developer. But it will allow you to demonstrate how to properly handle networking, synchronization points, and UI cells handling. So besides achieving the expected result, the way you do that also matters.

## GitHub trending

Have you seen the trending repositories in GitHub? You can also choose to filter by a specific language and period of time, so here it is for Dart in the last week, for example: https://github.com/trending/dart?since=weekly

Your goal is to create a Flutter app that will show something very similar. These are the detailed requirements:

- The view should show a list with all the trending repositories
- The data should be retrieved from this API: https://gtrend.yapie.me/repositories
- For each repository, you need to show the following information (similar to GitHub, just without the star project button and the stars in the current period):
  - organization (author) / repository name
  - description of the repository
  - total amount of stars
  - total amount of forks
  - language used with a circle of its color
  - avatars for the collaborators (from the `builtBy` key in the API response)
- Since this is a mobile view, it's better to arrange the information above in some other way than the one shown in GitHub, using more vertical space for each repository. Probably just 3 or 4 repositories will be able to fit in the viewport
- When tapping the avatar of a collaborator, the app should show a tooltip just with their username and an icon to open their profile in the browser (either redirecting to the OS browser or an in-app browser)
- It's very important the UI does not display the row for a repository before having all the needed data. Most of it comes from the initial trending repositories API request, but you will need to wait for the collaborators' avatar images before displaying that repository row. The goal is to avoid seeing partially loaded information that visually "jumps" as it gets completed.
- The repository list should have a programming language and period filter/selector. The repositories endpoint supports two query params you can use for this purpose:
  - `language`: it receives a language identifier and it will filter for trending repositories with that language as their main one. The entire list of possible languages should be retrieved from here, assuming they might change over time: https://gtrend.yapie.me/languages (`urlParam` property is the value to be sent as a query parameter)
  - `since`: it can be `daily` (default), `weekly` and `monthly`, to calculate trends in a specific period
- When you tap on a repository in the main list, you should go to a details screen that, besides the data shown in the list, it will show a few more attributes, like an expanded collaborators list (showing avatar plus name, without having to tap on them), the link to the homepage for that project, a link to open the repository on the GitHub site, amount of forks, watchers and subscribers and the license name. You can get this data from [the oficial GitHub REST API](https://docs.github.com/en/rest/reference/repos#get-a-repository).

## Deliverable

Please use this repository to store your code. Include the entire Flutter project so it can be run when cloning the repository and installing the dependencies. The deliverable will be the latest commit (HEAD) on the `main` branch. Feel free to use any other branches during development. Once your code is ready and on the `main` branch, let us know by e-mail and we'll proceed with the review of your assessment.