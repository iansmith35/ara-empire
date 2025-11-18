# 📋 Ara Empire Task Tracker

A full-stack task tracking web application with JWT authentication, built with React and Node.js/Express, using PostgreSQL database.

## Features

- 🔐 User authentication with JWT tokens
- ✨ Create, read, update, and delete tasks
- 👤 User-specific task management
- 🎨 Modern, responsive UI with gradient design
- 📊 Task status tracking (Pending, In Progress, Completed)
- 💾 PostgreSQL database for reliable data persistence
- 🔄 Real-time updates
- 📝 Task descriptions and metadata
- 📈 Task statistics endpoint

## Tech Stack

### Frontend
- React 18
- React Context API for state management
- Axios for API calls with interceptors
- CSS3 with modern gradients and animations
- JWT token storage in localStorage

### Backend
- Node.js
- Express.js
- PostgreSQL database
- JWT authentication
- bcryptjs for password hashing
- RESTful API architecture

## Project Structure

```
# 📋 Ara Empire - Modern Task Tracker

A full-stack task tracking application with real-time updates, beautiful glassmorphism UI, and production-ready Docker deployment.

![Status](https://img.shields.io/badge/status-running-success)
![Docker](https://img.shields.io/badge/docker-ready-blue)
![License](https://img.shields.io/badge/license-MIT-green)

## ✨ Features

- 🎨 **Modern Glassmorphism UI** - Smooth animations, beautiful glass effects, inspired by Notion and Linear
- 🌓 **Dark Mode** - Toggle between light and dark themes with persistence
- ⚡ **Real-time Updates** - Instant task synchronization using Socket.io
- 🔐 **Secure Authentication** - JWT-based auth with bcrypt password hashing
- 📱 **Responsive Design** - Works seamlessly on desktop and mobile
- 🐳 **Docker Ready** - One command deployment with Docker Compose
- 💾 **PostgreSQL + Prisma** - Type-safe database queries with automatic migrations

## 🚀 Quick Start

### Prerequisites
- Docker and Docker Compose installed

### Run the Application

```bash
# Clone and navigate to the project
cd ara-empire

# Start all services
docker-compose up -d

# Wait ~30 seconds for services to initialize
# Open http://localhost in your browser
```

### Demo Credentials
```
Email: demo@example.com
Password: demo123
```

## 🏗️ Architecture

```
┌─────────────────────────────────────────────┐
│           Frontend (React + Vite)           │
│  - Tailwind CSS + Glassmorphism             │
│  - Socket.io Client                         │
│  - Dark Mode Context                        │
│  - Nginx (Production)                       │
└──────────────────┬──────────────────────────┘
                   │ HTTP/WebSocket
┌──────────────────▼──────────────────────────┐
│        Backend (Node.js + Express)          │
│  - RESTful API                              │
│  - JWT Authentication                       │
│  - Socket.io Server                         │
│  - Prisma ORM                               │
└──────────────────┬──────────────────────────┘
                   │ Prisma Client
