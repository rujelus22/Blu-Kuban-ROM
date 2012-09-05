.class public Lcom/android/launcher2/Cling;
.super Landroid/widget/FrameLayout;
.source "Cling.java"


# static fields
.field static final ALLAPPS_CLING_DISMISSED_KEY:Ljava/lang/String; = "cling.allapps.dismissed"

.field private static ALLAPPS_LANDSCAPE:Ljava/lang/String; = null

.field private static ALLAPPS_LARGE:Ljava/lang/String; = null

.field private static ALLAPPS_PORTRAIT:Ljava/lang/String; = null

.field static final FOLDER_CLING_DISMISSED_KEY:Ljava/lang/String; = "cling.folder.dismissed"

.field private static FOLDER_LANDSCAPE:Ljava/lang/String; = null

.field private static FOLDER_LARGE:Ljava/lang/String; = null

.field private static FOLDER_PORTRAIT:Ljava/lang/String; = null

.field static final WORKSPACE_CLING_DISMISSED_KEY:Ljava/lang/String; = "cling.workspace.dismissed"

.field private static WORKSPACE_LANDSCAPE:Ljava/lang/String;

.field private static WORKSPACE_LARGE:Ljava/lang/String;

.field private static WORKSPACE_PORTRAIT:Ljava/lang/String;


# instance fields
.field private mAppIconSize:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mButtonBarHeight:I

.field private mDrawIdentifier:Ljava/lang/String;

.field private mErasePaint:Landroid/graphics/Paint;

.field private mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

