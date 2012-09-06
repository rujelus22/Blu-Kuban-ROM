.class Lcom/google/android/maps/driveabout/app/cl;
.super Lcom/google/android/maps/driveabout/vector/c;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/maps/driveabout/app/bN;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/l;Lcom/google/android/maps/driveabout/app/bN;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/c;-><init>(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 511
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cl;->b:Lcom/google/android/maps/driveabout/app/bN;

    .line 512
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cl;->b:Lcom/google/android/maps/driveabout/app/bN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bN;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;)Lcom/google/android/maps/driveabout/vector/m;
    .registers 8
    .parameter

    .prologue
    .line 516
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cl;->b:Lcom/google/android/maps/driveabout/app/bN;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bN;->c()Ln/P;

    move-result-object v1

    invoke-virtual {v1}, Ln/P;->a()Ln/Q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cl;->a:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/cl;->a:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/cl;->a:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/cl;->a:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/l;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cl;->a:Lcom/google/android/maps/driveabout/vector/l;

    .line 522
    return-object p0
.end method
