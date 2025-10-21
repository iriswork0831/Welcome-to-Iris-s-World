# 📸 How to Add and Use Images in Your Portfolio

## Method 1: Background Images for Sections

To add a background image to any section:

```markdown
{{< blocks/cover title="Your Title" image="/images/your-background.jpg" height="med" >}}
Your content here
{{< /blocks/cover >}}
```

## Method 2: Static Images in Content

Place images in `/static/images/` folder, then reference them:

```markdown
![Your Image Description](/images/your-image.jpg)
```

## Method 3: Featured Images for Pages

Add this to the front matter of any page:

```yaml
---
title: "Your Page Title"
featured_image: "/images/your-featured-image.jpg"
---
```

## Recommended Image Sizes:
- **Background images**: 1920x1080px (landscape)
- **Featured images**: 1200x630px  
- **Profile photos**: 400x400px (square)
- **Project screenshots**: 800x600px

## File Formats:
- Use `.jpg` for photos
- Use `.png` for graphics with transparency
- Use `.svg` for icons and logos