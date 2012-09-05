.class Lcom/google/android/maps/driveabout/vector/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/an;


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Lcom/google/android/maps/driveabout/vector/cx;

.field private final c:I

.field private final d:I

.field private e:Z


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;FLcom/google/android/maps/driveabout/vector/cx;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aj;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/aj;->b:Lcom/google/android/maps/driveabout/vector/cx;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aj;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aj;->c:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aj;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aj;->d:I

    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aj;->c:I

    int-to-float v0, v0

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/I;)Lcom/google/android/maps/driveabout/vector/cw;
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aj;->b:Lcom/google/android/maps/driveabout/vector/cx;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aj;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cx;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cw;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->e()V

    :cond_f
    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/I;)Lcom/google/android/maps/driveabout/vector/cw;
    .registers 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aj;->b:Lcom/google/android/maps/driveabout/vector/cx;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aj;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cx;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cw;

    if-nez v0, :cond_32

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cw;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cw;-><init>(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aj;->e:Z

    if-eqz v1, :cond_19

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/cw;->e(Z)V

    :cond_19
    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/cw;->c(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cw;->d(Z)V

    invoke-static {}, Lcom/google/googlenav/android/a;->d()Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aj;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cw;->a(Landroid/graphics/Bitmap;)V

    :goto_2b
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aj;->b:Lcom/google/android/maps/driveabout/vector/cx;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aj;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/cx;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->e()V

    return-object v0

    :cond_36
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aj;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cw;->b(Landroid/graphics/Bitmap;)V

    goto :goto_2b
.end method

.method public b()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aj;->d:I

    int-to-float v0, v0

    return v0
.end method

.method public c()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aj;->d:I

    int-to-float v0, v0

    return v0
.end method

.method public f()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aj;->e:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aj;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9
    return-void
.end method
