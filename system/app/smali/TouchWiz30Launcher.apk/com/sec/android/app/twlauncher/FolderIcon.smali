.class public Lcom/sec/android/app/twlauncher/FolderIcon;
.super Lcom/sec/android/app/twlauncher/BubbleTextView;
.source "FolderIcon.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DropTarget;


# static fields
.field private static mPreviewIconSize:F

.field private static mPreviewIconXGap:F

.field private static mPreviewIconYGap:F

.field private static mPreviewIconYOffset:F

.field private static mPreviewOffsetX:F

.field private static mPreviewOffsetY:F


# instance fields
.field private final MAX_ZOOM:F

.field private final ZOOM_DURATION:I

.field private mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mScale:F

.field private mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/BubbleTextView;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 53
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mScale:F

    .line 54
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->ZOOM_DURATION:I

    .line 55
    const v0, 0x3f99999a

    iput v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->MAX_ZOOM:F

    .line 65
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->init()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 53
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mScale:F

    .line 54
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->ZOOM_DURATION:I

    .line 55
    const v0, 0x3f99999a

    iput v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->MAX_ZOOM:F

    .line 60
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->init()V

    .line 61
    return-void
.end method

.method static fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;
    .registers 19
    .parameter "resId"
    .parameter "launcher"
    .parameter "group"
    .parameter "folderInfo"

    .prologue
    .line 82
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, p0, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/twlauncher/FolderIcon;

    .line 84
    .local v14, icon:Lcom/sec/android/app/twlauncher/FolderIcon;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 90
    .local v2, resources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_81

    .line 91
    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getOwner()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6a

    .line 92
    const v3, 0x7f020011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 102
    .local v13, d:Landroid/graphics/drawable/Drawable;
    :goto_26
    const/4 v4, 0x0

    .line 103
    .local v4, bitmap:Landroid/graphics/Bitmap;
    instance-of v3, v13, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_89

    move-object v12, v13

    .line 104
    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    .line 105
    .local v12, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 110
    .end local v12           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_32
    new-instance v1, Lcom/sec/android/app/twlauncher/FolderDrawable;

    sget v5, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewOffsetX:F

    sget v6, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewOffsetY:F

    sget v7, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconSize:F

    sget v8, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconXGap:F

    sget v9, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconYGap:F

    sget v10, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconYOffset:F

    const v11, 0x7f070014

    move-object/from16 v3, p3

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/app/twlauncher/FolderDrawable;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/twlauncher/UserFolderInfo;Landroid/graphics/Bitmap;FFFFFFI)V

    .line 115
    .local v1, fd:Lcom/sec/android/app/twlauncher/FolderDrawable;
    invoke-virtual {v14, v1}, Lcom/sec/android/app/twlauncher/FolderIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/sec/android/app/twlauncher/FolderIcon;->setText(Ljava/lang/CharSequence;)V

    .line 117
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/sec/android/app/twlauncher/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 118
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/sec/android/app/twlauncher/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    move-object/from16 v0, p3

    iput-object v0, v14, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 120
    move-object/from16 v0, p1

    iput-object v0, v14, Lcom/sec/android/app/twlauncher/FolderIcon;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 121
    iget-object v3, v14, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v3, v14}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    .line 123
    return-object v14

    .line 93
    .end local v1           #fd:Lcom/sec/android/app/twlauncher/FolderDrawable;
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #d:Landroid/graphics/drawable/Drawable;
    :cond_6a
    move-object/from16 v0, p3

    iget v3, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->shortCut:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_79

    .line 94
    const v3, 0x7f020011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .restart local v13       #d:Landroid/graphics/drawable/Drawable;
    goto :goto_26

    .line 96
    .end local v13           #d:Landroid/graphics/drawable/Drawable;
    :cond_79
    const v3, 0x7f020044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .restart local v13       #d:Landroid/graphics/drawable/Drawable;
    goto :goto_26

    .line 100
    .end local v13           #d:Landroid/graphics/drawable/Drawable;
    :cond_81
    const v3, 0x7f020044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .restart local v13       #d:Landroid/graphics/drawable/Drawable;
    goto :goto_26

    .line 107
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    :cond_89
    const-string v3, "Launcher.FolderIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Folder image is not a BitmapDrawable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method static fromXml2(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;
    .registers 19
    .parameter "resId"
    .parameter "launcher"
    .parameter "group"
    .parameter "folderInfo"

    .prologue
    .line 131
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, p0, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/twlauncher/FolderIcon;

    .line 133
    .local v14, icon:Lcom/sec/android/app/twlauncher/FolderIcon;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 136
    .local v2, resources:Landroid/content/res/Resources;
    const v3, 0x7f020011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 138
    .local v13, d:Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 139
    .local v4, bitmap:Landroid/graphics/Bitmap;
    instance-of v3, v13, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_5c

    move-object v12, v13

    .line 140
    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    .line 141
    .local v12, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 146
    .end local v12           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_24
    new-instance v1, Lcom/sec/android/app/twlauncher/FolderDrawable;

    sget v5, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewOffsetX:F

    sget v6, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewOffsetY:F

    sget v7, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconSize:F

    sget v8, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconXGap:F

    sget v9, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconYGap:F

    sget v10, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconYOffset:F

    const v11, 0x7f070014

    move-object/from16 v3, p3

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/app/twlauncher/FolderDrawable;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/twlauncher/UserFolderInfo;Landroid/graphics/Bitmap;FFFFFFI)V

    .line 151
    .local v1, fd:Lcom/sec/android/app/twlauncher/FolderDrawable;
    invoke-virtual {v14, v1}, Lcom/sec/android/app/twlauncher/FolderIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/sec/android/app/twlauncher/FolderIcon;->setText(Ljava/lang/CharSequence;)V

    .line 153
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/sec/android/app/twlauncher/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 154
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/sec/android/app/twlauncher/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    move-object/from16 v0, p3

    iput-object v0, v14, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 156
    move-object/from16 v0, p1

    iput-object v0, v14, Lcom/sec/android/app/twlauncher/FolderIcon;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 157
    iget-object v3, v14, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v3, v14}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    .line 159
    return-object v14

    .line 143
    .end local v1           #fd:Lcom/sec/android/app/twlauncher/FolderDrawable;
    :cond_5c
    const-string v3, "Launcher.FolderIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Folder image is not a BitmapDrawable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method private init()V
    .registers 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewOffsetX:F

    .line 71
    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewOffsetY:F

    .line 73
    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconSize:F

    .line 74
    const v1, 0x7f0b0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconXGap:F

    .line 75
    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconYGap:F

    .line 76
    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconYOffset:F

    .line 77
    return-void
