.class Lcom/google/android/maps/driveabout/vector/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/al;


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Lcom/google/android/maps/driveabout/vector/cW;

.field private final c:I

.field private final d:I

.field private e:Z


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;FLcom/google/android/maps/driveabout/vector/cW;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ah;->a:Landroid/graphics/Bitmap;

    .line 595
    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/ah;->b:Lcom/google/android/maps/driveabout/vector/cW;

    .line 596
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->c:I

    .line 597
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->d:I

    .line 598
    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    .prologue
    .line 601
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->c:I

    int-to-float v0, v0

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/D;)Lcom/google/android/maps/driveabout/vector/cV;
    .registers 4
    .parameter

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->b:Lcom/google/android/maps/driveabout/vector/cW;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ah;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cW;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cV;

    .line 642
    if-eqz v0, :cond_f

    .line 643
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->f()V

    .line 645
    :cond_f
    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/D;)Lcom/google/android/maps/driveabout/vector/cV;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 613
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->b:Lcom/google/android/maps/driveabout/vector/cW;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ah;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cW;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cV;

    .line 614
    if-nez v0, :cond_36

    .line 615
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cV;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cV;-><init>(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 616
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/ah;->e:Z

    if-eqz v1, :cond_19

    .line 617
    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/cV;->e(Z)V

    .line 619
    :cond_19
    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/cV;->c(Z)V

    .line 623
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->d(Z)V

    .line 627
    invoke-static {}, Lcom/google/googlenav/android/a;->a()Z

    move-result v1

    if-eqz v1, :cond_3a

    sget-boolean v1, Lcom/google/googlenav/android/E;->g:Z

    if-nez v1, :cond_3a

    .line 629
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ah;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Landroid/graphics/Bitmap;)V

    .line 633
    :goto_2f
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ah;->b:Lcom/google/android/maps/driveabout/vector/cW;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ah;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/cW;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 635
    :cond_36
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->f()V

    .line 636
    return-object v0

    .line 631
    :cond_3a
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ah;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->b(Landroid/graphics/Bitmap;)V

    goto :goto_2f
.end method

.method public b()F
    .registers 2

    .prologue
    .line 603
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->d:I

    int-to-float v0, v0

    return v0
.end method

.method public c()F
    .registers 2

    .prologue
    .line 605
    const/4 v0, 0x0

    return v0
.end method

.method public d()F
    .registers 2

    .prologue
    .line 607
    const/4 v0, 0x0

    return v0
.end method

.method public e()F
    .registers 2

    .prologue
    .line 609
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->d:I

    int-to-float v0, v0

    return v0
.end method

.method public f()V
    .registers 2

    .prologue
    .line 661
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->e:Z

    if-eqz v0, :cond_9

    .line 662
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ah;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 664
    :cond_9
    return-void
.end method
