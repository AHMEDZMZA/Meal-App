Meal App
This README outlines the use of GridView.builder in Flutter for creating a dynamic and responsive grid layout for the Meal App project.

Task Information
Task Date: 08-09-2025

Understanding GridView.builder
GridView.builder → creates a scrollable grid dynamically.
gridDelegate → controls how the grid looks. (required)

1️- SliverGridDelegateWithFixedCrossAxisCount
crossAxisCount → Select the number of items per row. (required)

crossAxisSpacing → Space between columns.

mainAxisSpacing → Space between rows.

childAspectRatio → Width/height ratio of each item.

itemBuilder: (context, index) → Function that creates the widget for each grid item (required)

itemCount → Total number of items in the grid.

2️- SliverGridDelegateWithMaxCrossAxisExtent
maxCrossAxisExtent → Max width for each item (required)

crossAxisSpacing → Space between columns.

mainAxisSpacing → Space between rows.

childAspectRatio → Width/height ratio of each item.

itemBuilder: (context, index) → Function that creates the widget for each grid item (required)

itemCount → Total number of items in the grid.

Example
GridView.builder(
  itemCount: ,
  /*
  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: ,
    crossAxisSpacing: ,
    mainAxisSpacing: ,
    childAspectRatio:
  ),
  */
    gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
    maxCrossAxisExtent: ,
    crossAxisSpacing: ,
    mainAxisSpacing: ,
    childAspectRatio:
  ),
  itemBuilder: (context, index) {
    return *********;
  },
)

App in Action
🎥 Click to Watch Demo
