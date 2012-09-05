.class public Lcom/google/googlenav/ui/android/AndroidVectorView;
.super Lcom/google/googlenav/ui/android/BaseAndroidView;


# instance fields
.field private e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

.field private f:Lcom/google/android/maps/driveabout/vector/E;

.field private g:Lcom/google/googlenav/ui/bB;

.field private h:Lcom/google/googlenav/ui/android/FloorPickerView;

.field private i:LaK/e;

.field private final j:Lcom/google/android/maps/driveabout/vector/dg;

.field private final k:Lcom/google/android/maps/driveabout/vector/df;

.field private final l:Lcom/google/googlenav/login/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/BaseAndroidView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/google/googlenav/ui/android/g;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/g;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->j:Lcom/google/android/maps/driveabout/vector/dg;

    new-instance v0, Lcom/google/googlenav/ui/android/h;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/h;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->k:Lcom/google/android/maps/driveabout/vector/df;

    new-instance v0, Lcom/google/googlenav/ui/android/i;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/i;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->l:Lcom/google/googlenav/login/i;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/AndroidVectorView;)Lcom/google/googlenav/login/i;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->l:Lcom/google/googlenav/login/i;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/android/AndroidVectorView;)LaK/e;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->i:LaK/e;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/android/AndroidVectorView;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->m()V

    return-void
.end method

.method static synthetic d(Lcom/google/googlenav/ui/android/AndroidVectorView;)Lcom/google/android/maps/driveabout/vector/VectorMapView;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    return-object v0
.end method

