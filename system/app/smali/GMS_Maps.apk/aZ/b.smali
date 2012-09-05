.class public LaZ/b;
.super LaY/Y;

# interfaces
.implements LaY/j;
.implements LaY/k;
.implements Lcom/google/android/maps/driveabout/vector/V;
.implements Lr/n;


# static fields
.field public static final l:LaJ/Y;


# instance fields
.field private volatile A:Z

.field private final m:LK/I;

.field private final n:Ljava/util/Map;

.field private o:Lcom/google/android/maps/driveabout/vector/m;

.field private final p:Ljava/lang/Object;

.field private q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

.field private r:Lcom/google/android/maps/driveabout/vector/p;

.field private s:Lcom/google/android/maps/driveabout/vector/bR;

.field private final t:LaZ/k;

.field private u:Lcom/google/android/maps/driveabout/vector/bO;

.field private v:Z

.field private final w:Ljava/lang/Object;

.field private final x:Ljava/lang/Object;

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x12

    invoke-static {v0}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    sput-object v0, LaZ/b;->l:LaJ/Y;

    return-void
.end method

.method private constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;LaE/h;Lax/bD;Lax/r;Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/at;Lcom/google/googlenav/ui/wizard/hM;LaJ/k;Lcom/google/googlenav/layer/r;)V
    .registers 16

    const-wide/16 v1, 0x0

    invoke-direct/range {p0 .. p12}, LaY/Y;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;LaE/h;Lax/bD;Lax/r;Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/at;Lcom/google/googlenav/ui/wizard/hM;LaJ/k;Lcom/google/googlenav/layer/r;)V

    invoke-static {}, LK/be;->e()LK/be;

    move-result-object v0

    iput-object v0, p0, LaZ/b;->m:LK/I;

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, LaZ/b;->n:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LaZ/b;->p:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LaZ/b;->w:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LaZ/b;->x:Ljava/lang/Object;

    iput-wide v1, p0, LaZ/b;->y:J

    iput-wide v1, p0, LaZ/b;->z:J

    const/4 v0, 0x0

    iput-boolean v0, p0, LaZ/b;->A:Z

    new-instance v0, LaZ/k;

    invoke-direct {v0}, LaZ/k;-><init>()V

    iput-object v0, p0, LaZ/b;->t:LaZ/k;

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->b()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {}, Lr/l;->a()Lr/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lr/l;->a(Lr/n;)V

    :cond_41
    new-instance v0, LaZ/c;

    const-string v1, "LayerTileCompactor"

    invoke-direct {v0, p0, v1}, LaZ/c;-><init>(LaZ/b;Ljava/lang/String;)V

    sget-object v1, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v2, LaZ/d;

    invoke-direct {v2, p0, v0}, LaZ/d;-><init>(LaZ/b;Lz/d;)V

    invoke-static {v1, v2}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;LaE/h;Lax/bD;Lax/r;Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/at;Lcom/google/googlenav/ui/wizard/hM;LaJ/k;Lcom/google/googlenav/layer/r;LaZ/c;)V
    .registers 14

    invoke-direct/range {p0 .. p12}, LaZ/b;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;LaE/h;Lax/bD;Lax/r;Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/at;Lcom/google/googlenav/ui/wizard/hM;LaJ/k;Lcom/google/googlenav/layer/r;)V

    return-void
.end method

.method static synthetic a(LaZ/b;J)J
    .registers 3

    iput-wide p1, p0, LaZ/b;->z:J

    return-wide p1
.end method

.method static synthetic a(LaZ/b;Lcom/google/android/maps/driveabout/vector/m;)Lcom/google/android/maps/driveabout/vector/m;
    .registers 2

    iput-object p1, p0, LaZ/b;->o:Lcom/google/android/maps/driveabout/vector/m;

    return-object p1
.end method

.method private static a(Landroid/view/View;)Lcom/google/android/maps/driveabout/vector/p;
    .registers 4

    const v0, 0x7f0f0027

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_23

    instance-of v1, v0, Lcom/google/googlenav/ui/android/TemplateView;

    if-eqz v1, :cond_23

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/TemplateView;->e()Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Lcom/google/googlenav/ui/android/N;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/N;-><init>(Landroid/view/View;)V

    :goto_22
    return-object v0

    :cond_23
    new-instance v0, Lcom/google/android/maps/driveabout/vector/p;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/vector/p;-><init>(Landroid/view/View;)V

    goto :goto_22
.end method

.method static synthetic a(LaZ/b;LaY/i;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, LaZ/b;->a(LaY/i;I)V

    return-void
.end method

.method private a(LaY/i;Lcom/google/googlenav/D;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p1}, LaY/i;->ax()I

    move-result v0

    if-nez v0, :cond_10

    move-object v0, p2

    check-cast v0, Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->h()Z

    move-result v0

    if-nez v0, :cond_21

    :cond_10
    invoke-interface {p2}, Lcom/google/googlenav/D;->e()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p2}, Lcom/google/googlenav/D;->c()B

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    :goto_1d
    move v1, v0

    :cond_1e
    :goto_1e
    return v1

    :cond_1f
    move v0, v1

    goto :goto_1d

    :cond_21
    check-cast p1, LaY/aG;

    move-object v0, p2

    check-cast v0, Lcom/google/googlenav/T;

    invoke-virtual {p1}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/T;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/aV;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-interface {p2}, Lcom/google/googlenav/D;->e()Z

    move-result v1

    goto :goto_1e
