.class Lcom/google/android/maps/driveabout/vector/dl;
.super Lcom/google/android/maps/driveabout/vector/dg;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/vector/dm;)V
    .registers 3
    .parameter

    .prologue
    .line 804
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/dg;-><init>(Lcom/google/android/maps/driveabout/vector/dk;Lcom/google/android/maps/driveabout/vector/dh;)V

    .line 805
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/vector/dm;Lcom/google/android/maps/driveabout/vector/dh;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 744
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/dl;-><init>(Lcom/google/android/maps/driveabout/vector/dm;)V

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    .prologue
    .line 800
    const/16 v0, 0x800

    return v0
.end method

.method public a(Ln/aa;)Ln/Q;
    .registers 3
    .parameter

    .prologue
    .line 784
    invoke-virtual {p1}, Ln/aa;->d()Ln/Q;

    move-result-object v0

    return-object v0
.end method

.method public a(Lac/p;Landroid/content/Context;Ljava/util/Locale;Ljava/io/File;ZZ)Lr/aH;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x100

    .line 749
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/dg;->b(I)I

    move-result v3

    .line 752
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->d:Lcom/google/android/maps/driveabout/vector/dg;

    if-ne p0, v0, :cond_37

    .line 753
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/db;->b(Landroid/content/res/Resources;I)I

    move-result v4

    .line 759
    :goto_1c
    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/dg;->b(Lcom/google/android/maps/driveabout/vector/dg;)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    .line 761
    :goto_2c
    new-instance v0, Lr/I;

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lr/I;-><init>(Lac/p;Lcom/google/android/maps/driveabout/vector/dg;IIFLjava/util/Locale;Ljava/io/File;Lr/t;)V

    return-object v0

    .line 756
    :cond_37
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/db;->a(Landroid/content/res/Resources;I)I

    move-result v4

    goto :goto_1c

    .line 759
    :cond_40
    const/high16 v5, 0x3f80

    goto :goto_2c
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 779
    const/high16 v0, 0x3f80

    const v1, 0x3e99999a

    invoke-interface {p1, v2, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 780
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 744
    check-cast p1, Lcom/google/android/maps/driveabout/vector/dg;

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/dg;->a(Lcom/google/android/maps/driveabout/vector/dg;)I

    move-result v0

    return v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 773
    const/4 v0, 0x1

    return v0
.end method

.method public j()Lcom/google/android/maps/driveabout/vector/aJ;
    .registers 4

    .prologue
    .line 789
    new-instance v0, Lcom/google/android/maps/driveabout/vector/aJ;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/aI;->h:Lcom/google/android/maps/driveabout/vector/aI;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/aj;->b:Lcom/google/android/maps/driveabout/vector/aj;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aJ;-><init>(Lcom/google/android/maps/driveabout/vector/aI;Lcom/google/android/maps/driveabout/vector/aj;)V

    return-object v0
.end method

.method public k()Ln/ag;
    .registers 2

    .prologue
    .line 795
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dg;->o()Ln/ag;

    move-result-object v0

    return-object v0
.end method

.method public l()Lr/aB;
    .registers 2

    .prologue
    .line 768
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dn;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/vector/dn;-><init>(Lcom/google/android/maps/driveabout/vector/dg;)V

    return-object v0
.end method
