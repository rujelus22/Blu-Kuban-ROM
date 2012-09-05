.class public Lcom/google/googlenav/ui/wizard/dO;
.super Lcom/google/googlenav/ui/wizard/z;


# static fields
.field private static n:Ljava/lang/String;


# instance fields
.field private final a:Lcom/google/googlenav/L;

.field private g:Lcom/google/googlenav/ah;

.field private h:Lcom/google/googlenav/ui/view/android/bs;

.field private i:Z

.field private j:Lam/b;

.field private k:Lao/d;

.field private final l:Lcom/google/googlenav/ui/bF;

.field private m:Lbb/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/ui/wizard/dO;->n:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dO;->j:Lam/b;

    new-instance v0, Lao/b;

    invoke-direct {v0}, Lao/b;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dO;->k:Lao/d;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/dO;->a:Lcom/google/googlenav/L;

    invoke-interface {p2}, Lcom/google/googlenav/L;->k()Lay/p;

    move-result-object v0

    invoke-virtual {v0}, Lay/p;->b()Lay/r;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/bF;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bw;->t()Lah/f;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/ui/bF;-><init>(Lay/r;Lah/f;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/dO;->l:Lcom/google/googlenav/ui/bF;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dO;Ljava/lang/String;[B)Lbb/m;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/dO;->a(Ljava/lang/String;[B)Lbb/m;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;[B)Lbb/m;
    .registers 15

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/util/Vector;

    const/4 v2, 0x1

    invoke-direct {v10, v2}, Ljava/util/Vector;-><init>(I)V

    if-eqz v0, :cond_1e

    new-instance v2, Lbb/z;

    const-string v3, "GMM-CLIENT-AUTH-COOKIE"

    const-string v5, "google.com"

    invoke-direct {v2, v3, v0, v5}, Lbb/z;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1e
    invoke-static {}, Lcom/google/googlenav/ui/wizard/dO;->f()Z

    move-result v0

    if-eqz v0, :cond_41

    move-object v8, v1

    :goto_25
    const/16 v0, 0x4f8

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x281

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move v5, v4

    move v6, v4

    move v7, v4

    move-object v9, v1

    move-object v11, p2

    invoke-static/range {v0 .. v11}, Lbb/y;->a(Ljava/lang/String;Lbb/n;Ljava/lang/String;Ljava/lang/String;IZZZLbb/c;Lbb/c;Ljava/util/Vector;[B)Lbb/y;

    move-result-object v0

    new-instance v2, Lbb/m;

    invoke-direct {v2, v1, v4, v0, v1}, Lbb/m;-><init>(Ljava/lang/String;ILbb/y;[Laq/a;)V

    return-object v2

    :cond_41
    iget-object v8, p0, Lcom/google/googlenav/ui/wizard/dO;->m:Lbb/c;

    goto :goto_25
.end method

.method private a(Lam/b;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x0

    :goto_11
    return-object v0

    :cond_12
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/dO;->h()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/dO;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/google/googlenav/ui/wizard/dO;->n:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object p0, Lcom/google/googlenav/ui/wizard/dO;->n:Ljava/lang/String;

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    const-string v0, "maps.google.com/coupons"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v0, "ui"

    const-string v2, "gmmcheckin"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "checkedIn"

    if-eqz p1, :cond_30

    const-string v0, "true"

    :goto_24
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_30
    const-string v0, "false"

    goto :goto_24
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dO;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/dO;->i()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dO;ZLcom/google/googlenav/ui/wizard/dS;Lbb/m;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/dO;->a(ZLcom/google/googlenav/ui/wizard/dS;Lbb/m;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z[B)V
    .registers 12

    const/4 v3, 0x0

    new-instance v2, Lcom/google/googlenav/ui/wizard/dS;

    invoke-direct {v2, v3}, Lcom/google/googlenav/ui/wizard/dS;-><init>(Lcom/google/googlenav/ui/wizard/dP;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dO;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x22f

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;JZ)V

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->k()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-direct {p0, p1, p3}, Lcom/google/googlenav/ui/wizard/dO;->a(Ljava/lang/String;[B)Lbb/m;

    move-result-object v0

    invoke-direct {p0, p2, v2, v0}, Lcom/google/googlenav/ui/wizard/dO;->a(ZLcom/google/googlenav/ui/wizard/dS;Lbb/m;)V

    :goto_25
    return-void

    :cond_26
    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/dO;->k:Lao/d;

    const-string v7, "checkLogin"

    new-instance v0, Lcom/google/googlenav/ui/wizard/dP;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/wizard/dP;-><init>(Lcom/google/googlenav/ui/wizard/dO;Lcom/google/googlenav/ui/wizard/dS;Ljava/lang/String;[BZ)V

    invoke-interface {v6, v7, v0}, Lao/d;->a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_25
.end method

.method private a(ZLcom/google/googlenav/ui/wizard/dS;Lbb/m;)V
    .registers 6

    invoke-virtual {p2}, Lcom/google/googlenav/ui/wizard/dS;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    new-instance v0, Lcom/google/googlenav/ui/view/android/bh;

    invoke-direct {v0, p0, p3}, Lcom/google/googlenav/ui/view/android/bh;-><init>(Lcom/google/googlenav/ui/p;Lbb/f;)V

    if-eqz p1, :cond_1b

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dO;->h:Lcom/google/googlenav/ui/view/android/bs;

    :goto_10
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dO;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    goto :goto_6

    :cond_1b
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dO;->f:Lcom/google/googlenav/ui/view/android/bs;

    goto :goto_10
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/dO;)Lcom/google/googlenav/L;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dO;->a:Lcom/google/googlenav/L;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/dO;)Lcom/google/googlenav/ah;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dO;->g:Lcom/google/googlenav/ah;

    return-object v0
.end method

.method public static f()Z
    .registers 2

    invoke-static {}, Lcom/google/googlenav/android/a;->g()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/google/googlenav/android/a;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private g()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dO;->j:Lam/b;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/dO;->a(Lam/b;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlenav/ui/wizard/dO;->a(Ljava/lang/String;Z[B)V

    return-void
.end method

.method private h()Z
    .registers 3

    invoke-static {}, Lcom/google/googlenav/aJ;->a()Lcom/google/googlenav/aJ;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dO;->g:Lcom/google/googlenav/ah;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aJ;->a(Lcom/google/googlenav/ah;)Z

    move-result v0

    return v0
.end method

.method private i()V
    .registers 6

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->m()Lak/i;

    move-result-object v1

    const-string v2, "http://maps.google.com/coupons/checklogin"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lak/i;->a(Ljava/lang/String;Z)Lak/f;

    move-result-object v1

    const-string v2, "Cookie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GMM-CLIENT-AUTH-COOKIE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lak/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lak/f;->c()I

    move-result v0

    invoke-interface {v1}, Lak/f;->f()V

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3d

    :goto_3c
    return-void

    :cond_3d
    new-instance v0, Lcom/google/googlenav/ui/wizard/dT;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/wizard/dT;-><init>(Lcom/google/googlenav/ui/wizard/dP;)V

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/g;->a(Lcom/google/googlenav/login/j;)V

    invoke-virtual {v1}, Lcom/google/googlenav/login/g;->h()V

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dT;->a()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/g;->b(Lcom/google/googlenav/login/j;)V

    goto :goto_3c
.end method

.method private j()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/dO;->e:I

    return-void
.end method


# virtual methods
.method public W_()V
    .registers 6

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dO;->g:Lcom/google/googlenav/ah;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dO;->j:Lam/b;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dO;->e()Z

    move-result v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dO;->a()V

    new-instance v3, Lcom/google/googlenav/ui/wizard/dU;

    invoke-direct {v3, p0, v0}, Lcom/google/googlenav/ui/wizard/dU;-><init>(Lcom/google/googlenav/ui/wizard/dO;Lcom/google/googlenav/ah;)V

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/googlenav/ui/wizard/dO;->a(Lcom/google/googlenav/ah;Lam/b;Lbb/c;)V

    if-eqz v2, :cond_24

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/dO;->a(Lam/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    const/4 v2, 0x0

    invoke-direct {p0, v0, v4, v2}, Lcom/google/googlenav/ui/wizard/dO;->a(Ljava/lang/String;Z[B)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/dO;->j:Lam/b;

    iput-boolean v4, p0, Lcom/google/googlenav/ui/wizard/dO;->i:Z

    :cond_24
    return-void
.end method

.method public a(LaJ/B;)I
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/dO;->j()V

    const/4 v0, 0x4

    return v0
.end method

.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dO;->o()V

    iget v0, p0, Lcom/google/googlenav/ui/wizard/dO;->e:I

    :goto_d
    return v0

    :cond_e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dO;->e:I

    goto :goto_d
.end method

.method public a(Laq/c;)I
    .registers 3

    const/4 v0, 0x4

    return v0
.end method

.method public a(Lcom/google/googlenav/ah;I)V
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/wizard/dU;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/wizard/dU;-><init>(Lcom/google/googlenav/ui/wizard/dO;Lcom/google/googlenav/ah;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/googlenav/ui/wizard/dO;->a(Lcom/google/googlenav/ah;ILbb/c;)V

    return-void
.end method

.method a(Lcom/google/googlenav/ah;ILbb/c;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    if-ltz p2, :cond_9

    invoke-virtual {p1, p2}, Lcom/google/googlenav/ah;->j(I)Lam/b;

    move-result-object v0

    :cond_9
    invoke-virtual {p0, p1, v0, p3}, Lcom/google/googlenav/ui/wizard/dO;->a(Lcom/google/googlenav/ah;Lam/b;Lbb/c;)V

    return-void
.end method

.method a(Lcom/google/googlenav/ah;Lam/b;Lbb/c;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dO;->g:Lcom/google/googlenav/ah;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/dO;->m:Lbb/c;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/dO;->j:Lam/b;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dO;->l()V

    return-void
.end method

.method a([B)V
    .registers 7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dO;->g:Lcom/google/googlenav/ah;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dO;->j:Lam/b;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dO;->a()V

    new-instance v2, Lcom/google/googlenav/ui/wizard/dU;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/dO;->g:Lcom/google/googlenav/ah;

    invoke-direct {v2, p0, v3}, Lcom/google/googlenav/ui/wizard/dU;-><init>(Lcom/google/googlenav/ui/wizard/dO;Lcom/google/googlenav/ah;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlenav/ui/wizard/dO;->a(Lcom/google/googlenav/ah;Lam/b;Lbb/c;)V

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "maps.google.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/coupons/_saveredeem"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4, p1}, Lcom/google/googlenav/ui/wizard/dO;->a(Ljava/lang/String;Z[B)V

    iput-boolean v4, p0, Lcom/google/googlenav/ui/wizard/dO;->i:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/dO;->e:I

    return-void
.end method

.method protected b()V
    .registers 2

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/dO;->e:I

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dO;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dO;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dO;->f:Lcom/google/googlenav/ui/view/android/bs;

    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dO;->g:Lcom/google/googlenav/ah;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dO;->j:Lam/b;

    if-nez v0, :cond_1b

    :cond_17
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/dO;->j()V

    :goto_1a
    return-void

    :cond_1b
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/dO;->g()V

    goto :goto_1a
.end method

.method protected c()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dO;->h:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dO;->h:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    :cond_a
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/dO;->h:Lcom/google/googlenav/ui/view/android/bs;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dO;->i:Z

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/dO;->j:Lam/b;

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/dO;->m:Lbb/c;

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/dO;->g:Lcom/google/googlenav/ah;

    return-void
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dO;->i:Z

    return v0
.end method

.method public o()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dO;->i:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dO;->h:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dO;->h:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->hide()V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/dO;->h:Lcom/google/googlenav/ui/view/android/bs;

    :cond_10
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/dO;->j:Lam/b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dO;->i:Z

    :goto_15
    return-void

    :cond_16
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/dO;->e:I

    goto :goto_15
.end method
