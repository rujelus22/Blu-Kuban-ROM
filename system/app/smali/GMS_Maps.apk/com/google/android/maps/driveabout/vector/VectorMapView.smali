.class public Lcom/google/android/maps/driveabout/vector/VectorMapView;
.super Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/bN;
.implements Lcom/google/android/maps/driveabout/vector/dh;
.implements Lt/x;


# instance fields
.field protected a:Lcom/google/android/maps/driveabout/vector/cV;

.field private final b:Lcom/google/android/maps/driveabout/vector/M;

.field private c:Lcom/google/android/maps/driveabout/vector/ce;

.field private d:Landroid/view/GestureDetector;

.field private e:LaA/g;

.field private f:Lcom/google/android/maps/driveabout/vector/dg;

.field private g:Lcom/google/android/maps/driveabout/vector/df;

.field private h:Lcom/google/android/maps/driveabout/vector/dd;

.field private i:Lcom/google/android/maps/driveabout/vector/aE;

.field private j:Z

.field private k:Lcom/google/android/maps/driveabout/vector/u;

.field private l:J

.field private m:Z

.field private n:Lcom/google/android/maps/driveabout/vector/bG;

.field private o:Lcom/google/android/maps/driveabout/vector/O;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/M;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/M;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b:Lcom/google/android/maps/driveabout/vector/M;

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->l:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m:Z

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/M;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/M;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b:Lcom/google/android/maps/driveabout/vector/M;

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->l:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m:Z

    return-void
.end method