.end method

.method static synthetic a(LaZ/b;)Z
    .registers 2

    iget-boolean v0, p0, LaZ/b;->v:Z

    return v0
.end method

.method static synthetic a(LaZ/b;LaY/i;Lcom/google/googlenav/D;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, LaZ/b;->a(LaY/i;Lcom/google/googlenav/D;)Z

    move-result v0

    return v0
.end method

.method private ag()V
    .registers 2

    iget-object v0, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e()V

    :cond_9
    return-void
.end method

.method private ah()V
    .registers 4

    invoke-virtual {p0}, LaZ/b;->I()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_25

    iget-object v0, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h()LB/b;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, LaZ/b;->I()LaY/i;

    move-result-object v1

    invoke-virtual {v1}, LaY/i;->L()Z

    move-result v1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->aq()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, LB/b;->a(ZZ)V

    :cond_25
    return-void
.end method

.method private ai()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, LaZ/b;->I()LaY/i;

    move-result-object v0

    instance-of v0, v0, LaY/G;

    if-eqz v0, :cond_b

    const-string v0, "dd"

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "1"

    goto :goto_a
.end method

.method private aj()V
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    if-nez v1, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v1, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bR;->o()Lt/y;

    move-result-object v1

    if-nez v1, :cond_1a

    iget-object v1, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/bR;->b(Z)V

    goto :goto_b

    :cond_1a
    invoke-static {}, Lr/l;->a()Lr/l;

    move-result-object v2

    invoke-virtual {v2}, Lr/l;->e()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v1, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/bR;->b(Z)V

    goto :goto_b

    :cond_2e
    iget-object v2, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    invoke-static {}, Lr/l;->a()Lr/l;

    move-result-object v3

    invoke-virtual {v3, v1}, Lr/l;->b(Lt/y;)Z

    move-result v1

    if-nez v1, :cond_3b

    const/4 v0, 0x1

    :cond_3b
    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/vector/bR;->b(Z)V

    goto :goto_b
.end method

.method private static b(LaY/i;I)LaZ/j;
    .registers 12

    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/D;->c()B

    move-result v0

    if-eqz v0, :cond_73

    invoke-virtual {p0, p1}, LaY/i;->c(I)Lcom/google/googlenav/e;

    move-result-object v1

    if-eqz v1, :cond_73

    invoke-virtual {v1}, Lcom/google/googlenav/e;->a()Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/googlenav/e;->b()I

    move-result v5

    invoke-virtual {v1}, Lcom/google/googlenav/e;->c()I

    move-result v6

    invoke-virtual {v1}, Lcom/google/googlenav/e;->d()Z

    move-result v9

    :goto_2c
    new-instance v0, LaZ/j;

    invoke-virtual {p0, v2}, LaY/i;->b(Lcom/google/googlenav/D;)I

    move-result v7

    invoke-virtual {p0, v2}, LaY/i;->c(Lcom/google/googlenav/D;)I

    move-result v8

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, LaZ/j;-><init>(LaY/i;Lcom/google/googlenav/D;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIIZ)V

    instance-of v1, p0, LaY/G;

    if-eqz v1, :cond_72

    if-eqz p1, :cond_4c

    invoke-virtual {p0}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/E;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_72

    :cond_4c
    invoke-interface {v2}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v1

    invoke-virtual {v1}, LaJ/B;->c()I

    move-result v1

    invoke-interface {v2}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v2

    invoke-virtual {v2}, LaJ/B;->e()I

    move-result v2

    invoke-static {v1, v2}, Lt/L;->b(II)Lt/L;

    move-result-object v6

    move-object v2, p0

    check-cast v2, LaY/G;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaZ/j;->b(Z)V

    new-instance v1, LaZ/f;

    move-object v3, p0

    move v4, p1

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, LaZ/f;-><init>(LaY/G;LaY/i;ILaZ/j;Lt/L;)V

    invoke-virtual {v0, v1}, LaZ/j;->a(Lcom/google/android/maps/driveabout/vector/aB;)V

    :cond_72
    return-object v0

    :cond_73
    move v6, v9

    move v5, v9

    move-object v3, v4

    goto :goto_2c
.end method

.method static synthetic b(LaZ/b;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, LaZ/b;->w:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(LaZ/b;LaY/i;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, LaZ/b;->a(LaY/i;I)V

    return-void
.end method

.method static synthetic c(LaZ/b;)J
    .registers 3

    iget-wide v0, p0, LaZ/b;->z:J

    return-wide v0
.end method

.method static synthetic d(LaZ/b;)LaJ/p;
    .registers 2

    iget-object v0, p0, LaZ/b;->e:LaJ/p;

    return-object v0
.end method

.method static synthetic e(LaZ/b;)J
    .registers 3

    iget-wide v0, p0, LaZ/b;->y:J

    return-wide v0
.end method

.method static synthetic f(LaZ/b;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, LaZ/b;->x:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g(LaZ/b;)LaY/x;
    .registers 2

    invoke-virtual {p0}, LaZ/b;->f()LaY/x;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(LaZ/b;)LK/I;
    .registers 2

    iget-object v0, p0, LaZ/b;->m:LK/I;

    return-object v0
.end method

.method static synthetic i(LaZ/b;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, LaZ/b;->p:Ljava/lang/Object;

    return-object v0
.end method

.method private m(LaY/i;)V
    .registers 9

    invoke-virtual {p1}, LaY/i;->d()[Lcom/google/googlenav/ui/aR;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v0, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_12

    iget-object v0, p0, LaZ/b;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    new-instance v2, Ljava/util/Vector;

    array-length v0, v1

    invoke-direct {v2, v0}, Ljava/util/Vector;-><init>(I)V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v3, :cond_37

    aget-object v4, v1, v0

    if-eqz v4, :cond_34

    new-instance v5, LaZ/a;

    iget-object v6, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v4}, LaZ/a;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/aR;)V

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v4, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v4, v5}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_37
    iget-object v0, p0, LaZ/b;->n:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12
.end method

.method private n(LaY/i;)V
    .registers 5

    iget-object v0, p0, LaZ/b;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaZ/a;

    iget-object v2, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b(Lcom/google/android/maps/driveabout/vector/aE;)V

    goto :goto_f

    :cond_21
    iget-object v0, p0, LaZ/b;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method


# virtual methods
.method public E()V
    .registers 3

    iget-object v0, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    if-eqz v0, :cond_f

    iget-object v0, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    iget-object v1, p0, LaZ/b;->i:Lcom/google/googlenav/ui/at;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/at;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bR;->c(Z)V

    :cond_f
    return-void
.end method

.method public F()V
    .registers 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/high16 v1, -0x4080

    iget-object v0, p0, LaZ/b;->d:LaE/h;

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v0

    if-eqz v0, :cond_a9

    iget-object v0, p0, LaZ/b;->d:LaE/h;

    invoke-virtual {v0}, LaE/h;->q()LaJ/B;

    move-result-object v0

    move-object v3, v0

    :goto_13
    if-nez v3, :cond_3c

    invoke-virtual {p0}, LaZ/b;->I()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, LaZ/b;->I()LaY/i;

    move-result-object v0

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v0

    const/16 v5, 0xd

    if-ne v0, v5, :cond_3c

    invoke-virtual {p0}, LaZ/b;->I()LaY/i;

    move-result-object v0

    check-cast v0, LaY/x;

    invoke-virtual {v0}, LaY/x;->bI()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-virtual {v0}, LaY/x;->aa()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-virtual {p0, v0}, LaZ/b;->f(LaY/i;)V

    :cond_3c
    iget-object v0, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    if-nez v0, :cond_41

    :goto_40
    return-void

    :cond_41
    if-nez v3, :cond_54

    iget-object v0, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    invoke-virtual {v0, v4, v1}, Lcom/google/android/maps/driveabout/vector/bR;->a(Lt/L;F)V

    iget-object v0, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/bR;->a(Lt/y;)V

    :goto_4d
    invoke-direct {p0}, LaZ/b;->aj()V

    invoke-direct {p0}, LaZ/b;->ag()V

    goto :goto_40

    :cond_54
    iget-object v0, p0, LaZ/b;->d:LaE/h;

    invoke-virtual {v0}, LaE/h;->y()Z

    move-result v0

    if-eqz v0, :cond_92

    iget-object v0, p0, LaZ/b;->d:LaE/h;

    invoke-virtual {v0}, LaE/h;->e()I

    move-result v0

    int-to-float v0, v0

    :goto_63
    iget-object v4, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_a3

    const/4 v1, 0x1

    :goto_6a
    invoke-virtual {v4, v1}, Lcom/google/android/maps/driveabout/vector/bR;->d(Z)V

    invoke-static {v3}, Lz/f;->a(LaJ/B;)Lt/L;

    move-result-object v1

    iget-object v3, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/maps/driveabout/vector/bR;->a(Lt/L;F)V

    iget-object v0, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    iget-object v1, p0, LaZ/b;->d:LaE/h;

    invoke-virtual {v1}, LaE/h;->A()Lt/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bR;->a(Lt/y;)V

    iget-object v0, p0, LaZ/b;->d:LaE/h;

    invoke-virtual {v0}, LaE/h;->i()I

    move-result v0

    iget-object v1, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    const v3, 0x1869f

    if-ne v0, v3, :cond_a5

    :goto_8e
    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/bR;->d(I)V

    goto :goto_4d

    :cond_92
    invoke-static {}, LaP/h;->i()LaP/h;

    move-result-object v0

    if-eqz v0, :cond_a7

    invoke-virtual {v0}, LaP/h;->c()Z

    move-result v4

    if-eqz v4, :cond_a7

    invoke-virtual {v0}, LaP/h;->d()F

    move-result v0

    goto :goto_63

    :cond_a3
    move v1, v2

    goto :goto_6a

    :cond_a5
    move v2, v0

    goto :goto_8e

    :cond_a7
    move v0, v1

    goto :goto_63

    :cond_a9
    move-object v3, v4

    goto/16 :goto_13
.end method

.method public G()Z
    .registers 13

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, LaZ/b;->f:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->k()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return v4

    :cond_b
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v1

    iget-object v0, p0, LaZ/b;->e:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->g()[LaJ/P;

    move-result-object v3

    array-length v5, v3

    move v0, v4

    :goto_1f
    if-ge v0, v5, :cond_31

    aget-object v7, v3, v0

    iget-object v8, p0, LaZ/b;->e:LaJ/p;

    invoke-virtual {v8}, LaJ/p;->a()LaJ/D;

    move-result-object v8

    int-to-long v9, v4

    add-long/2addr v9, v1

    invoke-virtual {v8, v7, v6, v9, v10}, LaJ/D;->a(LaJ/P;ZJ)Ljava/util/Vector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_31
    iget-object v0, p0, LaZ/b;->e:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->a()LaJ/D;

    move-result-object v0

    invoke-virtual {v0}, LaJ/D;->k()V

    invoke-super {p0}, LaY/Y;->G()Z

    move-result v0

    iget-boolean v1, p0, LaZ/b;->A:Z

    if-eqz v1, :cond_45

    iput-boolean v4, p0, LaZ/b;->A:Z

    move v0, v6

    :cond_45
    if-eqz v0, :cond_a

    iget-object v1, p0, LaZ/b;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4a
    iget-object v0, p0, LaZ/b;->o:Lcom/google/android/maps/driveabout/vector/m;

    if-eqz v0, :cond_69

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->b()Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, LaZ/b;->o:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/m;->e()Lt/y;

    move-result-object v0

    invoke-static {}, Lr/l;->a()Lr/l;

    move-result-object v2

    if-eqz v0, :cond_69

    invoke-virtual {v2, v0}, Lr/l;->c(Lt/y;)Z

    move-result v0

    if-nez v0, :cond_69

    invoke-virtual {p0}, LaZ/b;->W()V

    :cond_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_4a .. :try_end_6a} :catchall_8c

    move v3, v4

    move v2, v4

    :goto_6c
    iget-object v0, p0, LaZ/b;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_100

    iget-object v0, p0, LaZ/b;->j:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    iget-object v1, p0, LaZ/b;->m:LK/I;

    invoke-interface {v1, v0}, LK/I;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/aD;

    if-nez v1, :cond_8f

    move v1, v2

    :goto_87
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v2, v1

    goto :goto_6c

    :catchall_8c
    move-exception v0

    :try_start_8d
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v0

    :cond_8f
    invoke-virtual {p0, v0}, LaZ/b;->l(LaY/i;)V

    invoke-virtual {v0}, LaY/i;->az()Z

    move-result v5

    if-eqz v5, :cond_c8

    invoke-virtual {v0}, LaY/i;->aj()Z

    move-result v5

    if-eqz v5, :cond_c8

    move v5, v6

    :goto_9f
    invoke-virtual {v0}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v9

    move v7, v4

    move v8, v2

    :goto_a5
    invoke-interface {v9}, Lcom/google/googlenav/E;->f()I

    move-result v2

    if-ge v7, v2, :cond_125

    invoke-interface {v9, v7}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/googlenav/D;->f()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/aD;->a(Ljava/lang/Object;)Lcom/google/android/maps/driveabout/vector/aA;

    move-result-object v2

    check-cast v2, LaZ/j;

    invoke-interface {v10}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v11

    if-nez v11, :cond_ca

    if-eqz v2, :cond_ca

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/aD;->b(Lcom/google/android/maps/driveabout/vector/aA;)V

    :cond_c4
    :goto_c4
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_a5

    :cond_c8
    move v5, v4

    goto :goto_9f

    :cond_ca
    invoke-virtual {v0, v7}, LaY/i;->c(I)Lcom/google/googlenav/e;

    move-result-object v11

    if-eqz v2, :cond_c4

    invoke-virtual {v2, v11}, LaZ/j;->a(Lcom/google/googlenav/e;)Z

    move-result v11

    if-nez v11, :cond_e8

    invoke-virtual {v2}, LaZ/j;->d()Lt/L;

    move-result-object v11

    invoke-interface {v10}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v10

    invoke-static {v10}, Lz/f;->a(LaJ/B;)Lt/L;

    move-result-object v10

    invoke-virtual {v11, v10}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c4

    :cond_e8
    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/aD;->b(Lcom/google/android/maps/driveabout/vector/aA;)V

    invoke-static {v0, v7}, LaZ/b;->b(LaY/i;I)LaZ/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/aD;->a(Lcom/google/android/maps/driveabout/vector/aA;)V

    if-eqz v5, :cond_c4

    invoke-virtual {v0}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/E;->c()I

    move-result v2

    if-ne v2, v7, :cond_c4

    move v8, v6

    goto :goto_c4

    :cond_100
    invoke-virtual {p0}, LaZ/b;->I()LaY/i;

    move-result-object v0

    if-eqz v2, :cond_10d

    invoke-virtual {v0}, LaY/i;->ak()Lbb/d;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LaZ/b;->a(LaY/i;Lbb/d;)V

    :cond_10d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LaZ/b;->y:J

    iget-object v1, p0, LaZ/b;->x:Ljava/lang/Object;

    monitor-enter v1

    :try_start_116
    iget-object v0, p0, LaZ/b;->x:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_11c
    .catchall {:try_start_116 .. :try_end_11c} :catchall_122

    invoke-direct {p0}, LaZ/b;->ag()V

    move v4, v6

    goto/16 :goto_a

    :catchall_122
    move-exception v0

    :try_start_123
    monitor-exit v1
    :try_end_124
    .catchall {:try_start_123 .. :try_end_124} :catchall_122

    throw v0

    :cond_125
    move v1, v8

    goto/16 :goto_87
.end method

.method public H()V
    .registers 3

    iget-object v0, p0, LaZ/b;->u:Lcom/google/android/maps/driveabout/vector/bO;

    if-eqz v0, :cond_1e

    iget-object v0, p0, LaZ/b;->u:Lcom/google/android/maps/driveabout/vector/bO;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bO;->e()Z

    move-result v0

    iget-object v1, p0, LaZ/b;->e:LaJ/p;

    invoke-virtual {v1}, LaJ/p;->a()LaJ/D;

    move-result-object v1

    invoke-virtual {v1}, LaJ/D;->m()Z

    move-result v1

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, LaZ/b;->u:Lcom/google/android/maps/driveabout/vector/bO;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bO;->b(Z)V

    invoke-direct {p0}, LaZ/b;->ag()V

    :cond_1e
    return-void
.end method

.method protected V()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaZ/b;->a(Z)LaY/aT;

    invoke-virtual {p0}, LaZ/b;->s()V

    return-void
.end method

.method public a(Lcom/google/googlenav/ah;ZBZZ)LaY/W;
    .registers 16

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, LaZ/b;->b(I)V

    new-instance v0, LaY/W;

    iget-object v1, p0, LaZ/b;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaZ/b;->e:LaJ/p;

    iget-object v3, p0, LaZ/b;->f:LaJ/u;

    iget-object v4, p0, LaZ/b;->g:Lcom/google/googlenav/ui/af;

    iget-object v5, p0, LaZ/b;->h:LaJ/k;

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, LaY/W;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;LaJ/k;Lcom/google/googlenav/ah;ZBZ)V

    iget-object v1, p0, LaZ/b;->p:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_1c
    invoke-static {v0, v2}, LaZ/b;->b(LaY/i;I)LaZ/j;

    move-result-object v2

    iput-object v2, p0, LaZ/b;->o:Lcom/google/android/maps/driveabout/vector/m;

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_27

    invoke-virtual {p0, v0, p5}, LaZ/b;->a(LaY/i;Z)V

    return-object v0

    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method protected a(Lcom/google/googlenav/layer/m;)LaY/ba;
    .registers 10

    new-instance v0, LaZ/n;

    iget-object v1, p0, LaZ/b;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaZ/b;->e:LaJ/p;

    iget-object v3, p0, LaZ/b;->f:LaJ/u;

    iget-object v4, p0, LaZ/b;->g:Lcom/google/googlenav/ui/af;

    new-instance v6, LaJ/k;

    invoke-direct {v6}, LaJ/k;-><init>()V

    iget-object v7, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, LaZ/n;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/layer/m;LaJ/k;Lcom/google/android/maps/driveabout/vector/VectorMapView;)V

    return-object v0
.end method

.method public a(FF)V
    .registers 5

    iget-object v0, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    if-eqz v0, :cond_38

    iget-object v0, p0, LaZ/b;->d:LaE/h;

    invoke-virtual {v0}, LaE/h;->y()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bR;->n()F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v0}, Lar/i;->b(F)F

    move-result v0

    iget-object v1, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bR;->p()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40a0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_38

    :cond_2a
    iget-object v0, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bR;->d(Z)V

    iget-object v0, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bR;->a(F)V

    invoke-direct {p0}, LaZ/b;->ag()V

    :cond_38
    return-void
