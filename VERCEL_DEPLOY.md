# 🚀 Quick Vercel Deployment Guide

## One-Click Deployment Instructions

### 1. Push to Git
```bash
# Initialize git if not already done
git init
git add .
git commit -m "Initial commit - Ready for Vercel deployment"

# Push to GitHub/GitLab (create repository first)
git remote add origin https://github.com/yourusername/mindmaps-app.git
git push -u origin main
```

### 2. Deploy to Vercel

#### Option A: Import from Git (Recommended)
1. Go to [vercel.com](https://vercel.com)
2. Click "New Project"
3. Import your Git repository
4. Vercel will automatically detect the configuration
5. Click "Deploy" (no additional configuration needed)

#### Option B: Vercel CLI
```bash
npm i -g vercel
vercel login
vercel --prod
```

### 3. Environment Variables (Optional)
Only needed if you want MongoDB instead of localStorage:

In Vercel Dashboard → Project → Settings → Environment Variables:
```
MONGODB_URI=mongodb+srv://username:password@cluster.mongodb.net/mindmapdb
JWT_SECRET=your-super-secret-jwt-key-here
NODE_ENV=production
```

### 4. Your App Will Be Live! 🎉

- Frontend: https://your-app-name.vercel.app
- API: https://your-app-name.vercel.app/api/health

## Features Available After Deployment

✅ User registration and login
✅ Create and edit mind maps  
✅ Export to PNG, PDF, and JSON
✅ Responsive design for mobile
✅ Secure authentication with JWT
✅ Works with or without MongoDB

## Troubleshooting

If you encounter issues:
1. Check Vercel deployment logs
2. Verify all files are committed to git
3. Check browser console for errors
4. API endpoints should work at `/api/*`

## Local Development
```bash
# Frontend
cd front-end && npm start

# Backend  
cd back-end && npm start
```

That's it! Your Mind Maps app should now be live on Vercel! 🎊