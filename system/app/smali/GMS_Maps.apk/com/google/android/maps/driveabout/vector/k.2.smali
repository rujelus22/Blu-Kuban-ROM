.class public Lcom/google/android/maps/driveabout/vector/k;
.super Lcom/google/android/maps/driveabout/vector/d;


# instance fields
.field private final d:Lt/L;

.field private e:Z

.field private f:J

.field private final g:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/d;-><init>()V

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->d:Lt/L;

    iput-wide p1, p0, Lcom/google/android/maps/driveabout/vector/k;->g:J

    return-void
.end method


# virtual methods
.method public a(IIF)I
    .registers 10

    const/high16 v5, 0x3f80

    cmpl-float v0, p3, v5

    if-ltz v0, :cond_7

    :goto_6
    return p2

    :cond_7
    sub-int v0, p2, p1

    int-to-float v0, v0

    const-wide v1, 0x3ff921fb54442d18L

    float-to-double v3, p3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    sub-float v1, v5, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sub-int/2addr p2, v0

    goto :goto_6
.end method

.method public a(II)V
    .registers 7

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->d:Lt/L;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->a:Lt/L;

    invoke-virtual {v1}, Lt/L;->f()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->a:Lt/L;

    invoke-virtual {v2}, Lt/L;->g()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lt/L;->d(II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->b:Lt/L;

    invoke-virtual {v0, p1, p2}, Lt/L;->d(II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->b:Lt/L;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->a:Lt/L;

    invoke-virtual {v0, v1}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/k;->e:Z

    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/k;->c:Z

    :cond_25
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 7

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/k;->e:Z

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/k;->f:J

    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/k;->e:Z

    :cond_d
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/k;->c:Z

    if-eqz v0, :cond_56

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->a()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->d()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/k;->f:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/google/android/maps/driveabout/vector/k;->g:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->a:Lt/L;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->d:Lt/L;

    invoke-virtual {v2}, Lt/L;->f()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/k;->b:Lt/L;

    invoke-virtual {v3}, Lt/L;->f()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/google/android/maps/driveabout/vector/k;->a(IIF)I

    move-result v2

    invoke-virtual {v1, v2}, Lt/L;->a(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->a:Lt/L;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/k;->d:Lt/L;

    invoke-virtual {v2}, Lt/L;->g()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/k;->b:Lt/L;

    invoke-virtual {v3}, Lt/L;->g()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/google/android/maps/driveabout/vector/k;->a(IIF)I

    move-result v0

    invoke-virtual {v1, v0}, Lt/L;->b(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/k;->a:Lt/L;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/k;->b:Lt/L;

    invoke-virtual {v0, v1}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/k;->c:Z

    :cond_56
    return-void
.end method