.end method

.method private zoomIn()V
    .registers 6

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    if-nez v0, :cond_10

    .line 283
    new-instance v0, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 285
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    .line 288
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mScale:F

    const v2, 0x3f99999a

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FFJ)V

    .line 289
    return-void
.end method

.method private zoomOut()V
    .registers 6

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    if-nez v0, :cond_10

    .line 293
    new-instance v0, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 295
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    .line 298
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mScale:F

    const/high16 v2, 0x3f80

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FFJ)V

    .line 299
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .registers 14
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v2, 0x1

    .line 167
    check-cast p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    .end local p6
    invoke-virtual {p6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v0

    .line 168
    .local v0, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    iget v1, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 169
    .local v1, itemType:I
    if-eqz v1, :cond_d

    if-ne v1, v2, :cond_18

    :cond_d
    iget-wide v3, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    iget-wide v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_18

    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method protected applyScale(Lcom/sec/android/app/twlauncher/GLCanvas;F)V
    .registers 5
    .parameter "canvas"
    .parameter "scale"

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 276
    invoke-virtual {p1, p2, p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    .line 277
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 278
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 7
    .parameter "aCanvas"

    .prologue
    const/high16 v4, 0x3f80

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, res:Z
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 255
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 256
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 257
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get(J)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mScale:F

    .line 260
    :cond_2b
    iget v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mScale:F

    sub-float/2addr v1, v4

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_45

    .line 261
    iget v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mScale:F

    sub-float/2addr v1, v4

    sub-float v1, v4, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mScale:F

    sub-float/2addr v2, v4

    sub-float v2, v4, v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mScale:F

    sub-float/2addr v3, v4

    sub-float v3, v4, v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFF)V

    .line 265
    :cond_45
    iget v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mScale:F

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/twlauncher/FolderIcon;->applyScale(Lcom/sec/android/app/twlauncher/GLCanvas;F)V

    .line 267
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/BubbleTextView;->drawGLInternal(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 269
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 270
    return v0
.end method

.method public getDropHitRect(Landroid/graphics/Rect;)V
    .registers 4
    .parameter "outRect"

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/FolderIcon;->getHitRect(Landroid/graphics/Rect;)V

    .line 176
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1d

    .line 178
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageFramePaddingLeft:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 180
    :cond_1d
    return-void
.end method

.method onClone()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getContents()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 221
    .local v1, ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    iget-wide v2, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOrMoveItemInDatabaseForUserFoler(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    goto :goto_b

    .line 223
    .end local v1           #ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_23
    return-void
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 16
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 228
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 229
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 230
    .local v1, parent:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 231
    .local v3, result:[I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getTop()I

    move-result v5

    invoke-virtual {v1, v4, v5, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->pointToCellExact(II[I)V

    .line 232
    aget v4, v3, v6

    aget v5, v3, v8

    invoke-virtual {v1, v4, v5, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    .line 233
    aget v4, v3, v6

    aget v5, v3, v8

    aget v6, v3, v6

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v7, v3, v8

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 235
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    .line 236
    .local v0, cellLayout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getTop()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 238
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/app/twlauncher/Workspace;->setDropLocationFeedback(Landroid/graphics/Rect;)V

    .line 239
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->zoomIn()V

    .line 240
    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->zoomOut()V

    .line 249
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 244
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .registers 15
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v4, 0x0

    .line 188
    const/4 v1, 0x0

    .line 189
    .local v1, item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    instance-of v0, p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    if-eqz v0, :cond_13

    .line 190
    check-cast p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    .end local p6
    invoke-virtual {p6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v1

    .end local v1           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .restart local v1       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    move-object v7, v1

    .line 194
    .end local v1           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .local v7, item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :goto_f
    if-nez v7, :cond_1c

    move-object v1, v7

    .line 216
    .end local v7           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v1       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :goto_12
    return v4

    .line 191
    .restart local p6
    :cond_13
    instance-of v0, p6, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v0, :cond_5d

    move-object v1, p6

    .line 192
    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v7, v1

    .end local v1           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v7       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    goto :goto_f

    .line 197
    .end local p6
    :cond_1c
    iget-wide v2, v7, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v5, -0x1

    cmp-long v0, v2, v5

    if-nez v0, :cond_5b

    .line 199
    new-instance v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v1, v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 201
    .end local v7           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v1       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :goto_29
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->add(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getOwner()I

    move-result v0

    packed-switch v0, :pswitch_data_60

    .line 211
    :goto_37
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/MenuManager;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;

    if-eqz v0, :cond_4a

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtEndDrag()Z

    .line 214
    :cond_4a
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->zoomOut()V

    .line 216
    const/4 v4, 0x1

    goto :goto_12

    .line 205
    :pswitch_4f
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    iget-wide v2, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOrMoveItemInDatabaseForUserFoler(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    goto :goto_37

    .end local v1           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v7       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_5b
    move-object v1, v7

    .end local v7           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v1       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    goto :goto_29

    .restart local p6
    :cond_5d
    move-object v7, v1

    .end local v1           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v7       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    goto :goto_f

    .line 203
    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_4f
    .end packed-switch
.end method
