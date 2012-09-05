.class public Lax/x;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/android/ac;

.field private final b:Lcom/google/googlenav/ui/D;

.field private final c:LaJ/p;

.field private final d:LaJ/u;

.field private final e:LaX/g;

.field private final f:LaY/K;

.field private final g:Lax/r;

.field private final h:Lax/bD;

.field private final i:Lcom/google/googlenav/ui/wizard/hM;

.field private j:Lax/R;

.field private final k:Lax/aZ;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;LaX/g;LaY/K;Lax/r;Lax/bD;Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lax/x;->a:Lcom/google/googlenav/android/ac;

    iput-object p2, p0, Lax/x;->b:Lcom/google/googlenav/ui/D;

    iput-object p3, p0, Lax/x;->c:LaJ/p;

    iput-object p4, p0, Lax/x;->d:LaJ/u;

    iput-object p5, p0, Lax/x;->e:LaX/g;

    iput-object p6, p0, Lax/x;->f:LaY/K;

    iput-object p7, p0, Lax/x;->g:Lax/r;

    iput-object p8, p0, Lax/x;->h:Lax/bD;

    iput-object p9, p0, Lax/x;->i:Lcom/google/googlenav/ui/wizard/hM;

    new-instance v0, Lax/y;

    invoke-direct {v0, p0}, Lax/y;-><init>(Lax/x;)V

    iput-object v0, p0, Lax/x;->k:Lax/aZ;

    return-void
.end method

.method static synthetic a(Lax/x;)Lcom/google/googlenav/android/ac;
    .registers 2

    iget-object v0, p0, Lax/x;->a:Lcom/google/googlenav/android/ac;

    return-object v0
.end method

.method private a(Lax/aP;)V
    .registers 9

    invoke-virtual {p1}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lax/aP;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lax/P;

    invoke-direct {v2, p0, v1}, Lax/P;-><init>(Lax/x;Ljava/lang/String;)V

    iget-object v3, p0, Lax/x;->b:Lcom/google/googlenav/ui/D;

    const/16 v4, 0x162

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    new-instance v3, Lax/aJ;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, v2}, Lax/aJ;-><init>(JLax/aK;)V

    invoke-virtual {v1, v3}, Lat/h;->c(Lat/g;)V

    const/16 v0, 0x3d

    const-string v1, "pa"

    invoke-static {v0, v1}, Laf/m;->a(ILjava/lang/String;)Z

    return-void
.end method

.method private a(Lax/aP;Z)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_2b

    new-instance v1, Laf/h;

    invoke-direct {v1}, Laf/h;-><init>()V

    invoke-virtual {p1}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Laf/h;->a(J)V

    :goto_13
    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v2

    new-instance v3, Lax/bC;

    invoke-direct {v3, v0, v1}, Lax/bC;-><init>(Laf/h;Laf/h;)V

    invoke-virtual {v2, v3}, Lat/h;->c(Lat/g;)V

    if-nez p2, :cond_3f

    const/4 v0, 0x1

    :goto_22
    invoke-virtual {p1, v0}, Lax/aP;->a(Z)V

    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0}, LaY/K;->bL()V

    return-void

    :cond_2b
    new-instance v1, Laf/h;

    invoke-direct {v1}, Laf/h;-><init>()V

    invoke-virtual {p1}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Laf/h;->a(J)V

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_13

    :cond_3f
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private a(Lax/aU;)V
    .registers 6

    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0}, LaY/K;->b()Lax/aS;

    move-result-object v0

    invoke-virtual {p1}, Lax/aU;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lax/aS;->a(Ljava/lang/Long;)Lax/aP;

    move-result-object v0

    invoke-virtual {p1, v0}, Lax/aU;->a(Lax/aP;)Z

    move-result v1

    if-eqz v1, :cond_33

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lax/aP;->L()V

    :cond_1d
    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    new-instance v1, Lax/ah;

    new-instance v2, Laf/h;

    invoke-direct {v2}, Laf/h;-><init>()V

    new-instance v3, Lax/H;

    invoke-direct {v3, p0}, Lax/H;-><init>(Lax/x;)V

    invoke-direct {v1, v2, v3}, Lax/ah;-><init>(Laf/h;Lax/ai;)V

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    :cond_33
    return-void
