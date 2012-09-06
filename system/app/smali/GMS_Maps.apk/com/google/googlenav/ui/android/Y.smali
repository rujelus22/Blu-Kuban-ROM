.class Lcom/google/googlenav/ui/android/y;
.super Ly/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/r;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/android/r;)V
    .registers 2
    .parameter

    .prologue
    .line 703
    iput-object p1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-direct {p0}, Ly/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/android/r;Lcom/google/googlenav/ui/android/s;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 703
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/y;-><init>(Lcom/google/googlenav/ui/android/r;)V

    return-void
.end method

.method private a(FF)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 869
    invoke-static {}, Lcom/google/googlenav/ui/android/r;->m()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p2, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_17

    invoke-static {}, Lcom/google/googlenav/ui/android/r;->m()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p2

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private j()V
    .registers 3

    .prologue
    .line 792
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->h(Lcom/google/googlenav/ui/android/r;)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 793
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->h(Lcom/google/googlenav/ui/android/r;)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->g()V

    .line 794
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/r;->a(Lcom/google/googlenav/ui/android/r;Lcom/google/android/maps/driveabout/vector/cV;)Lcom/google/android/maps/driveabout/vector/cV;

    .line 796
    :cond_17
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 714
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->f(Lcom/google/googlenav/ui/android/r;)Lcom/google/android/maps/driveabout/vector/k;

    move-result-object v0

    if-nez v0, :cond_12

    .line 715
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0, p2}, Lcom/google/googlenav/ui/android/r;->a(Lcom/google/googlenav/ui/android/r;Lcom/google/android/maps/driveabout/vector/k;)Lcom/google/android/maps/driveabout/vector/k;

    .line 716
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/r;->c()V

    .line 718
    :cond_12
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v9

    .line 719
    invoke-interface {v9}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 720
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->g(Lcom/google/googlenav/ui/android/r;)V

    .line 721
    invoke-static {}, Lcom/google/googlenav/ui/android/r;->d()Lcom/google/android/maps/driveabout/vector/dY;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 724
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x3e99999a

    invoke-interface {v9, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 725
    invoke-static {}, Lcom/google/googlenav/ui/android/r;->e()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    .line 728
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->d(Lcom/google/googlenav/ui/android/r;)Lcom/google/googlenav/ui/android/w;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/ui/android/w;->h:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->d(Lcom/google/googlenav/ui/android/r;)Lcom/google/googlenav/ui/android/w;

    move-result-object v1

    iget-object v1, v1, Lcom/google/googlenav/ui/android/w;->h:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v2}, Lcom/google/googlenav/ui/android/r;->d(Lcom/google/googlenav/ui/android/r;)Lcom/google/googlenav/ui/android/w;

    move-result-object v2

    iget-object v2, v2, Lcom/google/googlenav/ui/android/w;->h:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v3}, Lcom/google/googlenav/ui/android/r;->d(Lcom/google/googlenav/ui/android/r;)Lcom/google/googlenav/ui/android/w;

    move-result-object v3

    iget-object v3, v3, Lcom/google/googlenav/ui/android/w;->h:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-interface {v9, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 730
    invoke-static {}, Lcom/google/googlenav/ui/android/r;->f()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {v9, v0}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 731
    invoke-static {}, Lcom/google/googlenav/ui/android/r;->f()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {v9, v0}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 732
    invoke-static {}, Lcom/google/googlenav/ui/android/r;->g()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    .line 735
    invoke-static {}, Lcom/google/googlenav/ui/android/r;->h()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    .line 738
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->d(Lcom/google/googlenav/ui/android/r;)Lcom/google/googlenav/ui/android/w;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/ui/android/w;->e:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_249

    .line 741
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->h(Lcom/google/googlenav/ui/android/r;)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->d(Lcom/google/googlenav/ui/android/r;)Lcom/google/googlenav/ui/android/w;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/googlenav/ui/android/w;->j:Z

    if-eqz v0, :cond_142

    .line 742
    :cond_a5
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/y;->j()V

    .line 743
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->d(Lcom/google/googlenav/ui/android/r;)Lcom/google/googlenav/ui/android/w;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/googlenav/ui/android/w;->j:Z

    .line 744
    iget-object v10, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->i(Lcom/google/googlenav/ui/android/r;)Lcom/google/android/maps/driveabout/vector/cR;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->d(Lcom/google/googlenav/ui/android/r;)Lcom/google/googlenav/ui/android/w;

    move-result-object v1

    iget-object v2, v1, Lcom/google/googlenav/ui/android/w;->e:Ljava/lang/String;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/cR;->b:Lcom/google/android/maps/driveabout/vector/cT;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/cR;->a:Ln/ak;

    invoke-static {}, Lcom/google/googlenav/ui/android/r;->i()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->d(Lcom/google/googlenav/ui/android/r;)Lcom/google/googlenav/ui/android/w;

    move-result-object v1

    iget v6, v1, Lcom/google/googlenav/ui/android/w;->f:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cR;->a(Lcom/google/android/maps/driveabout/vector/aU;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FIII)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/google/googlenav/ui/android/r;->a(Lcom/google/googlenav/ui/android/r;Lcom/google/android/maps/driveabout/vector/cV;)Lcom/google/android/maps/driveabout/vector/cV;

    .line 747
    iget-object v6, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->i(Lcom/google/googlenav/ui/android/r;)Lcom/google/android/maps/driveabout/vector/cR;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->d(Lcom/google/googlenav/ui/android/r;)Lcom/google/googlenav/ui/android/w;

    move-result-object v1

    iget-object v1, v1, Lcom/google/googlenav/ui/android/w;->e:Ljava/lang/String;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cR;->b:Lcom/google/android/maps/driveabout/vector/cT;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/cR;->a:Ln/ak;

    invoke-static {}, Lcom/google/googlenav/ui/android/r;->i()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/cR;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FZ)[F

    move-result-object v0

    invoke-static {v6, v0}, Lcom/google/googlenav/ui/android/r;->a(Lcom/google/googlenav/ui/android/r;[F)[F

    .line 750
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->j(Lcom/google/googlenav/ui/android/r;)Lcom/google/android/maps/driveabout/vector/cM;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 751
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->h(Lcom/google/googlenav/ui/android/r;)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->b()F

    move-result v0

    .line 752
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->h(Lcom/google/googlenav/ui/android/r;)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cV;->c()F

    move-result v1

    .line 753
    iget-object v2, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v2}, Lcom/google/googlenav/ui/android/r;->j(Lcom/google/googlenav/ui/android/r;)Lcom/google/android/maps/driveabout/vector/cM;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/cM;->a(FF)V

    .line 754
    iget-object v2, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v2}, Lcom/google/googlenav/ui/android/r;->j(Lcom/google/googlenav/ui/android/r;)Lcom/google/android/maps/driveabout/vector/cM;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/google/android/maps/driveabout/vector/cM;->a(FF)V

    .line 755
    iget-object v2, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v2}, Lcom/google/googlenav/ui/android/r;->j(Lcom/google/googlenav/ui/android/r;)Lcom/google/android/maps/driveabout/vector/cM;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/google/android/maps/driveabout/vector/cM;->a(FF)V

    .line 756
    iget-object v2, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v2}, Lcom/google/googlenav/ui/android/r;->j(Lcom/google/googlenav/ui/android/r;)Lcom/google/android/maps/driveabout/vector/cM;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/cM;->a(FF)V

    .line 758
    :cond_142
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->e(Lcom/google/googlenav/ui/android/r;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24d

    const/4 v0, 0x1

    .line 760
    :goto_156
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->e()I

    move-result v1

    .line 761
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->as()Z

    move-result v2

    if-eqz v2, :cond_250

    if-eqz v0, :cond_250

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->k()I

    move-result v0

    .line 764
    :goto_16e
    invoke-static {}, Lcom/google/googlenav/ui/android/r;->j()Lcom/google/android/maps/driveabout/vector/dY;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/dY;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 765
    invoke-static {}, Lcom/google/googlenav/ui/android/r;->j()Lcom/google/android/maps/driveabout/vector/dY;

    move-result-object v2

    const/4 v3, 0x0

    int-to-float v4, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/dY;->a(FFF)V

    .line 766
    invoke-static {}, Lcom/google/googlenav/ui/android/r;->j()Lcom/google/android/maps/driveabout/vector/dY;

    move-result-object v2

    const/4 v3, 0x0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v5}, Lcom/google/googlenav/ui/android/r;->k(Lcom/google/googlenav/ui/android/r;)[F

    move-result-object v5

    const/4 v6, 0x1

    aget v5, v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/dY;->a(FFF)V

    .line 767
    invoke-static {}, Lcom/google/googlenav/ui/android/r;->j()Lcom/google/android/maps/driveabout/vector/dY;

    move-result-object v2

    int-to-float v3, v1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v5}, Lcom/google/googlenav/ui/android/r;->k(Lcom/google/googlenav/ui/android/r;)[F

    move-result-object v5

    const/4 v6, 0x1

    aget v5, v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/dY;->a(FFF)V

    .line 768
    invoke-static {}, Lcom/google/googlenav/ui/android/r;->j()Lcom/google/android/maps/driveabout/vector/dY;

    move-result-object v2

    int-to-float v3, v1

    int-to-float v4, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/dY;->a(FFF)V

    .line 769
    iget-object v2, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v2}, Lcom/google/googlenav/ui/android/r;->d(Lcom/google/googlenav/ui/android/r;)Lcom/google/googlenav/ui/android/w;

    move-result-object v2

    iget-object v2, v2, Lcom/google/googlenav/ui/android/w;->g:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v3}, Lcom/google/googlenav/ui/android/r;->d(Lcom/google/googlenav/ui/android/r;)Lcom/google/googlenav/ui/android/w;

    move-result-object v3

    iget-object v3, v3, Lcom/google/googlenav/ui/android/w;->g:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v4}, Lcom/google/googlenav/ui/android/r;->d(Lcom/google/googlenav/ui/android/r;)Lcom/google/googlenav/ui/android/w;

    move-result-object v4

    iget-object v4, v4, Lcom/google/googlenav/ui/android/w;->g:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    iget-object v5, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v5}, Lcom/google/googlenav/ui/android/r;->d(Lcom/google/googlenav/ui/android/r;)Lcom/google/googlenav/ui/android/w;

    move-result-object v5

    iget-object v5, v5, Lcom/google/googlenav/ui/android/w;->g:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-interface {v9, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 771
    invoke-static {}, Lcom/google/googlenav/ui/android/r;->j()Lcom/google/android/maps/driveabout/vector/dY;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 772
    invoke-static {}, Lcom/google/googlenav/ui/android/r;->k()Lcom/google/android/maps/driveabout/vector/bI;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, p1, v3}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    .line 777
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v2}, Lcom/google/googlenav/ui/android/r;->k(Lcom/google/googlenav/ui/android/r;)[F

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-interface {v9, v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 778
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->k(Lcom/google/googlenav/ui/android/r;)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->k(Lcom/google/googlenav/ui/android/r;)[F

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    const/high16 v2, 0x3f80

    invoke-interface {v9, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 779
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->o()V

    .line 780
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const v2, 0x45f00800

    invoke-interface {v9, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 781
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->j(Lcom/google/googlenav/ui/android/r;)Lcom/google/android/maps/driveabout/vector/cM;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 782
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->f:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 784
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->h(Lcom/google/googlenav/ui/android/r;)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 785
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {v9, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 786
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->p()V

    .line 788
    :cond_249
    invoke-interface {v9}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 789
    return-void

    .line 758
    :cond_24d
    const/4 v0, 0x0

    goto/16 :goto_156

    .line 761
    :cond_250
    const/4 v0, 0x0

    goto/16 :goto_16e
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 707
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/android/r;->a(Lcom/google/googlenav/ui/android/r;Lcom/google/android/maps/driveabout/vector/k;)Lcom/google/android/maps/driveabout/vector/k;

    .line 708
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/r;->c()V

    .line 709
    const/4 v0, 0x1

    return v0
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 800
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/y;->j()V

    .line 801
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->i(Lcom/google/googlenav/ui/android/r;)Lcom/google/android/maps/driveabout/vector/cR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cR;->a()V

    .line 802
    return-void
.end method

.method public b(FFLcom/google/android/maps/driveabout/vector/k;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 817
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->l(Lcom/google/googlenav/ui/android/r;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 818
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->m(Lcom/google/googlenav/ui/android/r;)I

    move-result v1

    packed-switch v1, :pswitch_data_13e

    .line 865
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->l(Lcom/google/googlenav/ui/android/r;)Z

    move-result v0

    :cond_18
    :goto_18
    return v0

    .line 820
    :pswitch_19
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->n(Lcom/google/googlenav/ui/android/r;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {}, Lcom/google/googlenav/ui/android/r;->l()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_18

    .line 821
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->o(Lcom/google/googlenav/ui/android/r;)Landroid/graphics/Point;

    move-result-object v1

    float-to-int v2, p1

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 822
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/android/r;->b(Lcom/google/googlenav/ui/android/r;Z)Z

    goto :goto_18

    .line 826
    :pswitch_3a
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->o(Lcom/google/googlenav/ui/android/r;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/google/googlenav/ui/android/r;->l()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_18

    .line 827
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->n(Lcom/google/googlenav/ui/android/r;)Landroid/graphics/Point;

    move-result-object v1

    float-to-int v2, p2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 828
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/android/r;->b(Lcom/google/googlenav/ui/android/r;Z)Z

    goto :goto_18

    .line 832
    :pswitch_5b
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->o(Lcom/google/googlenav/ui/android/r;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {}, Lcom/google/googlenav/ui/android/r;->l()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_18

    .line 833
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->n(Lcom/google/googlenav/ui/android/r;)Landroid/graphics/Point;

    move-result-object v1

    float-to-int v2, p1

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 834
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/android/r;->b(Lcom/google/googlenav/ui/android/r;Z)Z

    goto :goto_18

    .line 838
    :pswitch_7c
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->n(Lcom/google/googlenav/ui/android/r;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/google/googlenav/ui/android/r;->l()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_18

    .line 839
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->o(Lcom/google/googlenav/ui/android/r;)Landroid/graphics/Point;

    move-result-object v1

    float-to-int v2, p2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 840
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/android/r;->b(Lcom/google/googlenav/ui/android/r;Z)Z

    goto/16 :goto_18

    .line 845
    :cond_9e
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->o(Lcom/google/googlenav/ui/android/r;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_d2

    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->n(Lcom/google/googlenav/ui/android/r;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_d2

    .line 846
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->o(Lcom/google/googlenav/ui/android/r;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-direct {p0, p2, v1}, Lcom/google/googlenav/ui/android/y;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_108

    .line 847
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/android/r;->a(Lcom/google/googlenav/ui/android/r;Z)Z

    .line 848
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/android/r;->a(Lcom/google/googlenav/ui/android/r;I)I

    .line 855
    :cond_d2
    :goto_d2
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->o(Lcom/google/googlenav/ui/android/r;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_12

    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->n(Lcom/google/googlenav/ui/android/r;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_12

    .line 856
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->o(Lcom/google/googlenav/ui/android/r;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-direct {p0, p1, v1}, Lcom/google/googlenav/ui/android/y;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_122

    .line 857
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/android/r;->a(Lcom/google/googlenav/ui/android/r;Z)Z

    .line 858
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/r;->a(Lcom/google/googlenav/ui/android/r;I)I

    goto/16 :goto_12

    .line 849
    :cond_108
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->n(Lcom/google/googlenav/ui/android/r;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-direct {p0, p2, v1}, Lcom/google/googlenav/ui/android/y;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 850
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/android/r;->a(Lcom/google/googlenav/ui/android/r;Z)Z

    .line 851
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/android/r;->a(Lcom/google/googlenav/ui/android/r;I)I

    goto :goto_d2

    .line 859
    :cond_122
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->n(Lcom/google/googlenav/ui/android/r;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-direct {p0, p1, v1}, Lcom/google/googlenav/ui/android/y;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 860
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/android/r;->a(Lcom/google/googlenav/ui/android/r;Z)Z

    .line 861
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/r;->a(Lcom/google/googlenav/ui/android/r;I)I

    goto/16 :goto_12

    .line 818
    :pswitch_data_13e
    .packed-switch 0x0
        :pswitch_19
        :pswitch_3a
        :pswitch_5b
        :pswitch_7c
    .end packed-switch
.end method

.method public d(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 807
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/r;->l(Lcom/google/googlenav/ui/android/r;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 808
    iget-object v1, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/android/r;->a(Lcom/google/googlenav/ui/android/r;Z)Z

    .line 809
    const/4 v0, 0x1

    .line 811
    :cond_f
    return v0
.end method

.method public q_()Z
    .registers 2

    .prologue
    .line 874
    iget-object v0, p0, Lcom/google/googlenav/ui/android/y;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->p(Lcom/google/googlenav/ui/android/r;)Lcom/google/googlenav/ui/android/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/android/x;->b()Z

    move-result v0

    return v0
.end method