┌──────────────────▼──────────────────────────┐
│       Database (PostgreSQL 15)              │
│  - Users & Tasks tables                     │
│  - Persistent volume                        │
│  - Auto migrations & seeding                │
└─────────────────────────────────────────────┘
```

## 🛠️ Tech Stack

### Frontend
- **React 18** - Modern React with hooks
- **Vite** - Lightning-fast build tool
- **Tailwind CSS 3** - Utility-first styling
- **Socket.io Client** - Real-time WebSocket
- **Nginx Alpine** - Production web server

### Backend
- **Node.js 18** - JavaScript runtime
- **Express 4** - Web framework
- **Prisma ORM** - Type-safe database client
- **Socket.io** - WebSocket server
- **JWT** - Token-based authentication
- **bcryptjs** - Password hashing

### Database
- **PostgreSQL 15** - Relational database
- **Prisma Migrate** - Schema migrations

### DevOps
- **Docker** - Containerization
- **Docker Compose** - Multi-container orchestration
- **Multi-stage Builds** - Optimized images

## 📁 Project Structure

```
ara-empire/
├── backend/
│   ├── config/          # Database & auth config
│   ├── controllers/     # Business logic
│   ├── middleware/      # Auth middleware
│   ├── models/          # Prisma models
│   ├── prisma/          # Schema & migrations
│   ├── routes/          # API routes
│   ├── Dockerfile       # Backend container
│   └── server.js        # Express + Socket.io server
├── frontend/
│   ├── public/          # Static assets
│   ├── src/
│   │   ├── components/  # React components
│   │   ├── context/     # Auth & Theme contexts
│   │   └── services/    # API & Socket services
│   ├── Dockerfile       # Frontend container
│   ├── nginx.conf       # Nginx configuration
│   └── vite.config.js   # Vite configuration
├── docker-compose.yml   # Service orchestration
├── USAGE.md            # Detailed usage guide
└── README.md           # This file
```

## 🎯 Usage

See [USAGE.md](./USAGE.md) for comprehensive documentation including:
- API endpoints
- Database operations
- Development mode
- Troubleshooting
- Production deployment

## 📊 Available Scripts

### Docker Commands
```bash
docker-compose up -d              # Start services
docker-compose down               # Stop services
docker-compose logs -f            # View logs
docker-compose ps                 # Check status
docker-compose exec backend sh    # Backend shell
```

### Development Commands
```bash
# Backend (development mode)
cd backend
npm install
npm run dev

# Frontend (development mode)
cd frontend  
npm install
npm run dev
```

## 🔌 Ports

- **80** - Frontend (Nginx)
- **5000** - Backend API
- **5432** - PostgreSQL

## 🌟 Key Features Explained

### Real-time Updates
Tasks are synchronized instantly across all connected clients using Socket.io. When you create, update, or delete a task, all other users see the changes immediately.

### Glassmorphism Design
The UI features modern glass-effect components with:
- Backdrop blur effects
- Semi-transparent backgrounds
- Subtle borders and shadows
- Smooth hover and focus animations

### Dark Mode
Theme preference is saved to localStorage and automatically applied on page load. The entire UI adapts seamlessly with custom dark variants.

### Secure Authentication
- Passwords hashed with bcrypt (10 rounds)
- JWT tokens with 7-day expiration
- Protected API routes with middleware
- Token stored in localStorage

## 🧪 Testing

### API Testing
```bash
# Login
curl -X POST http://localhost:5000/api/auth/login \
  -H "Content-Type: application/json" \
  -d '{"email":"demo@example.com","password":"demo123"}'

# Get tasks (replace TOKEN)
curl http://localhost:5000/api/tasks \
  -H "Authorization: Bearer TOKEN"
```

### Real-time Testing
1. Open http://localhost in two browser windows
2. Login with demo credentials in both
3. Create a task in one window
4. Watch it appear instantly in the other window

## 🔧 Configuration

### Environment Variables

**Backend** (`.env`):
```env
DATABASE_URL=postgresql://postgres:postgres@postgres:5432/ara_empire
JWT_SECRET=your-secret-key-here-change-in-production
PORT=5000
```

**Frontend** (Vite env):
```env
VITE_API_URL=http://localhost:5000
```

## 🚢 Production Deployment

This application is production-ready. For cloud deployment:

1. **Container Registry**: Push images to Docker Hub, AWS ECR, or GCP Artifact Registry
2. **Secrets Management**: Use AWS Secrets Manager, Azure Key Vault, or similar
3. **SSL/TLS**: Configure reverse proxy with Let's Encrypt certificates
4. **Database**: Use managed PostgreSQL (AWS RDS, Azure Database, etc.)
5. **Scaling**: Use Kubernetes or Docker Swarm for horizontal scaling
6. **Monitoring**: Add logging, metrics, and error tracking

## 📝 Development Notes

### Vite Configuration
The frontend uses Vite's proxy feature to forward `/api` requests to the backend during development. In production, Nginx handles this.

### Prisma Workflows
```bash
# Create migration
npx prisma migrate dev --name migration_name

# Apply migrations
npx prisma migrate deploy

# Seed database
npm run seed

