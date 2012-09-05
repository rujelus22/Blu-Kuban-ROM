.class public Lcom/google/android/maps/driveabout/vector/w;
.super Ljava/lang/Object;


# instance fields
.field private volatile a:F

.field private b:Lcom/google/android/maps/driveabout/vector/x;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x4296

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/w;->a:F

    return-void
.end method

.method public static b(F)F
    .registers 6

    const/high16 v4, 0x4160

    const/high16 v3, 0x4120

    const/high16 v0, 0x41f0

    const/high16 v1, 0x4180

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_f

    const/high16 v0, 0x4296

    :cond_e
    :goto_e
    return v0

    :cond_f
    cmpl-float v1, p0, v4

    if-lez v1, :cond_1d

    const/high16 v1, 0x4000

    const/high16 v2, 0x4234

    sub-float v3, p0, v4

    mul-float/2addr v0, v3

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    goto :goto_e

    :cond_1d
    cmpl-float v1, p0, v3

    if-lez v1, :cond_e

    const/high16 v1, 0x4080

    const/high16 v2, 0x4170

    sub-float v3, p0, v3

    mul-float/2addr v2, v3

    div-float v1, v2, v1

    add-float/2addr v0, v1

    goto :goto_e
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/u;)Lcom/google/android/maps/driveabout/vector/u;
    .registers 9

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v4

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/w;->a:F

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/w;->b(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v1, 0x41a8

    const/high16 v0, 0x4000

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/w;->b:Lcom/google/android/maps/driveabout/vector/x;

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/w;->b:Lcom/google/android/maps/driveabout/vector/x;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/google/android/maps/driveabout/vector/x;->a(Lt/L;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/w;->b:Lcom/google/android/maps/driveabout/vector/x;

    invoke-interface {v2}, Lcom/google/android/maps/driveabout/vector/x;->a()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_33
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    cmpl-float v0, v4, v3

    if-lez v0, :cond_58

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v1

    invoke-virtual {v1, v1}, Lt/L;->h(Lt/L;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    :goto_57
    return-object v0

    :cond_58
    cmpg-float v0, v4, v6

    if-gez v0, :cond_72

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v1

    invoke-virtual {v1, v1}, Lt/L;->h(Lt/L;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->f()F

    move-result v5

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    goto :goto_57

    :cond_72
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_84

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v0

    invoke-virtual {v0}, Lt/L;->j()Z

    move-result v0

    if-eqz v0, :cond_9d

    :cond_84
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v1

    invoke-virtual {v1, v1}, Lt/L;->h(Lt/L;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    goto :goto_57

    :cond_9d
    move-object v0, p1

    goto :goto_57
.end method

.method public a()Lcom/google/android/maps/driveabout/vector/x;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/w;->b:Lcom/google/android/maps/driveabout/vector/x;

    return-object v0
.end method

.method public a(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/w;->a:F

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/x;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/w;->b:Lcom/google/android/maps/driveabout/vector/x;

    return-void
.end method

.method public b()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/w;->a:F

    return v0
.end method
