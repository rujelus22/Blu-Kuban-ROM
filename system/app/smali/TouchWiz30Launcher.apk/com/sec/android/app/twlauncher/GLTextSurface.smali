.class Lcom/sec/android/app/twlauncher/GLTextSurface;
.super Landroid/view/View;
.source "GLTextSurface.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# instance fields
.field private mBg:Landroid/graphics/drawable/Drawable;

.field private mDrawBounds:Landroid/graphics/RectF;

.field private mDrawText:Ljava/lang/String;

.field private mDrawTextAdv:[F

.field private mReloadSurface:Z

.field private mStyles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mText:Ljava/lang/String;

.field private mTextBounds:Landroid/graphics/RectF;

.field private mTextCharPaddingLeft:F

.field private mTextCharPaddingRight:F

.field private mTextCharSpacingStrategy:I

.field private mTextCharSpacingWidth:F

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextPaintMetrics:Landroid/graphics/Paint$FontMetrics;

.field private mTextUppercase:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mReloadSurface:Z

    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextUppercase:Z

    .line 32
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mText:Ljava/lang/String;

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawText:Ljava/lang/String;

    .line 33
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawBounds:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextBounds:Landroid/graphics/RectF;

    .line 34
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextPaint:Landroid/text/TextPaint;

    .line 35
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextPaintMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 36
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawTextAdv:[F

    .line 37
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mBg:Landroid/graphics/drawable/Drawable;

    .line 38
    iput v6, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextCharSpacingStrategy:I

    .line 39
    iput v7, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextCharSpacingWidth:F

    iput v7, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextCharPaddingLeft:F

    iput v7, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextCharPaddingRight:F

    .line 41
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mStyles:Landroid/util/SparseArray;

    .line 43
    new-instance v3, Lcom/sec/android/app/twlauncher/GLTextSurface$1;

    sget-object v4, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RECYCLE:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/twlauncher/GLTextSurface$1;-><init>(Lcom/sec/android/app/twlauncher/GLTextSurface;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 54
    sget-object v3, Lcom/sec/android/app/twlauncher/R$styleable;->GLTextSurface:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mBg:Landroid/graphics/drawable/Drawable;

    .line 56
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, typeFace:Ljava/lang/String;
    if-nez v1, :cond_56

    .line 58
    const-string v1, "default"

    .line 60
    :cond_56
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 61
    .local v2, typeFaceStyle:I
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextUppercase:Z

    .line 62
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 63
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextPaint:Landroid/text/TextPaint;

    const/4 v4, 0x3

    const/high16 v5, 0x41f0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 64
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextPaint:Landroid/text/TextPaint;

    const/4 v4, 0x4

    const/high16 v5, -0x100

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 65
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextCharSpacingStrategy:I

    .line 66
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextCharSpacingWidth:F

    .line 67
    iget v3, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextCharSpacingStrategy:I

    if-ne v8, v3, :cond_9f

    iget v3, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextCharSpacingWidth:F

    const/high16 v4, 0x3f80

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9f

    .line 68
    iput v6, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextCharSpacingStrategy:I

    .line 70
    :cond_9f
    const/16 v3, 0x8

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextCharPaddingLeft:F

    .line 71
    const/16 v3, 0x9

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextCharPaddingRight:F

    .line 72
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 73
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 75
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextPaintMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 76
    return-void
.end method

.method private setReloadRequired()V
    .registers 2

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mReloadSurface:Z

    if-nez v0, :cond_a

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mReloadSurface:Z

    .line 186
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 188
    :cond_a
    return-void
.end method

.method private updateBounds()V
    .registers 12

    .prologue
    .line 119
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 120
    .local v0, availRect:Landroid/graphics/RectF;
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 121
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mBg:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_56

    .line 122
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mBg:Landroid/graphics/drawable/Drawable;

    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawBounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawBounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawBounds:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    float-to-int v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 124
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 125
    .local v3, padding:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 126
    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, v3, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v0, Landroid/graphics/RectF;->left:F

    .line 127
    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, v0, Landroid/graphics/RectF;->top:F

    .line 128
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 129
    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, v3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, v0, Landroid/graphics/RectF;->right:F

    .line 131
    .end local v3           #padding:Landroid/graphics/Rect;
    :cond_56
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawText:Ljava/lang/String;

    if-eqz v5, :cond_8d

    .line 133
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 134
    .local v2, len:I
    new-array v5, v2, [F

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawTextAdv:[F

    .line 135
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawText:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawTextAdv:[F

    invoke-virtual {v5, v6, v7}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 136
    new-instance v4, Landroid/graphics/PointF;

    int-to-float v5, v2

    iget v6, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextCharPaddingLeft:F

    iget v7, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextCharPaddingRight:F

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextPaintMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextPaintMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 138
    .local v4, textSize:Landroid/graphics/PointF;
    iget v5, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextCharSpacingStrategy:I

    packed-switch v5, :pswitch_data_ca

    .line 156
    :goto_88
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextBounds:Landroid/graphics/RectF;

    invoke-static {v5, v0, v4}, Lcom/sec/android/app/twlauncher/SamsungUtils;->centerChildInParent(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 158
    .end local v2           #len:I
    .end local v4           #textSize:Landroid/graphics/PointF;
    :cond_8d
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLTextSurface;->invalidate()V

    .line 159
    return-void

    .line 140
    .restart local v2       #len:I
    .restart local v4       #textSize:Landroid/graphics/PointF;
    :pswitch_91
    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->x:F

    goto :goto_88

    .line 143
    :pswitch_9f
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawTextAdv:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextCharSpacingWidth:F

    .line 144
    const/4 v1, 0x1

    .local v1, i:I
    :goto_a7
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawTextAdv:[F

    array-length v5, v5

    if-ge v1, v5, :cond_bf

    .line 145
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawTextAdv:[F

    aget v5, v5, v1

    iget v6, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextCharSpacingWidth:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_bc

    .line 146
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawTextAdv:[F

    aget v5, v5, v1

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextCharSpacingWidth:F

    .line 144
    :cond_bc
    add-int/lit8 v1, v1, 0x1

    goto :goto_a7

    .line 153
    .end local v1           #i:I
    :cond_bf
    :pswitch_bf
    iget v5, v4, Landroid/graphics/PointF;->x:F

    int-to-float v6, v2

    iget v7, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextCharSpacingWidth:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->x:F

    goto :goto_88

    .line 138
    nop

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_91
        :pswitch_bf
        :pswitch_9f
    .end packed-switch
.end method


# virtual methods
.method public clearStyles()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mStyles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 84
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 12
    .parameter "glCanvas"

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 242
    new-instance v7, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLTextSurface;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLTextSurface;->getHeight()I

    move-result v1

    invoke-direct {v7, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 243
    .local v7, size:Landroid/graphics/Point;
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mReloadSurface:Z

    if-eqz v0, :cond_2c

    .line 244
    iget v0, v7, Landroid/graphics/Point;->x:I

    iget v1, v7, Landroid/graphics/Point;->y:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 245
    .local v6, b:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 246
    .local v8, skCanvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/GLTextSurface;->draw(Landroid/graphics/Canvas;)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 248
    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mReloadSurface:Z

    .line 250
    .end local v6           #b:Landroid/graphics/Bitmap;
    .end local v8           #skCanvas:Landroid/graphics/Canvas;
    :cond_2c
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget v0, v7, Landroid/graphics/Point;->x:I

    int-to-float v4, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    int-to-float v5, v0

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 251
    return v9
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 20
    .parameter "skCanvas"

    .prologue
    .line 196
    invoke-super/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1e

    .line 238
    :cond_1d
    return-void

    .line 200
    :cond_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mBg:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2d

    .line 201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 208
    :cond_2d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawText:Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    .line 210
    .local v15, len:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextBounds:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->left:F

    .local v5, xPos:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextPaintMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float v6, v1, v2

    .line 212
    .local v6, yPos:F
    new-instance v7, Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {v7, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 213
    .local v7, temp:Landroid/text/TextPaint;
    const/16 v16, 0x0

    .line 214
    .local v16, preSpc:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5b
    if-ge v3, v15, :cond_1d

    .line 215
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mStyles:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/text/style/CharacterStyle;

    .line 216
    .local v17, style:Landroid/text/style/CharacterStyle;
    if-eqz v17, :cond_6e

    .line 217
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 223
    :cond_6e
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextCharPaddingLeft:F

    add-float/2addr v5, v1

    .line 224
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextCharSpacingStrategy:I

    if-nez v1, :cond_93

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawText:Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawTextAdv:[F

    aget v1, v1, v3

    add-float/2addr v5, v1

    .line 232
    :goto_8b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextCharPaddingRight:F

    add-float/2addr v5, v1

    .line 214
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 228
    :cond_93
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextCharSpacingWidth:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawTextAdv:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float v16, v1, v2

    .line 229
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawText:Ljava/lang/String;

    add-int/lit8 v11, v3, 0x1

    add-float v12, v5, v16

    move-object/from16 v8, p1

    move v10, v3

    move v13, v6

    move-object v14, v7

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 230
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextCharSpacingWidth:F

    add-float/2addr v5, v1

    goto :goto_8b
.end method

.method public getTextColor()I
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    return v0
.end method

.method public invalidate()V
    .registers 1

    .prologue
    .line 167
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 168
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLTextSurface;->setReloadRequired()V

    .line 169
    return-void
.end method

.method public invalidate(IIII)V
    .registers 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    .line 180
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLTextSurface;->setReloadRequired()V

    .line 181
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "dirty"

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 174
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLTextSurface;->setReloadRequired()V

    .line 175
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 12
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 88
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 89
    if-eqz p1, :cond_2b

    .line 90
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLTextSurface;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLTextSurface;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 91
    .local v0, padding:Landroid/graphics/PointF;
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLTextSurface;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLTextSurface;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLTextSurface;->setDrawBounds(FFFF)V

    .line 94
    .end local v0           #padding:Landroid/graphics/PointF;
    :cond_2b
    return-void
.end method

.method public setDrawBounds(FFFF)V
    .registers 6
    .parameter "aLeft"
    .parameter "aTop"
    .parameter "aRight"
    .parameter "aBottom"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 98
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLTextSurface;->updateBounds()V

    .line 99
    return-void
.end method

.method public setDrawBounds(Landroid/graphics/PointF;)V
    .registers 8
    .parameter "aSize"

    .prologue
    .line 102
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLTextSurface;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLTextSurface;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLTextSurface;->getPaddingRight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLTextSurface;->getPaddingBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 103
    .local v1, padding:Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLTextSurface;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget v4, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLTextSurface;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 105
    .local v0, availSize:Landroid/graphics/PointF;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawBounds:Landroid/graphics/RectF;

    invoke-static {v2, v0, p1}, Lcom/sec/android/app/twlauncher/SamsungUtils;->centerChildInParent(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 106
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLTextSurface;->updateBounds()V

    .line 107
    return-void
.end method

.method public setStyle(ILandroid/text/style/CharacterStyle;)V
    .registers 4
    .parameter "aIndex"
    .parameter "aStyle"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mStyles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .parameter "aText"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mText:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mText:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawText:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mText:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mTextUppercase:Z

    if-eqz v0, :cond_16

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLTextSurface;->mDrawText:Ljava/lang/String;

    .line 115
    :cond_16
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLTextSurface;->updateBounds()V

    .line 116
    return-void
.end method
