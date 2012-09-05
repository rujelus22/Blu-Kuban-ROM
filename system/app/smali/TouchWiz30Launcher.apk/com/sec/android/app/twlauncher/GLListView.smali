.class public Lcom/sec/android/app/twlauncher/GLListView;
.super Landroid/widget/ListView;
.source "GLListView.java"

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

.field private mMaxHeight:I

.field private mPaddingOffset:[I

.field private mRequestFramePending:Z

.field private mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mVerticalSpacing:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-string v0, "GLListView"

    sput-object v0, Lcom/sec/android/app/twlauncher/GLListView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 25
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mRequestFramePending:Z

    .line 26
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDrawSelectorOnTop:Z

    .line 27
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mMaxHeight:I

    .line 28
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerThickness:I

    .line 29
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mVerticalSpacing:I

    .line 30
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mHDividerHeight:I

    .line 33
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgRed:F

    .line 34
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgGreen:F

    .line 35
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgBlue:F

    .line 36
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgOpacity:F

    .line 39
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerRed:F

    .line 40
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerGreen:F

    .line 41
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerBlue:F

    .line 42
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerOpacity:F

    .line 45
    new-array v0, v3, [F

    fill-array-data v0, :array_40

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mFadingEdgeStrength:[F

    .line 46
    new-array v0, v3, [I

    fill-array-data v0, :array_4c

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mPaddingOffset:[I

    .line 50
    new-instance v0, Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLScrollBars;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    .line 51
    return-void

    .line 45
    nop

    :array_40
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 46
    :array_4c
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
    .line 54
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/GLListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
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

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 25
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLListView;->mRequestFramePending:Z

    .line 26
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDrawSelectorOnTop:Z

    .line 27
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLListView;->mMaxHeight:I

    .line 28
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerThickness:I

    .line 29
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLListView;->mVerticalSpacing:I

    .line 30
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLListView;->mHDividerHeight:I

    .line 33
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgRed:F

    .line 34
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgGreen:F

    .line 35
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgBlue:F

    .line 36
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgOpacity:F

    .line 39
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerRed:F

    .line 40
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerGreen:F

    .line 41
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerBlue:F

    .line 42
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerOpacity:F

    .line 45
    new-array v1, v4, [F

    fill-array-data v1, :array_7e

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mFadingEdgeStrength:[F

    .line 46
    new-array v1, v4, [I

    fill-array-data v1, :array_8a

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mPaddingOffset:[I

    .line 59
    new-instance v1, Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/twlauncher/GLScrollBars;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    .line 61
    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->GLGridView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLListView;->setBackgroundColor(I)V

    .line 67
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLListView;->setDividerThickness(I)V

    .line 70
    const/4 v1, 0x6

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLListView;->setDividerColor(I)V

    .line 73
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLListView;->setDrawSelectorOnTop(Z)V

    .line 76
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLListView;->setMaxHeight(I)V

    .line 79
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLListView;->setVerticalSpacing(I)V

    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    return-void

    .line 45
    :array_7e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 46
    :array_8a
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

    .line 211
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 212
    .local v3, selector:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2b

    .line 213
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 214
    .local v4, width:I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 216
    .local v2, height:I
    invoke-virtual {v3, v5, v5, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 217
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 218
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 219
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 220
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLListView;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v5, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 221
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLListView;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p1, v5, v6, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    .line 223
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v2           #height:I
    .end local v4           #width:I
    :cond_2b
    return-void
.end method

.method private setHorizontalDividerHeight()V
    .registers 3

    .prologue
    .line 289
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerOpacity:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_b

    const/4 v0, 0x0

    :goto_8
    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mHDividerHeight:I

    .line 290
    return-void

    .line 289
    :cond_b
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mVerticalSpacing:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerThickness:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_8
.end method

.method private setRequestFramePending()V
    .registers 2

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mRequestFramePending:Z

    if-nez v0, :cond_a

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mRequestFramePending:Z

    .line 300
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 302
    :cond_a
    return-void
.end method

.method private startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 8
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 322
    const/4 v0, 0x0

    .line 324
    .local v0, edgesRequired:Z
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLListView;->isVerticalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mFadingEdgeStrength:[F

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLListView;->getTopFadingEdgeStrength()F

    move-result v2

    aput v2, v1, v4

    .line 326
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mFadingEdgeStrength:[F

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLListView;->getBottomFadingEdgeStrength()F

    move-result v2

    aput v2, v1, v5

    .line 327
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mFadingEdgeStrength:[F

    aget v1, v1, v4

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_2a

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mFadingEdgeStrength:[F

    aget v1, v1, v5

    cmpl-float v1, v1, v3

    if-lez v1, :cond_53

    .line 328
    :cond_2a
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mPaddingOffset:[I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mPaddingOffset:[I

    const/4 v3, 0x0

    aput v3, v2, v5

    aput v3, v1, v4

    .line 329
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLListView;->isPaddingOffsetRequired()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 330
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mPaddingOffset:[I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLListView;->getTopPaddingOffset()I

    move-result v2

    aput v2, v1, v4

    .line 331
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mPaddingOffset:[I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLListView;->getBottomPaddingOffset()I

    move-result v2

    aput v2, v1, v5

    .line 333
    :cond_49
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mFadingEdgeStrength:[F

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLListView;->mPaddingOffset:[I

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/app/twlauncher/GLScrollBars;->startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;[F[I)Z

    move-result v0

    .line 336
    :cond_53
    return v0
.end method


# virtual methods
.method public awakenScrollBars()Z
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLScrollBars;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method protected awakenScrollBars(IZ)Z
    .registers 4
    .parameter "scrollDelay"
    .parameter "invalidate"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLScrollBars;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 98
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 31
    .parameter "canvas"

    .prologue
    .line 102
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/GLListView;->mRequestFramePending:Z

    .line 103
    const/16 v18, 0x0

    .line 104
    .local v18, redraw:Z
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->getChildCount()I

    move-result v11

    .line 107
    .local v11, count:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mBgOpacity:F

    move/from16 v25, v0

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-lez v25, :cond_68

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 109
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mBgRed:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mBgGreen:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mBgBlue:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mBgOpacity:F

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 110
    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->getWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 115
    :cond_68
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateClipRegion(Landroid/view/View;Z)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->getListPaddingLeft()I

    move-result v15

    .line 118
    .local v15, listLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->getWidth()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->getListPaddingRight()I

    move-result v26

    sub-int v16, v25, v26

    .line 119
    .local v16, listRight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mVerticalSpacing:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mHDividerHeight:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    div-int/lit8 v24, v25, 0x2

    .line 121
    .local v24, yDivOffset:I
    const v23, 0x7fffffff

    .line 122
    .local v23, vDivTop:I
    const/high16 v22, -0x8000

    .line 124
    .local v22, vDivBottom:I
    const v20, 0x7fffffff

    .line 125
    .local v20, rowMinLeft:I
    const/high16 v19, -0x8000

    .line 127
    .local v19, rowMaxRight:I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 128
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/twlauncher/GLListView;->startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    .line 129
    const/4 v14, 0x0

    .local v14, i:I
    :goto_a2
    if-ge v14, v11, :cond_1ba

    .line 130
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/twlauncher/GLListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 131
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v10

    .line 132
    .local v10, childVisibility:I
    const/16 v25, 0x8

    move/from16 v0, v25

    if-eq v10, v0, :cond_1a6

    .line 134
    :try_start_b4
    move-object v0, v5

    check-cast v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    move-object v13, v0

    .line 135
    .local v13, glChild:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
    invoke-virtual {v5}, Landroid/view/View;->computeScroll()V

    .line 136
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 137
    .local v7, childLeft:I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 138
    .local v9, childTop:I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v8

    .line 139
    .local v8, childRight:I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 140
    .local v6, childBottom:I
    move/from16 v0, v19

    if-ge v7, v0, :cond_133

    .line 144
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mHDividerHeight:I

    move/from16 v25, v0

    if-lez v25, :cond_12f

    .line 145
    move/from16 v17, v22

    .line 146
    .local v17, nextDivTop:I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 147
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerRed:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerGreen:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerBlue:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerOpacity:F

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 148
    add-int v22, v22, v24

    .line 149
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mHDividerHeight:I

    move/from16 v25, v0

    add-int v17, v22, v25

    .line 150
    int-to-float v0, v15

    move/from16 v25, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 151
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 152
    move/from16 v23, v17

    .line 154
    .end local v17           #nextDivTop:I
    :cond_12f
    move/from16 v22, v6

    .line 155
    move/from16 v20, v7

    .line 157
    :cond_133
    move/from16 v19, v8

    .line 158
    move/from16 v0, v20

    if-ge v7, v0, :cond_13b

    .line 159
    move/from16 v20, v7

    .line 160
    :cond_13b
    move/from16 v0, v23

    if-ge v9, v0, :cond_141

    .line 161
    move/from16 v23, v9

    .line 162
    :cond_141
    move/from16 v0, v22

    if-le v6, v0, :cond_147

    .line 163
    move/from16 v22, v6

    .line 165
    :cond_147
    if-nez v10, :cond_1a6

    .line 166
    invoke-virtual {v5}, Landroid/view/View;->isPressed()Z

    move-result v25

    if-nez v25, :cond_155

    invoke-virtual {v5}, Landroid/view/View;->isSelected()Z

    move-result v25

    if-eqz v25, :cond_1aa

    :cond_155
    const/16 v21, 0x1

    .line 167
    .local v21, selectorNeeded:Z
    :goto_157
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 168
    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v25

    sub-int v25, v7, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v26

    sub-int v26, v9, v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 171
    if-eqz v21, :cond_18a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mDrawSelectorOnTop:Z

    move/from16 v25, v0

    if-nez v25, :cond_18a

    .line 172
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/twlauncher/GLListView;->drawSelector(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)V

    .line 174
    :cond_18a
    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v25

    or-int v18, v18, v25

    .line 176
    if-eqz v21, :cond_1a3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mDrawSelectorOnTop:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1a3

    .line 177
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/twlauncher/GLListView;->drawSelector(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)V

    .line 179
    :cond_1a3
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V
    :try_end_1a6
    .catch Ljava/lang/ClassCastException; {:try_start_b4 .. :try_end_1a6} :catch_1ad

    .line 129
    .end local v6           #childBottom:I
    .end local v7           #childLeft:I
    .end local v8           #childRight:I
    .end local v9           #childTop:I
    .end local v13           #glChild:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
    .end local v21           #selectorNeeded:Z
    :cond_1a6
    :goto_1a6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_a2

    .line 166
    .restart local v6       #childBottom:I
    .restart local v7       #childLeft:I
    .restart local v8       #childRight:I
    .restart local v9       #childTop:I
    .restart local v13       #glChild:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
    :cond_1aa
    const/16 v21, 0x0

    goto :goto_157

    .line 182
    .end local v6           #childBottom:I
    .end local v7           #childLeft:I
    .end local v8           #childRight:I
    .end local v9           #childTop:I
    .end local v13           #glChild:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
    :catch_1ad
    move-exception v12

    .line 183
    .local v12, e:Ljava/lang/ClassCastException;
    sget-object v25, Lcom/sec/android/app/twlauncher/GLListView;->LOG_TAG:Ljava/lang/String;

    const-string v26, "Child is not of type GLSurfaceViewGroup.DispatchDrawGL"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a6

    .line 188
    .end local v5           #child:Landroid/view/View;
    .end local v10           #childVisibility:I
    .end local v12           #e:Ljava/lang/ClassCastException;
    :cond_1ba
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/GLScrollBars;->isHorizontalScrollBarDrawing()Z

    move-result v25

    if-eqz v25, :cond_1eb

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->computeHorizontalScrollRange()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->computeHorizontalScrollOffset()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->computeHorizontalScrollExtent()I

    move-result v28

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLScrollBars;->drawHorizontalScrollBar(Lcom/sec/android/app/twlauncher/GLCanvas;III)Z

    move-result v25

    or-int v18, v18, v25

    .line 193
    :cond_1eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/GLScrollBars;->isVerticalScrollBarDrawing()Z

    move-result v25

    if-eqz v25, :cond_219

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->computeVerticalScrollRange()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->computeVerticalScrollOffset()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->computeVerticalScrollExtent()I

    move-result v28

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLScrollBars;->drawVerticalScrollBar(Lcom/sec/android/app/twlauncher/GLCanvas;III)Z

    move-result v25

    or-int v18, v18, v25

    .line 197
    :cond_219
    return v18
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 204
    return-void
.end method

.method public invalidate()V
    .registers 1

    .prologue
    .line 231
    invoke-super {p0}, Landroid/widget/ListView;->invalidate()V

    .line 232
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLListView;->setRequestFramePending()V

    .line 233
    return-void
.end method

.method public invalidate(IIII)V
    .registers 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 243
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->invalidate(IIII)V

    .line 244
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLListView;->setRequestFramePending()V

    .line 245
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "dirty"

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/widget/ListView;->invalidate(Landroid/graphics/Rect;)V

    .line 238
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLListView;->setRequestFramePending()V

    .line 239
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v3, -0x8000

    .line 249
    iget v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mMaxHeight:I

    if-lez v2, :cond_1c

    .line 250
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 251
    .local v0, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 253
    .local v1, heightSize:I
    if-eqz v0, :cond_16

    if-ne v0, v3, :cond_1c

    iget v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mMaxHeight:I

    if-ge v2, v1, :cond_1c

    .line 255
    :cond_16
    iget v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mMaxHeight:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 257
    .end local v0           #heightMode:I
    .end local v1           #heightSize:I
    :cond_1c
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 258
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 4
    .parameter "color"

    .prologue
    const/high16 v1, 0x437f

    .line 262
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgRed:F

    .line 263
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgGreen:F

    .line 264
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgBlue:F

    .line 265
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgOpacity:F

    .line 266
    invoke-super {p0, p1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 267
    return-void
.end method

.method public setDividerColor(I)V
    .registers 4
    .parameter "color"

    .prologue
    const/high16 v1, 0x437f

    .line 270
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerRed:F

    .line 271
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerGreen:F

    .line 272
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerBlue:F

    .line 273
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerOpacity:F

    .line 274
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLListView;->setHorizontalDividerHeight()V

    .line 275
    return-void
.end method

.method public setDividerThickness(I)V
    .registers 2
    .parameter "thickness"

    .prologue
    .line 278
    iput p1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerThickness:I

    .line 279
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLListView;->setHorizontalDividerHeight()V

    .line 280
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .registers 2
    .parameter "onTop"

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDrawSelectorOnTop:Z

    .line 285
    invoke-super {p0, p1}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 286
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 2
    .parameter "maxHeight"

    .prologue
    .line 294
    iput p1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mMaxHeight:I

    .line 295
    return-void
.end method

.method public setVerticalSpacing(I)V
    .registers 2
    .parameter "spacing"

    .prologue
    .line 305
    iput p1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mVerticalSpacing:I

    .line 306
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLListView;->setHorizontalDividerHeight()V

    .line 307
    return-void
.end method
