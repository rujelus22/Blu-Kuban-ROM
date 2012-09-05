.class public Lcom/google/googlenav/ui/wizard/eo;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field private final a:Lcom/google/googlenav/L;

.field private final g:Lcom/google/googlenav/android/BaseMapsActivity;

.field private h:Lcom/google/googlenav/ah;

.field private i:Z

.field private j:Lcom/google/googlenav/ui/wizard/ey;

.field private k:Z

.field private l:Landroid/view/LayoutInflater;

.field private final m:Lcom/google/googlenav/login/i;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;Lcom/google/googlenav/android/BaseMapsActivity;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    new-instance v0, Lcom/google/googlenav/ui/wizard/ep;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/ep;-><init>(Lcom/google/googlenav/ui/wizard/eo;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eo;->m:Lcom/google/googlenav/login/i;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/eo;->a:Lcom/google/googlenav/L;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/eo;->g:Lcom/google/googlenav/android/BaseMapsActivity;

    new-instance v0, Lcom/google/googlenav/ui/wizard/eq;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/eq;-><init>(Lcom/google/googlenav/ui/wizard/eo;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eo;->j:Lcom/google/googlenav/ui/wizard/ey;

    return-void
.end method

.method private B()V
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/wizard/es;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/es;-><init>(Lcom/google/googlenav/ui/wizard/eo;)V

    new-instance v1, Lcom/google/googlenav/ae;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eo;->h:Lcom/google/googlenav/ah;

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/ae;-><init>(Lcom/google/googlenav/ah;Lcom/google/googlenav/af;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eo;->j:Lcom/google/googlenav/ui/wizard/ey;

    const/16 v1, 0x2cf

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/ey;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eo;->a()V

    return-void
.end method

.method private C()V
    .registers 7

    const/16 v0, 0x2d2

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d3

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b6

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x371

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/eo;->g:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/ev;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/ev;-><init>(Lcom/google/googlenav/ui/wizard/eo;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/eu;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/eu;-><init>(Lcom/google/googlenav/ui/wizard/eo;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/et;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/et;-><init>(Lcom/google/googlenav/ui/wizard/eo;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eo;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eo;->l:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_18
    const/16 v0, 0x5f

    const/16 v1, 0x2d

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    :cond_20
    return-object p0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eo;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eo;->h()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eo;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/wizard/eo;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/eo;)Lcom/google/googlenav/L;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eo;->a:Lcom/google/googlenav/L;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/eo;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/eo;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .registers 6

    const/16 v0, 0x2d0

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/eo;->h:Lcom/google/googlenav/ah;

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eo;->h:Lcom/google/googlenav/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->at()Lcom/google/googlenav/av;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/av;->a()V

    if-nez p1, :cond_26

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eo;->j:Lcom/google/googlenav/ui/wizard/ey;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/wizard/ey;->a(Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/eo;)Lcom/google/googlenav/ah;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eo;->h:Lcom/google/googlenav/ah;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/eo;)Lcom/google/googlenav/ui/wizard/ey;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eo;->j:Lcom/google/googlenav/ui/wizard/ey;

    return-object v0
.end method

.method public static e()V
    .registers 3

    const/4 v0, 0x1

    invoke-static {v0}, Lar/e;->a(I)[B

    move-result-object v0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v1

    const-string v2, "PHOTO_UPLOAD_LEGAL_INFO_DISMISS"

    invoke-interface {v1, v2, v0}, Lak/m;->a(Ljava/lang/String;[B)Z

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    invoke-interface {v0}, Lak/m;->a()V

    return-void
.end method

.method static synthetic e(Lcom/google/googlenav/ui/wizard/eo;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/eo;->k:Z

    return v0
.end method

.method private f()V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eo;->h()V

    return-void
.end method

.method static synthetic f(Lcom/google/googlenav/ui/wizard/eo;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eo;->g()V

    return-void
.end method

.method static synthetic g(Lcom/google/googlenav/ui/wizard/eo;)Landroid/view/LayoutInflater;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eo;->l:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private g()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eo;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eo;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eo;->f:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/wizard/ew;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ew;->h()V

    :goto_10
    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eo;->a()V

    goto :goto_10
.end method

.method private h()V
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/eo;->i:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lar/r;->a()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eo;->g()V

    :goto_b
    return-void

    :cond_c
    iput-boolean v2, p0, Lcom/google/googlenav/ui/wizard/eo;->k:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eo;->b:Lcom/google/googlenav/ui/wizard/hM;

    new-instance v1, Lcom/google/googlenav/ui/wizard/er;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/er;-><init>(Lcom/google/googlenav/ui/wizard/eo;)V

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/ui/wizard/hM;->a(ILcom/google/googlenav/ui/wizard/bw;)V

    goto :goto_b
.end method

.method static synthetic h(Lcom/google/googlenav/ui/wizard/eo;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eo;->B()V

    return-void
.end method

.method static synthetic i(Lcom/google/googlenav/ui/wizard/eo;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eo;->j()V

    return-void
.end method

.method private static i()Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v1

    const-string v2, "PHOTO_UPLOAD_LEGAL_INFO_DISMISS"

    invoke-interface {v1, v2}, Lak/m;->a_(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-static {v1}, Lar/e;->a([B)I

    move-result v1

    if-ne v1, v0, :cond_18

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private j()V
    .registers 5

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "picasa.google.com"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/intl/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Laf/b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/eo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/privacy.html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eo;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->F()Lcom/google/googlenav/ay;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/ay;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j(Lcom/google/googlenav/ui/wizard/eo;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eo;->f()V

    return-void
.end method


# virtual methods
.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eo;->a()V

    const/4 v0, 0x2

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x3

    goto :goto_c
.end method

.method public a(Laq/c;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/google/googlenav/ah;Z)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eo;->h:Lcom/google/googlenav/ah;

    iput-boolean p2, p0, Lcom/google/googlenav/ui/wizard/eo;->i:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eo;->r()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eo;->a()V

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eo;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-nez v0, :cond_18

    new-instance v0, Lcom/google/googlenav/ui/wizard/ew;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/ew;-><init>(Lcom/google/googlenav/ui/wizard/eo;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eo;->f:Lcom/google/googlenav/ui/view/android/bs;

    :cond_18
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eo;->l()V

    return-void
.end method

.method protected b()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/ui/wizard/eo;->i()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eo;->C()V

    :goto_9
    return-void

    :cond_a
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eo;->f()V

    goto :goto_9
.end method

.method protected c()V
    .registers 1

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    return-void
.end method
