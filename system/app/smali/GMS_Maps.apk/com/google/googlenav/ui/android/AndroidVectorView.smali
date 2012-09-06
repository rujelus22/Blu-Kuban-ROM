.class public Lcom/google/googlenav/ui/android/AndroidVectorView;
.super Lcom/google/googlenav/ui/android/BaseAndroidView;
.source "SourceFile"


# instance fields
.field private f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

.field private g:Lcom/google/android/maps/driveabout/vector/w;

.field private h:Lcom/google/android/maps/driveabout/vector/bU;

.field private i:Lcom/google/googlenav/ui/android/aa;

.field private j:Lau/e;

.field private final k:Lcom/google/android/maps/driveabout/vector/dW;

.field private final l:Lcom/google/android/maps/driveabout/vector/dV;

.field private final m:Las/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 316
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/BaseAndroidView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 224
    new-instance v0, Lcom/google/googlenav/ui/android/f;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/f;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->k:Lcom/google/android/maps/driveabout/vector/dW;

    .line 245
    new-instance v0, Lcom/google/googlenav/ui/android/g;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/g;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->l:Lcom/google/android/maps/driveabout/vector/dV;

    .line 283
    new-instance v0, Lcom/google/googlenav/ui/android/h;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/h;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->m:Las/h;

    .line 317
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/AndroidVectorView;)Lau/e;
    .registers 2
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->j:Lau/e;

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/dg;Lr/aO;I)Lr/aK;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 634
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/vector/dD;->a(Lcom/google/android/maps/driveabout/vector/dg;Landroid/content/Context;)Lr/aH;

    move-result-object v0

    check-cast v0, Lr/aK;

    .line 636
    invoke-virtual {v0, p2}, Lr/aK;->a(Lr/aO;)V

    .line 638
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Lr/aK;->a(J)V

    .line 646
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->w()Lcom/google/android/maps/driveabout/vector/cy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/dg;)V

    .line 647
    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/dg;)V
    .registers 3
    .parameter

    .prologue
    .line 657
    invoke-static {p1}, Lr/aJ;->b(Lcom/google/android/maps/driveabout/vector/dg;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 659
    invoke-static {p1}, Lr/aJ;->c(Lcom/google/android/maps/driveabout/vector/dg;)Lr/aH;

    move-result-object v0

    invoke-interface {v0}, Lr/aH;->c()V

    .line 666
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->w()Lcom/google/android/maps/driveabout/vector/cy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cy;->b(Lcom/google/android/maps/driveabout/vector/dg;)V

    .line 670
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->g()V

    .line 672
    :cond_1b
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/android/AndroidVectorView;)V
    .registers 1
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->s()V

    return-void
.end method

.method private o()V
    .registers 2

    .prologue
    .line 455
    invoke-static {}, Lcom/google/googlenav/K;->E()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 456
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->r()V

    .line 460
    :goto_9
    return-void

    .line 458
    :cond_a
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->s()V

    goto :goto_9
.end method

.method private p()V
    .registers 1

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->t()V

    .line 469
    return-void
.end method

.method private q()V
    .registers 1

    .prologue
    .line 476
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->u()V

    .line 478
    return-void
.end method

.method private r()V
    .registers 5

    .prologue
    .line 571
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->d()Lcom/google/googlenav/clientparam/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/clientparam/k;->c()I

    move-result v0

    .line 573
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->d()Lcom/google/googlenav/clientparam/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/clientparam/k;->b()Z

    move-result v1

    .line 575
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->d()Lcom/google/googlenav/clientparam/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/clientparam/k;->a()J

    move-result-wide v2

    .line 577
    invoke-static {v0, v1}, Lr/aK;->a(IZ)Lr/aO;

    move-result-object v0

    .line 579
    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->q:Lcom/google/android/maps/driveabout/vector/dg;

    long-to-int v2, v2

    invoke-direct {p0, v1, v0, v2}, Lcom/google/googlenav/ui/android/AndroidVectorView;->a(Lcom/google/android/maps/driveabout/vector/dg;Lr/aO;I)Lr/aK;

    .line 580
    return-void
.end method

.method private s()V
    .registers 2

    .prologue
    .line 586
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->q:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->a(Lcom/google/android/maps/driveabout/vector/dg;)V

    .line 587
    return-void
