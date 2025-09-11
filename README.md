# Meal App

# Search AND Run App ⬇️

## Task Date: (8-9-2025)



---



## Search GridView.builder



> **GridView.builder** → creates a scrollable grid dynamically.  

> **gridDelegate** → controls how the grid looks. (**required**)  



---



### 1️- SliverGridDelegateWithFixedCrossAxisCount

- **crossAxisCount** → Select the number of items per row. (**required**)  

- **crossAxisSpacing** → Space between columns.  

- **mainAxisSpacing** → Space between rows.  

- **childAspectRatio** → Width/height ratio of each item.  

- **itemBuilder: (context, index)** → Function that creates the widget for each grid item (**required**)  

- **itemCount** → Total number of items in the grid.  



---



### 2️- SliverGridDelegateWithMaxCrossAxisExtent

- **maxCrossAxisExtent** → Max width for each item (**required**)  

- **crossAxisSpacing** → Space between columns.  

- **mainAxisSpacing** → Space between rows.  

- **childAspectRatio** → Width/height ratio of each item.  

- **itemBuilder: (context, index)** → Function that creates the widget for each grid item (**required**)  

- **itemCount** → Total number of items in the grid.  



---

### Example

---



GridView.builder(

  itemCount: ,

  /*

  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(

    crossAxisCount: , 

    crossAxisSpacing: , 

    mainAxisSpacing: ,  

    childAspectRatio:

  ),

  */

    gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(

    maxCrossAxisExtent: , 

    crossAxisSpacing: , 

    mainAxisSpacing: ,  

    childAspectRatio:

  ),

  itemBuilder: (context, index) {

    return *********

  },

)



---



##  Run App



[🎥 Click to Watch Demo](https://github.com/user-attachments/assets/6fd838f1-a985-4871-bb98-6883a408e4b5)
