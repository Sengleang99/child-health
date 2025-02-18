# child_hearth

Concept/Data:
1. Register child: we need to know if male or female
Each type of Vaccine, we need a reference document (e.g. Yellow Book to attach for them to fully review)
2. On first page/home page, we need to know the next date of vaccination if any, to remind them the next date

-------------------------------------------------------------------------------------

We can decide either use API / Database to manage everyone data or try to make each data as privacy for user.

My concept prefer privacy for user, by allow them to use their own storage.

We can fully use Firebase and Personal data as following:

1. Firebase use as data store for Vaccination template and structure, User's info
2. Use Google drive, Google sheet as personal data, all data of the person will be store there as their privacy
3. Login via Google only, get permission to access google drive and sheet
4. Account/Family can share account on specific kids, so in google drive folder, to create sub folder per kid

TODO:
1. Portal for administration to manage template, statistic of usage and some remark (to research more)
2. Mobile app for user with concept quick to create family / kids info, quick input, followup reminder

Data:
1. Vaccination not only from Yellow page, it can be from different type of vaccinate but yellow book is a public standard

-------------------------------------------------------------------------------

Technical advice to do that:
1. Some to focus on technical with Flutter or Use API to access Google Authentication and Google drive, create sheet and so on
2. To use Firebase/Firestore to record the template first
3. At mobile app, must have a local database to store them as offline and push to google drive later or sync

Some technical research to proof if the concept can do.

Then some other to focus on Prototype, make it small - neat and easy to use

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