.end method

.method private a(Lax/by;)V
    .registers 5

    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0}, LaY/K;->c()LaX/a;

    move-result-object v0

    invoke-virtual {v0}, LaX/a;->a()Lax/bz;

    move-result-object v0

    iget-object v1, p0, Lax/x;->i:Lcom/google/googlenav/ui/wizard/hM;

    new-instance v2, Lax/N;

    invoke-direct {v2, p0, v0, p1}, Lax/N;-><init>(Lax/x;Lax/bz;Lax/by;)V

    invoke-virtual {v1, p1, v2}, Lcom/google/googlenav/ui/wizard/hM;->a(Lax/by;Lcom/google/googlenav/ui/wizard/hz;)V

    return-void
.end method

.method static synthetic a(Lax/x;Lax/aP;)V
    .registers 2

    invoke-direct {p0, p1}, Lax/x;->e(Lax/aP;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/a;)V
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/google/googlenav/b;->a(Lcom/google/googlenav/a;)Lcom/google/googlenav/bb;

    move-result-object v0

    iget-object v1, p0, Lax/x;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/bb;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_f

    :goto_9
    const-string v0, "cp"

    invoke-static {v0}, Lax/aA;->e(Ljava/lang/String;)V

    return-void

    :catch_f
    move-exception v0

    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0}, LaY/K;->bH()Lax/aP;

    move-result-object v0

    invoke-direct {p0, v0}, Lax/x;->b(Lax/aP;)V

    goto :goto_9
.end method

.method private a(Lcom/google/googlenav/h;)V
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/wizard/du;

    invoke-direct {v0}, Lcom/google/googlenav/ui/wizard/du;-><init>()V

    iget-object v1, p0, Lax/x;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->m()LaY/a;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/du;->d:LaY/a;

    iput-object p1, v0, Lcom/google/googlenav/ui/wizard/du;->a:Lcom/google/googlenav/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/googlenav/ui/wizard/du;->c:Z

    iget-object v1, p0, Lax/x;->i:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/wizard/du;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/wizard/bx;)V
    .registers 9

    iget-object v0, p0, Lax/x;->b:Lcom/google/googlenav/ui/D;

    const/16 v1, 0x4e

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_22

    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/bx;->a:[B

    if-eqz v0, :cond_22

    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/bx;->a:[B

    array-length v0, v0

    if-lez v0, :cond_22

    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0}, LaY/K;->b()Lax/aS;

    move-result-object v0

    invoke-virtual {v0}, Lax/aS;->d()Lax/aP;

    move-result-object v0

    if-nez v0, :cond_23

    :cond_22
    :goto_22
    return-void

    :cond_23
    new-instance v1, Lax/B;

    invoke-direct {v1, p0}, Lax/B;-><init>(Lax/x;)V

    iget-object v2, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v2}, LaY/K;->bD()Lay/p;

    move-result-object v2

    invoke-virtual {v2}, Lay/p;->a()Lay/a;

    move-result-object v2

    new-instance v3, LaX/j;

    invoke-virtual {v0}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v3, v0}, LaX/j;-><init>(Ljava/lang/Long;)V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->o()Lah/h;

    move-result-object v0

    iget-object v4, p1, Lcom/google/googlenav/ui/wizard/bx;->a:[B

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/google/googlenav/ui/wizard/bx;->a:[B

    array-length v6, v6

    invoke-interface {v0, v4, v5, v6}, Lah/h;->a([BII)Lah/f;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v2, v3, v0, v4, v1}, Lay/a;->a(Lcom/google/googlenav/ui/aj;Lah/f;Ljava/lang/String;Lax/bK;)V

    goto :goto_22
.end method

.method public static a(Z)V
    .registers 3

    invoke-static {}, Lax/aA;->g()V

    invoke-static {}, Lax/aa;->h()Lax/aa;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/g;->a(Lcom/google/googlenav/login/h;)V

    if-eqz p0, :cond_16

    const/16 v0, 0x183

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(II)Landroid/widget/Toast;

    :cond_16
    return-void
.end method

.method static synthetic b(Lax/x;)LaY/K;
    .registers 2

    iget-object v0, p0, Lax/x;->f:LaY/K;

    return-object v0
.end method

.method private b()V
    .registers 9

    invoke-static {}, LaY/bu;->b()V

    invoke-static {}, LaI/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lax/x;->i:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x18d

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18a

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x18b

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xe8

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v7, Lax/L;

    invoke-direct {v7, p0}, Lax/L;-><init>(Lax/x;)V

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/aX;)V

    :cond_2d
    return-void
.end method

.method private b(Lax/aP;)V
    .registers 4

    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0}, LaY/K;->n()B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_32

    invoke-static {}, Lax/aA;->a()V

    :goto_c
    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0, p1}, LaY/K;->a(Lax/aP;)V

    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0}, LaY/K;->bN()V

    iget-object v0, p0, Lax/x;->f:LaY/K;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaY/K;->a(B)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->a(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->invalidateOptionsMenu()V

    :cond_31
    return-void

    :cond_32
    invoke-static {}, Lax/aA;->b()V

    goto :goto_c
.end method

.method private b(Lax/aP;Z)V
    .registers 13

    const/4 v1, 0x0

    invoke-virtual {p1}, Lax/aP;->n()Z

    move-result v0

    if-nez v0, :cond_27

    new-instance v0, Laf/h;

    invoke-direct {v0}, Laf/h;-><init>()V

    invoke-virtual {p1}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Laf/h;->a(J)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v2

    new-instance v3, Lax/bC;

    invoke-direct {v3, v0, v1}, Lax/bC;-><init>(Laf/h;Laf/h;)V

    invoke-virtual {v2, v3}, Lat/h;->c(Lat/g;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lax/aP;->a(Z)V

    :cond_27
    if-eqz p2, :cond_54

    new-instance v7, Laf/h;

    invoke-direct {v7}, Laf/h;-><init>()V

    invoke-virtual {p1}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Laf/h;->a(J)V

    move-object v8, v1

    :goto_3a
    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v9

    new-instance v0, Lax/bB;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v8}, Lax/bB;-><init>(Laf/h;Ljava/util/Vector;Ljava/util/Vector;Laf/h;Laf/h;Laf/h;Laf/h;Laf/h;)V

    invoke-virtual {v9, v0}, Lat/h;->c(Lat/g;)V

    invoke-virtual {p1, p2}, Lax/aP;->b(Z)V

    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0}, LaY/K;->bL()V

    return-void

    :cond_54
    new-instance v8, Laf/h;

    invoke-direct {v8}, Laf/h;-><init>()V

    invoke-virtual {p1}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Laf/h;->a(J)V

    move-object v7, v1

    goto :goto_3a