.method private a()V
    .registers 12

    new-instance v0, Lcom/google/android/maps/driveabout/vector/dd;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/vector/dd;-><init>(Lcom/google/android/maps/driveabout/vector/VectorMapView;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dd;

    invoke-static {}, LaA/i;->a()LaA/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dd;

    invoke-virtual {v0, v1, v2}, LaA/i;->a(Landroid/content/Context;LaA/m;)V

    invoke-static {}, LaA/i;->a()LaA/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, LaA/i;->a(Landroid/content/pm/PackageManager;)V

    invoke-static {}, LaA/i;->a()LaA/i;

    move-result-object v0

    invoke-virtual {v0}, LaA/i;->b()Z

    move-result v0

    if-eqz v0, :cond_a7

    new-instance v0, LaA/g;

    invoke-direct {v0}, LaA/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e:LaA/g;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e:LaA/g;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dd;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dd;

    invoke-virtual {v0, v1, v2, v3}, LaA/g;->a(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/view/GestureDetector$OnDoubleTapListener;)V

    :goto_41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setFocusable(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    const/16 v2, 0x100

    const/16 v3, 0x100

    new-instance v0, Lcom/google/android/maps/driveabout/vector/t;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/t;->b:Lcom/google/android/maps/driveabout/vector/u;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/t;-><init>(Lcom/google/android/maps/driveabout/vector/u;IIFLjava/lang/Thread;)V

    new-instance v1, Lcom/google/android/maps/driveabout/vector/O;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/vector/O;-><init>(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->o:Lcom/google/android/maps/driveabout/vector/O;

    const/4 v2, 0x5

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/16 v7, 0x8

    const/4 v1, 0x2

    new-array v9, v1, [Lcom/google/android/maps/driveabout/vector/be;

    const/4 v10, 0x0

    new-instance v1, Lcom/google/android/maps/driveabout/vector/be;

    invoke-direct/range {v1 .. v7}, Lcom/google/android/maps/driveabout/vector/be;-><init>(IIIIII)V

    aput-object v1, v9, v10

    const/4 v7, 0x0

    const/4 v10, 0x1

    new-instance v1, Lcom/google/android/maps/driveabout/vector/be;

    invoke-direct/range {v1 .. v7}, Lcom/google/android/maps/driveabout/vector/be;-><init>(IIIIII)V

    aput-object v1, v9, v10

    new-instance v1, Lcom/google/android/maps/driveabout/vector/bd;

    invoke-direct {v1, v9}, Lcom/google/android/maps/driveabout/vector/bd;-><init>([Lcom/google/android/maps/driveabout/vector/be;)V

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/bk;)V

    new-instance v1, Lcom/google/android/maps/driveabout/vector/ce;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->o:Lcom/google/android/maps/driveabout/vector/O;

    invoke-direct {v1, v2, v8, v0}, Lcom/google/android/maps/driveabout/vector/ce;-><init>(Lcom/google/android/maps/driveabout/vector/O;Landroid/content/res/Resources;Lcom/google/android/maps/driveabout/vector/t;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_9d

    :cond_9d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/bs;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c(I)V

    return-void

    :cond_a7
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dd;

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d:Landroid/view/GestureDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dd;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    goto :goto_41
.end method


# virtual methods
.method public A()Lcom/google/android/maps/driveabout/vector/bG;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->n:Lcom/google/android/maps/driveabout/vector/bG;

    return-object v0
.end method

.method public B()Lcom/google/android/maps/driveabout/vector/bx;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(LaJ/B;)Lt/y;
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->B()Lcom/google/android/maps/driveabout/vector/bx;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {p1}, Lz/f;->a(LaJ/B;)Lt/L;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bx;->a(Lt/L;)Lt/y;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method a(FFF)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f:Lcom/google/android/maps/driveabout/vector/dg;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/dg;->a(Lcom/google/android/maps/driveabout/vector/VectorMapView;FFF)V

    :cond_9
    return-void
.end method

.method public a(LB/a;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ce;->m()LB/b;

    move-result-object v0

    invoke-virtual {v0, p1}, LB/b;->a(LB/a;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/I;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ce;->b(Lcom/google/android/maps/driveabout/vector/I;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/V;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ce;->a(Lcom/google/android/maps/driveabout/vector/V;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aE;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ce;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bG;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ce;->a(Lcom/google/android/maps/driveabout/vector/bG;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cV;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/cV;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/cV;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->o:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/cm;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/cV;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/x;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/ce;->a(Lcom/google/android/maps/driveabout/vector/b;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/ca;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ce;->a(Lcom/google/android/maps/driveabout/vector/ca;)V

    :cond_9
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/ck;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ce;->a(Lcom/google/android/maps/driveabout/vector/ck;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/df;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->g:Lcom/google/android/maps/driveabout/vector/df;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dg;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f:Lcom/google/android/maps/driveabout/vector/dg;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/m;Lcom/google/android/maps/driveabout/vector/p;)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->j:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/ce;->a(Lcom/google/android/maps/driveabout/vector/m;Lcom/google/android/maps/driveabout/vector/p;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ce;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(ZZ)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->o:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/O;->a(ZZ)V

    return-void
.end method

.method a(FF)Z
    .registers 8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ce;->l()Lcom/google/android/maps/driveabout/vector/U;

    move-result-object v0

    if-eqz v0, :cond_2e

    new-instance v0, Lcom/google/android/maps/driveabout/vector/t;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->w()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/t;-><init>(Lcom/google/android/maps/driveabout/vector/u;IIF)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/t;->d(FF)Lt/L;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/ce;->l()Lcom/google/android/maps/driveabout/vector/U;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/google/android/maps/driveabout/vector/U;->b(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method a(Landroid/view/MotionEvent;FF)Z
    .registers 12

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ce;->f()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_e
    if-ltz v2, :cond_4c

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aE;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aE;->n_()Z

    move-result v4

    if-eqz v4, :cond_48

    if-nez v1, :cond_35

    new-instance v1, Lcom/google/android/maps/driveabout/vector/t;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->w()F

    move-result v7

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/google/android/maps/driveabout/vector/t;-><init>(Lcom/google/android/maps/driveabout/vector/u;IIF)V

    :cond_35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v0, v4, v5, v1}, Lcom/google/android/maps/driveabout/vector/aE;->b(FFLcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->p()V

    const/4 v0, 0x1

    :goto_47
    return v0

    :cond_48
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_e

    :cond_4c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f:Lcom/google/android/maps/driveabout/vector/dg;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-interface {v0, p0, p2, p3}, Lcom/google/android/maps/driveabout/vector/dg;->a(Lcom/google/android/maps/driveabout/vector/VectorMapView;FF)V

    :cond_55
    const/4 v0, 0x0

    goto :goto_47
.end method

.method public b()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->o:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/O;->f()V

    return-void
.end method

.method b(FF)V
    .registers 13

    const/4 v7, 0x1

    new-instance v4, Lcom/google/android/maps/driveabout/vector/t;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->w()F

    move-result v3

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/t;-><init>(Lcom/google/android/maps/driveabout/vector/u;IIF)V

    invoke-virtual {v4, p1, p2}, Lcom/google/android/maps/driveabout/vector/t;->d(FF)Lt/L;

    move-result-object v3

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->j:Z

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/ce;->m()LB/b;

    move-result-object v1

    if-eqz v1, :cond_31

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ce;->m()LB/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v3, v4}, LB/b;->a_(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    :cond_31
    if-nez v0, :cond_45

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/ce;->l()Lcom/google/android/maps/driveabout/vector/U;

    move-result-object v1

    if-eqz v1, :cond_45

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ce;->l()Lcom/google/android/maps/driveabout/vector/U;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/google/android/maps/driveabout/vector/U;->a_(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    :cond_45
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->g:Lcom/google/android/maps/driveabout/vector/df;

    if-eqz v1, :cond_51

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->g:Lcom/google/android/maps/driveabout/vector/df;

    invoke-interface {v0, p0, v3}, Lcom/google/android/maps/driveabout/vector/df;->a(Lcom/google/android/maps/driveabout/vector/VectorMapView;Lt/L;)Z

    move-result v0

    :cond_51
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/ce;->f()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v1, v1, -0x1

    move v6, v0

    :goto_63
    if-nez v6, :cond_93

    if-ltz v1, :cond_93

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aE;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aE;->k()Z

    move-result v9

    if-eqz v9, :cond_7d

    check-cast v0, Lcom/google/android/maps/driveabout/vector/n;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v6

    :goto_79
    add-int/lit8 v1, v1, -0x1

    move v6, v0

    goto :goto_63

    :cond_7d
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_d0

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/vector/ce;->l()Lcom/google/android/maps/driveabout/vector/U;

    move-result-object v9

    if-eq v0, v9, :cond_d0

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/google/android/maps/driveabout/vector/aE;->a_(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    if-eqz v0, :cond_d0

    move v0, v7

    goto :goto_79

    :cond_93
    if-nez v6, :cond_b9

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b9

    if-eqz v2, :cond_ab

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->k:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/u;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    :cond_ab
    invoke-virtual {p0, v7}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d(Z)V

    :cond_ae
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b:Lcom/google/android/maps/driveabout/vector/M;

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/M;->a(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_b9

    move v6, v7

    :cond_b9
    if-nez v6, :cond_c4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f:Lcom/google/android/maps/driveabout/vector/dg;

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-interface {v0, p0, v3}, Lcom/google/android/maps/driveabout/vector/dg;->a(Lcom/google/android/maps/driveabout/vector/VectorMapView;Lt/L;)V

    :cond_c4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->k:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e()V

    return-void

    :cond_d0
    move v0, v6

    goto :goto_79
.end method

.method public b(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/ce;->a(II)V

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aE;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ce;->b(Lcom/google/android/maps/driveabout/vector/aE;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->i:Lcom/google/android/maps/driveabout/vector/aE;

    if-ne v0, p1, :cond_c

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->s()V

    :cond_c
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/bG;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->n:Lcom/google/android/maps/driveabout/vector/bG;

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/o;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ce;->a(Lcom/google/android/maps/driveabout/vector/o;)V

    return-void
.end method

.method public c(Z)Lcom/google/android/maps/driveabout/vector/bR;
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/maps/driveabout/vector/ce;->a(Landroid/content/Context;Z)Lcom/google/android/maps/driveabout/vector/bR;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->o:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/O;->g()V

    invoke-super {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c()V

    return-void
.end method

.method c(FF)V
    .registers 10

    new-instance v3, Lcom/google/android/maps/driveabout/vector/t;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->w()F

    move-result v4

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/google/android/maps/driveabout/vector/t;-><init>(Lcom/google/android/maps/driveabout/vector/u;IIF)V

    invoke-virtual {v3, p1, p2}, Lcom/google/android/maps/driveabout/vector/t;->d(FF)Lt/L;

    move-result-object v4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/ce;->l()Lcom/google/android/maps/driveabout/vector/U;

    move-result-object v1

    if-eqz v1, :cond_2e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ce;->l()Lcom/google/android/maps/driveabout/vector/U;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v4, v3}, Lcom/google/android/maps/driveabout/vector/U;->c(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    :cond_2e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->g:Lcom/google/android/maps/driveabout/vector/df;

    if-eqz v1, :cond_72

    if-nez v0, :cond_72

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->g:Lcom/google/android/maps/driveabout/vector/df;

    invoke-interface {v0, p0, v4}, Lcom/google/android/maps/driveabout/vector/df;->b(Lcom/google/android/maps/driveabout/vector/VectorMapView;Lt/L;)Z

    move-result v0

    move v1, v0

    :goto_3b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ce;->f()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_48
    if-ltz v2, :cond_5f

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aE;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/vector/ce;->l()Lcom/google/android/maps/driveabout/vector/U;

    move-result-object v6

    if-eq v0, v6, :cond_6e

    invoke-virtual {v0, p1, p2, v4, v3}, Lcom/google/android/maps/driveabout/vector/aE;->c(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    if-eqz v0, :cond_6e

    const/4 v1, 0x1

    :cond_5f
    if-nez v1, :cond_6a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f:Lcom/google/android/maps/driveabout/vector/dg;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-interface {v0, p0, v4}, Lcom/google/android/maps/driveabout/vector/dg;->b(Lcom/google/android/maps/driveabout/vector/VectorMapView;Lt/L;)V

    :cond_6a
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e()V

    return-void

    :cond_6e
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_48

    :cond_72
    move v1, v0

    goto :goto_3b
.end method

.method public d(I)Lcom/google/android/maps/driveabout/vector/aD;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ce;->b(I)Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method d(FF)V
    .registers 8

    new-instance v2, Lcom/google/android/maps/driveabout/vector/t;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->w()F

    move-result v4

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/google/android/maps/driveabout/vector/t;-><init>(Lcom/google/android/maps/driveabout/vector/u;IIF)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ce;->f()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_24
    if-ltz v1, :cond_37

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aE;

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/maps/driveabout/vector/aE;->a(FFLcom/google/android/maps/driveabout/vector/t;)Z

    move-result v4

    if-eqz v4, :cond_38

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->i:Lcom/google/android/maps/driveabout/vector/aE;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e()V

    :cond_37
    return-void

    :cond_38
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_24
.end method

.method public d(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b:Lcom/google/android/maps/driveabout/vector/M;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/M;->a(Z)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ce;->c()V

    :cond_f
    return-void
.end method

.method protected e(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ce;->a(I)V

    return-void
.end method

.method public e(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dd;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dd;->a(Z)V

    return-void
.end method

.method e(FF)Z
    .registers 11

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ce;->f()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move-object v2, v1

    :goto_f
    if-ltz v3, :cond_46

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aE;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aE;->n_()Z

    move-result v5

    if-eqz v5, :cond_42

    if-nez v2, :cond_3a

    new-instance v2, Lcom/google/android/maps/driveabout/vector/t;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->w()F

    move-result v7

    invoke-direct {v2, v1, v5, v6, v7}, Lcom/google/android/maps/driveabout/vector/t;-><init>(Lcom/google/android/maps/driveabout/vector/u;IIF)V

    invoke-virtual {v2, p1, p2}, Lcom/google/android/maps/driveabout/vector/t;->d(FF)Lt/L;

    move-result-object v1

    :cond_3a
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/maps/driveabout/vector/aE;->d(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v0, 0x1

    :goto_41
    return v0

    :cond_42
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_f

    :cond_46
    const/4 v0, 0x0

    goto :goto_41
.end method

.method public f(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ce;->c(I)V

    return-void
.end method

.method public f(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dd;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dd;->b(Z)V

    return-void
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ce;->e()V

    return-void
.end method

.method public g(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dd;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dd;->c(Z)V

    return-void
.end method

.method public h()LB/b;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ce;->m()LB/b;

    move-result-object v0

    return-object v0
.end method

.method public h(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dd;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dd;->d(Z)V

    return-void
.end method

.method public i()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/ce;->a(Ljava/util/List;)V

    return-void
.end method

.method public i(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h:Lcom/google/android/maps/driveabout/vector/dd;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dd;->e(Z)V

    return-void
.end method

.method public isOpaque()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public j()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ce;->d()V

    return-void
.end method

.method public k()V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->l:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-gez v2, :cond_17

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/ce;->b(Z)V

    :goto_14
    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->l:J

    return-void

    :cond_17
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/ce;->b(Z)V

    goto :goto_14
.end method

.method public l()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/android/I;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ce;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m:Z

    :cond_e
    return-void
.end method

.method public m()Lcom/google/android/maps/driveabout/vector/cV;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/cV;

    return-object v0
.end method

.method public n()Lcom/google/android/maps/driveabout/vector/I;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ce;->i()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v0

    return-object v0
.end method

.method public o()Landroid/graphics/Bitmap;
    .registers 3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ce;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public onFinishInflate()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->onFinishInflate()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-static {}, LaA/i;->a()LaA/i;

    move-result-object v1

    invoke-virtual {v1}, LaA/i;->b()Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e:LaA/g;

    invoke-virtual {v1, p1}, LaA/g;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1f
    :goto_1f
    return v0

    :cond_20
    invoke-static {}, LaA/i;->a()LaA/i;

    move-result-object v1

    invoke-virtual {v1, p1}, LaA/i;->b(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_58

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e(FF)Z

    move-result v0

    goto :goto_1f

    :cond_3d
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1f

    const-wide/16 v1, 0x14

    :try_start_4b
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_1f

    :catch_4f
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1f

    :cond_58
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->onWindowFocusChanged(Z)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    if-nez p1, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/ce;->a(Z)V

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public p()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(ZZ)V

    return-void
.end method

.method public q()Lcom/google/android/maps/driveabout/vector/t;
    .registers 6

    new-instance v0, Lcom/google/android/maps/driveabout/vector/t;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->w()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/t;-><init>(Lcom/google/android/maps/driveabout/vector/u;IIF)V

    return-object v0
.end method

.method public r()Lt/at;
    .registers 6

    new-instance v0, Lcom/google/android/maps/driveabout/vector/t;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->w()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/t;-><init>(Lcom/google/android/maps/driveabout/vector/u;IIF)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/t;->u()Lt/at;

    move-result-object v0

    return-object v0
.end method

.method s()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->i:Lcom/google/android/maps/driveabout/vector/aE;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->i:Lcom/google/android/maps/driveabout/vector/aE;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aE;->r_()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->i:Lcom/google/android/maps/driveabout/vector/aE;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e()V

    :cond_f
    return-void
.end method

.method public t()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->j:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ce;->j()V

    return-void
.end method

.method public u()Lcom/google/android/maps/driveabout/vector/aA;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ce;->k()Lcom/google/android/maps/driveabout/vector/aA;

    move-result-object v0

    return-object v0
.end method

.method public v()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ce;->p()V

    :cond_9
    return-void
.end method

.method public w()F
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public x()V
    .registers 1

    return-void
.end method

.method public y()Lcom/google/android/maps/driveabout/vector/bs;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c:Lcom/google/android/maps/driveabout/vector/ce;

    return-object v0
.end method

.method public z()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->A()Lcom/google/android/maps/driveabout/vector/bG;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/bG;)V

    return-void
.end method
