#!/bin/bash

# Simple deployment script for Hugo site
# Usage: ./deploy.sh "Your commit message"

echo "🚀 Starting deployment process..."

# Check if commit message was provided
if [ -z "$1" ]; then
    echo "❌ Please provide a commit message"
    echo "Usage: ./deploy.sh \"Your commit message\""
    exit 1
fi

# Add all changes
echo "📦 Adding all changes..."
git add .

# Commit with provided message
echo "💾 Committing changes..."
git commit -m "$1"

# Push to GitHub
echo "🌐 Pushing to GitHub..."
git push origin main

echo "✅ Deployment initiated! Check Netlify for build status."
echo "📱 Your site will be updated in 1-3 minutes."