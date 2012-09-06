.class Lcom/google/android/maps/driveabout/vector/di;
.super Lcom/google/android/maps/driveabout/vector/dv;
.source "SourceFile"


# instance fields
.field private final z:Z


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/vector/dj;)V
    .registers 3
    .parameter

    .prologue
    .line 609
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/dv;-><init>(Lcom/google/android/maps/driveabout/vector/dw;Lcom/google/android/maps/driveabout/vector/dh;)V

    .line 611
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/dj;->a(Lcom/google/android/maps/driveabout/vector/dj;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/di;->z:Z

    .line 612
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/vector/dj;Lcom/google/android/maps/driveabout/vector/dh;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 604
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/di;-><init>(Lcom/google/android/maps/driveabout/vector/dj;)V

    return-void
.end method


# virtual methods
.method public a(ILcom/google/android/maps/driveabout/vector/D;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 624
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/di;->z:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->b:Lcom/google/android/maps/driveabout/vector/D;

    if-ne p2, v0, :cond_11

    .line 625
    :cond_8
    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->e:Lcom/google/android/maps/driveabout/vector/D;

    if-eq p2, v0, :cond_10

    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->d:Lcom/google/android/maps/driveabout/vector/D;

    if-ne p2, v0, :cond_12

    .line 626
    :cond_10
    const/4 p1, 0x0

    .line 635
    :cond_11
    :goto_11
    return p1

    .line 627
    :cond_12
    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->a:Lcom/google/android/maps/driveabout/vector/D;

    if-eq p2, v0, :cond_11

    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->c:Lcom/google/android/maps/driveabout/vector/D;

    if-eq p2, v0, :cond_11

    .line 628
    and-int/lit16 p1, p1, -0x1a07

    goto :goto_11
.end method

.method public a(Ln/aa;)Ln/Q;
    .registers 3
    .parameter

    .prologue
    .line 651
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ln/aa;->a(I)Ln/Q;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 646
    const v0, 0x3e99999a

    invoke-interface {p1, v1, v1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 647
    return-void
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 616
    const/4 v0, 0x1

    return v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 640
    const/4 v0, 0x1

    return v0
.end method

.method public j()Lcom/google/android/maps/driveabout/vector/aJ;
    .registers 4

    .prologue
    .line 656
    new-instance v0, Lcom/google/android/maps/driveabout/vector/aJ;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/aI;->f:Lcom/google/android/maps/driveabout/vector/aI;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/aj;->b:Lcom/google/android/maps/driveabout/vector/aj;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aJ;-><init>(Lcom/google/android/maps/driveabout/vector/aI;Lcom/google/android/maps/driveabout/vector/aj;)V

    return-object v0
.end method

.method public k()Ln/ag;
    .registers 2

    .prologue
    .line 662
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dg;->m()Ln/ag;

    move-result-object v0

    return-object v0
.end method