.end method

.method private b(Lax/by;)V
    .registers 5

    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0}, LaY/K;->c()LaX/a;

    move-result-object v0

    invoke-virtual {v0}, LaX/a;->a()Lax/bz;

    move-result-object v0

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    new-instance v2, Lax/o;

    invoke-direct {v2, p1}, Lax/o;-><init>(Lax/by;)V

    invoke-virtual {v1, v2}, Lat/h;->c(Lat/g;)V

    invoke-virtual {p1}, Lax/by;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lax/bz;->a(Ljava/lang/Long;)V

    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0}, LaY/K;->c()LaX/a;

    move-result-object v0

    invoke-virtual {v0}, LaX/a;->b()V

    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0}, LaY/K;->bK()V

    return-void
.end method

.method static synthetic c(Lax/x;)Lcom/google/googlenav/ui/D;
    .registers 2

    iget-object v0, p0, Lax/x;->b:Lcom/google/googlenav/ui/D;

    return-object v0
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lax/x;->e:LaX/g;

    const/16 v1, 0x141

    invoke-virtual {v0, v1}, LaX/g;->a(I)V

    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0}, LaY/K;->bJ()V

    return-void
.end method

.method private c(Lax/aP;)V
    .registers 3

    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0, p1}, LaY/K;->a(Lax/aP;)V

    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0}, LaY/K;->bO()V

    return-void
.end method

.method static synthetic d(Lax/x;)LaX/g;
    .registers 2

    iget-object v0, p0, Lax/x;->e:LaX/g;

    return-object v0
.end method