# Prisma Studio (GUI)
npx prisma studio
```

## 🤝 Contributing

This is a demo project for learning purposes. Feel free to fork and modify!

## 📄 License

MIT License - feel free to use this project for learning or as a starting point for your own applications.

## 🙏 Acknowledgments

- UI inspired by Notion and Linear
- Built with modern web technologies
- Designed for developer experience

---

**Built with ❤️ using React, Node.js, and PostgreSQL**

For detailed usage instructions, see [USAGE.md](./USAGE.md)
/
├── backend/
│   ├── config/
│   │   ├── database.js          # PostgreSQL connection pool
│   │   └── schema.sql            # Database schema
│   ├── controllers/
│   │   ├── authController.js     # Authentication logic
│   │   └── tasksController.js    # Task CRUD operations
│   ├── middleware/
│   │   └── auth.js               # JWT verification middleware
│   ├── models/
│   │   ├── userModel.js          # User database operations
│   │   └── taskModel.js          # Task database operations
│   ├── routes/
│   │   ├── auth.js               # Auth routes
│   │   └── tasks.js              # Task routes (protected)
│   ├── scripts/
│   │   └── initDb.js             # Database initialization
│   ├── utils/
│   │   └── jwt.js                # JWT token utilities
│   ├── .env.example              # Environment variables template
│   ├── package.json
│   └── server.js                 # Express server entry point
├── frontend/
│   ├── public/
│   │   └── index.html
│   ├── src/
│   │   ├── components/
│   │   │   ├── Auth.css
│   │   │   ├── Login.js
│   │   │   ├── Register.js
│   │   │   ├── TaskForm.js
│   │   │   ├── TaskForm.css
│   │   │   ├── TaskList.js
│   │   │   ├── TaskList.css
│   │   │   ├── TaskItem.js
│   │   │   └── TaskItem.css
│   │   ├── context/
│   │   │   └── AuthContext.js    # Authentication context
│   │   ├── services/
│   │   │   └── api.js            # API client with interceptors
│   │   ├── App.js
│   │   ├── App.css
│   │   ├── index.js
│   │   └── index.css
│   └── package.json
└── README.md
```

## Installation

### Prerequisites
- Node.js (v14 or higher)
- PostgreSQL (v12 or higher)
- npm or yarn

### Database Setup

1. Install PostgreSQL if not already installed:
```bash
# Ubuntu/Debian
sudo apt-get update
sudo apt-get install postgresql postgresql-contrib

# macOS (using Homebrew)
brew install postgresql
```

2. Start PostgreSQL service:
```bash
# Ubuntu/Debian
sudo service postgresql start

# macOS
brew services start postgresql
```

3. Create the database:
```bash
# Access PostgreSQL prompt
sudo -u postgres psql

# Create database and user
CREATE DATABASE ara_empire;
CREATE USER your_user WITH PASSWORD 'your_password';
GRANT ALL PRIVILEGES ON DATABASE ara_empire TO your_user;
\q
```

### Backend Setup

1. Navigate to the backend directory:
```bash
cd backend
```

2. Install dependencies:
```bash
npm install
```

3. Create environment file:
```bash
cp .env.example .env
```

4. Edit `.env` file with your configuration:
```env
PORT=5000
NODE_ENV=development

DB_HOST=localhost
DB_PORT=5432
DB_NAME=ara_empire
DB_USER=your_user
DB_PASSWORD=your_password

JWT_SECRET=your_secure_random_string_here
JWT_EXPIRE=7d
```

5. Initialize the database schema:
```bash
npm run init-db
```

6. Start the backend server:
```bash
npm start
```

For development with auto-reload:
```bash
npm run dev
```

The backend will run on `http://localhost:5000`

### Frontend Setup

1. Open a new terminal and navigate to the frontend directory:
```bash
cd frontend
```

2. Install dependencies:
```bash
npm install
```

3. Start the React development server:
```bash
npm start
```

The frontend will run on `http://localhost:3000` and automatically open in your browser.

## Usage

### Authentication

1. **Register**: Create a new account with username, email, and password
2. **Login**: Sign in with your email and password
3. **Logout**: Click the logout button in the header