.end method

.method private t()V
    .registers 2

    .prologue
    .line 610
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->r:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->a(Lcom/google/android/maps/driveabout/vector/dg;)V

    .line 611
    return-void
.end method

.method private u()V
    .registers 5

    .prologue
    .line 615
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->d()Lcom/google/googlenav/clientparam/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/clientparam/k;->a()J

    move-result-wide v0

    .line 618
    sget-object v2, Lcom/google/android/maps/driveabout/vector/dg;->s:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {}, Lr/aK;->n()Lr/aO;

    move-result-object v3

    long-to-int v0, v0

    invoke-direct {p0, v2, v3, v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->a(Lcom/google/android/maps/driveabout/vector/dg;Lr/aO;I)Lr/aK;

    move-result-object v0

    .line 625
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lr/aK;->b(Z)V

    .line 626
    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 484
    sget-object v0, Lcom/google/googlenav/android/A;->a:Lcom/google/googlenav/android/A;

    invoke-virtual {v0}, Lcom/google/googlenav/android/A;->h()V

    .line 485
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c_()Lcom/google/android/maps/driveabout/vector/dI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v2

    .line 486
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    .line 488
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c_()Lcom/google/android/maps/driveabout/vector/dI;

    move-result-object v1

    const/16 v2, 0x190

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/m;I)V

    .line 490
    return-void
.end method

.method public a(IFFLcom/google/android/maps/driveabout/vector/cT;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 720
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->y()Lcom/google/android/maps/driveabout/vector/bZ;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/bZ;->a(Lcom/google/android/maps/driveabout/vector/bZ;IFFLcom/google/android/maps/driveabout/vector/cT;)Lcom/google/android/maps/driveabout/vector/bZ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setLabelTheme(Lcom/google/android/maps/driveabout/vector/bZ;)V

    .line 722
    return-void
.end method

.method public a(Lat/B;Landroid/view/View;Lcom/google/googlenav/ui/view/d;Lcom/google/googlenav/ui/view/c;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 684
    const/4 v8, 0x0

    .line 685
    new-instance v0, Lcom/google/android/maps/driveabout/vector/ay;

    invoke-virtual {p1}, Lat/B;->c()I

    move-result v1

    invoke-virtual {p1}, Lat/B;->e()I

    move-result v3

    invoke-static {v1, v3}, Ln/Q;->b(II)Ln/Q;

    move-result-object v1

    move-object v3, v2

    move v5, v4

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/ay;-><init>(Ln/Q;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Z)V

    .line 690
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    new-instance v2, Lcom/google/googlenav/ui/android/k;

    invoke-direct {v2, p0, p4, p3}, Lcom/google/googlenav/ui/android/k;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/d;)V

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setBubbleTapListener(Lcom/google/android/maps/driveabout/vector/T;)V

    .line 704
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    new-instance v2, Lcom/google/android/maps/driveabout/vector/g;

    invoke-direct {v2, p2}, Lcom/google/android/maps/driveabout/vector/g;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/d;Lcom/google/android/maps/driveabout/vector/g;)V

    .line 705
    return-void
.end method

