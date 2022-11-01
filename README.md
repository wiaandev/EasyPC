
<br />

![GitHub repo size](https://img.shields.io/github/repo-size/wiaandev/EasyPC?color=purple)
![GitHub watchers](https://img.shields.io/github/watchers/wiaandev/EasyPC?color=lightblue)
![GitHub language count](https://img.shields.io/github/languages/count/wiaandev/EasyPC?color=purple)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/wiaandev/EasyPC?color=lightblue)
[![LinkedIn][linkedin-shield]][linkedin-url]
[![Instagram][instagram-shield]][instagram-url]

<h5 align="center" style="padding:0;margin:0;">Reinhardt de Beer | Wiaan Duvenhage</h5>
<h5 align="center" style="padding:0;margin:0;">21100115 | 200307</h5>
<h6 align="center">CC204 | Internet of Things</h6>
</br>
<p align="center">

  <a href="https://github.com/wiaandev/WorkWare">
    <img src="client\src\Assets\logo-light.svg/" width="100px">
  </a>

<h3 align="center">EasyPC</h3>

  <p align="center">
    A simple app that helps users build a computer<br>

   <br />
   <br />
   <a href="https://youtu.be/M6FZHHjd9bg">View Demo</a>
    ·
    <a href="https://github.com/wiaandev/EasyPC/issues">Report Bug</a>
    ·
    <a href="https://github.com/wiaandev/EasyPC/issues">Request Feature</a>
</p>
<!-- TABLE OF CONTENTS -->

## Table of Contents

- [About the Project](#about-the-project)
    - [Project Description](#project-description)
    - [Built With](#built-with)
- [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [How to install](#how-to-install)
- [Features and Functionality](#features-and-functionality)
- [Concept Process](#concept-process)
    - [Ideation](#ideation)
    - [Wireframes](#wireframes)
- [Development Process](#development-process)
    - [Implementation Process](#implementation-process)
        - [Highlights](#highlights)
        - [Challenges](#challenges)
    - [Future Implementation](#peer-reviews)
- [Final Outcome](#final-outcome)
    - [Mockups](#mockups)
    - [Video Demonstration](#video-demonstration)
- [Conclusion](#conclusion)
- [License](#license)
- [Contact](#contact)
- [Acknowledgements](#acknowledgements)

<!--PROJECT DESCRIPTION-->

## About the Project

<!-- header image of project -->

![image1][image1]

### Project Description

Welcome to EasyPC. This is an app that guides users on building their very own computer. Whether it be for personal use or something that you want to use for work, EasyPC can help and show you that it is not as scary and daunting as it looks.

### Built With
[<img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/swift/swift-original.svg" width="5%" height="5%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;](https://developer.apple.com/swift/)
[<img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/xcode/xcode-original.svg" width="5%" height="5%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;](https://developer.apple.com/xcode/)





<!-- GETTING STARTED -->
<!-- Make sure to add appropriate information about what prerequesite technologies the user would need and also the steps to install your project on their own mashines -->

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

For development, the latest version of Xcode is required. The latest version can be downloaded from [Xcode](https://apps.apple.com/us/app/xcode/id497799835?mt=12)

### Installation

Here are a couple of ways to clone this repo:

1.  GitHub Desktop </br>
    Enter `https://github.com/wiaandev/WorkWare.git` into the URL field and press the `Clone` button.

2.  Clone Repository </br>
    Run the following in the command-line to clone the project:

    ```sh
    git clone https://github.com/wiaandev/WorkWare.git
    ```

        Open `Software` and select `File | Open...` from the menu. Select cloned directory and press `Open` button

3.  Install Dependencies </br>
    Run the following in the command-line to install all the required dependencies:

    ```sh
    npm install
    ```

## Features and Functionality

<!-- note how you can use your gitHub link. Just make a path to your assets folder -->


### Viewing Individual Parts

![image2][https://drive.google.com/uc?export=view&id=XXX]
The user can view each instruction and required tool for every listed computer part on the landing screen, by clicking on one of the cards.

### Filter Parts

![image3][https://drive.google.com/uc?export=view&id=XXX]
The user can filter through a wide variety of parts via the search bar at the very top of the landing page.

### Change Appearance

![image4][https://drive.google.com/uc?export=view&id=XXX]
The user can decide what appearance they want to run on the EasyPC app by simply toggling between light and dark mode in the settings page.

### Timer
The user can time themselves. When reading through the instructions, above it will be a stopwatch, where they can see how fast they can install a certain component.

<!-- CONCEPT PROCESS -->
<!-- Briefly eWorkWarelain your concept ideation process -->
<!-- here you will add things like wireframing, data structure planning, anything that shows your process. You need to include images-->

## Concept Process

Playing around with the colors, I really did enjoy the blue and purple color and I really felt like they compliment each other really well. Going with a Sans-Serif font is always my way to go and I think it gave a good vibe to the application as well.

### Wireframes

![image8](https://drive.google.com/uc?export=view&id=XXX)

### Moodboard
![image9][https://drive.google.com/uc?export=view&id=XXX]

## Development Process

The `Development Process` is the technical implementations and functionality done for the app.

### Implementation Process

- I used `npx create-react app` to create this React project. I implemented component-based development instead of classes. By doing this, I will be able to easily inject and eject components and sub-components into my project, making it refactorable and reusable instead of writing up classes I have to do everytime making it tedious and redundant

- I implemented to `scss` for the styling of my project and used `module.scss` to style each individual component. An id get given to each classname, making the styling super easy

- I incorporated MongoDB Atlas as my database where I will get and send my data to.

- `axios` was implemented so that I can make HTTP requests to the database server so that I can retrieve, edit, delete and send (CRUD) data to it

- ExpressJS & NodeJS was used so that I can write JavaScript in both my front-end and back-end

- ExpressJS was also used to communicate to my database

- I utilised the `cors` middleware to bypass any errors I will encounter when utilising MongoDB

#### Highlights

<!-- stipulated the highlight you eWorkWareerienced with the project -->

- A very big high point was seeing the data from my backend being populated dynamically in my front-end.
- Seeing everything come together in the end was also a big highlight for me
- Even though working with the MERN stack was a challenge, it was also extremely fun and interesting

#### Challenges

<!-- stipulated the challenges you faced with the project and why you think you faced it or how you think you'll solve it (if not solved) -->

- Implementing the cart was definitely a challenge, I didn't know how I would go about doing it, but luckily with the help of my peers, I was able to get it to work like intended.
- In the beginning I did not know how I was going to map my objects in MongoDB and translate it to my front-end.
- Showing only certain data was definitely challenging, as I did not get to it, so eventually I just dropped it.

### Future Implementation

<!-- TODO Change this! -->

<!-- stipulate functionality and improvements that can be implemented in the future. -->

- I would like to implement chart.js for data visualisation
- I want to show the total amount in the cart
- I want to add a wishlist page
- I want to add an about us page
- I want to add video section of each guitar when viewing the guitar individually

<!-- MOCKUPS -->

## Final Outcome

### Mockups

<!-- TODO Change this -->

![image2][https://drive.google.com/uc?export=view&id=XXX]
![image3][https://drive.google.com/uc?export=view&id=XXX]
![image4][https://drive.google.com/uc?export=view&id=XXX]
<br>


<!-- VIDEO DEMONSTRATION -->

### Video Demonstration

<!-- TODO Change this -->

To see a run through of WorkWare, click below:

[View Demonstration](https://youtu.be/M6FZHHjd9bg)

See the [open issues](https://github.com/wiaandev/EasyPC/issues) for a list of proposed features (and known issues).

<!-- AUTHORS -->

## Authors

- **Wiaan Duvenhage** - [Github](https://github.com/wiaandev)

<!-- LICENSE -->

## License

Distributed under the MIT License. See `LICENSE` for more information.\

<!-- LICENSE -->

## Contact

- **Wiaan Duvenhage** - [wiaanduvenhage.dev@gmail.com](mailto:wiaanduvenhage.dev@gmail.com) - [@wiaan.dev](https://www.instagram.com/wiaan.dev/)
- **Project Link** - https://github.com/wiaandev/WorkWare

<!-- ACKNOWLEDGEMENTS -->

## Acknowledgements

<!-- all resources that you used and Acknowledgements here -->
<!-- TODO Change this -->

- [Stack Overflow](https://stackoverflow.com/)
- [Figma](https://www.figma.com/)
- [Lecturer](https://github.com/ArmandPret)
- [Freepik](https://www.freepik.com)
- [How to build a stopwatch](https://medium.com/geekculture/build-a-stopwatch-in-just-3-steps-using-swiftui-778c327d214b)
- [Splash Screen](https://www.youtube.com/watch?v=0ytO3wCRKZU)
- [Onboarding](https://www.youtube.com/watch?v=rCgbJf5SWQE)
- [Leander van Aarde](https://github.com/leandervanAarde)
- [Vian Du Plessis](https://github.com/Vian-du-Plessis)
- [Reinhardt de Beer](https://github.com/EpicBlue1)

[image1]: client/src/Assets/mockups/mockup1.jpg
[image2]: client/src/Assets/mockups/mockup2.jpg
[image3]: client/src/Assets/mockups/mockup3.jpg
[image4]: client/src/Assets/mockups/mockup4.jpg
[image5]: client/src/Assets/mockups/mockup5.jpg
[image6]: client/src/Assets/mockups/mockup6.jpg
[image7]: client/src/Assets/mockups/mockup7.jpg
[image8]: client/src/Assets/mockups/wireframes.jpg
[image9]: client/src/Assets/mockups/moodboard.jpg
[image10]: Images/mockup10.jpg
[image11]: Images/mockup2.jpg
[image12]: Images/mockup3.jpg
[image13]: Images/mockup4.jpg
[image14]: client/src/Assets/mockups/mockup8.jpg

[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/wiaan-duvenhage-95118823a/
[instagram-shield]: https://img.shields.io/badge/-Instagram-black.svg?style=flat-square&logo=instagram&colorB=555
[instagram-url]: https://www.instagram.com/wiaan.dev/
