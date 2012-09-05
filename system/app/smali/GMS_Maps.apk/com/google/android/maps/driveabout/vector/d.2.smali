.class public Lcom/google/android/maps/driveabout/vector/d;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lt/L;

.field protected b:Lt/L;

.field protected c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/d;->a:Lt/L;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/d;->b:Lt/L;

    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/d;->a:Lt/L;

    invoke-virtual {v0}, Lt/L;->f()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public a(II)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/d;->b:Lt/L;

    invoke-virtual {v0, p1, p2}, Lt/L;->d(II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/d;->b:Lt/L;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/d;->a:Lt/L;

    invoke-virtual {v0, v1}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/d;->c:Z

    :cond_12
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/d;->c:Z

    if-eqz v0, :cond_3e

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/d;->a:Lt/L;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/d;->a:Lt/L;

    invoke-virtual {v1}, Lt/L;->f()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/d;->b:Lt/L;

    invoke-virtual {v2}, Lt/L;->f()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/maps/driveabout/vector/d;->d(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lt/L;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/d;->a:Lt/L;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/d;->a:Lt/L;

    invoke-virtual {v1}, Lt/L;->g()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/d;->b:Lt/L;

    invoke-virtual {v2}, Lt/L;->g()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/maps/driveabout/vector/d;->d(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lt/L;->b(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/d;->a:Lt/L;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/d;->b:Lt/L;

    invoke-virtual {v0, v1}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/d;->c:Z

    :cond_3e
    return-void
.end method

.method public b()F
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/d;->a:Lt/L;

    invoke-virtual {v0}, Lt/L;->g()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public b(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/d;->a:Lt/L;

    invoke-virtual {v0, p1, p2}, Lt/L;->d(II)V

    return-void
.end method

.method public c(II)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/d;->b(II)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/d;->a(II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/d;->c:Z

    return-void
.end method

.method public d(II)I
    .registers 4

    sub-int v0, p2, p1

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    return v0
.end method
