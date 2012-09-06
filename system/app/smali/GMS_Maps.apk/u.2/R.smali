.class public Lu/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lu/o;


# direct methods
.method public constructor <init>(J)V
    .registers 5
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lu/o;

    new-instance v1, Lu/s;

    invoke-direct {v1}, Lu/s;-><init>()V

    invoke-direct {v0, v1}, Lu/o;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lu/r;->a:Lu/o;

    .line 18
    iget-object v0, p0, Lu/r;->a:Lu/o;

    invoke-virtual {v0, p1, p2}, Lu/o;->setDuration(J)V

    .line 19
    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lu/r;->a:Lu/o;

    invoke-virtual {v0}, Lu/o;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/Q;

    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public a(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lu/r;->a:Lu/o;

    invoke-virtual {v0, p1, p2}, Lu/o;->a(II)V

    .line 50
    iget-object v0, p0, Lu/r;->a:Lu/o;

    invoke-virtual {v0}, Lu/o;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/Q;

    iget-object v1, p0, Lu/r;->a:Lu/o;

    invoke-virtual {v1}, Lu/o;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 52
    iget-object v0, p0, Lu/r;->a:Lu/o;

    invoke-virtual {v0}, Lu/o;->start()V

    .line 54
    :cond_1e
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 5
    .parameter

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->d()J

    move-result-wide v0

    .line 30
    iget-object v2, p0, Lu/r;->a:Lu/o;

    invoke-virtual {v2}, Lu/o;->hasStarted()Z

    move-result v2

    if-nez v2, :cond_11

    .line 31
    iget-object v2, p0, Lu/r;->a:Lu/o;

    invoke-virtual {v2}, Lu/o;->start()V

    .line 34
    :cond_11
    iget-object v2, p0, Lu/r;->a:Lu/o;

    invoke-virtual {v2, v0, v1}, Lu/o;->b(J)V

    .line 35
    iget-object v0, p0, Lu/r;->a:Lu/o;

    invoke-virtual {v0}, Lu/o;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_21

    .line 36
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->a()V

    .line 38
    :cond_21
    return-void
.end method

.method public b()F
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lu/r;->a:Lu/o;

    invoke-virtual {v0}, Lu/o;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/Q;

    invoke-virtual {v0}, Ln/Q;->g()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public b(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lu/r;->a:Lu/o;

    invoke-virtual {v0, p1, p2}, Lu/o;->b(II)V

    .line 59
    return-void
.end method
