.class public Lcom/google/googlenav/ui/wizard/P;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/google/googlenav/ui/wizard/Z;

.field private final c:Lcom/google/googlenav/ui/wizard/ay;

.field private final d:Lcom/google/googlenav/ui/wizard/aa;

.field private e:Lcom/google/googlenav/ui/wizard/ad;

.field private final f:Lcom/google/googlenav/ui/wizard/aB;

.field private g:Z

.field private h:Lcom/google/googlenav/ui/wizard/aj;

.field private i:Lcom/google/googlenav/h;

.field private j:Ljava/util/List;

.field private k:Z

.field private final l:Lcom/google/googlenav/ui/wizard/hM;

.field private m:Lcom/google/googlenav/aU;

.field private final n:Lcom/google/googlenav/ui/at;

.field private final o:LaD/i;

.field private p:Lcom/google/googlenav/ui/wizard/aH;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/googlenav/ui/wizard/P;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/googlenav/ui/wizard/P;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/ui/at;LaY/a;ZLcom/google/googlenav/ui/wizard/aB;Lcom/google/googlenav/ui/wizard/Z;)V
    .registers 10

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/P;->h:Lcom/google/googlenav/ui/wizard/aj;

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/P;->i:Lcom/google/googlenav/h;

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/P;->j:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/P;->k:Z

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/P;->l:Lcom/google/googlenav/ui/wizard/hM;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/P;->n:Lcom/google/googlenav/ui/at;

    iput-boolean p4, p0, Lcom/google/googlenav/ui/wizard/P;->g:Z

    iput-object p6, p0, Lcom/google/googlenav/ui/wizard/P;->b:Lcom/google/googlenav/ui/wizard/Z;

    iput-object p5, p0, Lcom/google/googlenav/ui/wizard/P;->f:Lcom/google/googlenav/ui/wizard/aB;

    new-instance v0, LaD/i;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/hM;->I()Lay/r;

    move-result-object v1

    invoke-direct {v0, v1}, LaD/i;-><init>(Lay/r;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->o:LaD/i;

    new-instance v0, Lcom/google/googlenav/ui/wizard/R;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/R;-><init>(Lcom/google/googlenav/ui/wizard/P;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->c:Lcom/google/googlenav/ui/wizard/ay;

    new-instance v0, Lcom/google/googlenav/ui/wizard/aa;

    invoke-direct {v0, p0, v2}, Lcom/google/googlenav/ui/wizard/aa;-><init>(Lcom/google/googlenav/ui/wizard/P;Lcom/google/googlenav/ui/wizard/Q;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->d:Lcom/google/googlenav/ui/wizard/aa;

    new-instance v0, Lcom/google/googlenav/ui/wizard/ad;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/hM;->J()Lax/k;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/hM;->A()Lcom/google/googlenav/android/ac;

    move-result-object v2

    invoke-direct {v0, v1, p3, v2}, Lcom/google/googlenav/ui/wizard/ad;-><init>(Lax/k;LaY/a;Lcom/google/googlenav/android/ac;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->e:Lcom/google/googlenav/ui/wizard/ad;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->e:Lcom/google/googlenav/ui/wizard/ad;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/P;->d:Lcom/google/googlenav/ui/wizard/aa;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/P;->d:Lcom/google/googlenav/ui/wizard/aa;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ad;->a(Lcom/google/googlenav/ui/wizard/ah;Lcom/google/googlenav/ui/wizard/I;)V

    invoke-virtual {p2}, Lcom/google/googlenav/ui/at;->B()LaE/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/hM;->A()Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/aH;

    invoke-direct {v2, v0, v1}, Lcom/google/googlenav/ui/wizard/aH;-><init>(LaE/h;Lcom/google/googlenav/android/ac;)V

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/P;->p:Lcom/google/googlenav/ui/wizard/aH;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/P;Lcom/google/googlenav/aU;)Lcom/google/googlenav/aU;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/P;->m:Lcom/google/googlenav/aU;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/ad;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->e:Lcom/google/googlenav/ui/wizard/ad;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->l:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->Z()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->l:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/y;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/wizard/y;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->l:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->l()I

    :cond_22
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->l:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/bc;

    invoke-direct {v1}, Lcom/google/googlenav/bc;-><init>()V

    invoke-virtual {v1, p2}, Lcom/google/googlenav/bc;->c(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->b(I)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/bc;->h(Z)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/bc;->a(Z)Lcom/google/googlenav/bc;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/Q;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/Q;-><init>(Lcom/google/googlenav/ui/wizard/P;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->a(Lcom/google/googlenav/aX;)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Lcom/google/googlenav/bb;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/P;Ljava/util/List;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/P;->b(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aB;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->f:Lcom/google/googlenav/ui/wizard/aB;

    return-object v0
.end method

.method private b(Lcom/google/googlenav/h;)Z
    .registers 3

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/google/googlenav/h;->f()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/google/googlenav/h;->k()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private b(Ljava/util/List;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    :goto_8
    return v0

    :cond_9
    invoke-static {}, Lax/aL;->h()Lax/aL;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lax/aL;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_8
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/P;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->j:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->h:Lcom/google/googlenav/ui/wizard/aj;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/wizard/aj;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->p:Lcom/google/googlenav/ui/wizard/aH;

    new-instance v1, Lcom/google/googlenav/ui/wizard/ac;

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/wizard/ac;-><init>(Lcom/google/googlenav/ui/wizard/P;Lcom/google/googlenav/ui/wizard/Q;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/aH;->a(LaE/m;)V

    return-void
.end method

.method private d()LaE/l;
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->n:Lcom/google/googlenav/ui/at;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/at;->B()LaE/h;

    move-result-object v0

    invoke-virtual {v0}, LaE/h;->s()LaE/l;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, LaE/l;->d()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {v0}, LaE/l;->k()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_35

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v1

    invoke-virtual {v0}, LaE/l;->k()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x927c0

    cmp-long v1, v1, v3

    if-gez v1, :cond_35

    :goto_34
    return-object v0

    :cond_35
    const/4 v0, 0x0

    goto :goto_34
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/hM;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->l:Lcom/google/googlenav/ui/wizard/hM;

    return-object v0
.end method

.method private e()V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->e:Lcom/google/googlenav/ui/wizard/ad;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/P;->i:Lcom/google/googlenav/h;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/P;->h:Lcom/google/googlenav/ui/wizard/aj;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/aj;->x()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/P;->j:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/ad;->a(Lcom/google/googlenav/h;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->h:Lcom/google/googlenav/ui/wizard/aj;

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/aj;->a(I)V

    return-void
.end method

.method static synthetic e(Lcom/google/googlenav/ui/wizard/P;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/P;->e()V

    return-void
.end method

.method static synthetic f(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/Z;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->b:Lcom/google/googlenav/ui/wizard/Z;

    return-object v0
.end method

.method private f()V
    .registers 6

    const/16 v1, 0xa6

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/P;->g:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->i:Lcom/google/googlenav/h;

    invoke-virtual {v0}, Lcom/google/googlenav/h;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->i:Lcom/google/googlenav/h;

    invoke-virtual {v0}, Lcom/google/googlenav/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/P;->i:Lcom/google/googlenav/h;

    invoke-virtual {v3}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/b;->b(Lam/b;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/P;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->b:Lcom/google/googlenav/ui/wizard/Z;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/Z;->a()V

    return-void

    :cond_35
    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/P;->i:Lcom/google/googlenav/h;

    invoke-virtual {v2}, Lcom/google/googlenav/h;->a()Lam/b;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/b;->b(Lam/b;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_2f
.end method

.method static synthetic g(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/wizard/aj;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->h:Lcom/google/googlenav/ui/wizard/aj;

    return-object v0
.end method

.method static synthetic h(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/h;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->i:Lcom/google/googlenav/h;

    return-object v0
.end method

.method static synthetic i(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/aU;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->m:Lcom/google/googlenav/aU;

    return-object v0
.end method

.method static synthetic j(Lcom/google/googlenav/ui/wizard/P;)Lcom/google/googlenav/ui/at;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->n:Lcom/google/googlenav/ui/at;

    return-object v0
.end method

.method static synthetic k(Lcom/google/googlenav/ui/wizard/P;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/P;->f()V

    return-void
.end method

.method static synthetic l(Lcom/google/googlenav/ui/wizard/P;)LaD/i;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->o:LaD/i;

    return-object v0
.end method

.method static synthetic m(Lcom/google/googlenav/ui/wizard/P;)LaE/l;
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/P;->d()LaE/l;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/wizard/ay;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->c:Lcom/google/googlenav/ui/wizard/ay;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/h;)V
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->e:Lcom/google/googlenav/ui/wizard/ad;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ad;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/P;->k:Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/P;->c()V

    :goto_e
    return-void

    :cond_f
    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/wizard/P;->a(Lcom/google/googlenav/h;Lax/j;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/P;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->e:Lcom/google/googlenav/ui/wizard/ad;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ad;->a()V

    goto :goto_e
.end method

.method a(Lcom/google/googlenav/h;Lax/j;)V
    .registers 5

    sget-boolean v0, Lcom/google/googlenav/ui/wizard/P;->a:Z

    if-nez v0, :cond_10

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/P;->b(Lcom/google/googlenav/h;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/P;->i:Lcom/google/googlenav/h;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->h:Lcom/google/googlenav/ui/wizard/aj;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/wizard/aj;->a(Lcom/google/googlenav/h;Lax/j;)V

    if-eqz p2, :cond_1f

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->h:Lcom/google/googlenav/ui/wizard/aj;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/aj;->m()V

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->h:Lcom/google/googlenav/ui/wizard/aj;

    const/16 v1, 0x4f8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/aj;->a(I)V

    goto :goto_1e
.end method

.method public a(Lcom/google/googlenav/ui/wizard/aj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/P;->h:Lcom/google/googlenav/ui/wizard/aj;

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/P;->d()LaE/l;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->h:Lcom/google/googlenav/ui/wizard/aj;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/aj;->b(I)V

    :goto_d
    return-void

    :cond_e
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/P;->h:Lcom/google/googlenav/ui/wizard/aj;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/wizard/aj;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/P;->e:Lcom/google/googlenav/ui/wizard/ad;

    invoke-virtual {v0}, LaE/l;->c()LaJ/B;

    move-result-object v2

    invoke-virtual {v2}, LaJ/B;->c()I

    move-result v2

    invoke-virtual {v0}, LaE/l;->c()LaJ/B;

    move-result-object v3

    invoke-virtual {v3}, LaJ/B;->e()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ui/wizard/ad;->a(II)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/P;->e:Lcom/google/googlenav/ui/wizard/ad;

    invoke-virtual {v1, v0, p1}, Lcom/google/googlenav/ui/wizard/ad;->a(LaE/l;Ljava/lang/String;)V

    goto :goto_d
.end method

.method a(Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/P;->j:Ljava/util/List;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->h:Lcom/google/googlenav/ui/wizard/aj;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/aj;->b(Ljava/util/List;)V

    :cond_9
    return-void
.end method

.method public b()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/P;->h:Lcom/google/googlenav/ui/wizard/aj;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/aj;->k()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/P;->h:Lcom/google/googlenav/ui/wizard/aj;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/aj;->n()Z

    move-result v1

    if-nez v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    iget-boolean v1, p0, Lcom/google/googlenav/ui/wizard/P;->k:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/P;->h:Lcom/google/googlenav/ui/wizard/aj;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/aj;->n()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->h:Lcom/google/googlenav/ui/wizard/aj;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/aj;->h()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/P;->h:Lcom/google/googlenav/ui/wizard/aj;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/aj;->m()V

    const/4 v0, 0x1

    goto :goto_11
.end method
