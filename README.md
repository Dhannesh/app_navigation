# Building an Application Using Layouts and Navigation
A typical mobile application often has several pages, and these pages need to be wired together in the right manner using navigation and routing. In this app, you will learn how Flutter uses a stack data structure to enable navigation. New pages that you navigate to are pushed on top of the stack and navigating backward involves popping from the stack.

You will use the Navigator class to navigate to new pages, and see how you can improve the readability and robustness of your navigation code by using named routes. You will pass arguments to pages while navigating to them, and also see how you can use the route generator for navigation. Next, you will bring together everything that you've learned in this path to build a simple application for an e-commerce company, a shopping app.

The app will display products and categories, and allow you to add and remove products from the cart. You will build this app using material designed for Android devices and Cupertino widgets for iOS devices. Finally, you will see how you can connect a real device to Flutter and test your app on a real mobile phone. 

## Configuring App Navigation with the Navigator Class
First setup the images folder then create a new directory in lib called screens and this directory will hold the Dart Files that will contain the different screen widgets. The first screen that I'm going to create here is the home screen that can be stored in the home.dart file. 

That ElevatedButton is a nice three-dimensional button. This has not been wired up to any click handler yet. Now let's go ahead and run this app so that we can take a look at what this home screen looks like. We're just setting up the screen at this point in time.I'm going to create a new file called categories. This categories.dart file will contain two buttons that will allow me to navigate to two separate categories. Now I'm going do reference the MyCategoriesPage here so that we can view that particular page and see what it looks like. I'll also need to change the import statement here in the main file to reference categories.dart instead of home.dart. 

Now I'm going to set up the code of the Categories page, and rather than explaining the code widget by widget, I'll just run this app and show you what this page looks like. All this page displays is a little decorated box with the word Categories, and the message, Here are the categories! and two elevated buttons, one for Snacks and Beverages, and another for Fresh Fruits and Vegetables. Just one thing to note that these buttons have not been wired up yet. So you can click on these buttons at this point in time and they'll do absolutely nothing.

I've basically set the onPressed handler to an empty function. The function doesn't do anything. I'm now going to set up a third Dart File in this screens subfolder. This Dart File is going to contain the code for two widgets representing products, one for Snacks and Beverages, and another for Fruits and Vegetables. In the main.dart file, instead of referencing MyCategoriesPage, I'm going to reference SnacksAndBeveragesProducts. That is one widget that I have in the products.dart.

I need to update the import statement as well. This page only contains a list view of products and the structure of this page should be very familiar to you.  Every product has an image and a title. I set up a list of snacksAndBeverages products. you'll see I have a StatelessWidget for SnacksAndBeveragesProducts. you can see that this widget displays a list view using the ListView.builder constructor. Well, you're very familiar with list views at this point in time. So this needs no explanation. Similarly, I have a list of products, both fruits and vegetables. Once again, this is a ListView, as you can see on line 80. I'm just going to run this code and show you what this page looks like. The first page that we display is Snacks and Beverages. And you can see that this is just a simple list view of the products that we have hardcoded. 
I'm going to run this app. And you can see in the emulator that we now have a list of fresh fruits and vegetables displayed. Now back to the main.dart file, and I'm going to set the home variable to point to my home page. What we'll do now is set up a navigation to the rest of this application starting from the home page. I'll now reload this application so that the page that is displayed is the home page. Let's start by wiring up our navigation.

I want the Shop Now! button to direct me to the categories page. And that's what I'm going to wire up now. Now, if you scroll down a little bit on the homepage, you'll find that the Shop Now! button has an onPressed handler defined and  right now that handler does absolutely nothing. This is what I going to fix. I'm going to allow this button to navigate to the MyCategoriesPage. Navigation in Flutter is handled using the Navigator class.

The Navigator class manages all of the child widgets that you've navigated to using a stack data structure, that is it is a last in, first out data structure. Every screen that you navigate to is pushed on to this stack. And if you want to explicitly navigate to a screen, well, you have to push that screen onto the stack. When you want to navigate back, screens are popped from the stack and then you go back to the previous screens. So the navigator is what manages the stack data structure and the navigator is what I have used here. I reference the Navigator class and invoke the push method. I specify the current context, and I pass in a MaterialPageRoute that points to MyCategoriesPage, whose builder points to MyCategoriesPage. So that is the page that we will navigate to when we click on Shop Now! I, of course, need to add the import statement for the categories.dart file. It'll take me to my MyCategoriesPage. Now the cool thing is when you use the Navigator class to navigate between screens, the back button is automatically set up for you. Observe the back button on the top left corner. I'm now going to click on the back button and that'll take me back to the previous screen. I click on Shop Now! once again, well, that'll take me once again to the categories page.

