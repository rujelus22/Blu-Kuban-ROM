.class Lcom/google/android/maps/driveabout/vector/do;
.super Lcom/google/android/maps/driveabout/vector/dv;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/vector/dp;)V
    .registers 3
    .parameter

    .prologue
    .line 698
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/dv;-><init>(Lcom/google/android/maps/driveabout/vector/dw;Lcom/google/android/maps/driveabout/vector/dh;)V

    .line 699
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/vector/dp;Lcom/google/android/maps/driveabout/vector/dh;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 695
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/do;-><init>(Lcom/google/android/maps/driveabout/vector/dp;)V

    return-void
.end method


# virtual methods
.method public a(Ln/aa;)Ln/Q;
    .registers 3
    .parameter

    .prologue
    .line 714
    invoke-virtual {p1}, Ln/aa;->e()Ln/Q;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 709
    const/high16 v0, 0x3f80

    const v1, 0x3e99999a

    invoke-interface {p1, v0, v2, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 710
    return-void
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 703
    const/4 v0, 0x1

    return v0
.end method

.method public j()Lcom/google/android/maps/driveabout/vector/aJ;
    .registers 4

    .prologue
    .line 719
    new-instance v0, Lcom/google/android/maps/driveabout/vector/aJ;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/aI;->g:Lcom/google/android/maps/driveabout/vector/aI;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/aj;->c:Lcom/google/android/maps/driveabout/vector/aj;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aJ;-><init>(Lcom/google/android/maps/driveabout/vector/aI;Lcom/google/android/maps/driveabout/vector/aj;)V

    return-object v0
.end method

.method public k()Ln/ag;
    .registers 2

    .prologue
    .line 725
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dg;->n()Ln/ag;

    move-result-object v0

    return-object v0
.end method
