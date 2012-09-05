.class public Lcom/sec/android/app/twlauncher/GLGridView;
.super Landroid/widget/GridView;
.source "GLGridView.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBgBlue:F

.field private mBgGreen:F

.field private mBgOpacity:F

.field private mBgRed:F

.field private mDividerBlue:F

.field private mDividerGreen:F

.field private mDividerOpacity:F

.field private mDividerRed:F

.field private mDividerThickness:I

.field private mDrawSelectorOnTop:Z

.field private mFadingEdgeStrength:[F

.field private mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

.field private mHDividerHeight:I

.field private mHorizontalSpacing:I

.field private mMaxHeight:I

.field private mPaddingOffset:[I

.field private mRequestFramePending:Z

.field private mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mVDividerWidth:I

.field private mVerticalSpacing:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-string v0, "GLGridView"

    sput-object v0, Lcom/sec/android/app/twlauncher/GLGridView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 25
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mRequestFramePending:Z

    .line 26
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDrawSelectorOnTop:Z

    .line 27
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mMaxHeight:I

    .line 28
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerThickness:I

    .line 29
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHorizontalSpacing:I

    .line 30
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVerticalSpacing:I

    .line 31
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHDividerHeight:I

    .line 32
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVDividerWidth:I

    .line 35
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgRed:F

    .line 36
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgGreen:F

    .line 37
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgBlue:F

    .line 38
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgOpacity:F

    .line 41
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerRed:F

    .line 42
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerGreen:F

    .line 43
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerBlue:F

    .line 44
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerOpacity:F

    .line 47
    new-array v0, v3, [F

    fill-array-data v0, :array_44

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mFadingEdgeStrength:[F

    .line 48
    new-array v0, v3, [I

    fill-array-data v0, :array_50

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mPaddingOffset:[I

    .line 52
    new-instance v0, Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLScrollBars;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    .line 53
    return-void

    .line 47
    nop

    :array_44
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 48
    :array_50
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/GLGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 25
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mRequestFramePending:Z

    .line 26
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDrawSelectorOnTop:Z

    .line 27
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mMaxHeight:I

    .line 28
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerThickness:I

    .line 29
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHorizontalSpacing:I

    .line 30
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVerticalSpacing:I

    .line 31
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHDividerHeight:I

    .line 32
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVDividerWidth:I

    .line 35
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgRed:F

    .line 36
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgGreen:F

    .line 37
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgBlue:F

    .line 38
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgOpacity:F

    .line 41
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerRed:F

    .line 42
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerGreen:F

    .line 43
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerBlue:F

    .line 44
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerOpacity:F

    .line 47
    new-array v1, v4, [F

    fill-array-data v1, :array_8a

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mFadingEdgeStrength:[F

    .line 48
    new-array v1, v4, [I

    fill-array-data v1, :array_96

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mPaddingOffset:[I

    .line 61
    new-instance v1, Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/twlauncher/GLScrollBars;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    .line 63
    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->GLGridView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLGridView;->setBackgroundColor(I)V

    .line 69
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLGridView;->setDividerThickness(I)V

    .line 72
    const/4 v1, 0x6

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLGridView;->setDividerColor(I)V

    .line 75
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLGridView;->setDrawSelectorOnTop(Z)V

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLGridView;->setHorizontalSpacing(I)V

    .line 81
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLGridView;->setMaxHeight(I)V

    .line 84
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLGridView;->setVerticalSpacing(I)V

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    return-void

    .line 47
    :array_8a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 48
    :array_96
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private drawSelector(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)V
    .registers 10
    .parameter "canvas"
    .parameter "child"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 251
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 252
    .local v3, selector:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2b

    .line 253
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 254
    .local v4, width:I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 256
    .local v2, height:I
    invoke-virtual {v3, v5, v5, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 257
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 258
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 259
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 260
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v5, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 261
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p1, v5, v6, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    .line 263
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v2           #height:I
    .end local v4           #width:I
    :cond_2b
    return-void
.end method

.method private drawVerticalDividers(Lcom/sec/android/app/twlauncher/GLCanvas;IIIIIII)V
    .registers 19
    .parameter "canvas"
    .parameter "listLeft"
    .parameter "listRight"
    .parameter "minLeftItem"
    .parameter "maxLeftItem"
    .parameter "itemWidth"
    .parameter "divTop"
    .parameter "divBottom"

    .prologue
    .line 275
    iget v6, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHorizontalSpacing:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVDividerWidth:I

    sub-int/2addr v6, v7

    div-int/lit8 v5, v6, 0x2

    .line 276
    .local v5, xDivOffset:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHorizontalSpacing:I

    add-int v1, p6, v6

    .line 277
    .local v1, cellWidth:I
    sub-int v6, p3, p6

    sub-int/2addr v6, v1

    invoke-static {v6, p5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 279
    .local v2, maxLeftDraw:I
    move v3, p2

    .local v3, nextLeft:I
    :goto_13
    if-gt v3, v2, :cond_2d

    .line 280
    add-int v6, v3, v1

    if-lt v6, p4, :cond_2b

    .line 281
    add-int v6, v3, p6

    add-int v4, v6, v5

    .line 282
    .local v4, x:I
    int-to-float v6, v4

    move/from16 v0, p7

    int-to-float v7, v0

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVDividerWidth:I

    add-int/2addr v8, v4

    int-to-float v8, v8

    move/from16 v0, p8

    int-to-float v9, v0

    invoke-virtual {p1, v6, v7, v8, v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 279
    .end local v4           #x:I
    :cond_2b
    add-int/2addr v3, v1

    goto :goto_13

    .line 285
    :cond_2d
    return-void
.end method

.method private setHorizontalDividerHeight()V
    .registers 3

    .prologue
    .line 353
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerOpacity:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_b

    const/4 v0, 0x0

    :goto_8
    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHDividerHeight:I

    .line 354
    return-void

    .line 353
    :cond_b
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVerticalSpacing:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerThickness:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_8
.end method

.method private setRequestFramePending()V
    .registers 2

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mRequestFramePending:Z

    if-nez v0, :cond_a

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mRequestFramePending:Z

    .line 370
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 372
    :cond_a
    return-void
.end method

.method private setVerticalDividerWidth()V
    .registers 3

    .prologue
    .line 375
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerOpacity:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_b

    const/4 v0, 0x0

    :goto_8
    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVDividerWidth:I

    .line 376
    return-void

    .line 375
    :cond_b
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHorizontalSpacing:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerThickness:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_8
.end method

.method private startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 8
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 398
    const/4 v0, 0x0

    .line 400
    .local v0, edgesRequired:Z
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->isVerticalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 401
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mFadingEdgeStrength:[F

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getTopFadingEdgeStrength()F

    move-result v2

    aput v2, v1, v4

    .line 402
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mFadingEdgeStrength:[F

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getBottomFadingEdgeStrength()F

    move-result v2

    aput v2, v1, v5

    .line 403
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mFadingEdgeStrength:[F

    aget v1, v1, v4

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_2a

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mFadingEdgeStrength:[F

    aget v1, v1, v5

    cmpl-float v1, v1, v3

    if-lez v1, :cond_53

    .line 404
    :cond_2a
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mPaddingOffset:[I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mPaddingOffset:[I

    const/4 v3, 0x0

    aput v3, v2, v5

    aput v3, v1, v4

    .line 405
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->isPaddingOffsetRequired()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 406
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mPaddingOffset:[I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getTopPaddingOffset()I

    move-result v2

    aput v2, v1, v4

    .line 407
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mPaddingOffset:[I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getBottomPaddingOffset()I

    move-result v2

    aput v2, v1, v5

    .line 409
    :cond_49
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mFadingEdgeStrength:[F

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mPaddingOffset:[I

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/app/twlauncher/GLScrollBars;->startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;[F[I)Z

    move-result v0

    .line 412
    :cond_53
    return v0
.end method


# virtual methods
.method public awakenScrollBars()Z
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLScrollBars;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method protected awakenScrollBars(IZ)Z
    .registers 4
    .parameter "scrollDelay"
    .parameter "invalidate"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLScrollBars;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 103
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 32
    .parameter "canvas"

    .prologue
    .line 107
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mRequestFramePending:Z

    .line 108
    const/16 v23, 0x0

    .line 109
    .local v23, redraw:Z
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getChildCount()I

    move-result v17

    .line 112
    .local v17, count:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgOpacity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4a

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 114
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgRed:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgGreen:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgBlue:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgOpacity:F

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v2, v3, v6, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 115
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v2, v3, v6, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 120
    :cond_4a
    const/4 v2, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateClipRegion(Landroid/view/View;Z)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getListPaddingLeft()I

    move-result v4

    .line 123
    .local v4, listLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getListPaddingRight()I

    move-result v3

    sub-int v5, v2, v3

    .line 124
    .local v5, listRight:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mVerticalSpacing:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mHDividerHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v28, v2, 0x2

    .line 134
    .local v28, yDivOffset:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mVDividerWidth:I

    if-lez v2, :cond_185

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getStretchMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_185

    const/16 v27, 0x1

    .line 137
    .local v27, verticalOK:Z
    :goto_7a
    const v9, 0x7fffffff

    .line 138
    .local v9, vDivTop:I
    const/high16 v10, -0x8000

    .line 140
    .local v10, vDivBottom:I
    const v25, 0x7fffffff

    .line 141
    .local v25, rowMinLeft:I
    const/high16 v7, -0x8000

    .line 142
    .local v7, rowMaxLeft:I
    const/high16 v24, -0x8000

    .line 144
    .local v24, rowMaxRight:I
    const/4 v8, 0x0

    .line 145
    .local v8, childWidth:I
    const/16 v19, 0x1

    .line 146
    .local v19, firstRow:Z
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 147
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/twlauncher/GLGridView;->startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    .line 148
    const/16 v21, 0x0

    .local v21, i:I
    :goto_91
    move/from16 v0, v21

    move/from16 v1, v17

    if-ge v0, v1, :cond_199

    .line 149
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 150
    .local v11, child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v16

    .line 151
    .local v16, childVisibility:I
    const/16 v2, 0x8

    move/from16 v0, v16

    if-eq v0, v2, :cond_181

    .line 153
    :try_start_a9
    move-object v0, v11

    check-cast v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    move-object/from16 v20, v0

    .line 154
    .local v20, glChild:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
    invoke-virtual {v11}, Landroid/view/View;->computeScroll()V

    .line 155
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 156
    .local v13, childLeft:I
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v15

    .line 157
    .local v15, childTop:I
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v14

    .line 158
    .local v14, childRight:I
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 159
    .local v12, childBottom:I
    sub-int v8, v14, v13

    .line 160
    move/from16 v0, v24

    if-ge v13, v0, :cond_121

    .line 163
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mHDividerHeight:I

    if-gtz v2, :cond_cf

    if-eqz v27, :cond_11c

    .line 164
    :cond_cf
    move/from16 v22, v10

    .line 165
    .local v22, nextDivTop:I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 166
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerRed:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerGreen:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerBlue:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerOpacity:F

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v2, v3, v6, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 170
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mHDividerHeight:I

    if-lez v2, :cond_10a

    .line 171
    add-int v10, v10, v28

    .line 172
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mHDividerHeight:I

    add-int v22, v10, v2

    .line 173
    int-to-float v2, v4

    int-to-float v3, v10

    int-to-float v6, v5

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v2, v3, v6, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 175
    :cond_10a
    if-eqz v27, :cond_117

    .line 176
    if-eqz v19, :cond_189

    move/from16 v6, v25

    :goto_110
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/twlauncher/GLGridView;->drawVerticalDividers(Lcom/sec/android/app/twlauncher/GLCanvas;IIIIIII)V

    .line 180
    :cond_117
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 181
    move/from16 v9, v22

    .line 183
    .end local v22           #nextDivTop:I
    :cond_11c
    const/16 v19, 0x0

    .line 184
    move v10, v12

    .line 185
    move/from16 v25, v13

    .line 187
    :cond_121
    move v7, v13

    .line 188
    move/from16 v24, v14

    .line 189
    move/from16 v0, v25

    if-ge v13, v0, :cond_12a

    .line 190
    move/from16 v25, v13

    .line 191
    :cond_12a
    if-ge v15, v9, :cond_12d

    .line 192
    move v9, v15

    .line 193
    :cond_12d
    if-le v12, v10, :cond_130

    .line 194
    move v10, v12

    .line 196
    :cond_130
    if-nez v16, :cond_181

    .line 197
    invoke-virtual {v11}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-nez v2, :cond_13e

    invoke-virtual {v11}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_18b

    :cond_13e
    const/16 v26, 0x1

    .line 198
    .local v26, selectorNeeded:Z
    :goto_140
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 199
    invoke-virtual {v11}, Landroid/view/View;->getScrollX()I

    move-result v2

    sub-int v2, v13, v2

    int-to-float v2, v2

    invoke-virtual {v11}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int v3, v15, v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 202
    if-eqz v26, :cond_165

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDrawSelectorOnTop:Z

    if-nez v2, :cond_165

    .line 203
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/sec/android/app/twlauncher/GLGridView;->drawSelector(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)V

    .line 205
    :cond_165
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v2

    or-int v23, v23, v2

    .line 207
    if-eqz v26, :cond_17e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDrawSelectorOnTop:Z

    if-eqz v2, :cond_17e

    .line 208
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/sec/android/app/twlauncher/GLGridView;->drawSelector(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)V

    .line 210
    :cond_17e
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V
    :try_end_181
    .catch Ljava/lang/ClassCastException; {:try_start_a9 .. :try_end_181} :catch_18e

    .line 148
    .end local v12           #childBottom:I
    .end local v13           #childLeft:I
    .end local v14           #childRight:I
    .end local v15           #childTop:I
    .end local v20           #glChild:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
    .end local v26           #selectorNeeded:Z
    :cond_181
    :goto_181
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_91

    .line 134
    .end local v7           #rowMaxLeft:I
    .end local v8           #childWidth:I
    .end local v9           #vDivTop:I
    .end local v10           #vDivBottom:I
    .end local v11           #child:Landroid/view/View;
    .end local v16           #childVisibility:I
    .end local v19           #firstRow:Z
    .end local v21           #i:I
    .end local v24           #rowMaxRight:I
    .end local v25           #rowMinLeft:I
    .end local v27           #verticalOK:Z
    :cond_185
    const/16 v27, 0x0

    goto/16 :goto_7a

    .restart local v7       #rowMaxLeft:I
    .restart local v8       #childWidth:I
    .restart local v9       #vDivTop:I
    .restart local v10       #vDivBottom:I
    .restart local v11       #child:Landroid/view/View;
    .restart local v12       #childBottom:I
    .restart local v13       #childLeft:I
    .restart local v14       #childRight:I
    .restart local v15       #childTop:I
    .restart local v16       #childVisibility:I
    .restart local v19       #firstRow:Z
    .restart local v20       #glChild:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
    .restart local v21       #i:I
    .restart local v22       #nextDivTop:I
    .restart local v24       #rowMaxRight:I
    .restart local v25       #rowMinLeft:I
    .restart local v27       #verticalOK:Z
    :cond_189
    move v6, v4

    .line 176
    goto :goto_110

    .line 197
    .end local v22           #nextDivTop:I
    :cond_18b
    const/16 v26, 0x0

    goto :goto_140

    .line 213
    .end local v12           #childBottom:I
    .end local v13           #childLeft:I
    .end local v14           #childRight:I
    .end local v15           #childTop:I
    .end local v20           #glChild:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
    :catch_18e
    move-exception v18

    .line 214
    .local v18, e:Ljava/lang/ClassCastException;
    sget-object v2, Lcom/sec/android/app/twlauncher/GLGridView;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Child is not of type GLSurfaceViewGroup.DispatchDrawGL"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_181

    .line 219
    .end local v11           #child:Landroid/view/View;
    .end local v16           #childVisibility:I
    .end local v18           #e:Ljava/lang/ClassCastException;
    :cond_199
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 222
    if-eqz v27, :cond_1c7

    if-lez v8, :cond_1c7

    .line 223
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 224
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerRed:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerGreen:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerBlue:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerOpacity:F

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v2, v3, v6, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v6, v4

    .line 225
    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/twlauncher/GLGridView;->drawVerticalDividers(Lcom/sec/android/app/twlauncher/GLCanvas;IIIIIII)V

    .line 228
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 230
    :cond_1c7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLScrollBars;->isHorizontalScrollBarDrawing()Z

    move-result v2

    if-eqz v2, :cond_1eb

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->computeHorizontalScrollRange()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->computeHorizontalScrollOffset()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->computeHorizontalScrollExtent()I

    move-result v29

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v2, v0, v3, v6, v1}, Lcom/sec/android/app/twlauncher/GLScrollBars;->drawHorizontalScrollBar(Lcom/sec/android/app/twlauncher/GLCanvas;III)Z

    move-result v2

    or-int v23, v23, v2

    .line 233
    :cond_1eb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLScrollBars;->isVerticalScrollBarDrawing()Z

    move-result v2

    if-eqz v2, :cond_20f

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->computeVerticalScrollRange()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->computeVerticalScrollOffset()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->computeVerticalScrollExtent()I

    move-result v29

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v2, v0, v3, v6, v1}, Lcom/sec/android/app/twlauncher/GLScrollBars;->drawVerticalScrollBar(Lcom/sec/android/app/twlauncher/GLCanvas;III)Z

    move-result v2

    or-int v23, v23, v2

    .line 237
    :cond_20f
    return v23
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 244
    return-void
.end method

.method public invalidate()V
    .registers 1

    .prologue
    .line 293
    invoke-super {p0}, Landroid/widget/GridView;->invalidate()V

    .line 294
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setRequestFramePending()V

    .line 295
    return-void
.end method

.method public invalidate(IIII)V
    .registers 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 305
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/GridView;->invalidate(IIII)V

    .line 306
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setRequestFramePending()V

    .line 307
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "dirty"

    .prologue
    .line 299
    invoke-super {p0, p1}, Landroid/widget/GridView;->invalidate(Landroid/graphics/Rect;)V

    .line 300
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setRequestFramePending()V

    .line 301
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v3, -0x8000

    .line 311
    iget v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mMaxHeight:I

    if-lez v2, :cond_1c

    .line 312
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 313
    .local v0, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 315
    .local v1, heightSize:I
    if-eqz v0, :cond_16

    if-ne v0, v3, :cond_1c

    iget v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mMaxHeight:I

    if-ge v2, v1, :cond_1c

    .line 317
    :cond_16
    iget v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mMaxHeight:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 319
    .end local v0           #heightMode:I
    .end local v1           #heightSize:I
    :cond_1c
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 320
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 4
    .parameter "color"

    .prologue
    const/high16 v1, 0x437f

    .line 324
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgRed:F

    .line 325
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgGreen:F

    .line 326
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgBlue:F

    .line 327
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgOpacity:F

    .line 328
    invoke-super {p0, p1}, Landroid/widget/GridView;->setBackgroundColor(I)V

    .line 329
    return-void
.end method

.method public setDividerColor(I)V
    .registers 4
    .parameter "color"

    .prologue
    const/high16 v1, 0x437f

    .line 332
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerRed:F

    .line 333
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerGreen:F

    .line 334
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerBlue:F

    .line 335
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerOpacity:F

    .line 336
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setHorizontalDividerHeight()V

    .line 337
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setVerticalDividerWidth()V

    .line 338
    return-void
.end method

.method public setDividerThickness(I)V
    .registers 2
    .parameter "thickness"

    .prologue
    .line 341
    iput p1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerThickness:I

    .line 342
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setHorizontalDividerHeight()V

    .line 343
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setVerticalDividerWidth()V

    .line 344
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .registers 2
    .parameter "onTop"

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDrawSelectorOnTop:Z

    .line 349
    invoke-super {p0, p1}, Landroid/widget/GridView;->setDrawSelectorOnTop(Z)V

    .line 350
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .registers 2
    .parameter "spacing"

    .prologue
    .line 358
    iput p1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHorizontalSpacing:I

    .line 359
    invoke-super {p0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 360
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setVerticalDividerWidth()V

    .line 361
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 2
    .parameter "maxHeight"

    .prologue
    .line 364
    iput p1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mMaxHeight:I

    .line 365
    return-void
.end method

.method public setVerticalSpacing(I)V
    .registers 2
    .parameter "spacing"

    .prologue
    .line 380
    iput p1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVerticalSpacing:I

    .line 381
    invoke-super {p0, p1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 382
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setHorizontalDividerHeight()V

    .line 383
    return-void
.end method