.method private d()V
    .registers 4

    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0}, LaY/K;->b()Lax/aS;

    move-result-object v0

    invoke-virtual {v0}, Lax/aS;->e()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lax/x;->i:Lcom/google/googlenav/ui/wizard/hM;

    new-instance v2, Lax/z;

    invoke-direct {v2, p0, v0}, Lax/z;-><init>(Lax/x;Ljava/util/List;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/util/List;Lcom/google/googlenav/ui/wizard/cc;)V

    return-void
.end method

.method private d(Lax/aP;)V
    .registers 10

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lax/aA;->h()V

    const/16 v0, 0x178

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lax/aP;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x177

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lax/x;->i:Lcom/google/googlenav/ui/wizard/hM;

    new-instance v7, Lax/Q;

    invoke-direct {v7, p0, p1}, Lax/Q;-><init>(Lax/x;Lax/aP;)V

    move-object v4, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/aX;)V

    return-void
.end method

.method static synthetic e(Lax/x;)Lcom/google/googlenav/ui/wizard/hM;
    .registers 2

    iget-object v0, p0, Lax/x;->i:Lcom/google/googlenav/ui/wizard/hM;

    return-object v0
.end method

.method private e()V
    .registers 4

    invoke-static {}, Lax/aA;->f()V

    iget-object v0, p0, Lax/x;->f:LaY/K;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaY/K;->i(Z)V

    iget-object v0, p0, Lax/x;->i:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x60

    new-instance v2, Lax/A;

    invoke-direct {v2, p0}, Lax/A;-><init>(Lax/x;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/hM;->a(ILcom/google/googlenav/ui/wizard/bw;)V

    return-void
.end method

.method private e(Lax/aP;)V
    .registers 12

    const/4 v1, 0x0

    new-instance v5, Laf/h;

    invoke-direct {v5}, Laf/h;-><init>()V

    invoke-virtual {p1}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Laf/h;->a(J)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v9

    new-instance v0, Lax/bB;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    invoke-direct/range {v0 .. v8}, Lax/bB;-><init>(Laf/h;Ljava/util/Vector;Ljava/util/Vector;Laf/h;Laf/h;Laf/h;Laf/h;Laf/h;)V

    invoke-virtual {v9, v0}, Lat/h;->c(Lat/g;)V

    invoke-direct {p0, p1}, Lax/x;->f(Lax/aP;)V

    return-void
.end method

.method static synthetic f(Lax/x;)Lax/r;
    .registers 2

    iget-object v0, p0, Lax/x;->g:Lax/r;

    return-object v0
.end method

.method private f()V
    .registers 2

    invoke-static {}, Lax/aA;->d()V

    iget-object v0, p0, Lax/x;->i:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->d()V

    return-void
.end method

.method private f(Lax/aP;)V
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lax/aP;->a(I)V

    invoke-virtual {p1}, Lax/aP;->B()V

    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0}, LaY/K;->J()V

    iget-object v0, p0, Lax/x;->f:LaY/K;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LaY/K;->a(B)V

    return-void
.end method

