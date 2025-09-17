# Mind Map Web Application

A full-stack web application for creating, editing, and managing mind maps with React frontend, Node.js backend, and MongoDB database.

## 🚀 Features

### 🟥 Core Features (Implemented)
- ✅ Create and edit mind maps
- ✅ Save/load from MongoDB Atlas
- ✅ Node relationships (parent-child)
- ✅ Clean, modern UI
- ✅ Backend REST API
- ✅ Drag and drop nodes
- ✅ Color-coded nodes
- ✅ Export to JSON
- ✅ Multiple maps management

### 🟨 Enhanced Features 
- ✅ Drag and drop nodes
- ✅ Color code nodes
- ✅ Export to JSON
- ✅ Multiple maps

### 🟩 Advanced Features (Future)
- ⏳ Real-time collaboration
- ⏳ Search within a map
- ⏳ Undo/redo functionality
- ⏳ Import from JSON
- ⏳ Export to PNG/PDF

## 🏗️ Project Structure

```
MindMapsApp/
├── back-end/          # Node.js + Express API
│   ├── config/        # Database configuration
│   ├── controllers/   # Route controllers
│   ├── models/        # Mongoose schemas
│   ├── routes/        # API routes
│   ├── server.js      # Main server file
│   └── package.json
├── front-end/         # React application
│   ├── src/
│   │   ├── components/    # React components
│   │   ├── services/      # API service layer
│   │   ├── types/         # TypeScript types
│   │   ├── utils/         # Utility functions
│   │   └── App.tsx        # Main app component
│   └── package.json
└── README.md
```

## 🛠️ Technology Stack

**Frontend:**
- React 18 with TypeScript
- Konva.js for canvas rendering
- Styled Components for styling
- Axios for API communication
- React Draggable for drag & drop

**Backend:**
- Node.js with Express
- MongoDB with Mongoose ODM
- CORS enabled
- Environment variables with dotenv

**Database:**
- MongoDB Atlas (Cloud)
- Database: `mindmap`
- Collection: `maps`

## 🚀 Getting Started

### Prerequisites
- Node.js (v16 or higher)
- npm or yarn
- MongoDB Atlas account (already configured)

### Installation

1. **Clone or navigate to the project directory:**
```bash
cd C:\Users\glrla\OneDrive\Documents\MindMapsApp
```

2. **Install Backend Dependencies:**
```bash
cd back-end
npm install
```

3. **Install Frontend Dependencies:**
```bash
cd ../front-end
npm install
```

### Running the Application

1. **Start the Backend Server:**
```bash
cd back-end
npm run dev
# Server runs on http://localhost:5000
```

2. **Start the Frontend Development Server:**
```bash
cd front-end
npm start
# App opens on http://localhost:3000
```

## 📡 API Endpoints

### Base URL: `http://localhost:5000/api`

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/health` | API health check |
| GET | `/maps` | Get all mind maps |
| GET | `/maps/:id` | Get specific mind map |
| POST | `/maps` | Create new mind map |
| PUT | `/maps/:id` | Update mind map |
| DELETE | `/maps/:id` | Delete mind map |

## 🗄️ Database Schema

```json
{
  "title": "String (required)",
  "nodes": [
    {
      "id": "String (unique)",
      "text": "String",
      "x": "Number (position)",
      "y": "Number (position)",
      "parent": "String | null",
      "color": "String (hex color)"
    }
  ],
  "connections": [
    {
      "from": "String (node id)",
      "to": "String (node id)"
    }
  ],
  "createdAt": "Date",
  "updatedAt": "Date"
}
```

## 💡 Usage

1. **Create a New Mind Map:**
   - Click "My Maps" in the header
   - Enter a title and click "Create New Mind Map"

2. **Add Nodes:**
   - Click anywhere on the canvas to create a new node
   - Drag nodes to reposition them

3. **Edit Nodes:**
   - Click on a node to select it
   - Use the Node Editor panel to change text, color, or position
   - Delete nodes using the Delete button

4. **Save Your Work:**
   - Click "Save" in the header to save changes
   - All changes are saved to MongoDB Atlas

5. **Export Data:**
   - Click "Export JSON" to download your mind map data

## 🔧 Configuration

The backend uses environment variables in `.env`:

```env
MONGODB_URI=mongodb+srv://[username]:[password]@cluster0.yldxfrm.mongodb.net/mindmap
PORT=5000
NODE_ENV=development
```

## 🚀 Deployment

### Frontend (Vercel)
1. Build the React app: `npm run build`
2. Deploy the `build` folder to Vercel
3. Update API base URL in `src/services/api.ts`

### Backend
- Deploy to Heroku, Railway, or any Node.js hosting service
- Set environment variables in production
- Update CORS settings for production domain

## 📝 Development Notes

- Frontend runs on port 3000
- Backend runs on port 5000
- CORS is configured for localhost development
- TypeScript is used for type safety
- Styled Components for modular CSS

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License.

---

Built with ❤️ using React, Node.js, and MongoDB Atlas