.end method

.method public a(LaY/i;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_a

    iget-object v0, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->t()V

    :cond_a
    iput-object v1, p0, LaZ/b;->r:Lcom/google/android/maps/driveabout/vector/p;

    iget-object v1, p0, LaZ/b;->p:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_10
    iput-object v0, p0, LaZ/b;->o:Lcom/google/android/maps/driveabout/vector/m;

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public a(LaY/i;Lbb/d;)V
    .registers 7

    iget-object v0, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/V;)V

    check-cast p2, Lcom/google/googlenav/ui/view/android/g;

    invoke-virtual {p2}, Lcom/google/googlenav/ui/view/android/g;->e()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, LaZ/b;->a(Landroid/view/View;)Lcom/google/android/maps/driveabout/vector/p;

    move-result-object v0

    iput-object v0, p0, LaZ/b;->r:Lcom/google/android/maps/driveabout/vector/p;

    instance-of v0, p1, Lcom/google/android/maps/driveabout/vector/r;

    if-eqz v0, :cond_22

    iget-object v1, p0, LaZ/b;->r:Lcom/google/android/maps/driveabout/vector/p;

    move-object v0, p1

    check-cast v0, Lcom/google/android/maps/driveabout/vector/r;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/p;->a(Lcom/google/android/maps/driveabout/vector/r;)V

    :cond_22
    invoke-virtual {p1}, LaY/i;->ax()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_38

    iget-object v0, p0, LaZ/b;->o:Lcom/google/android/maps/driveabout/vector/m;

    if-eqz v0, :cond_4

    iget-object v0, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, LaZ/b;->o:Lcom/google/android/maps/driveabout/vector/m;

    iget-object v2, p0, LaZ/b;->r:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/m;Lcom/google/android/maps/driveabout/vector/p;)V

    goto :goto_4

    :cond_38
    invoke-virtual {p1}, LaY/i;->ax()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_53

    move-object v0, p1

    check-cast v0, LaY/x;

    invoke-virtual {v0}, LaY/x;->bI()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    iget-object v2, p0, LaZ/b;->r:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/m;Lcom/google/android/maps/driveabout/vector/p;)V

    goto :goto_4

    :cond_53
    const/4 v1, 0x0

    iget-object v0, p0, LaZ/b;->m:LK/I;

    invoke-interface {v0, p1}, LK/I;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aD;

    if-eqz v0, :cond_89

    invoke-virtual {p1}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/E;->c()I

    move-result v2

    if-ltz v2, :cond_89

    invoke-virtual {p1}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/E;->e()Lcom/google/googlenav/D;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/D;->f()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/aD;->a(Ljava/lang/Object;)Lcom/google/android/maps/driveabout/vector/aA;

    move-result-object v2

    if-eqz v2, :cond_89

    const/4 v0, 0x1

    iget-object v1, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v3, p0, LaZ/b;->r:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/m;Lcom/google/android/maps/driveabout/vector/p;)V

    :goto_82
    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, LaZ/b;->a(LaY/i;)V

    goto/16 :goto_4

    :cond_89
    move v0, v1

    goto :goto_82
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/VectorMapView;)V
    .registers 12

    const/4 v9, 0x2

    const v8, 0x338cc6ef

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-ne v0, p1, :cond_c

    :goto_b
    return-void

    :cond_c
    iput-object p1, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v0, p0, LaZ/b;->t:LaZ/k;

    iget-object v1, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, v1}, LaZ/k;->a(Lcom/google/android/maps/driveabout/vector/VectorMapView;)V

    iget-object v0, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-nez v0, :cond_31

    iget-object v0, p0, LaZ/b;->m:LK/I;

    invoke-interface {v0}, LK/I;->clear()V

    iget-object v0, p0, LaZ/b;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v7, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    iput-object v7, p0, LaZ/b;->u:Lcom/google/android/maps/driveabout/vector/bO;

    iput-object v7, p0, LaZ/b;->o:Lcom/google/android/maps/driveabout/vector/m;

    iput-object v7, p0, LaZ/b;->r:Lcom/google/android/maps/driveabout/vector/p;

    iget-object v0, p0, LaZ/b;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/D;->d(Z)V

    goto :goto_b

    :cond_31
    move v1, v2

    :goto_32
    iget-object v0, p0, LaZ/b;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_74

    iget-object v0, p0, LaZ/b;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    iget-object v3, p0, LaZ/b;->m:LK/I;

    invoke-interface {v3, v0}, LK/I;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    iget-object v3, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d(I)Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v3

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v4

    if-ne v4, v9, :cond_70

    invoke-virtual {v3, v6}, Lcom/google/android/maps/driveabout/vector/aD;->a(I)V

    :goto_59
    invoke-virtual {p1, v9}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f(I)V

    iget-object v4, p0, LaZ/b;->m:LK/I;

    invoke-interface {v4, v0, v3}, LK/I;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, LaZ/b;->t:LaZ/k;

    invoke-virtual {v4, v3}, LaZ/k;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    :cond_66
    invoke-virtual {p0, v0}, LaZ/b;->b(LaY/i;)V

    invoke-direct {p0, v0}, LaZ/b;->m(LaY/i;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_32

    :cond_70
    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/vector/aD;->a(I)V

    goto :goto_59

    :cond_74
    iget-object v0, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, LaZ/b;->t:LaZ/k;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    iget-object v0, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c(Z)Lcom/google/android/maps/driveabout/vector/bR;

    move-result-object v0

    iput-object v0, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    iget-object v0, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/google/android/maps/driveabout/vector/bT;

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bT;->a()Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/maps/driveabout/vector/bU;->a(Z)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/vector/bU;->b(Z)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/maps/driveabout/vector/bU;->c(Z)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bU;->a()Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v3

    const v4, 0x7f0203ad

    const v5, 0x7f0203ae

    invoke-virtual {v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/bU;->a(II)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v3

    invoke-virtual {v3, v2, v8}, Lcom/google/android/maps/driveabout/vector/bU;->b(II)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bU;->c()Lcom/google/android/maps/driveabout/vector/bT;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bT;->a()Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/vector/bU;->a(Z)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/vector/bU;->b(Z)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/maps/driveabout/vector/bU;->c(Z)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bU;->b()Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v3

    const v4, 0x7f0203a9

    const v5, 0x7f0203aa

    invoke-virtual {v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/bU;->a(II)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v3

    invoke-virtual {v3, v2, v8}, Lcom/google/android/maps/driveabout/vector/bU;->b(II)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bU;->c()Lcom/google/android/maps/driveabout/vector/bT;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bT;->a()Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/maps/driveabout/vector/bU;->a(Z)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/vector/bU;->b(Z)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bU;->a()Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v3

    const v4, 0x7f0203af

    const v5, 0x7f0203b0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/bU;->a(II)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v3

    const v4, 0x73217bce

    invoke-virtual {v3, v4, v8}, Lcom/google/android/maps/driveabout/vector/bU;->b(II)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bU;->c()Lcom/google/android/maps/driveabout/vector/bT;

    move-result-object v3

    aput-object v3, v1, v9

    const/4 v3, 0x3

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bT;->a()Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/maps/driveabout/vector/bU;->a(Z)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/maps/driveabout/vector/bU;->b(Z)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bU;->b()Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v2

    const v4, 0x7f0203ab

    const v5, 0x7f0203ac

    invoke-virtual {v2, v4, v5}, Lcom/google/android/maps/driveabout/vector/bU;->a(II)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v2

    const v4, 0x73217bce

    invoke-virtual {v2, v4, v8}, Lcom/google/android/maps/driveabout/vector/bU;->b(II)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bU;->c()Lcom/google/android/maps/driveabout/vector/bT;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x4

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bT;->a()Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/maps/driveabout/vector/bU;->b(Z)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bU;->b()Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v3

    const v4, 0x7f0203b1

    const v5, 0x7f0203b2

    invoke-virtual {v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/bU;->a(II)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v3

    const v4, 0x73aaaaaa

    const v5, 0x33cccccc

    invoke-virtual {v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/bU;->b(II)Lcom/google/android/maps/driveabout/vector/bU;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bU;->c()Lcom/google/android/maps/driveabout/vector/bT;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bR;->a([Lcom/google/android/maps/driveabout/vector/bT;)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    const v2, 0x7f0900a2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const v3, 0x7f0a0004

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v4, 0x7f0a0005

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/vector/bR;->a(FII)V

    iget-object v0, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    const v1, 0x7c830

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bR;->b(I)V

    iget-object v0, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    const/high16 v1, 0x4160

    const/high16 v2, 0x4120

    const v3, 0x3f4ccccd

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bR;->a(FFF)V

    iget-object v0, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    new-instance v1, LaZ/e;

    invoke-direct {v1, p0}, LaZ/e;-><init>(LaZ/b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bR;->a(Lcom/google/android/maps/driveabout/vector/aF;)V

    iget-object v0, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    const/high16 v1, 0x4700

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bR;->c(F)V

    iget-object v0, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bO;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bO;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LaZ/b;->u:Lcom/google/android/maps/driveabout/vector/bO;

    iget-object v0, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, LaZ/b;->u:Lcom/google/android/maps/driveabout/vector/bO;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    iget-object v0, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    new-instance v1, LaZ/l;

    invoke-direct {v1, p0, v7}, LaZ/l;-><init>(LaZ/b;LaZ/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b(Lcom/google/android/maps/driveabout/vector/o;)V

    iget-object v0, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/V;)V

    goto/16 :goto_b
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/m;)V
    .registers 3

    if-nez p1, :cond_6

    invoke-virtual {p0}, LaZ/b;->W()V

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, LaZ/b;->r:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v0, :cond_5

    iget-object v0, p0, LaZ/b;->r:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->d()V

    goto :goto_5
.end method

.method public a(Lr/l;)V
    .registers 2

    return-void
.end method

.method public a(Lr/l;Lt/q;)V
    .registers 4

    invoke-direct {p0}, LaZ/b;->aj()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LaZ/b;->A:Z

    invoke-direct {p0}, LaZ/b;->ag()V

    return-void
.end method

.method protected a(LaY/i;ZZ)Z
    .registers 7

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3}, LaY/Y;->a(LaY/i;ZZ)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p1}, LaY/i;->ax()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_33

    iget-object v1, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v1, :cond_30

    iget-object v1, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d(I)Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v0

    new-instance v1, LaZ/m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LaZ/m;-><init>(LaZ/b;LaZ/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/aD;->a(Lcom/google/android/maps/driveabout/vector/o;)V

    iget-object v1, p0, LaZ/b;->m:LK/I;

    invoke-interface {v1, p1, v0}, LK/I;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, LaZ/b;->b(LaY/i;)V

    iget-object v1, p0, LaZ/b;->t:LaZ/k;

    invoke-virtual {v1, v0}, LaZ/k;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    :cond_30
    invoke-virtual {p1, p0}, LaY/i;->a(LaY/k;)V

    :cond_33
    invoke-virtual {p1, p0}, LaY/i;->a(LaY/j;)V

    invoke-direct {p0, p1}, LaZ/b;->m(LaY/i;)V

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public af()V
    .registers 4

    iget-object v0, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    if-eqz v0, :cond_f

    iget-object v0, p0, LaZ/b;->s:Lcom/google/android/maps/driveabout/vector/bR;

    const/4 v1, 0x0

    const/high16 v2, -0x4080

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bR;->a(Lt/L;F)V

    invoke-direct {p0}, LaZ/b;->ag()V

    :cond_f
    return-void
.end method

.method protected b(Lcom/google/googlenav/layer/m;)LaY/t;
    .registers 10

    new-instance v0, LaZ/p;

    iget-object v1, p0, LaZ/b;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaZ/b;->e:LaJ/p;

    iget-object v3, p0, LaZ/b;->f:LaJ/u;

    iget-object v4, p0, LaZ/b;->g:Lcom/google/googlenav/ui/af;

    iget-object v6, p0, LaZ/b;->h:LaJ/k;

    iget-object v7, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, LaZ/p;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/layer/m;LaJ/k;Lcom/google/android/maps/driveabout/vector/VectorMapView;)V

    return-object v0
.end method

.method public b(LaY/i;)V
    .registers 8

    invoke-virtual {p0, p1}, LaZ/b;->j(LaY/i;)V

    iget-object v0, p0, LaZ/b;->m:LK/I;

    invoke-interface {v0, p1}, LK/I;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aD;

    if-nez v0, :cond_e

    :cond_d
    return-void

    :cond_e
    invoke-virtual {p1}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v2

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v3

    const/4 v1, 0x0

    :goto_17
    invoke-interface {v2}, Lcom/google/googlenav/E;->f()I

    move-result v4

    if-ge v1, v4, :cond_37

    invoke-interface {v2, v1}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v4

    if-eqz v4, :cond_34

    invoke-interface {v4}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v5

    if-eqz v5, :cond_34

    invoke-interface {v4}, Lcom/google/googlenav/D;->f()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_37
    new-instance v1, LaZ/h;

    invoke-direct {v1, p0, v3, v2, p1}, LaZ/h;-><init>(LaZ/b;Ljava/util/Map;Lcom/google/googlenav/E;LaY/i;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/maps/driveabout/vector/aD;->a(Lcom/google/android/maps/driveabout/vector/aC;Z)V

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, LaZ/b;->b(LaY/i;I)LaZ/j;

    move-result-object v4

    invoke-interface {v2, v1}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v1

    invoke-direct {p0, p1, v1}, LaZ/b;->a(LaY/i;Lcom/google/googlenav/D;)Z

    move-result v1

    invoke-virtual {v4, v1}, Lcom/google/android/maps/driveabout/vector/aA;->a(Z)V

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/aD;->a(Lcom/google/android/maps/driveabout/vector/aA;)V

    goto :goto_48
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/m;)V
    .registers 7

    const/16 v0, 0x12

    invoke-direct {p0}, LaZ/b;->ai()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "a=d"

    aput-object v4, v2, v3

    invoke-static {v2}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, LaZ/b;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->r()LaJ/u;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/m;->d()Lt/L;

    move-result-object v1

    invoke-static {v1}, Lz/f;->b(Lt/L;)LaJ/B;

    move-result-object v1

    sget-object v2, LaZ/b;->l:LaJ/Y;

    invoke-virtual {v0, v1, v2}, LaJ/u;->d(LaJ/B;LaJ/Y;)V

    return-void
.end method

.method public b(Lr/l;)V
    .registers 3

    invoke-direct {p0}, LaZ/b;->aj()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LaZ/b;->A:Z

    invoke-direct {p0}, LaZ/b;->ag()V

    return-void
.end method

.method public c()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, LaZ/b;->v:Z

    iget-object v1, p0, LaZ/b;->w:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, LaZ/b;->w:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_16

    iget-object v1, p0, LaZ/b;->x:Ljava/lang/Object;

    monitor-enter v1

    :try_start_f
    iget-object v0, p0, LaZ/b;->x:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_19

    return-void

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public c(LaY/i;)V
    .registers 4

    invoke-super {p0, p1}, LaY/Y;->c(LaY/i;)V

    iget-object v0, p0, LaZ/b;->m:LK/I;

    invoke-interface {v0, p1}, LK/I;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aD;

    if-eqz v0, :cond_12

    iget-object v1, p0, LaZ/b;->t:LaZ/k;

    invoke-virtual {v1, v0}, LaZ/k;->c(Lcom/google/android/maps/driveabout/vector/aD;)V

    :cond_12
    invoke-direct {p0}, LaZ/b;->ah()V

    return-void
.end method

.method protected d()V
    .registers 1

    invoke-super {p0}, LaY/Y;->d()V

    invoke-direct {p0}, LaZ/b;->ah()V

    return-void
.end method

.method protected e(Z)V
    .registers 3

    iget-object v0, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaZ/b;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d(Z)V

    :cond_9
    return-void
.end method

.method protected g(LaY/i;)V
    .registers 4

    const/4 v0, 0x0

    invoke-super {p0, p1}, LaY/Y;->g(LaY/i;)V

    invoke-virtual {p1, v0}, LaY/i;->a(LaY/k;)V

    invoke-virtual {p1, v0}, LaY/i;->a(LaY/j;)V

    iget-object v0, p0, LaZ/b;->m:LK/I;

    invoke-interface {v0, p1}, LK/I;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aD;

    if-eqz v0, :cond_19

    iget-object v1, p0, LaZ/b;->t:LaZ/k;

    invoke-virtual {v1, v0}, LaZ/k;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    :cond_19
    iget-object v0, p0, LaZ/b;->m:LK/I;

    invoke-interface {v0, p1}, LK/I;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, LaZ/b;->n(LaY/i;)V

    return-void
.end method

.method public l(LaY/i;)V
    .registers 2

    invoke-super {p0, p1}, LaY/Y;->l(LaY/i;)V

    invoke-direct {p0, p1}, LaZ/b;->n(LaY/i;)V

    invoke-direct {p0, p1}, LaZ/b;->m(LaY/i;)V

    return-void
.end method