.field private mIsInitialized:Z

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mPositionData:[I

.field private mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

.field private mPunchThroughGraphicCenterRadius:I

.field private mRevealRadius:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-string v0, "workspace_portrait"

    sput-object v0, Lcom/android/launcher2/Cling;->WORKSPACE_PORTRAIT:Ljava/lang/String;

    .line 42
    const-string v0, "workspace_landscape"

    sput-object v0, Lcom/android/launcher2/Cling;->WORKSPACE_LANDSCAPE:Ljava/lang/String;

    .line 43
    const-string v0, "all_apps_portrait"

    sput-object v0, Lcom/android/launcher2/Cling;->ALLAPPS_PORTRAIT:Ljava/lang/String;

    .line 44
    const-string v0, "all_apps_landscape"

    sput-object v0, Lcom/android/launcher2/Cling;->ALLAPPS_LANDSCAPE:Ljava/lang/String;

    .line 45
    const-string v0, "folder_portrait"

    sput-object v0, Lcom/android/launcher2/Cling;->FOLDER_PORTRAIT:Ljava/lang/String;

    .line 46
    const-string v0, "folder_landscape"

    sput-object v0, Lcom/android/launcher2/Cling;->FOLDER_LANDSCAPE:Ljava/lang/String;

    .line 47
    const-string v0, "workspace_large"

    sput-object v0, Lcom/android/launcher2/Cling;->WORKSPACE_LARGE:Ljava/lang/String;

    .line 48
    const-string v0, "folder_large"

    sput-object v0, Lcom/android/launcher2/Cling;->FOLDER_LARGE:Ljava/lang/String;

    .line 49
    const-string v0, "all_apps_large"

    sput-object v0, Lcom/android/launcher2/Cling;->ALLAPPS_LARGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/Cling;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Cling;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    sget-object v1, Lcom/android/launcher/R$styleable;->Cling:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    .line 78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    return-void
.end method

.method private getPunchThroughPosition()[I
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 111
    iget-object v3, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v4, Lcom/android/launcher2/Cling;->WORKSPACE_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 112
    new-array v3, v5, [I

    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    aput v4, v3, v6

    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/Cling;->mButtonBarHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    aput v4, v3, v7

    .line 125
    :goto_22
    return-object v3

    .line 113
    :cond_23
    iget-object v3, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v4, Lcom/android/launcher2/Cling;->WORKSPACE_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 114
    new-array v3, v5, [I

    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/Cling;->mButtonBarHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    aput v4, v3, v6

    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    aput v4, v3, v7

    goto :goto_22

    .line 115
    :cond_43
    iget-object v3, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v4, Lcom/android/launcher2/Cling;->WORKSPACE_LARGE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 116
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenDensity()F

    move-result v2

    .line 117
    .local v2, scale:F
    const/high16 v3, 0x4170

    mul-float/2addr v3, v2

    float-to-int v0, v3

    .line 118
    .local v0, cornerXOffset:I
    const/high16 v3, 0x4120

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 119
    .local v1, cornerYOffset:I
    new-array v3, v5, [I

    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v0

    aput v4, v3, v6

    aput v1, v3, v7

    goto :goto_22

    .line 120
    .end local v0           #cornerXOffset:I
    .end local v1           #cornerYOffset:I
    .end local v2           #scale:F
    :cond_65
    iget-object v3, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v4, Lcom/android/launcher2/Cling;->ALLAPPS_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_83

    iget-object v3, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v4, Lcom/android/launcher2/Cling;->ALLAPPS_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_83

    iget-object v3, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v4, Lcom/android/launcher2/Cling;->ALLAPPS_LARGE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 123
    :cond_83
    iget-object v3, p0, Lcom/android/launcher2/Cling;->mPositionData:[I

    goto :goto_22

    .line 125
    :cond_86
    new-array v3, v5, [I

    fill-array-data v3, :array_8c

    goto :goto_22

    :array_8c
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method


# virtual methods
.method cleanup()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 105
    iput-object v0, p0, Lcom/android/launcher2/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    .line 106
    iput-object v0, p0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Cling;->mIsInitialized:Z

    .line 108
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 18
    .parameter "canvas"

    .prologue
    .line 159
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/launcher2/Cling;->mIsInitialized:Z

    if-eqz v11, :cond_151

    .line 160
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 161
    .local v7, metrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Cling;->getMeasuredWidth()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Cling;->getMeasuredHeight()I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 166
    .local v1, b:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 169
    .local v2, c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_66

    .line 170
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v12, Lcom/android/launcher2/Cling;->WORKSPACE_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_57

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v12, Lcom/android/launcher2/Cling;->WORKSPACE_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_57

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v12, Lcom/android/launcher2/Cling;->WORKSPACE_LARGE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_155

    .line 173
    :cond_57
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020003

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 185
    :cond_66
    :goto_66
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_1d0

    .line 186
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Cling;->getMeasuredWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Cling;->getMeasuredHeight()I

    move-result v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 187
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 192
    :goto_84
    const/4 v3, -0x1

    .line 193
    .local v3, cx:I
    const/4 v4, -0x1

    .line 194
    .local v4, cy:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/Cling;->mRevealRadius:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/Cling;->mPunchThroughGraphicCenterRadius:I

    int-to-float v12, v12

    div-float v10, v11, v12

    .line 195
    .local v10, scale:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v10

    float-to-int v6, v11

    .line 196
    .local v6, dw:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v10

    float-to-int v5, v11

    .line 199
    .local v5, dh:I
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Cling;->getPunchThroughPosition()[I

    move-result-object v9

    .line 200
    .local v9, pos:[I
    const/4 v11, 0x0

    aget v3, v9, v11

    .line 201
    const/4 v11, 0x1

    aget v4, v9, v11

    .line 202
    const/4 v11, -0x1

    if-le v3, v11, :cond_e0

    const/4 v11, -0x1

    if-le v4, v11, :cond_e0

    .line 203
    int-to-float v11, v3

    int-to-float v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/Cling;->mRevealRadius:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Cling;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v12, v6, 0x2

    sub-int v12, v3, v12

    div-int/lit8 v13, v5, 0x2

    sub-int v13, v4, v13

    div-int/lit8 v14, v6, 0x2

    add-int/2addr v14, v3

    div-int/lit8 v15, v5, 0x2

    add-int/2addr v15, v4

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 205
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 209
    :cond_e0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v12, Lcom/android/launcher2/Cling;->ALLAPPS_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_104

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v12, Lcom/android/launcher2/Cling;->ALLAPPS_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_104

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v12, Lcom/android/launcher2/Cling;->ALLAPPS_LARGE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_145

    .line 212
    :cond_104
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_119

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020016

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    .line 215
    :cond_119
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/Cling;->mAppIconSize:I

    div-int/lit8 v8, v11, 0x4

    .line 216
    .local v8, offset:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    add-int v12, v3, v8

    add-int v13, v4, v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    add-int/2addr v14, v3

    add-int/2addr v14, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    add-int/2addr v15, v4

    add-int/2addr v15, v8

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 219
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 222
    .end local v8           #offset:I
    :cond_145
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 223
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 228
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v2           #c:Landroid/graphics/Canvas;
    .end local v3           #cx:I
    .end local v4           #cy:I
    .end local v5           #dh:I
    .end local v6           #dw:I
    .end local v7           #metrics:Landroid/util/DisplayMetrics;
    .end local v9           #pos:[I
    .end local v10           #scale:F
    :cond_151
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 229
    return-void

    .line 174
    .restart local v1       #b:Landroid/graphics/Bitmap;
    .restart local v2       #c:Landroid/graphics/Canvas;
    .restart local v7       #metrics:Landroid/util/DisplayMetrics;
    :cond_155
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v12, Lcom/android/launcher2/Cling;->ALLAPPS_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_179

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v12, Lcom/android/launcher2/Cling;->ALLAPPS_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_179

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v12, Lcom/android/launcher2/Cling;->ALLAPPS_LARGE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18a

    .line 177
    :cond_179
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020004

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_66

    .line 178
    :cond_18a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v12, Lcom/android/launcher2/Cling;->FOLDER_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v12, Lcom/android/launcher2/Cling;->FOLDER_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b3

    .line 180
    :cond_1a2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020005

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_66

    .line 181
    :cond_1b3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v12, Lcom/android/launcher2/Cling;->FOLDER_LARGE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_66

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020006

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_66

    .line 189
    :cond_1d0
    const/high16 v11, -0x6700

    invoke-virtual {v2, v11}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_84
.end method

.method init(Lcom/android/launcher2/Launcher;[I)V
    .registers 7
    .parameter "l"
    .parameter "positionData"

    .prologue
    .line 82
    iget-boolean v1, p0, Lcom/android/launcher2/Cling;->mIsInitialized:Z

    if-nez v1, :cond_5f

    .line 83
    iput-object p1, p0, Lcom/android/launcher2/Cling;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 84
    iput-object p2, p0, Lcom/android/launcher2/Cling;->mPositionData:[I

    .line 86
    invoke-virtual {p0}, Lcom/android/launcher2/Cling;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    .line 88
    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Cling;->mPunchThroughGraphicCenterRadius:I

    .line 90
    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Cling;->mAppIconSize:I

    .line 91
    iget v1, p0, Lcom/android/launcher2/Cling;->mAppIconSize:I

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/Cling;->mRevealRadius:F

    .line 92
    const v1, 0x7f0a0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Cling;->mButtonBarHeight:I

    .line 94
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Cling;->mErasePaint:Landroid/graphics/Paint;

    .line 95
    iget-object v1, p0, Lcom/android/launcher2/Cling;->mErasePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 96
    iget-object v1, p0, Lcom/android/launcher2/Cling;->mErasePaint:Landroid/graphics/Paint;

    const v2, 0xffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v1, p0, Lcom/android/launcher2/Cling;->mErasePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/Cling;->mIsInitialized:Z

    .line 101
    .end local v0           #r:Landroid/content/res/Resources;
    :cond_5f
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const-wide/high16 v11, 0x4000

    const/4 v5, 0x0

    .line 130
    iget-object v7, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v8, Lcom/android/launcher2/Cling;->WORKSPACE_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_40

    iget-object v7, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v8, Lcom/android/launcher2/Cling;->WORKSPACE_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_40

    iget-object v7, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v8, Lcom/android/launcher2/Cling;->WORKSPACE_LARGE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_40

    iget-object v7, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v8, Lcom/android/launcher2/Cling;->ALLAPPS_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_40

    iget-object v7, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v8, Lcom/android/launcher2/Cling;->ALLAPPS_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_40

    iget-object v7, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v8, Lcom/android/launcher2/Cling;->ALLAPPS_LARGE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 136
    :cond_40
    invoke-direct {p0}, Lcom/android/launcher2/Cling;->getPunchThroughPosition()[I

    move-result-object v3

    .line 137
    .local v3, pos:[I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    aget v8, v3, v5

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    aget v10, v3, v6

    int-to-float v10, v10

    sub-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 139
    .local v0, diff:D
    iget v7, p0, Lcom/android/launcher2/Cling;->mRevealRadius:F

    float-to-double v7, v7

    cmpg-double v7, v0, v7

    if-gez v7, :cond_ad

    .line 154
    .end local v0           #diff:D
    .end local v3           #pos:[I
    :cond_6a
    :goto_6a
    return v5

    .line 142
    :cond_6b
    iget-object v7, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v8, Lcom/android/launcher2/Cling;->FOLDER_PORTRAIT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_89

    iget-object v7, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v8, Lcom/android/launcher2/Cling;->FOLDER_LANDSCAPE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_89

    iget-object v7, p0, Lcom/android/launcher2/Cling;->mDrawIdentifier:Ljava/lang/String;

    sget-object v8, Lcom/android/launcher2/Cling;->FOLDER_LARGE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ad

    .line 145
    :cond_89
    iget-object v7, p0, Lcom/android/launcher2/Cling;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    .line 146
    .local v2, f:Lcom/android/launcher2/Folder;
    if-eqz v2, :cond_ad

    .line 147
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 148
    .local v4, r:Landroid/graphics/Rect;
    invoke-virtual {v2, v4}, Lcom/android/launcher2/Folder;->getHitRect(Landroid/graphics/Rect;)V

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_6a

    .end local v2           #f:Lcom/android/launcher2/Folder;
    .end local v4           #r:Landroid/graphics/Rect;
    :cond_ad
    move v5, v6

    .line 154
    goto :goto_6a
.end method
