# Railway Deployment Guide

## Step 1: Deploy Database
1. In Railway dashboard, create new project
2. Add PostgreSQL database
3. Note the DATABASE_URL from the Variables tab

## Step 2: Deploy Backend
1. Create new Railway project
2. Connect your backend git repo (or push from backend/ directory)
3. Set environment variables:
   - DATABASE_URL=postgresql://... (from step 1)
   - JWT_SECRET=your-secret-key
   - PORT=5000
4. Deploy
5. After deployment, run in Railway shell:
   npx prisma migrate deploy
   npm run seed

## Step 3: Deploy Frontend
1. Create new Railway project
2. Connect your frontend git repo (or push from frontend/ directory)
3. Set environment variables:
   - VITE_API_URL=https://your-backend-project.up.railway.app
4. Deploy

## Step 4: Test
- Frontend: https://your-frontend-project.up.railway.app
- Login: demo@example.com / demo123
- Test real-time updates in multiple tabs

## Notes
- Railway auto-detects Dockerfiles
- Backend uses Node.js + Prisma
- Frontend uses Vite + Nginx
- Socket.io works over HTTPS automatically