.method private g()V
    .registers 5

    invoke-static {}, Lax/aA;->e()V

    iget-object v0, p0, Lax/x;->i:Lcom/google/googlenav/ui/wizard/hM;

    new-instance v1, Lax/E;

    invoke-direct {v1, p0}, Lax/E;-><init>(Lax/x;)V

    iget-object v2, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v2}, LaY/K;->c()LaX/a;

    move-result-object v2

    iget-object v3, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v3}, LaY/K;->b()Lax/aS;

    move-result-object v3

    invoke-virtual {v3}, Lax/aS;->b()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/wizard/gT;LaX/a;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/F;

    new-instance v2, Lax/I;

    invoke-direct {v2, p0}, Lax/I;-><init>(Lax/x;)V

    invoke-direct {v1, v2}, Lcom/google/googlenav/F;-><init>(Lcom/google/googlenav/G;)V

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 12

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0}, LaY/K;->bH()Lax/aP;

    move-result-object v0

    iget-object v1, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v1}, LaY/K;->b()Lax/aS;

    move-result-object v1

    sparse-switch p1, :sswitch_data_230

    :goto_13
    move v5, v4

    :cond_14
    :goto_14
    return v5

    :sswitch_15
    instance-of v0, p3, Lcom/google/googlenav/h;

    if-eqz v0, :cond_22d

    check-cast p3, Lcom/google/googlenav/h;

    move-object v2, p3

    :goto_1c
    const-string v3, "cm"

    iget-object v0, p0, Lax/x;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    iget-object v1, p0, Lax/x;->b:Lcom/google/googlenav/ui/D;

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/D;Lcom/google/googlenav/h;Ljava/lang/String;ZZZLcom/google/googlenav/ui/wizard/O;)V

    goto :goto_14

    :sswitch_2b
    new-instance v0, Lcom/google/googlenav/ui/wizard/du;

    invoke-direct {v0}, Lcom/google/googlenav/ui/wizard/du;-><init>()V

    instance-of v1, p3, Lcom/google/googlenav/h;

    if-eqz v1, :cond_22a

    check-cast p3, Lcom/google/googlenav/h;

    :goto_36
    iput-object p3, v0, Lcom/google/googlenav/ui/wizard/du;->a:Lcom/google/googlenav/h;

    iput-boolean v5, v0, Lcom/google/googlenav/ui/wizard/du;->c:Z

    iget-object v1, p0, Lax/x;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->m()LaY/a;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/du;->d:LaY/a;

    iget-object v1, p0, Lax/x;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/wizard/du;)V

    goto :goto_14

    :sswitch_4c
    invoke-direct {p0}, Lax/x;->g()V

    goto :goto_14

    :sswitch_50
    invoke-direct {p0}, Lax/x;->e()V

    goto :goto_14

    :sswitch_54
    check-cast p3, Lcom/google/googlenav/ui/wizard/bx;

    invoke-direct {p0, p3}, Lax/x;->a(Lcom/google/googlenav/ui/wizard/bx;)V

    goto :goto_14

    :sswitch_5a
    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0}, LaY/K;->bI()V

    goto :goto_14

    :sswitch_60
    iget-object v0, p0, Lax/x;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->af()Lcom/google/googlenav/ay;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/M;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ay;->a(Ljava/lang/String;)V

    goto :goto_13

    :sswitch_6e
    invoke-direct {p0}, Lax/x;->f()V

    goto :goto_14

    :sswitch_72
    invoke-static {}, Lax/aA;->c()V

    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0, v2}, LaY/K;->a(B)V

    goto :goto_14

    :sswitch_7b
    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3}, Lax/aS;->a(Ljava/lang/String;)Lax/aP;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v0}, Lax/x;->b(Lax/aP;)V

    goto :goto_14

    :sswitch_87
    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3}, Lax/aS;->a(Ljava/lang/String;)Lax/aP;

    move-result-object v0

    if-eqz v0, :cond_93

    invoke-direct {p0, v0}, Lax/x;->c(Lax/aP;)V

    goto :goto_14

    :cond_93
    invoke-static {}, Lax/aA;->c()V

    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0, v2}, LaY/K;->a(B)V

    goto/16 :goto_14

    :sswitch_9d
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-eqz v1, :cond_ae

    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0, v7}, LaY/K;->a(Ljava/lang/Object;)V

    goto/16 :goto_14

    :cond_ae
    invoke-direct {p0, v0}, Lax/x;->b(Lax/aP;)V

    goto/16 :goto_14

    :sswitch_b3
    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0}, LaY/K;->bI()V

    goto/16 :goto_14

    :sswitch_ba
    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0, v5}, LaY/K;->j(Z)V

    goto/16 :goto_14

    :sswitch_c1
    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0, v4}, LaY/K;->j(Z)V

    goto/16 :goto_14

    :sswitch_c8
    invoke-direct {p0}, Lax/x;->d()V

    goto/16 :goto_14

    :sswitch_cd
    invoke-direct {p0}, Lax/x;->b()V

    goto/16 :goto_14

    :sswitch_d2
    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0}, LaY/K;->r()V

    invoke-static {v5}, Lax/x;->a(Z)V

    goto/16 :goto_14

    :sswitch_dc
    invoke-direct {p0, v0, v4}, Lax/x;->b(Lax/aP;Z)V

    goto/16 :goto_14

    :sswitch_e1
    invoke-direct {p0, v0, v5}, Lax/x;->b(Lax/aP;Z)V

    goto/16 :goto_14

    :sswitch_e6
    invoke-direct {p0, v0, v5}, Lax/x;->a(Lax/aP;Z)V

    goto/16 :goto_14

    :sswitch_eb
    invoke-direct {p0, v0, v4}, Lax/x;->a(Lax/aP;Z)V

    goto/16 :goto_14

    :sswitch_f0
    invoke-direct {p0, v0}, Lax/x;->d(Lax/aP;)V

    goto/16 :goto_14

    :sswitch_f5
    instance-of v0, p3, Lax/aU;

    if-eqz v0, :cond_14

    check-cast p3, Lax/aU;

    invoke-direct {p0, p3}, Lax/x;->a(Lax/aU;)V

    goto/16 :goto_14

    :sswitch_100
    instance-of v0, p3, Landroid/view/MenuItem;

    if-eqz v0, :cond_11d

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_11d

    check-cast p3, Landroid/view/MenuItem;

    invoke-static {p3}, Lcom/google/googlenav/ui/aC;->c(Landroid/view/MenuItem;)V

    new-instance v0, Lax/F;

    invoke-direct {v0, p0, p3}, Lax/F;-><init>(Lax/x;Landroid/view/MenuItem;)V

    new-instance v7, Lax/G;

    invoke-direct {v7, p0, v0}, Lax/G;-><init>(Lax/x;Ljava/lang/Runnable;)V

    :cond_11d
    iget-object v0, p0, Lax/x;->g:Lax/r;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v7, v1, v2}, Lax/r;->a(Lcom/google/googlenav/aX;J)V

    goto/16 :goto_14

    :sswitch_126
    check-cast p3, Lax/R;

    iput-object p3, p0, Lax/x;->j:Lax/R;

    iget-object v0, p0, Lax/x;->j:Lax/R;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lax/x;->j:Lax/R;

    iget-object v1, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v1}, LaY/K;->b()Lax/aS;

    move-result-object v1

    invoke-interface {v0, v1}, Lax/R;->a(Lax/aS;)V

    goto/16 :goto_14

    :sswitch_13b
    iput-object v7, p0, Lax/x;->j:Lax/R;

    goto/16 :goto_14

    :sswitch_13f
    iget-object v0, p0, Lax/x;->j:Lax/R;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lax/x;->j:Lax/R;

    iget-object v1, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v1}, LaY/K;->b()Lax/aS;

    move-result-object v1

    invoke-interface {v0, v1}, Lax/R;->a(Lax/aS;)V

    goto/16 :goto_14

    :sswitch_150
    invoke-static {}, Lax/aA;->i()V

    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0}, LaY/K;->b()Lax/aS;

    move-result-object v0

    invoke-virtual {v0, p2}, Lax/aS;->a(I)Lax/aP;

    move-result-object v0

    invoke-direct {p0, v0}, Lax/x;->c(Lax/aP;)V

    iget-object v1, p0, Lax/x;->e:LaX/g;

    invoke-virtual {v1, p2}, LaX/g;->b(I)V

    iget-object v1, p0, Lax/x;->e:LaX/g;

    invoke-virtual {v0}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, LaX/g;->a(J)V

    goto/16 :goto_14

    :sswitch_174
    invoke-static {}, Lax/aA;->j()V

    iget-object v1, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v1, v5}, LaY/K;->a(B)V

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lax/aP;->c()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lax/x;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/y;

    const/16 v3, 0x19

    invoke-virtual {v0}, Lax/aP;->v()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/googlenav/ui/wizard/y;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    iget-object v1, p0, Lax/x;->b:Lcom/google/googlenav/ui/D;

    invoke-static {v0}, Lau/x;->a(Lax/aP;)Lau/x;

    move-result-object v0

    iget-object v2, p0, Lax/x;->d:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->n()Lam/b;

    move-result-object v2

    invoke-virtual {v1, v7, v0, v2}, Lcom/google/googlenav/ui/D;->a(Lau/x;Lau/x;Lam/b;)V

    goto/16 :goto_14

    :sswitch_1a9
    invoke-direct {p0}, Lax/x;->c()V

    goto/16 :goto_14

    :sswitch_1ae
    invoke-static {}, Lax/aA;->n()V

    iget-object v1, p0, Lax/x;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->af()Lcom/google/googlenav/ay;

    move-result-object v1

    invoke-virtual {v0}, Lax/aP;->v()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/ay;->f(Ljava/lang/String;)V

    goto/16 :goto_13

    :sswitch_1c0
    invoke-static {}, Lax/aA;->o()V

    iget-object v1, p0, Lax/x;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->af()Lcom/google/googlenav/ay;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v0}, Lax/aP;->v()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-interface {v1, v2, v7, v7}, Lcom/google/googlenav/ay;->a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :sswitch_1d6
    iget-object v1, p0, Lax/x;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->af()Lcom/google/googlenav/ay;

    move-result-object v1

    invoke-virtual {v0}, Lax/aP;->v()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/ay;->d(Ljava/lang/String;)V

    move v5, v4

    goto/16 :goto_14

    :sswitch_1e6
    check-cast p3, Lax/by;

    invoke-direct {p0, p3}, Lax/x;->a(Lax/by;)V

    goto/16 :goto_14

    :sswitch_1ed
    check-cast p3, Lax/by;

    invoke-direct {p0, p3}, Lax/x;->b(Lax/by;)V

    goto/16 :goto_14

    :sswitch_1f4
    invoke-virtual {v0}, Lax/aP;->G()Lcom/google/googlenav/a;

    move-result-object v1

    if-eqz v1, :cond_14

    new-instance v2, Lcom/google/googlenav/h;

    invoke-virtual {v1}, Lcom/google/googlenav/a;->a()Lam/b;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/googlenav/h;-><init>(Lam/b;)V

    invoke-virtual {v0}, Lax/aP;->b()Z

    move-result v0

    if-eqz v0, :cond_214

    invoke-virtual {v2}, Lcom/google/googlenav/h;->l()Z

    move-result v0

    if-eqz v0, :cond_214

    invoke-direct {p0, v2}, Lax/x;->a(Lcom/google/googlenav/h;)V

    goto/16 :goto_14

    :cond_214
    invoke-direct {p0, v1}, Lax/x;->a(Lcom/google/googlenav/a;)V

    goto/16 :goto_14

    :sswitch_219
    invoke-direct {p0, v0}, Lax/x;->a(Lax/aP;)V

    goto/16 :goto_14

    :sswitch_21e
    iget-object v0, p0, Lax/x;->f:LaY/K;

    invoke-virtual {v0}, LaY/K;->Z()V

    goto/16 :goto_14

    :sswitch_225
    invoke-virtual {p0}, Lax/x;->a()V

    goto/16 :goto_14

    :cond_22a
    move-object p3, v7

    goto/16 :goto_36

    :cond_22d
    move-object v2, v7

    goto/16 :goto_1c

    :sswitch_data_230
    .sparse-switch
        0x1 -> :sswitch_9d
        0x12c -> :sswitch_c8
        0x12d -> :sswitch_4c
        0x12e -> :sswitch_150
        0x132 -> :sswitch_b3
        0x133 -> :sswitch_d2
        0x134 -> :sswitch_dc
        0x135 -> :sswitch_e1
        0x136 -> :sswitch_e6
        0x137 -> :sswitch_eb
        0x138 -> :sswitch_50
        0x139 -> :sswitch_54
        0x13a -> :sswitch_f0
        0x13b -> :sswitch_5a
        0x13c -> :sswitch_72
        0x13d -> :sswitch_100
        0x13f -> :sswitch_126
        0x140 -> :sswitch_13b
        0x141 -> :sswitch_1a9
        0x142 -> :sswitch_1ae
        0x143 -> :sswitch_1c0
        0x144 -> :sswitch_13f
        0x14a -> :sswitch_87
        0x14b -> :sswitch_7b
        0x14c -> :sswitch_1e6
        0x14d -> :sswitch_1ed
        0x14e -> :sswitch_ba
        0x14f -> :sswitch_c1
        0x150 -> :sswitch_1d6
        0x152 -> :sswitch_cd
        0x155 -> :sswitch_6e
        0x156 -> :sswitch_219
        0x158 -> :sswitch_f5
        0x159 -> :sswitch_21e
        0x15a -> :sswitch_225
        0x25b -> :sswitch_174
        0x834 -> :sswitch_15
        0x83b -> :sswitch_1f4
        0x843 -> :sswitch_2b
        0xa8c -> :sswitch_60
    .end sparse-switch
.end method
