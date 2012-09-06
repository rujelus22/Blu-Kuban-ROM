.class Lcom/google/android/maps/driveabout/vector/dv;
.super Lcom/google/android/maps/driveabout/vector/dg;
.source "SourceFile"


# instance fields
.field private final z:Z


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/vector/dw;)V
    .registers 3
    .parameter

    .prologue
    .line 571
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/dg;-><init>(Lcom/google/android/maps/driveabout/vector/dk;Lcom/google/android/maps/driveabout/vector/dh;)V

    .line 573
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/dw;->a(Lcom/google/android/maps/driveabout/vector/dw;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dv;->z:Z

    .line 574
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/vector/dw;Lcom/google/android/maps/driveabout/vector/dh;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 519
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/dv;-><init>(Lcom/google/android/maps/driveabout/vector/dw;)V

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    .prologue
    .line 567
    const/16 v0, 0x1000

    return v0
.end method

.method public a(Lac/p;Landroid/content/Context;Ljava/util/Locale;Ljava/io/File;ZZ)Lr/aH;
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 531
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dv;->n:Lcom/google/android/maps/driveabout/vector/dg;

    if-ne p0, v0, :cond_10

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->u()Z

    move-result v0

    if-nez v0, :cond_10

    .line 532
    const/4 v0, 0x0

    .line 557
    :cond_f
    :goto_f
    return-object v0

    .line 534
    :cond_10
    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/dg;->b(Lcom/google/android/maps/driveabout/vector/dg;)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    .line 536
    :goto_20
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/db;->a(Landroid/content/res/Resources;I)I

    move-result v3

    .line 538
    if-eqz p5, :cond_49

    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/dg;->c(Lcom/google/android/maps/driveabout/vector/dg;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v6, 0x1

    .line 539
    :goto_33
    const/4 v9, 0x0

    check-cast v9, Lr/t;

    .line 541
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dg;->w:Z

    if-eqz v0, :cond_4b

    .line 542
    new-instance v0, Lr/aK;

    sget-object v8, Lr/aK;->h:Lr/aO;

    move-object v1, p1

    move-object v2, p0

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v9}, Lr/aK;-><init>(Lac/p;Lcom/google/android/maps/driveabout/vector/dg;IFLjava/util/Locale;ZLjava/io/File;Lr/aO;Lr/t;)V

    goto :goto_f

    .line 534
    :cond_46
    const/high16 v4, 0x3f80

    goto :goto_20

    .line 538
    :cond_49
    const/4 v6, 0x0

    goto :goto_33

    .line 546
    :cond_4b
    new-instance v0, Lr/aP;

    move-object v1, p1

    move-object v2, p0

    move-object v5, p3

    move-object v7, p4

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Lr/aP;-><init>(Lac/p;Lcom/google/android/maps/driveabout/vector/dg;IFLjava/util/Locale;ZLjava/io/File;Lr/t;)V

    .line 549
    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->f:Lcom/google/android/maps/driveabout/vector/dg;

    if-eq p0, v1, :cond_5d

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->g:Lcom/google/android/maps/driveabout/vector/dg;

    if-ne p0, v1, :cond_63

    .line 550
    :cond_5d
    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v1, v2}, Lr/aP;->a(J)V

    .line 553
    :cond_63
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/dv;->z:Z

    if-eqz v1, :cond_f

    if-eqz p6, :cond_f

    .line 554
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/googlenav/bB;->a(B)Lcom/google/googlenav/bB;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr/aP;->a(Lcom/google/googlenav/bB;)V

    goto :goto_f
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 519
    check-cast p1, Lcom/google/android/maps/driveabout/vector/dg;

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/dg;->a(Lcom/google/android/maps/driveabout/vector/dg;)I

    move-result v0

    return v0
.end method

.method public l()Lr/aB;
    .registers 2

    .prologue
    .line 562
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dx;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/vector/dx;-><init>(Lcom/google/android/maps/driveabout/vector/dg;)V

    return-object v0
.end method