.method public a(Lcom/google/googlenav/android/i;Lcom/google/googlenav/ui/android/ButtonContainer;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 321
    const-string v0, "AndroidVectorView.initialize"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 322
    iput-object p1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/i;

    .line 323
    new-instance v0, Lcom/google/googlenav/ui/android/b;

    invoke-direct {v0, p1}, Lcom/google/googlenav/ui/android/b;-><init>(Lcom/google/googlenav/android/i;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->c:Lcom/google/googlenav/ui/android/b;

    .line 326
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 328
    invoke-virtual {p1}, Lcom/google/googlenav/android/i;->g()Lat/p;

    move-result-object v0

    check-cast v0, Lau/a;

    .line 329
    new-instance v1, Lcom/google/googlenav/ui/android/l;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/google/googlenav/ui/android/l;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;Landroid/content/Context;Lau/a;Lcom/google/googlenav/ui/android/f;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    .line 330
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->k:Lcom/google/android/maps/driveabout/vector/dW;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setOnMapGestureListener(Lcom/google/android/maps/driveabout/vector/dW;)V

    .line 331
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->l:Lcom/google/android/maps/driveabout/vector/dV;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setInterceptingOnMapGestureListener(Lcom/google/android/maps/driveabout/vector/dV;)V

    .line 332
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/android/AndroidVectorView;->addView(Landroid/view/View;)V

    .line 351
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, v1}, Lau/a;->a(Lcom/google/android/maps/driveabout/vector/dX;)V

    .line 352
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, v1}, Lau/a;->a(Ln/A;)V

    .line 353
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->C()Lcom/google/android/maps/driveabout/vector/bM;

    move-result-object v1

    invoke-virtual {v0, v1}, Lau/a;->a(Lcom/google/android/maps/driveabout/vector/bM;)V

    .line 354
    invoke-virtual {p1}, Lcom/google/googlenav/android/i;->h()Lat/u;

    move-result-object v1

    check-cast v1, Lau/e;

    iput-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->j:Lau/e;

    .line 355
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->j:Lau/e;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->t()F

    move-result v2

    invoke-virtual {v1, v2}, Lau/e;->a(F)V

    .line 356
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->j:Lau/e;

    invoke-virtual {v0}, Lau/a;->d()Lat/B;

    move-result-object v2

    invoke-virtual {v0}, Lau/a;->c()Lat/Y;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lau/e;->e(Lat/B;Lat/Y;)V

    .line 362
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->j:Lau/e;

    const/high16 v1, 0x4248

    invoke-virtual {v0, v1}, Lau/e;->b(F)V

    .line 364
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->o()V

    .line 365
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->p()V

    .line 366
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->q()V

    .line 370
    const/16 v0, 0x16

    invoke-static {v0}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->t()F

    move-result v1

    invoke-static {v0, v1}, Lau/e;->a(Lat/Y;F)F

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/dI;->b(F)V

    .line 373
    invoke-virtual {p1}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    check-cast v0, LaN/b;

    .line 374
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, v1}, LaN/b;->a(Lcom/google/android/maps/driveabout/vector/VectorMapView;)V

    .line 376
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    new-instance v1, Ly/e;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Ly/e;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Ly/a;)V

    .line 379
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    new-instance v1, Ly/d;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Ly/d;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Ly/a;)V

    .line 383
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_188

    sget-object v0, Lcom/google/android/maps/driveabout/vector/z;->b:Lcom/google/android/maps/driveabout/vector/z;

    .line 386
    :goto_d6
    new-instance v1, Lcom/google/android/maps/driveabout/vector/w;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/w;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/vector/z;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->g:Lcom/google/android/maps/driveabout/vector/w;

    .line 389
    invoke-virtual {p2}, Lcom/google/googlenav/ui/android/ButtonContainer;->d()Lcom/google/googlenav/ui/android/ab;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->g:Lcom/google/android/maps/driveabout/vector/w;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ab;->a()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/google/android/maps/driveabout/vector/w;->a(II)V

    .line 391
    new-instance v1, Lcom/google/googlenav/ui/android/i;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/ui/android/i;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;Lcom/google/googlenav/ui/android/ab;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->i:Lcom/google/googlenav/ui/android/aa;

    .line 399
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->i:Lcom/google/googlenav/ui/android/aa;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/ab;->a(Lcom/google/googlenav/ui/android/aa;)V

    .line 401
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-eqz v0, :cond_125

    .line 402
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 403
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 404
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->g:Lcom/google/android/maps/driveabout/vector/w;

    const v2, 0x7f0b0046

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0b0047

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/w;->a(II)V

    .line 410
    :cond_125
    :goto_125
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->g:Lcom/google/android/maps/driveabout/vector/w;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/vector/w;->b(Z)V

    .line 411
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->g:Lcom/google/android/maps/driveabout/vector/w;

    new-instance v1, Lcom/google/googlenav/ui/android/j;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/android/j;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/w;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    .line 420
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->g:Lcom/google/android/maps/driveabout/vector/w;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 422
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_141

    .line 428
    :cond_141
    invoke-static {}, Lcom/google/googlenav/K;->D()Z

    move-result v0

    if-eqz v0, :cond_147

    .line 431
    :cond_147
    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/android/AndroidVectorView;->setFocusable(Z)V

    .line 432
    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/android/AndroidVectorView;->setFocusableInTouchMode(Z)V

    .line 435
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->b()Z

    move-result v0

    if-eqz v0, :cond_16c

    .line 436
    invoke-virtual {p2}, Lcom/google/googlenav/ui/android/ButtonContainer;->c()Lcom/google/googlenav/ui/android/FloorPickerView;

    move-result-object v0

    .line 437
    invoke-static {}, Ll/q;->a()Ll/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/FloorPickerView;->setIndoorState(Ll/q;)V

    .line 438
    invoke-static {}, Lan/l;->p()Lan/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lan/h;->a(Lan/y;)V

    .line 439
    invoke-virtual {p1}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/N;->a(Lcom/google/googlenav/ui/android/FloorPickerView;Lcom/google/googlenav/ui/v;)Lcom/google/googlenav/ui/android/N;

    .line 443
    :cond_16c
    sget-object v0, Lak/e;->a:Lak/e;

    invoke-virtual {v0}, Lak/e;->e()Z

    move-result v0

    if-eqz v0, :cond_182

    .line 444
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bU;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/bU;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->h:Lcom/google/android/maps/driveabout/vector/bU;

    .line 445
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->h:Lcom/google/android/maps/driveabout/vector/bU;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 448
    :cond_182
    const-string v0, "AndroidVectorView.initialize"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 449
    return-void

    .line 383
    :cond_188
    sget-object v0, Lcom/google/android/maps/driveabout/vector/z;->a:Lcom/google/android/maps/driveabout/vector/z;

    goto/16 :goto_d6

    .line 406
    :cond_18c
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->ar()Z

    move-result v1

    if-eqz v1, :cond_125

    .line 407
    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->g:Lcom/google/android/maps/driveabout/vector/w;

    const v2, 0x7f0b004d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v4, v0}, Lcom/google/android/maps/driveabout/vector/w;->a(II)V

    goto :goto_125