.method private l()V
    .registers 6

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->m:Lcom/google/android/maps/driveabout/vector/cU;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cS;->a(Lcom/google/android/maps/driveabout/vector/cU;Landroid/content/Context;)Lx/ay;

    move-result-object v0

    check-cast v0, Lx/aB;

    invoke-static {}, Lae/d;->d()Lae/i;

    move-result-object v1

    invoke-virtual {v1}, Lae/i;->c()I

    move-result v1

    invoke-static {}, Lae/d;->d()Lae/i;

    move-result-object v2

    invoke-virtual {v2}, Lae/i;->b()Z

    move-result v2

    invoke-static {}, Lae/d;->d()Lae/i;

    move-result-object v3

    invoke-virtual {v3}, Lae/i;->a()J

    move-result-wide v3

    invoke-static {v1, v2}, Lx/aB;->a(IZ)Lx/aE;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/aB;->a(Lx/aE;)V

    long-to-int v1, v3

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lx/aB;->a(J)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->y()Lcom/google/android/maps/driveabout/vector/bs;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ce;->o()[Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_3c
    if-ge v0, v2, :cond_4e

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/cI;->i()Z

    move-result v4

    if-eqz v4, :cond_4b

    sget-object v4, Lcom/google/android/maps/driveabout/vector/cU;->m:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/vector/cI;->a(Lcom/google/android/maps/driveabout/vector/cU;)V

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_4e
    return-void
.end method

.method private m()V
    .registers 6

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->m:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-static {v0}, Lx/aA;->b(Lcom/google/android/maps/driveabout/vector/cU;)Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->m:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-static {v0}, Lx/aA;->c(Lcom/google/android/maps/driveabout/vector/cU;)Lx/ay;

    move-result-object v0

    invoke-interface {v0}, Lx/ay;->e()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->y()Lcom/google/android/maps/driveabout/vector/bs;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ce;->o()[Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1f
    if-ge v0, v2, :cond_35

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/cI;->i()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/cI;->j()Lcom/google/android/maps/driveabout/vector/cC;

    move-result-object v3

    sget-object v4, Lcom/google/android/maps/driveabout/vector/cU;->m:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/vector/cC;->b(Lcom/google/android/maps/driveabout/vector/cU;)V

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_35
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->g()V

    :cond_3a
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->x()V

    return-void
.end method

.method public a(IFFLcom/google/android/maps/driveabout/vector/cu;)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->A()Lcom/google/android/maps/driveabout/vector/bG;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/bG;->a(Lcom/google/android/maps/driveabout/vector/bG;IFFLcom/google/android/maps/driveabout/vector/cu;)Lcom/google/android/maps/driveabout/vector/bG;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/bG;)V

    return-void
.end method

.method public a(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/E;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/E;->a(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->p()V

    return-void
.end method

.method public a(LaJ/B;Landroid/view/View;Lbb/d;Lbb/c;)V
    .registers 14

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aA;

    invoke-virtual {p1}, LaJ/B;->c()I

    move-result v1

    invoke-virtual {p1}, LaJ/B;->e()I

    move-result v3

    invoke-static {v1, v3}, Lt/L;->b(II)Lt/L;

    move-result-object v1

    move-object v3, v2

    move v5, v4

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/aA;-><init>(Lt/L;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    new-instance v2, Lcom/google/googlenav/ui/android/l;

    invoke-direct {v2, p0, p4, p3}, Lcom/google/googlenav/ui/android/l;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;Lbb/c;Lbb/d;)V

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/V;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    new-instance v2, Lcom/google/android/maps/driveabout/vector/p;

    invoke-direct {v2, p2}, Lcom/google/android/maps/driveabout/vector/p;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/m;Lcom/google/android/maps/driveabout/vector/p;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/android/l;Lcom/google/googlenav/ui/android/ButtonContainer;)V
    .registers 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/l;

    new-instance v0, Lcom/google/googlenav/ui/android/c;

    invoke-direct {v0, p1}, Lcom/google/googlenav/ui/android/c;-><init>(Lcom/google/googlenav/android/l;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->c:Lcom/google/googlenav/ui/android/c;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f026e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/google/googlenav/android/l;->i()LaJ/p;

    move-result-object v0

    check-cast v0, LaK/a;

    new-instance v1, Lcom/google/googlenav/ui/android/m;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/google/googlenav/ui/android/m;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;Landroid/content/Context;LaK/a;Lcom/google/googlenav/ui/android/g;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->j:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/dg;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->k:Lcom/google/android/maps/driveabout/vector/df;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/df;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/android/AndroidVectorView;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, v1}, LaK/a;->a(Lcom/google/android/maps/driveabout/vector/dh;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, v1}, LaK/a;->a(Lt/x;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->B()Lcom/google/android/maps/driveabout/vector/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, LaK/a;->a(Lcom/google/android/maps/driveabout/vector/bx;)V

    invoke-virtual {p1}, Lcom/google/googlenav/android/l;->j()LaJ/u;

    move-result-object v1

    check-cast v1, LaK/e;

    iput-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->i:LaK/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->i:LaK/e;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->w()F

    move-result v2

    invoke-virtual {v1, v2}, LaK/e;->a(F)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->i:LaK/e;

    invoke-virtual {v0}, LaK/a;->d()LaJ/B;

    move-result-object v2

    invoke-virtual {v0}, LaK/a;->c()LaJ/Y;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, LaK/e;->e(LaJ/B;LaJ/Y;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->i:LaK/e;

    const/high16 v1, 0x4248

    invoke-virtual {v0, v1}, LaK/e;->b(F)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->l:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cI;->a(Lcom/google/android/maps/driveabout/vector/cU;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->h()V

    const/16 v0, 0x16

    invoke-static {v0}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->w()F

    move-result v1

    invoke-static {v0, v1}, LaK/e;->a(LaJ/Y;F)F

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cV;->b(F)V

    invoke-virtual {p1}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    check-cast v0, LaZ/b;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, v1}, LaZ/b;->a(Lcom/google/android/maps/driveabout/vector/VectorMapView;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    new-instance v1, LB/d;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, LB/d;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(LB/a;)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_182

    sget-object v0, Lcom/google/android/maps/driveabout/vector/G;->b:Lcom/google/android/maps/driveabout/vector/G;

    :goto_cc
    new-instance v1, Lcom/google/android/maps/driveabout/vector/E;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/E;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/vector/G;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/E;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/E;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->ag()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/google/android/maps/driveabout/vector/E;->a(II)V

    new-instance v0, Lcom/google/googlenav/ui/android/j;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/j;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->g:Lcom/google/googlenav/ui/bB;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->g:Lcom/google/googlenav/ui/bB;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bB;)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ao()Z

    move-result v0

    if-eqz v0, :cond_11f

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-eqz v1, :cond_186

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/E;

    const v2, 0x7f090045

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f090046

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/E;->a(II)V

    :cond_11f
    :goto_11f
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/E;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/vector/E;->b(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/E;

    new-instance v1, Lcom/google/googlenav/ui/android/k;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/android/k;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/E;->a(Lcom/google/android/maps/driveabout/vector/aF;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/E;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    invoke-static {}, Laf/d;->a()Z

    move-result v0

    if-eqz v0, :cond_13b

    :cond_13b
    invoke-static {}, Lcom/google/googlenav/M;->F()Z

    move-result v0

    if-eqz v0, :cond_141

    :cond_141
    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/android/AndroidVectorView;->setFocusable(Z)V

    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/android/AndroidVectorView;->setFocusableInTouchMode(Z)V

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->b()Z

    move-result v0

    if-eqz v0, :cond_178

    invoke-virtual {p2}, Lcom/google/googlenav/ui/android/ButtonContainer;->c()Lcom/google/googlenav/ui/android/FloorPickerView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->h:Lcom/google/googlenav/ui/android/FloorPickerView;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->h:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-virtual {p1}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Lcom/google/googlenav/ui/D;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->h:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-static {}, Lr/l;->a()Lr/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/FloorPickerView;->c(Lr/l;)V

    invoke-static {}, LaE/h;->a()LaE/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->h:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-virtual {v0, v1}, LaE/h;->a(LaE/m;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    new-instance v1, Lr/k;

    invoke-direct {v1}, Lr/k;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/ck;)V

    :cond_178
    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->l:Lcom/google/googlenav/login/i;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/g;->a(Lcom/google/googlenav/login/i;)V

    return-void

    :cond_182
    sget-object v0, Lcom/google/android/maps/driveabout/vector/G;->a:Lcom/google/android/maps/driveabout/vector/G;

    goto/16 :goto_cc

    :cond_186
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ao()Z

    move-result v1

    if-eqz v1, :cond_11f

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:Lcom/google/android/maps/driveabout/vector/E;

    const v2, 0x7f09004c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v4, v0}, Lcom/google/android/maps/driveabout/vector/E;->a(II)V

    goto :goto_11f
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c()V

    return-void
.end method

.method public c()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f026e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    new-instance v1, Lcom/google/googlenav/ui/android/n;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/android/n;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;Lcom/google/googlenav/ui/android/g;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/ca;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b()V

    return-void
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->l()V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    check-cast v0, LaZ/b;

    invoke-virtual {v0}, LaZ/b;->I()LaY/i;

    move-result-object v1

    invoke-virtual {v0, v1}, LaZ/b;->c(LaY/i;)V

    :cond_22
    return-void
.end method

.method public e()V
    .registers 2

    invoke-super {p0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->e()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    check-cast v0, LaZ/b;

    invoke-virtual {v0}, LaZ/b;->af()V

    return-void
.end method

.method public f()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    check-cast v0, LaZ/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LaZ/b;->a(Lcom/google/android/maps/driveabout/vector/VectorMapView;)V

    return-void
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->k()V

    return-void
.end method

.method public h()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/M;->G()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->l()V

    :goto_9
    return-void

    :cond_a
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->m()V

    goto :goto_9
.end method

.method public i()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->t()V

    return-void
.end method

.method public j()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->z()V

    return-void
.end method
