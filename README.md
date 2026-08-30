# Cat-Neighbourhood

Godot Engine video game project by Vjosa Islami and Vasil Blazhevski

## Description

The game is centered around a neighbourhood cat, showing their daily adventures from their house to the whole neighbourhood. The main objective of the game is to explore the neighbourhood, while collecting all the coins in a level to go to the next level. All throughout the levels the cat runs into obstacles such as dealing with other felines, interacting with humans, finding hidden coins and enjoying the beautiful scenery.

## Main functionalities  

The project is implemented in Godot Engine using Godot’s built in programming language GDScript, as it is a better implementation alternative to C# despite Godot’s support for usage of C# in its engine. GDScript offers more variety when it comes to game development, as it has a wider range of methods supporting functionalities for movement, interactions with items, handling the physics of the game between the cat and its surroundings. The choice to use Godot Engine over other technologies is due to the flexibility of the engine, from allowing an easy way to design the levels using the many widely available assets the Godot community has to offer to the organised structure of the Godot Engine UI.

The project is structured into 3 parts:

<img width="285" height="148" alt="Screenshot From 2026-08-30 21-23-29" src="https://github.com/user-attachments/assets/06bd867e-ac85-4595-af2a-f76119406825" />

 1. Assets: the place where all design aspects of the game are stored from every little item in the game to backgrounds of the scenes to all the structures built. All assets are gathered from the kenney.nl and itch.io websites, as they have a plethora of available designs for use.
 2. Scenes: a scene represents the game’s elements that form the playable game. Each scene has its own elements(nodes) from the area its designed in using tile map layers filled with assets to create a full design to the nodes representing the player(the cat in this game) and its camera following the movements of the player. Instancing another scene in a scene is the most common implementation of scenes as every little functionality is implemented in a separate scene for better design structure.
 3. Scripts: a script is where the source code for the game is found. Each script manages the implementation of a functionality like cat movements, collision with items and what to do with them. Every script is connected to a specific scene and is written using GDScript
 
The most important functionality of the game is the cat movements, implemented this way:

<img width="664" height="465" alt="Screenshot From 2026-08-30 21-24-52" src="https://github.com/user-attachments/assets/afb9d303-6e28-470a-90ab-fd064cb3c25f" />

The script makes a 2D character that moves horizontally and automatically turns around when it detects an obstacle.
Speed is a constant that helps control how fast the character moves
Direction determines the movement direction with 1 meaning moving to the right and -1 moving to the left.
The ready variables reference child nodes after the scene is ready:
ray_cast_right is for detecting obstacles on the cat’s right side, meanwhile ray_cast_left detects obstacles on the cat’s left side, animated_sprite is for controlling the cat’s appearance and horizontal flipping.
process is the function that runs once every frame with delta representing the time passed from the previous frame. Usage of delta helps smoothen movement independent of the frame rate. Whenever ray_cast_right detects an obstacle colliding with the cat, it changes the direction to left and flip_h faces the cat to the left, the if check with ray_cast_left does the opposite setting the direction to right and flips the cat to face the right.
position.x += Speed * direction * delta controls how the horizontal position for the cat changes by calculating how fast it is moving through Speed, whether its direction is left or right with direction and making the movement frame rate independent through delta.

## Tutorial

The game starts off with a starting menu with the option to start or exit the game:
<img width="1094" height="620" alt="image" src="https://github.com/user-attachments/assets/7fcb33d8-04a6-49c4-a27f-ff0a50f9d122" />

Once the start button is clicked the game begins in the Spring level of the game with our main protagonist: a brown cat chilling in its home, ready to go outside and explore. Movements in the game is controlled by using the WASD keys and SPACE for jumping. Each level has a certain number of coins that needs to be collected in order to move onto the next level, every coin is scattered around the house and neighbourhood:
<img width="1094" height="620" alt="image" src="https://github.com/user-attachments/assets/e7708ba6-1ebd-403a-9e6a-c6e37c72ff6e" />
<img width="1126" height="626" alt="image" src="https://github.com/user-attachments/assets/373d7f03-dabe-4fa7-8e36-d0d62f9551e7" />
<img width="1126" height="626" alt="image" src="https://github.com/user-attachments/assets/1505434a-7f4f-49a4-9638-3f6a6c0ef290" />





