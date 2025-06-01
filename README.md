# 🧠 ChAIf SES – Menu Planning & Stock AI Assistant

**ChAIf SES** est une application web intelligente pour les professionnels de la restauration, permettant de :
- Générer des menus à partir du stock disponible (IA)
- Gérer les stocks, fournisseurs et alertes
- Planifier les menus à la semaine
- Comparer les prix fournisseurs

---

## 🚀 Démo en ligne

🔗 [Lien de démo (à insérer après déploiement)](https://)

---

## 🛠️ Stack technique

- **Frontend** : HTML/CSS/JS vanilla
- **Backend** : Node.js + Express + MongoDB
- **Base de données** : MongoDB Atlas
- **Auth** : JWT avec bcrypt
- **IA / APIs** : OpenAI, Spoonacular, MarketMan (mock)
- **Déploiement** : Render (backend) + Netlify (frontend)

---

## 📁 Structure du projet

```
/client               → Fichiers HTML/CSS/JS (frontend statique)
/routes               → Fichiers Express routeurs (auth, menus, stock, user)
/models               → Schémas Mongoose (User, Menu, Stock, Product)
/controllers          → Logique métier (authController, menuController)
/services             → openaiService, gestion API
.env                  → Variables d’environnement
server.js             → Point d’entrée du backend
```

---

## ⚙️ Configuration `.env`

Créer un fichier `.env` à la racine du projet avec ce contenu :

```env
# Mode & port
NODE_ENV=development
PORT=5000

# Base de données
MONGODB_URI=mongodb://localhost:27017/chefses

# Authentification
JWT_SECRET=une_chaine_tres_longue_et_securisee
JWT_EXPIRE=86400

# CORS
CORS_ORIGIN=http://localhost:3000

# Clé OpenAI (mock utilisable en local)
OPENAI_API_KEY=sk-...

# Paramètres de l'app
STOCK_ALERT_THRESHOLD=10
MENU_DEFAULT_SERVINGS=4
```

---

## 🧪 Lancer le projet en local

### Prérequis
- Node.js (v18+)
- MongoDB local ou Atlas
- npm

### Étapes

```bash
# 1. Cloner le repo
git clone https://github.com/votre-utilisateur/chaif-ses.git
cd chaif-ses

# 2. Installer les dépendances
npm install

# 3. Démarrer MongoDB en local ou configurer un URI Atlas

# 4. Lancer le backend
npm run dev

# 5. Ouvrir le frontend (client/)
# Par exemple avec Live Server dans VSCode ou via Netlify
```

Accès local :
- Frontend : `http://localhost:3000` *(selon config)*
- Backend API : `http://localhost:5000/api/...`

---

## 🌐 Déploiement

### 🔧 Backend (Render ou Railway)
1. Créer un projet sur [Render](https://render.com)
2. Uploader le backend (`server.js`, `/routes`, `/models`)
3. Ajouter les variables `.env` dans le dashboard
4. Définir le build command : `npm install`
5. Start command : `npm run start`

### 🌍 Frontend (Netlify)
1. Déployer le dossier `/client`
2. Modifier les appels API dans JS : utiliser l’URL Render déployée
3. Ajouter un `_redirects` si besoin pour rediriger vers `index.html`

---

## 🧑‍💻 Utilisateurs test

- Créez un compte via `/register.html`
- Ajoutez du stock
- Générez un menu depuis le stock
- Planifiez la semaine
- Consultez les alertes et fournisseurs

---

## 📦 Pour les investisseurs / incubateurs

Ce projet est prêt pour :
- Un test terrain auprès de restaurateurs
- Une levée Seed avec démo fonctionnelle
- L'extension mobile et commerciale en Série A

---

## 📮 Contact

Développeur principal : [Votre Nom / Email / LinkedIn]  
Version actuelle : `MVP v1.0`
