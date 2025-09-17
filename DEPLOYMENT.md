# Mind Maps App - Deployment Guide

## 🚀 Deploy to Vercel

### Prerequisites
1. A Vercel account
2. Git repository (GitHub, GitLab, or Bitbucket)
3. MongoDB Atlas database (optional, app can run with localStorage)

### Step 1: Prepare your repository
1. Push your code to a Git repository
2. Make sure all files are committed:
   ```bash
   git add .
   git commit -m "Ready for Vercel deployment"
   git push origin main
   ```

### Step 2: Deploy to Vercel

#### Option A: Using Vercel Dashboard
1. Go to [vercel.com](https://vercel.com) and sign in
2. Click "New Project"
3. Import your Git repository
4. Vercel will automatically detect the configuration from `vercel.json`
5. Click "Deploy"

#### Option B: Using Vercel CLI
1. Install Vercel CLI:
   ```bash
   npm i -g vercel
   ```
2. Login to Vercel:
   ```bash
   vercel login
   ```
3. Deploy from the project root:
   ```bash
   vercel --prod
   ```

### Step 3: Configure Environment Variables (Optional)

If you want to use MongoDB Atlas instead of localStorage:

1. In your Vercel dashboard, go to your project
2. Go to Settings > Environment Variables
3. Add the following variables:
   ```
   MONGODB_URI=mongodb+srv://username:password@cluster.mongodb.net/mindmapdb
   JWT_SECRET=your-super-secret-jwt-key-here
   NODE_ENV=production
   ```

### Step 4: Custom Domain (Optional)
1. In Vercel dashboard, go to your project
2. Go to Settings > Domains
3. Add your custom domain
4. Follow Vercel's instructions to configure DNS

## 🔧 Local Development

### Setup
```bash
# Install dependencies for both frontend and backend
npm run install-all

# Run in development mode (both frontend and backend)
npm run dev
```

### Build for production
```bash
# Build frontend only
npm run build

# Test production build locally
cd front-end && npx serve -s build
```

## 📁 Project Structure

```
MindMapsApp/
├── front-end/          # React TypeScript frontend
├── back-end/           # Node.js Express backend
├── vercel.json         # Vercel deployment configuration
├── package.json        # Root package.json with scripts
└── README.md           # This file
```

## 🌐 Features

- ✅ Create and edit mind maps
- ✅ User authentication with JWT
- ✅ Export to PNG, PDF, and JSON
- ✅ Real-time password validation
- ✅ Responsive design
- ✅ LocalStorage fallback when MongoDB is unavailable
- ✅ Production-ready deployment configuration

## 🔒 Security Features

- JWT token authentication
- Password hashing with bcrypt
- Rate limiting
- CORS protection
- Helmet security headers
- Input validation

## 📱 Browser Support

- Chrome (recommended)
- Firefox
- Safari
- Edge

## 📞 Support

For deployment issues, check:
1. Vercel deployment logs
2. Browser console for any errors
3. Network tab for API call issues

## 📄 License

MIT License - see LICENSE file for details