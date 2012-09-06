.class public Laai;
.super Ljava/lang/Object;
.source "TiledBlurEvaluatorFactoryImpl.java"

# interfaces
.implements Laag;


# instance fields
.field final a:I

.field final a:Landroid/graphics/Bitmap;

.field final synthetic a:Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;

.field final a:[I

.field final b:I

.field final c:I

.field final d:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;Landroid/graphics/Bitmap;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x100

    .line 45
    iput-object p1, p0, Laai;->a:Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;->a()V

    .line 48
    iput-object p2, p0, Laai;->a:Landroid/graphics/Bitmap;

    .line 49
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 50
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 52
    if-ge v1, v2, :cond_38

    move v0, v1

    :goto_17
    iput v0, p0, Laai;->a:I

    .line 53
    if-ge v3, v2, :cond_1c

    move v2, v3

    :cond_1c
    iput v2, p0, Laai;->b:I

    .line 55
    iget v0, p0, Laai;->a:I

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Laai;->c:I

    .line 56
    iget v0, p0, Laai;->b:I

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Laai;->d:I

    .line 58
    iget v0, p0, Laai;->a:I

    iget v1, p0, Laai;->b:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Laai;->a:[I

    .line 59
    return-void

    :cond_38
    move v0, v2

    .line 52
    goto :goto_17
.end method


# virtual methods
.method public a(II)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-virtual {p0, p1, p2}, Laai;->b(II)Z

    move-result v0

    invoke-static {v0}, LafQ;->a(Z)V

    .line 77
    iget v0, p0, Laai;->c:I

    iget v1, p0, Laai;->a:I

    mul-int/2addr v1, p1

    add-int v4, v0, v1

    .line 78
    iget v0, p0, Laai;->d:I

    iget v1, p0, Laai;->b:I

    mul-int/2addr v1, p2

    add-int v5, v0, v1

    .line 79
    iget-object v0, p0, Laai;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Laai;->a:[I

    iget v3, p0, Laai;->a:I

    iget v6, p0, Laai;->a:I

    iget v7, p0, Laai;->b:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 80
    iget-object v0, p0, Laai;->a:[I

    iget v1, p0, Laai;->a:I

    iget v3, p0, Laai;->b:I

    invoke-static {v0, v1, v3}, Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;->a([III)F

    move-result v0

    .line 81
    const v1, 0x3cf5c28f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_35

    const/4 v2, 0x1

    :cond_35
    return v2
.end method

.method public b(II)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 63
    iget v1, p0, Laai;->c:I

    iget v2, p0, Laai;->a:I

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    .line 64
    if-ltz v1, :cond_14

    iget v2, p0, Laai;->a:I

    add-int/2addr v1, v2

    iget-object v2, p0, Laai;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_15

    .line 71
    :cond_14
    :goto_14
    return v0

    .line 67
    :cond_15
    iget v1, p0, Laai;->d:I

    iget v2, p0, Laai;->b:I

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    .line 68
    if-ltz v1, :cond_14

    iget v2, p0, Laai;->b:I

    add-int/2addr v1, v2

    iget-object v2, p0, Laai;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_14

    .line 71
    const/4 v0, 0x1

    goto :goto_14
.end method
