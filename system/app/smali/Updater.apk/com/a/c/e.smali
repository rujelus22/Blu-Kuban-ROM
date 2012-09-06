.class public final Lcom/a/c/e;
.super Landroid/graphics/drawable/BitmapDrawable;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:F

.field private b:Ljava/lang/ref/WeakReference;

.field private c:Z

.field private d:Landroid/graphics/Matrix;

.field private e:I

.field private f:F

.field private g:I

.field private h:Z

.field private i:Ljava/io/File;

.field private j:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/widget/ImageView;FFLjava/io/File;Landroid/graphics/BitmapFactory$Options;)V
    .registers 10

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/a/c/e;->b:Ljava/lang/ref/WeakReference;

    iput p4, p0, Lcom/a/c/e;->a:F

    iput p5, p0, Lcom/a/c/e;->f:F

    if-eqz p7, :cond_25

    invoke-static {p2}, Lcom/a/c/e;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/a/c/e;->g:I

    const-string v0, "reuse init version"

    iget v1, p0, Lcom/a/c/e;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p7, p0, Lcom/a/c/e;->j:Landroid/graphics/BitmapFactory$Options;

    iput-object p6, p0, Lcom/a/c/e;->i:Ljava/io/File;

    :cond_25
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/4 v0, 0x0

    invoke-direct {p0, p3, p2, v0}, Lcom/a/c/e;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private a(III)I
    .registers 7

    iget v0, p0, Lcom/a/c/e;->a:F

    iget v1, p0, Lcom/a/c/e;->a:F

    const v2, 0x7f7fffff

    cmpl-float v1, v1, v2

    if-nez v1, :cond_e

    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    :cond_e
    int-to-float v1, p3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static a(Landroid/graphics/Bitmap;)I
    .registers 7

    const/4 v2, 0x0

    const-string v1, "getGenerationId"

    const/4 v4, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    move-object v0, p0

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_11

    :goto_10
    return v2

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_10
.end method

.method private static a(Landroid/widget/ImageView;)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_9

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_9
    if-gtz v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    :cond_f
    if-lez v0, :cond_1b

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_1b
    return v0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 16

    const/4 v10, 0x0

    const/high16 v9, 0x4000

    const/high16 v8, 0x3fc0

    const/high16 v7, 0x3f80

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/a/c/e;->d:Landroid/graphics/Matrix;

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/a/c/e;->e:I

    if-eq v3, v0, :cond_8e

    :cond_14
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {p2}, Lcom/a/c/e;->a(Landroid/widget/ImageView;)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Lcom/a/c/e;->a(III)I

    move-result v5

    if-lez v3, :cond_28

    if-lez v4, :cond_28

    if-lez v0, :cond_28

    if-gtz v5, :cond_60

    :cond_28
    const/4 v0, 0x0

    :goto_29
    if-eqz v0, :cond_57

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    if-gtz v1, :cond_41

    if-lez v2, :cond_50

    :cond_41
    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sub-int v2, v3, v2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    sub-int v1, v3, v1

    invoke-virtual {p1, v10, v10, v2, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_50
    invoke-virtual {p0}, Lcom/a/c/e;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, p3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_57
    iget-boolean v0, p0, Lcom/a/c/e;->c:Z

    if-nez v0, :cond_5f

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/a/c/e;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    :cond_5f
    return-void

    :cond_60
    iget-object v2, p0, Lcom/a/c/e;->d:Landroid/graphics/Matrix;

    if-eqz v2, :cond_68

    iget v2, p0, Lcom/a/c/e;->e:I

    if-eq v3, v2, :cond_8e

    :cond_68
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/a/c/e;->d:Landroid/graphics/Matrix;

    mul-int v2, v3, v5

    mul-int v6, v0, v4

    if-lt v2, v6, :cond_91

    int-to-float v2, v5

    int-to-float v4, v4

    div-float/2addr v2, v4

    int-to-float v0, v0

    int-to-float v4, v3

    mul-float/2addr v4, v2

    sub-float/2addr v0, v4

    const/high16 v4, 0x3f00

    mul-float/2addr v0, v4

    move v11, v1

    move v1, v0

    move v0, v11

    :goto_82
    iget-object v4, p0, Lcom/a/c/e;->d:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v2, p0, Lcom/a/c/e;->d:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iput v3, p0, Lcom/a/c/e;->e:I

    :cond_8e
    iget-object v0, p0, Lcom/a/c/e;->d:Landroid/graphics/Matrix;

    goto :goto_29

    :cond_91
    int-to-float v0, v0

    int-to-float v2, v3

    div-float v2, v0, v2

    iget v0, p0, Lcom/a/c/e;->f:F

    const v6, 0x7f7fffff

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_aa

    iget v0, p0, Lcom/a/c/e;->f:F

    sub-float v0, v7, v0

    div-float/2addr v0, v9

    :goto_a3
    int-to-float v5, v5

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float v4, v5, v4

    mul-float/2addr v0, v4

    goto :goto_82

    :cond_aa
    int-to-float v0, v4

    int-to-float v6, v3

    div-float/2addr v0, v6

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v6, 0x3e80

    sub-float v0, v8, v0

    div-float/2addr v0, v9

    add-float/2addr v0, v6

    goto :goto_a3
.end method

.method private a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .registers 7

    invoke-static {p1}, Lcom/a/c/e;->a(Landroid/widget/ImageView;)I

    move-result v0

    if-gtz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/a/c/e;->a(III)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_6

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v2, :cond_2c

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2c
    if-eqz p3, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/c/e;->c:Z

    goto :goto_6
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .registers 6

    iget-object v0, p0, Lcom/a/c/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/a/c/e;->a:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_11

    if-nez v0, :cond_15

    :cond_11
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_14
    :goto_14
    return-void

    :cond_15
    invoke-virtual {p0}, Lcom/a/c/e;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/a/c/e;->i:Ljava/io/File;

    if-eqz v2, :cond_5d

    invoke-static {v1}, Lcom/a/c/e;->a(Landroid/graphics/Bitmap;)I

    move-result v2

    iget v3, p0, Lcom/a/c/e;->g:I

    if-eq v2, v3, :cond_59

    const-string v0, "reload"

    new-instance v1, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/a/c/e;->g:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "reload"

    iget-object v1, p0, Lcom/a/c/e;->i:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/a/c/e;->h:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/c/e;->h:Z

    invoke-static {p0}, Lcom/a/b/b;->a(Ljava/lang/Runnable;)V

    goto :goto_14

    :cond_59
    invoke-direct {p0, p1, v0, v1}, Lcom/a/c/e;->a(Landroid/graphics/Canvas;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_14

    :cond_5d
    invoke-direct {p0, p1, v0, v1}, Lcom/a/c/e;->a(Landroid/graphics/Canvas;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_14
.end method

.method public final run()V
    .registers 7

    const/4 v5, 0x0

    :try_start_1
    const-string v0, "reloading shared"

    iget v1, p0, Lcom/a/c/e;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/a/c/e;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/a/c/e;->j:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/a/b/d;->a(Ljava/lang/String;[BIZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/a/c/e;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/a/c/e;->g:I

    const-string v0, "reloading done"

    iget v1, p0, Lcom/a/c/e;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/a/c/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->postInvalidate()V

    const-string v0, "redrawing"

    iget-object v1, p0, Lcom/a/c/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_42} :catch_45

    :goto_42
    iput-boolean v5, p0, Lcom/a/c/e;->h:Z

    return-void

    :catch_45
    move-exception v0

    invoke-static {v0}, Lcom/a/c/a;->a(Ljava/lang/Throwable;)V

    goto :goto_42
.end method
