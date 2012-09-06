.class public Lcom/estrongs/android/pop/app/imageviewer/ar;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->a:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->a:Landroid/graphics/Bitmap;

    rem-int/lit16 v0, p2, 0x168

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->b:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->b:I

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Landroid/graphics/Matrix;
    .registers 4

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->b:I

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ar;->f()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ar;->e()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_37
    return-object v0
.end method

.method public d()Z
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->b:I

    div-int/lit8 v0, v0, 0x5a

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public e()I
    .registers 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ar;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_c
.end method

.method public f()I
    .registers 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ar;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ar;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_c
.end method
