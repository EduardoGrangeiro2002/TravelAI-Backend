# TravelAI

## Overview
TravelAI is an innovative application designed to enhance the travel planning experience. By inputting their travel details, users can leverage the power of artificial intelligence to receive tailored travel itineraries. The application consults an AI model to generate personalized travel plans that cater to the user's preferences and needs.

## Features
- **Travel Planning**: Users can enter details about their upcoming trips, including destinations and dates.
- **AI-Generated Itineraries**: The application utilizes artificial intelligence to provide comprehensive and personalized travel itineraries.

## Technology Stack
- **Backend**: Describe the backend technologies used (e.g., Node.js, Python, etc.)
- **Docker**: Containerization of the application for easy deployment and scalability.

## Getting Started

### Prerequisites
- Docker installed on your machine. To install Docker, follow the instructions on the [official Docker website](https://www.docker.com/get-started).

### Installation and Setup
1. **Clone the repository**
   ```bash
   git clone https://github.com/EduardoGrangeiro2002/TravelAI.git
   cd TravelAI
2. **Rename .env.example to .env**
3. **OpenAI key in .env**
4. **Docker**
   ```bash
   docker build -t travelai .
   docker run -d -p 8080:4567 travelai

### Accessing the Application
Once the application is running, you can access it by navigating to `http://localhost:8080` in your web browser. This will take you to the main interface where you can start planning your travel using the AI-generated itineraries.

## Contributing
Contributions to TravelAI are welcome! If you have suggestions or improvements, please fork the repository and submit a pull request.
