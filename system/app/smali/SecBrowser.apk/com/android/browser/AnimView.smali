.class public Lcom/android/browser/AnimView;
.super Landroid/view/View;
.source "AnimView.java"


# static fields
.field private static final s_triangles:[S

.field private static final s_vertices:[[F


# instance fields
.field protected mContext:Landroid/app/Activity;

.field protected mShadowEnabled:Z

.field private final mTexs:[F

.field private final mVerts:[F

.field private mViewBmp:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [[F

    const/4 v1, 0x0

    new-array v2, v3, [F

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_36

    aput-object v2, v0, v1

    new-array v1, v3, [F

    fill-array-data v1, :array_3e

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [F

    fill-array-data v2, :array_46

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/AnimView;->s_vertices:[[F

    .line 85
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/android/browser/AnimView;->s_triangles:[S

    return-void

    .line 79
    :array_2e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_36
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_3e
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_46
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 85
    :array_4e
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x0t 0x0t
        0x3t 0x0t
        0x2t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/16 v1, 0x400

    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 72
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/browser/AnimView;->mVerts:[F

    .line 73
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/browser/AnimView;->mTexs:[F

    .line 27
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/android/browser/AnimView;->mContext:Landroid/app/Activity;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v1, 0x400

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/browser/AnimView;->mVerts:[F

    .line 73
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/browser/AnimView;->mTexs:[F

    .line 31
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/android/browser/AnimView;->mContext:Landroid/app/Activity;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v1, 0x400

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/browser/AnimView;->mVerts:[F

    .line 73
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/browser/AnimView;->mTexs:[F

    .line 36
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/android/browser/AnimView;->mContext:Landroid/app/Activity;

    .line 37
    return-void
.end method

.method private static setXY([FIFF)V
    .registers 5
    .parameter "array"
    .parameter "index"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 75
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x0

    aput p2, p0, v0

    .line 76
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    aput p3, p0, v0

    .line 77
    return-void
.end method


# virtual methods
.method protected getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    .line 49
    iget-object v3, p0, Lcom/android/browser/AnimView;->mContext:Landroid/app/Activity;

    const v4, 0x7f0d005a

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, mainContentView:Landroid/view/View;
    iget-object v3, p0, Lcom/android/browser/AnimView;->mViewBmp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/android/browser/AnimView;->mViewBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Lcom/android/browser/AnimView;->mViewBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_36

    .line 53
    :cond_26
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/AnimView;->mViewBmp:Landroid/graphics/Bitmap;

    .line 57
    :cond_36
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/browser/AnimView;->mViewBmp:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 58
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 59
    .local v2, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v6, v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v6, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 60
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 63
    iget-object v3, p0, Lcom/android/browser/AnimView;->mViewBmp:Landroid/graphics/Bitmap;

    return-object v3
.end method

.method public getShadowEnabled()Z
    .registers 2

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/browser/AnimView;->mShadowEnabled:Z

    return v0
.end method

.method protected onDrawReflectionInShadow(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .registers 26
    .parameter "canvas"
    .parameter "bitmap"

    .prologue
    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v16

    .line 94
    .local v16, clipBounds:Landroid/graphics/Rect;
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, v16

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 95
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 97
    const/4 v15, 0x3

    .line 99
    .local v15, GAP:I
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 100
    .local v14, paint:Landroid/graphics/Paint;
    const/16 v2, 0x80

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    .line 103
    .local v22, w:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 104
    .local v17, h:I
    sget-object v21, Lcom/android/browser/AnimView;->s_vertices:[[F

    .line 105
    .local v21, vertUntransformed:[[F
    const/16 v19, 0x4

    .line 106
    .local v19, len:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_33
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_7a

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/AnimView;->mTexs:[F

    aget-object v3, v21, v18

    const/4 v4, 0x0

    aget v3, v3, v4

    move/from16 v0, v22

    int-to-float v4, v0

    mul-float/2addr v3, v4

    move/from16 v0, v17

    int-to-float v4, v0

    aget-object v5, v21, v18

    const/4 v6, 0x1

    aget v5, v5, v6

    move/from16 v0, v17

    int-to-float v6, v0

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move/from16 v0, v18

    invoke-static {v2, v0, v3, v4}, Lcom/android/browser/AnimView;->setXY([FIFF)V

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/AnimView;->mVerts:[F

    aget-object v3, v21, v18

    const/4 v4, 0x0

    aget v3, v3, v4

    move/from16 v0, v22

    int-to-float v4, v0

    mul-float/2addr v3, v4

    add-int/lit8 v4, v17, 0x3

    int-to-float v4, v4

    aget-object v5, v21, v18

    const/4 v6, 0x1

    aget v5, v5, v6

    move/from16 v0, v17

    int-to-float v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move/from16 v0, v18

    invoke-static {v2, v0, v3, v4}, Lcom/android/browser/AnimView;->setXY([FIFF)V

    .line 106
    add-int/lit8 v18, v18, 0x1

    goto :goto_33

    .line 111
    :cond_7a
    new-instance v20, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 112
    .local v20, s:Landroid/graphics/Shader;
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 114
    sget-object v3, Landroid/graphics/Canvas$VertexMode;->TRIANGLES:Landroid/graphics/Canvas$VertexMode;

    const/16 v4, 0x8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/browser/AnimView;->mVerts:[F

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/browser/AnimView;->mTexs:[F

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/android/browser/AnimView;->s_triangles:[S

    const/4 v12, 0x0

    sget-object v2, Lcom/android/browser/AnimView;->s_triangles:[S

    array-length v13, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v14}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    .line 123
    return-void
.end method

.method public recycleCache()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/AnimView;->mViewBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/AnimView;->mViewBmp:Landroid/graphics/Bitmap;

    .line 69
    :cond_7
    return-void
.end method

.method public setShadowEnabled(Z)V
    .registers 2
    .parameter "shadowEnabled"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/browser/AnimView;->mShadowEnabled:Z

    .line 45
    return-void
.end method