The back button of your phone is also wired up. If you click on the back button of your phone, well, that'll take you back to the previous page. So now you have two pages wired up. You can click back and forth and see how things work. Next step, let's wire up these two buttons, Snacks and Beverages, and Fresh Fruits and Vegetables. Right now they do absolutely nothing. This involves changes to the categories.dart file. So I'm going to go ahead and open up that file.

Let me show you how to do that. Let's head over to product.dart where I'll update the SnacksAndBeveragesProducts widget to include an icon that'll handle navigating back a screen. I've updated the code. The change is at the very bottom where I've added an icon button. The icon button displays an arrow_back. and it's onPressed handler simply calls Navigator.pop. 
The navigator stack takes care of the rest. Navigator.pop, pass in the context, and you should be able to navigate back using this button. I'll just wait for the app to reload and I'll click on Shop Now!. That'll take me to the Categories page. I'll click on Snacks and Beverages. That'll take me to the list of snacks and beverages. And there you can see the back arrow icon button at the bottom. 

## Performing Navigation Using Named Routes
If you need to navigate to the same screen in many parts of your application, this approach can result in a lot of code duplication. The solution is to define a named route and use the named route for navigation. Well, we set the initialRoute property. The initialRoute is set to just the forward slash, that is its default value in any case, then the routes property is much more fleshed out. I have '/' mapping to MyHomePage, '/home' also points to MyHomePage.  '/categories' points to MyCategoriesPage, '/snacks_beverages' points to SnacksAndBeveragesProducts, and '/fruits_vegetables' points to FreshFruitsAndVegetablesProducts. So all of the screens that we have defined in our app now have a named routes. When you're using named routes, instead of invoking the Navigator.push method, you'll invoke Navigator.pushNamed. We can still continue to use Navigator.pop in order to navigate backwards. navigate to previous screens does not change even when we use named routes. The changes have been made.

Each time I navigate to the Categories page, I want to pass in some data. So I have created an arguments property and set the subtitle of that property to say, "I'm glad you chose to shop!" You can pass in any number of arguments you want in this manner using a map. Here I just have one key-value pair in this map, the "subtitle". Now let's head over to categories.dart. And here I'm going to show you how you can receive the argument that was passed in from the previous screen. The first thing is, you need to access the arguments. And for this, you use the ModalRoute class. The ModelRoute.of the current context will give you access to the routes. Then you access the settings and then the arguments and you cast that to a Map. We can perform this cast safely because we know that the arguments that we passed in to this page were in the form of a Map. Now that I have access to the arguments, we can extract the value that we want from the arguments variable.

And I'll do that right here within this text that I display. Inside of the text 'Here are the categories!' Now this will involve some changes to the widget, and that's why I need to update the entire widget. The changes mainly have to do with the fact that the const parameter now applies only to the first text widget and not to the text widget. I reference the subtitle property of the arguments map. Let's go ahead and reload. I'm going to click on Shop Now!. And when I head over to the Categories page, you should see, I'm glad you chose to shop! Now that you know how to pass arguments from one place to another, let's make a little more meaningful change to our app. In our app so far, we've had a separate Products page for snacks and beverages and fruits and vegetables. This is kind of wasteful, you should have a single Products page, and it should be able to display either snacks and beverages or fruits and vegetables. I simply have a named route '/products' that points to the Products page. So I do not have separate widgets for snacks and beverages and fruits and vegetables. The next change that I plan to make is to the categories.dart file. In the Categories page, instead of navigating separately to snacks and beverages, I'm simply going to navigate to products, but I'm going to pass in an additional argument. I'm going to indicate to this page that the category selected was snacks_beverages. I'm going to do something similar for the next elevated button as well. Instead of navigating explicitly to the fruits_vegetables screen, I'm going to navigate to the Products page once again.

And I'm going to pass in an argument indicating that the category that was selected was fruits_vegetables. These changes were fairly simple. The most significant change will be to the products.dart file. I still use the Product class to represent products. Every product has an image and a title. I've defined a productsMap mapping snacks_beverages, the category, to the list of snacks and beverages that we have and the fruits_vegetables category, to the list of fruits and vegetables that we have. If you now scroll down a bit, I have the Products widget. And in the build method, I access the arguments that were passed in to this widget. I use the ModalRoute and access settings.arguments as Map. Now each time we navigate to the Products page, we have to pass in the category of products to be displayed. 