### Task Management

1. **Add a Task**: Fill out the form with a title, optional description, and status, then click "Add Task"
2. **View Tasks**: All your tasks are displayed in the list below the form
3. **Edit a Task**: Click the "Edit" button on any task to modify it
4. **Delete a Task**: Click the "Delete" button to remove a task
5. **Task Status**: Tasks are color-coded by status:
   - 🟠 Orange: Pending
   - 🔵 Blue: In Progress
   - 🟢 Green: Completed

## API Endpoints

### Authentication
- `POST /api/auth/register` - Register a new user
  ```json
  {
    "username": "string",
    "email": "string",
    "password": "string"
  }
  ```

- `POST /api/auth/login` - Login user
  ```json
  {
    "email": "string",
    "password": "string"
  }
  ```

- `GET /api/auth/me` - Get current user (requires authentication)
  - Headers: `Authorization: Bearer <token>`

### Tasks (All require authentication)
- `GET /api/tasks` - Get all tasks for authenticated user
- `GET /api/tasks/:id` - Get a single task by ID
- `POST /api/tasks` - Create a new task
  ```json
  {
    "title": "string",
    "description": "string (optional)",
    "status": "pending|in-progress|completed (optional)"
  }
  ```
- `PUT /api/tasks/:id` - Update a task
- `DELETE /api/tasks/:id` - Delete a task
- `GET /api/tasks/stats` - Get task statistics

### Health Check
- `GET /api/health` - Server health check

## Authentication Flow

1. User registers or logs in
2. Server validates credentials and generates JWT token
3. Token is sent to client and stored in localStorage
4. Client includes token in Authorization header for protected routes
5. Server validates token using middleware before processing requests
6. Invalid/expired tokens result in 401 Unauthorized response

## Database Schema

### Users Table
```sql
- id: SERIAL PRIMARY KEY
- username: VARCHAR(50) UNIQUE
- email: VARCHAR(100) UNIQUE
- password: VARCHAR(255) (hashed)
- created_at: TIMESTAMP
- updated_at: TIMESTAMP
```

### Tasks Table
```sql
- id: SERIAL PRIMARY KEY
- user_id: INTEGER (Foreign Key to users)
- title: VARCHAR(255)
- description: TEXT
- status: VARCHAR(20)
- created_at: TIMESTAMP
- updated_at: TIMESTAMP
```

## Development

### Running Both Servers

You'll need two terminal windows:

Terminal 1 (Backend):
```bash
cd backend && npm run dev
```

Terminal 2 (Frontend):
```bash
cd frontend && npm start
```

### Environment Variables

Backend `.env` file:
- `PORT`: Server port (default: 5000)
- `NODE_ENV`: Environment (development/production)
- `DB_HOST`: PostgreSQL host
- `DB_PORT`: PostgreSQL port
- `DB_NAME`: Database name
- `DB_USER`: Database user
- `DB_PASSWORD`: Database password
- `JWT_SECRET`: Secret key for JWT signing
- `JWT_EXPIRE`: Token expiration time

## Security Features

- Password hashing with bcryptjs
- JWT token-based authentication
- Protected API routes with middleware
- SQL injection prevention with parameterized queries
- CORS enabled for cross-origin requests
- Automatic token validation and refresh
- Secure password requirements (minimum 6 characters)

## Future Enhancements

- Password reset functionality
- Email verification
- Task categories/tags
- Due dates and reminders
- Search and filter functionality
- Task priority levels
- Task sharing between users
- Dark mode
- Mobile app
- Task attachments
- Notifications

## Troubleshooting

### Database Connection Issues
- Verify PostgreSQL is running: `sudo service postgresql status`
- Check database credentials in `.env` file
- Ensure database exists: `psql -l`

### Authentication Issues
- Clear localStorage and re-login
- Check JWT_SECRET is set in `.env`
- Verify token expiration settings

### CORS Issues
- Ensure backend CORS is properly configured
- Check frontend API URL matches backend

## License

ISC

## Contributing

Feel free to submit issues and enhancement requests!