.end method

.method public b()V
    .registers 1

    .prologue
    .line 495
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 501
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->m:Las/h;

    invoke-virtual {v0, v1}, Las/f;->b(Las/h;)V

    .line 502
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b_()V

    .line 503
    return-void
.end method

.method public d()V
    .registers 4

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_15

    .line 511
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 513
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    new-instance v1, Lcom/google/googlenav/ui/android/m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/android/m;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;Lcom/google/googlenav/ui/android/f;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/cu;)V

    .line 514
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b()V

    .line 522
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->m:Las/h;

    invoke-virtual {v0, v1}, Las/f;->a(Las/h;)V

    .line 523
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->k()V

    .line 531
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 532
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    check-cast v0, LaN/b;

    .line 533
    invoke-virtual {v0}, LaN/b;->I()LaM/i;

    move-result-object v1

    invoke-virtual {v0, v1}, LaN/b;->d(LaM/i;)V

    .line 535
    :cond_22
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 539
    invoke-super {p0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->f()V

    .line 543
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    check-cast v0, LaN/b;

    .line 544
    invoke-virtual {v0}, LaN/b;->ac()V

    .line 545
    return-void
.end method

.method public g()V
    .registers 3

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d()V

    .line 550
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    check-cast v0, LaN/b;

    .line 551
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LaN/b;->a(Lcom/google/android/maps/driveabout/vector/VectorMapView;)V

    .line 552
    return-void
.end method

.method public h()V
    .registers 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->j()V

    .line 557
    return-void
.end method

.method public i()V
    .registers 1

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->o()V

    .line 562
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->q()V

    .line 563
    return-void
.end method

.method public j()V
    .registers 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->q()V

    .line 712
    return-void
.end method

.method public k()Lcom/google/android/maps/driveabout/vector/VectorMapView;
    .registers 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    return-object v0
.end method

.method public l()V
    .registers 2

    .prologue
    .line 725
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->x()V

    .line 726
    return-void
.end method

.method public m()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 798
    .line 800
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(ZZ)V

    .line 801
    return-void
.end method

.method public setCompassMargin(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 787
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->g:Lcom/google/android/maps/driveabout/vector/w;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/w;->a(II)V

    .line 789
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(ZZ)V

    .line 790
    return-void
.end method
