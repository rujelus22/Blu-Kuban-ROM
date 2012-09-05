.class public Lcom/google/android/maps/driveabout/app/dO;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Ljava/lang/Thread;

.field private c:Lcom/google/android/maps/driveabout/app/NavigationActivity;

.field private d:Lcom/google/android/maps/driveabout/app/cW;

.field private e:Lcom/google/android/maps/driveabout/app/NavigationView;

.field private f:Lcom/google/android/maps/driveabout/app/cU;

.field private g:Lcom/google/android/maps/driveabout/app/cU;

.field private h:Lcom/google/android/maps/driveabout/app/aL;

.field private i:Ly/p;

.field private j:LC/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->a:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->b:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/dO;)Ly/p;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/dO;)Lcom/google/android/maps/driveabout/app/NavigationActivity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->c:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    return-object v0
.end method

.method private b(Lcom/google/android/maps/driveabout/app/NavigationView;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->d:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->j()Lcom/google/android/maps/driveabout/app/bv;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Lcom/google/android/maps/driveabout/app/bv;)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/NavigationView;->a()Lcom/google/android/maps/driveabout/app/NavigationMapView;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/el;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/el;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/app/cz;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/es;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/es;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Lcom/google/android/maps/driveabout/vector/dg;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/et;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/et;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/eu;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/app/eu;-><init>(Lcom/google/android/maps/driveabout/app/dO;Lcom/google/android/maps/driveabout/app/NavigationView;)V

    new-instance v1, Lcom/google/android/maps/driveabout/app/ev;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/ev;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ew;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ew;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ex;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ex;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    new-instance v1, Lcom/google/android/maps/driveabout/app/dQ;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/dQ;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/dR;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/dR;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    new-instance v3, Lcom/google/android/maps/driveabout/app/dS;

    invoke-direct {v3, p0}, Lcom/google/android/maps/driveabout/app/dS;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lcom/google/android/maps/driveabout/app/dk;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/dT;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dT;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->e(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/dU;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dU;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    new-instance v1, Lcom/google/android/maps/driveabout/app/dV;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/dV;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/dW;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dW;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/dX;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dX;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->f(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/dY;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dY;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->c(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/dZ;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dZ;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->d(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/eb;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/eb;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Lcom/google/android/maps/driveabout/vector/aF;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ec;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ec;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Lcom/google/android/maps/driveabout/vector/o;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ed;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ed;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->b(Lcom/google/android/maps/driveabout/vector/o;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ee;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ee;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Lcom/google/android/maps/driveabout/vector/V;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ef;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ef;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->b(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/eg;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/eg;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->g(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ez;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/app/ez;-><init>(Lcom/google/android/maps/driveabout/app/dO;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Landroid/view/View$OnKeyListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/eh;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/eh;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->h(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ei;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ei;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->i(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ej;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ej;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->j(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ek;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ek;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->p(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/em;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/em;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->k(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/en;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/en;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->l(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/eo;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/eo;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->m(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ep;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ep;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->o(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/eq;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/eq;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->n(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/er;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/er;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->b(Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/dO;)Lcom/google/android/maps/driveabout/app/cW;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->d:Lcom/google/android/maps/driveabout/app/cW;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/app/dO;)Lcom/google/android/maps/driveabout/app/aL;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->h:Lcom/google/android/maps/driveabout/app/aL;

    return-object v0
.end method

.method private t()V
    .registers 4

    new-instance v0, Lcom/google/android/maps/driveabout/app/dP;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dP;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    new-instance v1, Lcom/google/android/maps/driveabout/app/ea;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/ea;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dO;->f:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v2, v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->C()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->c:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c()V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->h:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->J()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->f()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->g:Lcom/google/android/maps/driveabout/app/cU;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->f:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->f:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dO;->d:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->a(Lcom/google/android/maps/driveabout/vector/cV;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->f:Lcom/google/android/maps/driveabout/app/cU;

    invoke-static {v0}, Ly/s;->a(Lcom/google/android/maps/driveabout/app/cU;)V

    goto :goto_11
.end method

.method public a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/cW;Lu/r;Lcom/google/android/maps/driveabout/app/aL;LC/f;)V
    .registers 9

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/dO;->h:Lcom/google/android/maps/driveabout/app/aL;

    new-instance v0, Lcom/google/android/maps/driveabout/app/dy;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/dy;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->g:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->g:Lcom/google/android/maps/driveabout/app/cU;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->f:Lcom/google/android/maps/driveabout/app/cU;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/dO;->d:Lcom/google/android/maps/driveabout/app/cW;

    iput-object p5, p0, Lcom/google/android/maps/driveabout/app/dO;->j:LC/f;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->f:Lcom/google/android/maps/driveabout/app/cU;

    invoke-static {p1, p2, v0, p4, p3}, Ly/s;->a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/cW;Lcom/google/android/maps/driveabout/app/cU;Lcom/google/android/maps/driveabout/app/aL;Lu/r;)V

    sget-object v0, Ly/p;->a:Ly/p;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    sget-object v1, Ly/B;->a:Ly/B;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    return-void
.end method

.method public a(Landroid/os/Bundle;Lt/W;Lcom/google/android/maps/driveabout/app/eA;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dO;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ly/s;->a(Landroid/os/Bundle;Lt/W;Lcom/google/android/maps/driveabout/app/eA;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Ly/s;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dO;->c:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a()Lcom/google/android/maps/driveabout/app/NavigationView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dO;->a(Lcom/google/android/maps/driveabout/app/NavigationView;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->h:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->A()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->setRequestedOrientation(I)V

    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    sget-object v1, Ly/y;->a:Ly/y;

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    sget-object v1, Ly/a;->a:Ly/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ly/p;->a(Ly/s;Z)Z

    :cond_2a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->h:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->K()V

    return-void

    :cond_30
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->setRequestedOrientation(I)V

    goto :goto_18
.end method

.method public a(Lcom/google/android/maps/driveabout/app/NavigationView;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->e:Lcom/google/android/maps/driveabout/app/NavigationView;

    if-eq p1, v0, :cond_b

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dO;->e:Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->e:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/dO;->b(Lcom/google/android/maps/driveabout/app/NavigationView;)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->q()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->e:Lcom/google/android/maps/driveabout/app/NavigationView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->f:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->f:Lcom/google/android/maps/driveabout/app/cU;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dO;->d:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->a(Lcom/google/android/maps/driveabout/vector/cV;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->f:Lcom/google/android/maps/driveabout/app/cU;

    invoke-static {v0}, Ly/s;->a(Lcom/google/android/maps/driveabout/app/cU;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->c()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->r()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->E()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->D()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/bS;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Ly/s;->b(Lcom/google/android/maps/driveabout/app/bS;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/bx;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dO;->s()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bx;->g()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->d:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->j()Lcom/google/android/maps/driveabout/app/bv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/bv;->b(Lcom/google/android/maps/driveabout/app/bx;)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->d:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->j()Lcom/google/android/maps/driveabout/app/bv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/bv;->a(Lcom/google/android/maps/driveabout/app/bx;)V

    goto :goto_12
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Lt/au;Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dO;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/ey;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/ey;-><init>(Lcom/google/android/maps/driveabout/app/dO;)V

    invoke-virtual {v0, p1, v1, p2}, Ly/s;->a(Lt/au;Lcom/google/android/maps/driveabout/app/bo;Z)V

    return-void
.end method

.method public a(Lu/I;Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dO;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ly/s;->b(Lu/I;Z)V

    return-void
.end method

.method public a(Lu/P;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ly/s;->a(Lu/P;Z)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dO;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Ly/s;->d(Z)V

    return-void
.end method

.method public a(ZZ)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dO;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ly/s;->a(ZZ)V

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->c:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->e:Lcom/google/android/maps/driveabout/app/NavigationView;

    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dO;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Ly/s;->c(Z)V

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Ly/s;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dO;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->ab()V

    return-void
.end method

.method public c(Z)V
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dO;->d(Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dO;->e(Z)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dO;->h()V

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dO;->g()V

    return-void
.end method

.method public d()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->h:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->d:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->b()Lu/I;

    move-result-object v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->h:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->p()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {v1}, Lu/x;->k()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lu/x;->a(I)Lu/I;

    move-result-object v0

    :cond_20
    invoke-virtual {v0}, Lu/I;->b()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3e

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dO;->c:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v1}, Lu/x;->m()Lu/P;

    move-result-object v1

    invoke-virtual {v1}, Lu/P;->c()Lt/o;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/google/android/maps/driveabout/app/dx;->a(Landroid/content/Context;Lu/I;Lt/o;)V

    :goto_35
    return-void

    :cond_36
    const-string v0, "UIEventHandler"

    const-string v1, "Unable to show street view: no step"

    invoke-static {v0, v1}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :cond_3e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dO;->c:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/dx;->a(Landroid/content/Context;Lu/I;)V

    goto :goto_35
.end method

.method public d(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dO;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Ly/s;->f(Z)V

    return-void
.end method

.method public e()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dO;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->N()V

    return-void
.end method

.method public e(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dO;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Ly/s;->e(Z)V

    return-void
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->O()V

    return-void
.end method

.method public f(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dO;->s()V

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->h:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->H()V

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->h:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->I()V

    goto :goto_a
.end method

.method public g()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->e:Lcom/google/android/maps/driveabout/app/NavigationView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->e:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a()Lcom/google/android/maps/driveabout/app/NavigationMapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->r()Lt/at;

    move-result-object v0

    invoke-virtual {v0}, Lt/at;->a()Lt/au;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/dO;->a(Lt/au;Z)V

    :cond_16
    return-void
.end method

.method public h()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dO;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->d:Lcom/google/android/maps/driveabout/app/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cW;->j()Lcom/google/android/maps/driveabout/app/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bv;->f()V

    return-void
.end method

.method public i()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dO;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->H()V

    return-void
.end method

.method public j()Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dO;->s()V

    invoke-static {}, Lcom/google/android/maps/driveabout/app/ci;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dO;->c:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/ci;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dO;->j:LC/f;

    invoke-virtual {v0, v1}, Ly/s;->a(LC/f;)V

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public k()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dO;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->K()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->h:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->y()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dO;->t()V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->c:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c()V

    goto :goto_1a
.end method

.method public l()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dO;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    sget-object v1, Ly/k;->a:Ly/k;

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->M()V

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->L()V

    goto :goto_16
.end method

.method public m()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->M()V

    return-void
.end method

.method public n()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dO;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    sget-object v1, Ly/k;->a:Ly/k;

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    check-cast v0, Ly/k;

    invoke-virtual {v0}, Ly/k;->m_()V

    :cond_18
    return-void
.end method

.method public o()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dO;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->B()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dO;->t()V

    :cond_12
    return-void
.end method

.method public p()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dO;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->J()V

    return-void
.end method

.method public q()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/dO;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->I()V

    return-void
.end method

.method public final r()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dO;->i:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->ad()V

    return-void
.end method

.method public final s()V
    .registers 3

    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dO;->b:Ljava/lang/Thread;

    if-eq v0, v1, :cond_16

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation must be called on main (UI) thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    return-void
.end method
