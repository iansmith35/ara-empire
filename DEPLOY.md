# Ara Empire - Docker Deployment

## 🚀 Quick Start

1. Make sure Docker and Docker Compose are installed
2. Run the application:

```bash
docker-compose up --build
```

3. Access the application:
   - Frontend: http://localhost
   - Backend API: http://localhost:5000
   - Database: localhost:5432

## 📝 Demo Credentials

After the seed runs automatically:
- **Email**: demo@example.com
- **Password**: demo123

## 🛠️ Development

### Local Development (without Docker)

**Backend:**
```bash
cd backend
npm install
cp .env.example .env
# Edit .env with your database credentials
npx prisma generate
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

### Docker Commands

**Stop all services:**
```bash
docker-compose down
```

**Rebuild and restart:**
```bash
docker-compose up --build
```

**View logs:**
```bash
docker-compose logs -f
```

**Access database:**
```bash
docker-compose exec postgres psql -U postgres -d ara_empire
```

## 🏗️ Architecture

- **Frontend**: Vite + React + Tailwind CSS (Nginx in production)
- **Backend**: Node.js + Express + Socket.io
- **Database**: PostgreSQL with Prisma ORM
- **Container Orchestration**: Docker Compose

## 📦 Services

- `postgres`: PostgreSQL 15
- `backend`: Node.js API server
- `frontend`: Nginx serving Vite build

## 🔧 Environment Variables

See `.env.example` files in backend and frontend directories.

## 📊 Database Migrations

Prisma handles migrations automatically in Docker, or manually:

```bash
cd backend
npx prisma migrate dev --name your_migration_name
```
