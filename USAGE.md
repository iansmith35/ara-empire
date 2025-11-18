# Task Tracker - Usage Guide

## 🚀 Quick Start

Your full-stack task tracking application is now running!

### Access the Application

- **Frontend**: http://localhost
- **Backend API**: http://localhost:5000
- **Database**: PostgreSQL on port 5432

### Demo Credentials

```
Email: demo@example.com
Password: demo123
```

## 🎨 Features

### Modern UI
- **Glassmorphism Design**: Beautiful glass-effect components with smooth animations
- **Dark Mode**: Toggle between light and dark themes (saved in localStorage)
- **Real-time Updates**: Instant task synchronization across all connected clients
- **Responsive Layout**: Collapsible sidebar and mobile-friendly design

### Task Management
- ✅ Create, read, update, and delete tasks
- 📊 Task status tracking (todo, in-progress, completed)
- 🏷️ Priority levels (low, medium, high)
- 📝 Task descriptions and due dates
- 🔍 Filter and search capabilities

### Authentication
- 🔐 JWT-based secure authentication
- 👤 User registration and login
- 🔒 Protected routes and API endpoints

## 🛠️ Tech Stack

### Frontend
- **React 18** with Vite (ultra-fast builds)
- **Tailwind CSS** for styling
- **Socket.io Client** for real-time updates
- **Nginx** for production serving

### Backend
- **Node.js + Express**
- **PostgreSQL** with Prisma ORM
- **JWT** authentication with bcryptjs
- **Socket.io** for WebSocket connections

### DevOps
- **Docker Compose** for orchestration
- **Multi-stage Docker builds** for optimized images
- **Health checks** and dependency management

## 📦 Docker Commands

### Start all services
```bash
docker-compose up -d
```

### View logs
```bash
docker-compose logs -f              # All services
docker-compose logs -f backend      # Backend only
docker-compose logs -f frontend     # Frontend only
```

### Stop services
```bash
docker-compose down                 # Stop and remove containers
docker-compose down -v              # Also remove volumes (deletes database data)
```

### Rebuild after changes
```bash
docker-compose up --build -d
```

### Database operations
```bash
# Access PostgreSQL shell
docker-compose exec postgres psql -U postgres -d ara_empire

# Run Prisma migrations
docker-compose exec backend npx prisma migrate deploy

# Re-seed database
docker-compose exec backend npm run seed
```

## 🔧 Development Mode

### Run locally without Docker

**Backend:**
```bash
cd backend
npm install
npx prisma migrate dev
npm run seed
npm run dev
```

**Frontend:**
```bash
cd frontend
npm install
npm run dev
```

## 🌐 API Endpoints

### Authentication
- `POST /api/auth/register` - Register new user
- `POST /api/auth/login` - Login user

### Tasks (requires authentication)
- `GET /api/tasks` - Get all user tasks
- `POST /api/tasks` - Create new task
- `PUT /api/tasks/:id` - Update task
- `DELETE /api/tasks/:id` - Delete task

### Example API Call
```bash
# Login
curl -X POST http://localhost:5000/api/auth/login \
  -H "Content-Type: application/json" \
  -d '{"email":"demo@example.com","password":"demo123"}'

# Get tasks (replace TOKEN with the JWT from login)
curl http://localhost:5000/api/tasks \
  -H "Authorization: Bearer TOKEN"
```

## 🎯 Using the Application

1. **Open** http://localhost in your browser
2. **Login** with demo credentials (demo@example.com / demo123)
3. **View** existing tasks in the dashboard
4. **Create** new tasks using the "+ New Task" form
5. **Edit** tasks by clicking the edit icon
6. **Delete** tasks by clicking the delete icon
7. **Toggle** dark mode using the moon/sun icon in the header
8. **Test** real-time updates by opening multiple browser tabs

## 🔍 Troubleshooting

### Port conflicts
If ports 80, 5000, or 5432 are already in use, edit `docker-compose.yml` to change port mappings.

### Database connection issues
```bash
# Check if postgres is healthy
docker-compose ps

# View database logs
docker-compose logs postgres
```

### Frontend not loading
```bash
# Check Nginx logs
docker-compose logs frontend

# Verify build completed
docker-compose exec frontend ls -la /usr/share/nginx/html
```

### Backend errors
```bash
# Check backend logs
docker-compose logs backend

# Verify Prisma client is generated
docker-compose exec backend npx prisma --version
```

## 📊 Database Schema

### Users Table
- `id` - Primary key
- `username` - Unique username
- `email` - Unique email
- `password` - Bcrypt hashed password
- `createdAt` - Timestamp

### Tasks Table
- `id` - Primary key
- `title` - Task title
- `description` - Task details
- `status` - todo | in-progress | completed
- `priority` - low | medium | high
- `dueDate` - Optional due date
- `userId` - Foreign key to users
- `createdAt` - Timestamp
- `updatedAt` - Timestamp

## 🚢 Production Deployment

This application is production-ready with:

- ✅ Optimized multi-stage Docker builds
- ✅ Production Nginx configuration
- ✅ Environment variable management
- ✅ Database migrations and seeding
- ✅ Health checks and dependency ordering
- ✅ Persistent volume for database data

For cloud deployment (AWS, Azure, GCP, DigitalOcean):

1. Push images to a container registry
2. Update `docker-compose.yml` with production environment variables
3. Use Docker Swarm or Kubernetes for orchestration
4. Configure SSL/TLS certificates (Let's Encrypt)
5. Set up proper backup strategy for PostgreSQL volume

## 📝 License

This is a demo application for learning purposes.

---

**Enjoy your modern task tracking application!** 🎉
