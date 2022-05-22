Music application
  The Music application is created to improve the experiene of the listeners who love listening to music. 
  The user can enjoy their favorite songs with high quality music video with no high speed internet required.

Github Link: https://github.com/Lon2020/musicApp

if cannot access the github link, please contact to this email: sorakrit.wisawapakorn-1@student.uts.edu.au

Members:
Sorakrit Wisawapakorn 13754306
Edoardo Menon 13243365
Lingxi Yuan 14198764

************Installation Guide**********
1.  After cloning the project, open the terminal at the folder and run the command:
        $pod instll
2.  If you have already opened your Xcode project close it. From now on you’ll open the workspace file instead of the project file. 
    Double click on the workspace file to open it. 
3.  If build the project and simulator did not show up, make sure you selected the music application instead of Parse-Parse. 
    It located next to building status on the top.
    
Sorakrit Wisawapakorn 13754306
  I am reponsible for the playList and Play song. I created a playlist using a table view and table view cells. The playlist contains album image, song's name and artise name.
I also implemented the AVPlayerController to play the song. When the user selected the song, the playlistController will pass the song data to AVPlayerController. 
The AVPlayerController will then excute the data and play the music.

Edoardo Menon 13243365
  Responsibility:
    It was my responsibility within the project to add all features together. 
    This includes both the Login/Logout/Registration features and the Song playing. To complete this, 
    I merged the two branches in Github together, and began working on the Segues within the storyboard which connected Login/Register to Songs page. 
    I also added many constraints within the existing storyboards to allow the Application to accomodate different screen sizes, while also changing the themes of certain buttons and elements to better suit the black/white theme which already existed.

    It was also my responsibility to create a class to handle the creation of all Songs when the application first opens. 
    This class handles the creation of all Songs, making a new Song Struct for each song, then providing a method to retrieve all songs which can be called anywhere within the application.

Lingxi Yuan 14198764
  I do the sign in, register and log out functions. And I also do the debugging and testing part.
  These functions use the ‘back4app’ cloud service and the ‘Parse SDK’ to achieve the goals. When the user type their username and password and then click ‘Sign Up’ button, the data will transfer safely to the back4app database in the cloud. Next time when the user click sign in page, they type corrent username and password, the screen will show text ‘login successful’, but if the data doesn’t match, the error message ‘Invalid username or password’ will appear. After go into the mainpage, user can click sign out button to go to the welcome page. 
