.class public LaY/K;
.super LaY/m;

# interfaces
.implements Lax/aE;
.implements Lay/q;


# instance fields
.field protected final C:Landroid/graphics/Point;

.field private final D:LaX/g;

.field private E:Lax/bD;

.field private F:Lax/r;

.field private G:LaY/S;

.field private H:Lay/a;

.field private I:LaX/i;

.field private J:LaX/i;

.field private K:Lcom/google/googlenav/ui/at;

.field private L:LaY/a;

.field private M:Lcom/google/googlenav/android/ac;

.field private N:Lax/aS;

.field private O:Z

.field private P:[Lcom/google/googlenav/ui/aR;

.field private Q:[Lcom/google/googlenav/ui/aR;

.field private R:[Lcom/google/googlenav/ui/aR;

.field private S:Lax/S;

.field private T:Lax/x;

.field private U:Landroid/graphics/Point;

.field private V:LaY/aj;

.field private W:LaX/a;

.field private X:Lcom/google/googlenav/ui/wizard/hM;

.field private Y:Z

.field private Z:LaX/h;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/af;Lax/bD;Lax/r;Lcom/google/googlenav/ui/at;LaY/a;LaX/a;)V
    .registers 20

    invoke-direct {p0, p1, p2, p3, p5}, LaY/m;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;)V

    new-instance v0, LaX/g;

    invoke-direct {v0}, LaX/g;-><init>()V

    iput-object v0, p0, LaY/K;->D:LaX/g;

    new-instance v1, Lax/aS;

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Vector;

    invoke-direct {v1, v0}, Lax/aS;-><init>(Ljava/util/Vector;)V

    iput-object v1, p0, LaY/K;->N:Lax/aS;

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, LaY/K;->U:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, LaY/K;->C:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-object v0, p0, LaY/K;->V:LaY/aj;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v5

    move-object v0, p0

    move-object v1, p4

    move-object v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object v6, p1

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    invoke-direct/range {v0 .. v8}, LaY/K;->a(Lcom/google/googlenav/android/ac;Lax/bD;Lax/r;Lcom/google/googlenav/ui/at;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/ui/D;LaY/a;LaX/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/af;Lax/bD;Lax/r;Lcom/google/googlenav/ui/at;Lcom/google/googlenav/E;LaY/a;LaX/a;)V
    .registers 21

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v5}, LaY/m;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;)V

    new-instance v0, LaX/g;

    invoke-direct {v0}, LaX/g;-><init>()V

    iput-object v0, p0, LaY/K;->D:LaX/g;

    new-instance v1, Lax/aS;

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Vector;

    invoke-direct {v1, v0}, Lax/aS;-><init>(Ljava/util/Vector;)V

    iput-object v1, p0, LaY/K;->N:Lax/aS;

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, LaY/K;->U:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, LaY/K;->C:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-object v0, p0, LaY/K;->V:LaY/aj;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v5

    move-object v0, p0

    move-object v1, p4

    move-object v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object v6, p1

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    invoke-direct/range {v0 .. v8}, LaY/K;->a(Lcom/google/googlenav/android/ac;Lax/bD;Lax/r;Lcom/google/googlenav/ui/at;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/ui/D;LaY/a;LaX/a;)V

    return-void
.end method

.method static synthetic a(LaY/K;)LaX/g;
    .registers 2

    iget-object v0, p0, LaY/K;->D:LaX/g;

    return-object v0
.end method

.method static synthetic a(LaY/K;Z)V
    .registers 2

    invoke-direct {p0, p1}, LaY/K;->k(Z)V

    return-void
.end method

.method private a(Lax/aP;IILah/e;Lcom/google/googlenav/ui/C;)V
    .registers 12

    invoke-virtual {p1}, Lax/aP;->y()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p1}, Lax/aP;->d()LaJ/B;

    move-result-object v0

    iget-object v1, p0, LaY/K;->c:LaJ/p;

    iget-object v2, p0, LaY/K;->C:Landroid/graphics/Point;

    invoke-virtual {v1, v0, v2}, LaJ/p;->a(LaJ/B;Landroid/graphics/Point;)V

    iget-object v0, p0, LaY/K;->C:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, p2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, LaY/K;->C:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p3

    iput v1, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, LaY/K;->C:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, LaY/K;->C:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {p4, v0, v1, p2, p3}, Lah/r;->a(Lah/e;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lax/aP;->C()C

    move-result v0

    iget-object v1, p0, LaY/K;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {p5}, Lcom/google/googlenav/ui/C;->a()Lah/e;

    move-result-object v2

    iget-object v3, p0, LaY/K;->C:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, LaY/K;->C:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/googlenav/ui/bw;->a(CLah/e;II)V

    iget-object v0, p0, LaY/K;->C:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget v1, Lay/n;->a:I

    add-int/2addr v0, v1

    iget-object v1, p0, LaY/K;->C:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sget v2, Lay/n;->b:I

    add-int/2addr v1, v2

    iget-object v2, p0, LaY/K;->H:Lay/a;

    new-instance v3, LaX/j;

    invoke-virtual {p1}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v4

    sget v5, Lcom/google/googlenav/ui/bw;->bu:I

    invoke-direct {v3, v4, v5}, LaX/j;-><init>(Ljava/lang/Long;I)V

    invoke-virtual {v2, v3}, Lay/a;->a(Lcom/google/googlenav/ui/aj;)Lah/f;

    move-result-object v2

    invoke-virtual {p1}, Lax/aP;->m()Z

    move-result v3

    if-eqz v3, :cond_74

    if-eqz v2, :cond_74

    invoke-virtual {p5}, Lcom/google/googlenav/ui/C;->a()Lah/e;

    move-result-object v3

    invoke-interface {v3, v2, v0, v1}, Lah/e;->a(Lah/f;II)V

    goto :goto_6

    :cond_74
    invoke-virtual {p5}, Lcom/google/googlenav/ui/C;->a()Lah/e;

    move-result-object v2

    iget-object v3, p0, LaY/K;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {p1}, Lax/aP;->m()Z

    move-result v4

    sget v5, Lcom/google/googlenav/ui/bw;->bu:I

    invoke-virtual {v3, v4, v5}, Lcom/google/googlenav/ui/bw;->a(ZI)Lah/f;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lah/e;->a(Lah/f;II)V

    goto/16 :goto_6
.end method

.method private a(Lcom/google/googlenav/android/ac;Lax/bD;Lax/r;Lcom/google/googlenav/ui/at;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/ui/D;LaY/a;LaX/a;)V
    .registers 20

    new-instance v1, LaY/J;

    invoke-direct {v1, p0}, LaY/J;-><init>(LaY/m;)V

    iput-object v1, p0, LaY/K;->B:LaY/aD;

    invoke-virtual/range {p6 .. p6}, Lcom/google/googlenav/ui/D;->k()Lay/p;

    move-result-object v1

    invoke-virtual {v1}, Lay/p;->a()Lay/a;

    move-result-object v1

    iput-object v1, p0, LaY/K;->H:Lay/a;

    new-instance v1, LaX/i;

    iget-object v2, p0, LaY/K;->H:Lay/a;

    const/4 v3, 0x0

    sget v4, Lcom/google/googlenav/ui/bw;->bt:I

    invoke-direct {v1, v2, v3, v4}, LaX/i;-><init>(Lay/a;Lax/aS;I)V

    iput-object v1, p0, LaY/K;->I:LaX/i;

    new-instance v1, LaX/i;

    iget-object v2, p0, LaY/K;->H:Lay/a;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, LaX/i;-><init>(Lay/a;Lax/aS;I)V

    iput-object v1, p0, LaY/K;->J:LaX/i;

    iput-object p2, p0, LaY/K;->E:Lax/bD;

    iput-object p3, p0, LaY/K;->F:Lax/r;

    iput-object p1, p0, LaY/K;->M:Lcom/google/googlenav/android/ac;

    iput-object p4, p0, LaY/K;->K:Lcom/google/googlenav/ui/at;

    move-object/from16 v0, p5

    iput-object v0, p0, LaY/K;->X:Lcom/google/googlenav/ui/wizard/hM;

    move-object/from16 v0, p7

    iput-object v0, p0, LaY/K;->L:LaY/a;

    move-object/from16 v0, p8

    iput-object v0, p0, LaY/K;->W:LaX/a;

    new-instance v1, LaY/S;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LaY/S;-><init>(LaY/K;LaY/L;)V

    iput-object v1, p0, LaY/K;->G:LaY/S;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlenav/ui/aR;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    iput-object v1, p0, LaY/K;->Q:[Lcom/google/googlenav/ui/aR;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlenav/ui/aR;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    iput-object v1, p0, LaY/K;->P:[Lcom/google/googlenav/ui/aR;

    new-instance v1, Lax/S;

    invoke-direct {v1, p0}, Lax/S;-><init>(LaY/K;)V

    iput-object v1, p0, LaY/K;->S:Lax/S;

    new-instance v1, Lax/x;

    iget-object v4, p0, LaY/K;->c:LaJ/p;

    iget-object v5, p0, LaY/K;->d:LaJ/u;

    iget-object v6, p0, LaY/K;->D:LaX/g;

    iget-object v9, p0, LaY/K;->E:Lax/bD;

    move-object v2, p1

    move-object/from16 v3, p6

    move-object v7, p0

    move-object v8, p3

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lax/x;-><init>(Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;LaX/g;LaY/K;Lax/r;Lax/bD;Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v1, p0, LaY/K;->T:Lax/x;

    const-string v1, "WIFI_DETECTION_ALERT_ALLOWED"

    const/4 v2, 0x1

    new-instance v3, LaY/L;

    invoke-direct {v3, p0}, LaY/L;-><init>(LaY/K;)V

    invoke-static {v1, v2, v3}, Lax/be;->a(Ljava/lang/String;ILax/bj;)V

    iget-object v1, p0, LaY/K;->H:Lay/a;

    invoke-virtual {v1, p0}, Lay/a;->a(Lay/q;)V

    invoke-static {}, Laf/d;->b()Z

    move-result v1

    if-nez v1, :cond_93

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->C()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/friend/reporting/k;->a(Landroid/content/Context;)V

    :cond_93
    new-instance v1, LaX/h;

    invoke-direct {v1}, LaX/h;-><init>()V

    iput-object v1, p0, LaY/K;->Z:LaX/h;

    new-instance v1, LaY/aj;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v2

    new-instance v3, LaY/Q;

    iget-object v4, p0, LaY/K;->Z:LaX/h;

    invoke-direct {v3, p0, v4}, LaY/Q;-><init>(LaY/K;LaX/h;)V

    invoke-direct {v1, v2, v3}, LaY/aj;-><init>(Lap/c;LaY/ak;)V

    iput-object v1, p0, LaY/K;->V:LaY/aj;

    return-void
.end method

.method static synthetic b(LaY/K;)Lax/r;
    .registers 2

    iget-object v0, p0, LaY/K;->F:Lax/r;

    return-object v0
.end method

.method static synthetic b(LaY/K;Z)Z
    .registers 2

    iput-boolean p1, p0, LaY/K;->Y:Z

    return p1
.end method

.method public static bQ()I
    .registers 3

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const-wide v1, 0x4007333333333333L

    invoke-virtual {v0, v1, v2}, Laf/b;->a(D)I

    move-result v0

    return v0
.end method

.method private bU()V
    .registers 5

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v1, "FRIENDS_LAYER_PHOTO_PICKER_STORE"

    invoke-interface {v0, v1}, Lak/m;->d(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_11

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, LaY/K;->T:Lax/x;

    const/16 v1, 0x138

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lax/x;->a(IILjava/lang/Object;)Z

    goto :goto_10
.end method

.method private bV()Lam/b;
    .registers 5

    new-instance v0, Lam/b;

    sget-object v1, LbD/Z;->g:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/16 v1, 0xf

    invoke-virtual {p0}, LaY/K;->bT()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lam/b;->b(IJ)V

    return-object v0
.end method

.method private bW()Lax/aP;
    .registers 5

    const/4 v0, 0x0

    const/4 v2, -0x1

    iget-object v1, p0, LaY/K;->f:Lcom/google/googlenav/E;

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    iget-object v1, p0, LaY/K;->f:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->c()I

    move-result v1

    iget-object v3, p0, LaY/K;->f:Lcom/google/googlenav/E;

    invoke-interface {v3}, Lcom/google/googlenav/E;->f()I

    move-result v3

    if-lt v1, v3, :cond_1b

    iget-object v1, p0, LaY/K;->f:Lcom/google/googlenav/E;

    invoke-interface {v1, v2}, Lcom/google/googlenav/E;->a(I)V

    move v1, v2

    :cond_1b
    if-eq v1, v2, :cond_6

    invoke-virtual {p0}, LaY/K;->b()Lax/aS;

    move-result-object v0

    invoke-virtual {v0, v1}, Lax/aS;->a(I)Lax/aP;

    move-result-object v0

    goto :goto_6
.end method

.method private bX()I
    .registers 2

    iget-object v0, p0, LaY/K;->r:Lcom/google/googlenav/ui/view/android/bs;

    instance-of v0, v0, Lcom/google/googlenav/ui/view/android/bh;

    if-eqz v0, :cond_f

    iget-object v0, p0, LaY/K;->r:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/view/android/bh;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bh;->n()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method

.method private bY()Lbb/f;
    .registers 2

    iget-object v0, p0, LaY/K;->r:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/view/android/ay;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ay;->i()Lbb/f;

    move-result-object v0

    return-object v0
.end method

.method private bZ()V
    .registers 5

    iget-object v0, p0, LaY/K;->r:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_2e

    invoke-direct {p0}, LaY/K;->bY()Lbb/f;

    move-result-object v0

    instance-of v0, v0, Lbb/o;

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, LaY/K;->ae()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, LaY/K;->D:LaX/g;

    invoke-direct {p0}, LaY/K;->bX()I

    move-result v1

    invoke-virtual {v0, v1}, LaX/g;->b(I)V

    invoke-direct {p0}, LaY/K;->ca()Lax/aP;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v1, p0, LaY/K;->D:LaX/g;

    invoke-virtual {v0}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, LaX/g;->a(J)V

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    iget-object v0, p0, LaY/K;->D:LaX/g;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, LaX/g;->a(J)V

    goto :goto_2e
.end method

.method static synthetic c(LaY/K;)Lax/aS;
    .registers 2

    iget-object v0, p0, LaY/K;->N:Lax/aS;

    return-object v0
.end method

.method private ca()Lax/aP;
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, LaY/K;->r:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_38

    invoke-direct {p0}, LaY/K;->bY()Lbb/f;

    move-result-object v0

    check-cast v0, Lbb/o;

    iget-object v1, v0, Lbb/o;->l:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_15

    move-object v0, v2

    :goto_14
    return-object v0

    :cond_15
    invoke-direct {p0}, LaY/K;->bX()I

    move-result v1

    if-gez v1, :cond_2b

    const/4 v1, 0x0

    :cond_1c
    :goto_1c
    invoke-virtual {v0, v1}, Lbb/o;->a(I)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    iget-object v1, v0, Lcom/google/googlenav/ui/bl;->A:Ljava/lang/Object;

    instance-of v1, v1, Lax/aP;

    if-eqz v1, :cond_38

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->A:Ljava/lang/Object;

    check-cast v0, Lax/aP;

    goto :goto_14

    :cond_2b
    invoke-virtual {v0}, Lbb/o;->g()I

    move-result v3

    if-le v1, v3, :cond_1c

    invoke-virtual {v0}, Lbb/o;->g()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    :cond_38
    move-object v0, v2

    goto :goto_14
.end method

.method private cb()V
    .registers 4

    new-instance v0, LaY/N;

    invoke-direct {v0, p0}, LaY/N;-><init>(LaY/K;)V

    iget-object v1, p0, LaY/K;->W:LaX/a;

    iget-object v2, p0, LaY/K;->M:Lcom/google/googlenav/android/ac;

    invoke-virtual {v1, v2, v0}, LaX/a;->a(Lcom/google/googlenav/android/ac;LaX/f;)V

    return-void
.end method

.method private cc()V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, LaY/K;->cf()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, LaY/K;->bH()Lax/aP;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {v2}, Lax/aP;->u()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    long-to-int v3, v3

    iget-object v4, p0, LaY/K;->P:[Lcom/google/googlenav/ui/aR;

    new-instance v5, LaY/P;

    invoke-direct {v5, p0, v3, v2}, LaY/P;-><init>(LaY/K;ILax/aP;)V

    aput-object v5, v4, v1

    :goto_1d
    if-nez v0, :cond_2d

    iget-object v0, p0, LaY/K;->R:[Lcom/google/googlenav/ui/aR;

    if-eqz v0, :cond_2d

    iget-object v0, p0, LaY/K;->R:[Lcom/google/googlenav/ui/aR;

    aget-object v0, v0, v1

    iget-object v2, p0, LaY/K;->Q:[Lcom/google/googlenav/ui/aR;

    aget-object v1, v2, v1

    if-eq v0, v1, :cond_36

    :cond_2d
    iget-object v0, p0, LaY/K;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0, p0}, LaY/Y;->l(LaY/i;)V

    :cond_36
    return-void

    :cond_37
    move v0, v1

    goto :goto_1d
.end method

.method private cd()Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, LaY/K;->o:Z

    if-nez v0, :cond_4f

    move v0, v1

    :goto_7
    iget-object v3, p0, LaY/K;->f:Lcom/google/googlenav/E;

    if-nez v3, :cond_51

    move v3, v1

    :goto_c
    iget-object v4, p0, LaY/K;->f:Lcom/google/googlenav/E;

    if-eqz v4, :cond_53

    invoke-virtual {p0}, LaY/K;->ah()Z

    move-result v4

    if-eqz v4, :cond_53

    move v4, v1

    :goto_17
    iget-object v5, p0, LaY/K;->f:Lcom/google/googlenav/E;

    if-eqz v5, :cond_55

    invoke-virtual {p0}, LaY/K;->af()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-virtual {p0}, LaY/K;->bH()Lax/aP;

    move-result-object v5

    if-nez v5, :cond_55

    move v5, v1

    :goto_28
    iget-object v6, p0, LaY/K;->f:Lcom/google/googlenav/E;

    if-eqz v6, :cond_57

    invoke-virtual {p0}, LaY/K;->af()Z

    move-result v6

    if-eqz v6, :cond_57

    iget v6, p0, LaY/K;->w:I

    const/16 v7, 0xd

    if-eq v6, v7, :cond_3e

    iget v6, p0, LaY/K;->w:I

    const/16 v7, 0xe

    if-ne v6, v7, :cond_57

    :cond_3e
    iget-boolean v6, p0, LaY/K;->x:Z

    if-nez v6, :cond_57

    move v6, v1

    :goto_43
    if-nez v0, :cond_4d

    if-nez v3, :cond_4d

    if-nez v4, :cond_4d

    if-nez v5, :cond_4d

    if-eqz v6, :cond_4e

    :cond_4d
    move v2, v1

    :cond_4e
    return v2

    :cond_4f
    move v0, v2

    goto :goto_7

    :cond_51
    move v3, v2

    goto :goto_c

    :cond_53
    move v4, v2

    goto :goto_17

    :cond_55
    move v5, v2

    goto :goto_28

    :cond_57
    move v6, v2

    goto :goto_43
.end method

.method private ce()V
    .registers 2

    invoke-virtual {p0}, LaY/K;->b()Lax/aS;

    move-result-object v0

    invoke-virtual {v0}, Lax/aS;->d()Lax/aP;

    move-result-object v0

    invoke-virtual {v0}, Lax/aP;->w()V

    invoke-static {}, Lax/aO;->b()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, LaY/K;->G:LaY/S;

    invoke-virtual {v0}, LaY/S;->a()V

    :cond_16
    invoke-virtual {p0}, LaY/K;->ae()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0}, LaY/K;->bZ()V

    invoke-virtual {p0}, LaY/K;->k()V

    :cond_22
    return-void
.end method

.method private cf()Z
    .registers 3

    invoke-virtual {p0}, LaY/K;->bH()Lax/aP;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lax/aP;->y()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Lax/aP;->b()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lax/aO;->b()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_18
    iget-boolean v0, p0, LaY/K;->o:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private cg()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, LaY/K;->h:Lcom/google/googlenav/D;

    invoke-virtual {p0}, LaY/K;->ao()Z

    return-void
.end method

.method static synthetic d(LaY/K;)Lcom/google/googlenav/android/ac;
    .registers 2

    iget-object v0, p0, LaY/K;->M:Lcom/google/googlenav/android/ac;

    return-object v0
.end method

.method static synthetic e(LaY/K;)LaX/a;
    .registers 2

    iget-object v0, p0, LaY/K;->W:LaX/a;

    return-object v0
.end method

.method static synthetic f(LaY/K;)Lay/a;
    .registers 2

    iget-object v0, p0, LaY/K;->H:Lay/a;

    return-object v0
.end method

.method static synthetic g(LaY/K;)Lcom/google/googlenav/ui/wizard/hM;
    .registers 2

    iget-object v0, p0, LaY/K;->X:Lcom/google/googlenav/ui/wizard/hM;

    return-object v0
.end method

.method private g(Laq/b;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, LaY/K;->s()Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    if-nez v0, :cond_c

    move v0, v1

    :goto_b
    return v0

    :cond_c
    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1f

    invoke-virtual {p0}, LaY/K;->af()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, LaY/K;->bN()V

    move v0, v2

    goto :goto_b

    :cond_1f
    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_31

    invoke-virtual {p0}, LaY/K;->ag()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, LaY/K;->bO()V

    move v0, v2

    goto :goto_b

    :cond_31
    move v0, v1

    goto :goto_b
.end method

.method static synthetic h(LaY/K;)V
    .registers 1

    invoke-direct {p0}, LaY/K;->cg()V

    return-void
.end method

.method static synthetic i(LaY/K;)Z
    .registers 2

    iget-boolean v0, p0, LaY/K;->O:Z

    return v0
.end method

.method private j(I)V
    .registers 3

    iget-object v0, p0, LaY/K;->r:Lcom/google/googlenav/ui/view/android/bs;

    instance-of v0, v0, Lcom/google/googlenav/ui/view/android/bx;

    if-eqz v0, :cond_d

    iget-object v0, p0, LaY/K;->r:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/view/android/bx;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/bx;->a(I)V

    :cond_d
    return-void
.end method

.method private k(Z)V
    .registers 9

    const/16 v1, 0x11

    invoke-virtual {p0}, LaY/K;->az()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, LaY/K;->O:Z

    invoke-virtual {p0}, LaY/K;->bH()Lax/aP;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lax/aP;->y()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lax/aP;->d()LaJ/B;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lax/aP;->u()J

    move-result-wide v3

    long-to-int v0, v3

    int-to-long v5, v0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2b

    const v0, 0x7fffffff

    :cond_2b
    invoke-static {v0, v2}, Lcom/google/googlenav/ui/at;->a(ILaJ/B;)LaJ/Y;

    move-result-object v0

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_37

    if-nez v0, :cond_3d

    :cond_37
    const/16 v0, 0xf

    invoke-static {v0}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    :cond_3d
    iget-object v3, p0, LaY/K;->d:LaJ/u;

    invoke-virtual {v3, v2}, LaJ/u;->e(LaJ/B;)Z

    move-result v3

    if-eqz v3, :cond_53

    iget-object v3, p0, LaY/K;->d:LaJ/u;

    invoke-virtual {v3}, LaJ/u;->d()LaJ/Y;

    move-result-object v3

    invoke-virtual {v3}, LaJ/Y;->a()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_53
    invoke-virtual {v0}, LaJ/Y;->a()I

    move-result v3

    if-le v3, v1, :cond_5d

    invoke-static {v1}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    :cond_5d
    if-eqz p1, :cond_68

    iget-object v1, p0, LaY/K;->d:LaJ/u;

    invoke-virtual {v1, v2, v0}, LaJ/u;->d(LaJ/B;LaJ/Y;)V

    :goto_64
    const/4 v0, 0x1

    iput-boolean v0, p0, LaY/K;->O:Z

    goto :goto_8

    :cond_68
    iget-object v1, p0, LaY/K;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->T()V

    iget-object v1, p0, LaY/K;->d:LaJ/u;

    invoke-virtual {v1, v2, v0}, LaJ/u;->e(LaJ/B;LaJ/Y;)V

    goto :goto_64
.end method


# virtual methods
.method protected A()V
    .registers 4

    invoke-super {p0}, LaY/m;->A()V

    invoke-virtual {p0}, LaY/K;->v()V

    invoke-virtual {p0}, LaY/K;->b()Lax/aS;

    move-result-object v0

    invoke-virtual {v0}, Lax/aS;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    const/16 v0, 0x12d

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, LaY/K;->a(IILjava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method public E()I
    .registers 3

    iget-object v0, p0, LaY/K;->D:LaX/g;

    invoke-virtual {v0}, LaX/g;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    iget-object v0, p0, LaY/K;->D:LaX/g;

    invoke-virtual {v0}, LaX/g;->c()I

    move-result v0

    :goto_f
    return v0

    :cond_10
    invoke-super {p0}, LaY/m;->E()I

    move-result v0

    goto :goto_f
.end method

.method public H()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public J()V
    .registers 1

    invoke-direct {p0}, LaY/K;->bZ()V

    invoke-super {p0}, LaY/m;->J()V

    return-void
.end method

.method public M()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public N()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected O()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, LaY/K;->N:Lax/aS;

    if-eqz v2, :cond_17

    invoke-super {p0}, LaY/m;->O()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, LaY/K;->N:Lax/aS;

    invoke-virtual {v2}, Lax/aS;->g()I

    move-result v2

    if-le v2, v0, :cond_15

    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14

    :cond_17
    move v0, v1

    goto :goto_14
.end method

.method protected T()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x1f1

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected U()I
    .registers 2

    const/16 v0, 0x11

    return v0
.end method

.method protected X()Z
    .registers 3

    invoke-super {p0}, LaY/m;->X()Z

    move-result v0

    iget-boolean v1, p0, LaY/K;->Y:Z

    or-int/2addr v0, v1

    const/4 v1, 0x0

    iput-boolean v1, p0, LaY/K;->Y:Z

    return v0
.end method

.method public Y()V
    .registers 2

    invoke-super {p0}, LaY/m;->Y()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LaY/K;->O:Z

    return-void
.end method

.method public Z()V
    .registers 2

    invoke-super {p0}, LaY/m;->Z()V

    iget-object v0, p0, LaY/K;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->ae()LaY/ac;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0, p0}, LaY/ac;->a(LaY/i;)V

    :cond_12
    return-void
.end method

.method public a(LaJ/B;Ljava/lang/Long;Lam/b;ZLax/aZ;)V
    .registers 9

    invoke-virtual {p0}, LaY/K;->b()Lax/aS;

    move-result-object v0

    invoke-virtual {v0}, Lax/aS;->d()Lax/aP;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    if-eqz p1, :cond_26

    invoke-virtual {v0, p1}, Lax/aP;->a(LaJ/g;)V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lax/aP;->a(J)V

    if-nez p2, :cond_26

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lax/aP;->c(J)V

    :cond_26
    if-eqz p2, :cond_2f

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lax/aP;->c(J)V

    :cond_2f
    invoke-virtual {v0}, Lax/aP;->w()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaY/K;->i(I)V

    if-eqz p1, :cond_3b

    const/4 v0, 0x1

    iput-boolean v0, p0, LaY/K;->O:Z

    :cond_3b
    invoke-virtual {p0}, LaY/K;->ae()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, LaY/K;->bZ()V

    invoke-virtual {p0}, LaY/K;->k()V

    goto :goto_a
.end method

.method public a(Lax/aP;)V
    .registers 6

    const/4 v3, -0x1

    if-nez p1, :cond_9

    iget-object v0, p0, LaY/K;->f:Lcom/google/googlenav/E;

    invoke-interface {v0, v3}, Lcom/google/googlenav/E;->a(I)V

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p1}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, LaY/K;->b()Lax/aS;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lax/aS;->a(J)I

    move-result v0

    if-eq v0, v3, :cond_8

    iget-object v1, p0, LaY/K;->f:Lcom/google/googlenav/E;

    invoke-interface {v1, v0}, Lcom/google/googlenav/E;->a(I)V

    goto :goto_8
.end method

.method protected a(Lcom/google/googlenav/E;)V
    .registers 3

    check-cast p1, Lcom/google/googlenav/aV;

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->u()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->p()V

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0, p1}, LaY/K;->c(Lcom/google/googlenav/aV;)V

    iput-object p1, p0, LaY/K;->f:Lcom/google/googlenav/E;

    invoke-virtual {p0}, LaY/K;->bK()V

    invoke-virtual {p0}, LaY/K;->az()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, LaY/K;->h()V

    :cond_21
    invoke-static {}, Lax/aO;->b()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, LaY/K;->G:LaY/S;

    invoke-virtual {v0}, LaY/S;->a()V

    goto :goto_f
.end method

.method public a(Lcom/google/googlenav/O;Lcom/google/googlenav/D;I)V
    .registers 9

    const-wide/16 v2, 0x0

    invoke-super {p0, p1, p2, p3}, LaY/m;->a(Lcom/google/googlenav/O;Lcom/google/googlenav/D;I)V

    invoke-static {p3}, Lcom/google/googlenav/N;->a(I)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, LaY/K;->b()Lax/aS;

    move-result-object v0

    invoke-virtual {v0}, Lax/aS;->d()Lax/aP;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_1d
    invoke-virtual {p0}, LaY/K;->bH()Lax/aP;

    move-result-object v4

    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_2b
    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/O;->b(Ljava/lang/String;)Lcom/google/googlenav/O;

    :cond_33
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/O;->c(Ljava/lang/String;)Lcom/google/googlenav/O;

    return-void

    :cond_38
    move-wide v0, v2

    goto :goto_1d
.end method

.method public a(ZLax/aZ;)V
    .registers 3

    invoke-direct {p0}, LaY/K;->ce()V

    return-void
.end method

.method public a(ZLcom/google/googlenav/aV;)V
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, LaY/K;->as()Lcom/google/googlenav/E;

    move-result-object v0

    instance-of v3, v0, Lcom/google/googlenav/aV;

    if-eqz v3, :cond_19

    check-cast v0, Lcom/google/googlenav/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->av()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/google/googlenav/aV;->av()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_19

    :goto_18
    return-void

    :cond_19
    invoke-virtual {p0, p2}, LaY/K;->b(Lcom/google/googlenav/E;)V

    if-eqz p1, :cond_46

    iget-boolean v0, p0, LaY/K;->O:Z

    if-nez v0, :cond_28

    invoke-virtual {p0}, LaY/K;->ae()Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_28
    move v0, v1

    :goto_29
    if-eqz v0, :cond_52

    invoke-virtual {p2}, Lcom/google/googlenav/aV;->c()I

    move-result v0

    if-ltz v0, :cond_48

    invoke-virtual {p2}, Lcom/google/googlenav/aV;->c()I

    move-result v0

    invoke-virtual {p0, v0}, LaY/K;->b(I)V

    :cond_38
    :goto_38
    invoke-virtual {p0}, LaY/K;->ao()Z

    invoke-direct {p0, v1}, LaY/K;->k(Z)V

    :cond_3e
    :goto_3e
    const/16 v0, 0x144

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, LaY/K;->a(IILjava/lang/Object;)Z

    goto :goto_18

    :cond_46
    move v0, v2

    goto :goto_29

    :cond_48
    invoke-virtual {p2}, Lcom/google/googlenav/aV;->f()I

    move-result v0

    if-lez v0, :cond_38

    invoke-virtual {p0, v2}, LaY/K;->b(I)V

    goto :goto_38

    :cond_52
    invoke-virtual {p0}, LaY/K;->ag()Z

    move-result v0

    if-nez v0, :cond_5e

    invoke-virtual {p0}, LaY/K;->af()Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_5e
    invoke-virtual {p2}, Lcom/google/googlenav/aV;->c()I

    move-result v0

    invoke-virtual {p0, v0}, LaY/K;->b(I)V

    invoke-virtual {p0}, LaY/K;->ao()Z

    goto :goto_3e
.end method

.method public a([Lam/b;)V
    .registers 9

    const/4 v6, 0x1

    if-nez p1, :cond_4

    :goto_3
    return-void

    :cond_4
    const/4 v0, 0x0

    :goto_5
    array-length v1, p1

    if-ge v0, v1, :cond_35

    aget-object v1, p1, v0

    invoke-static {v1, v6}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v2

    if-eqz v2, :cond_32

    invoke-static {v2, v6}, Lam/g;->f(Lam/b;I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_32

    iget-object v4, p0, LaY/K;->N:Lax/aS;

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4, v5}, Lax/aS;->a(Ljava/lang/Long;)Lax/aP;

    move-result-object v2

    if-eqz v2, :cond_32

    invoke-virtual {v2, v1}, Lax/aP;->a(Lam/b;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, LaY/K;->Z:LaX/h;

    invoke-virtual {v1}, LaX/h;->a()V

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_35
    invoke-virtual {p0}, LaY/K;->bK()V

    goto :goto_3
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, LaY/K;->T:Lax/x;

    invoke-virtual {v0, p1, p2, p3}, Lax/x;->a(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1, p2, p3}, LaY/m;->a(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public a(Laq/a;)Z
    .registers 7

    const/4 v4, 0x0

    const/4 v0, 0x1

    sget-object v1, Lcom/google/googlenav/ui/n;->s:Laq/a;

    invoke-virtual {v1, p1}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0x12d

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, v4}, LaY/K;->a(IILjava/lang/Object;)Z

    :goto_10
    return v0

    :cond_11
    sget-object v1, Lcom/google/googlenav/ui/n;->t:Laq/a;

    invoke-virtual {v1, p1}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, LaY/K;->F:Lax/r;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v4, v2, v3}, Lax/r;->a(Lcom/google/googlenav/aX;J)V

    goto :goto_10

    :cond_21
    invoke-super {p0, p1}, LaY/m;->a(Laq/a;)Z

    move-result v0

    goto :goto_10
.end method

.method public a(Lbb/E;)Z
    .registers 3

    iget-object v0, p0, LaY/K;->f:Lcom/google/googlenav/E;

    invoke-static {v0}, Lax/aA;->a(Lcom/google/googlenav/E;)V

    invoke-super {p0, p1}, LaY/m;->a(Lbb/E;)Z

    move-result v0

    return v0
.end method

.method protected a(Ljava/io/DataInput;)Z
    .registers 7

    new-instance v0, Lcom/google/googlenav/aV;

    invoke-direct {v0}, Lcom/google/googlenav/aV;-><init>()V

    iput-object v0, p0, LaY/K;->f:Lcom/google/googlenav/E;

    iget-object v1, p0, LaY/K;->L:LaY/a;

    invoke-virtual {p0}, LaY/K;->ax()I

    move-result v2

    iget-object v3, p0, LaY/K;->M:Lcom/google/googlenav/android/ac;

    new-instance v4, LaY/M;

    invoke-direct {v4, p0, v0}, LaY/M;-><init>(LaY/K;Lcom/google/googlenav/aV;)V

    invoke-virtual {v1, v2, v3, v4}, LaY/a;->a(ILcom/google/googlenav/android/ac;LaY/f;)V

    invoke-direct {p0}, LaY/K;->bU()V

    const/4 v0, 0x1

    return v0
.end method

.method public aD()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public aF()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public aH()I
    .registers 2

    invoke-virtual {p0}, LaY/K;->ag()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0e0008

    :goto_9
    return v0

    :cond_a
    invoke-super {p0}, LaY/m;->aH()I

    move-result v0

    goto :goto_9
.end method

.method public aI()I
    .registers 2

    invoke-virtual {p0}, LaY/K;->ag()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f020229

    :goto_9
    return v0

    :cond_a
    invoke-super {p0}, LaY/m;->aI()I

    move-result v0

    goto :goto_9
.end method

.method public aJ()Ljava/lang/CharSequence;
    .registers 2

    invoke-virtual {p0}, LaY/K;->ag()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x187

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-super {p0}, LaY/m;->aJ()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c
.end method

.method public aL()Ljava/lang/CharSequence;
    .registers 2

    const/16 v0, 0x149

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x214

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aN()Lah/f;
    .registers 3

    iget-object v0, p0, LaY/K;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->p()Lah/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bw;->af:C

    invoke-interface {v0, v1}, Lah/g;->e(C)Lah/f;

    move-result-object v0

    return-object v0
.end method

.method public aO()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected aR()V
    .registers 6

    invoke-super {p0}, LaY/m;->aR()V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v1

    invoke-static {p0}, LaY/Y;->k(LaY/i;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, LaY/K;->f:Lcom/google/googlenav/E;

    check-cast v0, Lcom/google/googlenav/aV;

    if-eqz v0, :cond_2d

    :try_start_15
    invoke-direct {p0}, LaY/K;->bV()Lam/b;

    move-result-object v0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v4, v0}, Lam/g;->a(Ljava/io/DataOutput;Lam/b;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lak/m;->b([BLjava/lang/String;)I
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2d} :catch_2e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_2d} :catch_38

    :cond_2d
    :goto_2d
    return-void

    :catch_2e
    move-exception v0

    const-string v3, "FRIENDS_LAYER-FL Error saving Friends"

    invoke-static {v3, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lak/m;->b(Ljava/lang/String;)Z

    goto :goto_2d

    :catch_38
    move-exception v0

    const-string v3, "FRIENDS_LAYER-FL OOME saving Friends"

    invoke-static {v3, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lak/m;->b(Ljava/lang/String;)Z

    goto :goto_2d
.end method

.method protected aV()Z
    .registers 5

    iget-object v0, p0, LaY/K;->E:Lax/bD;

    invoke-virtual {v0, p0}, Lax/bD;->a(Lax/aE;)V

    iget-object v0, p0, LaY/K;->E:Lax/bD;

    invoke-virtual {v0}, Lax/bD;->c()Lax/bF;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v1, p0, LaY/K;->G:LaY/S;

    iget-object v2, v0, Lax/bF;->a:LaJ/B;

    iget v3, v0, Lax/bF;->c:I

    iget-object v0, v0, Lax/bF;->d:Lt/y;

    invoke-virtual {v1, v2, v3, v0}, LaY/S;->a(LaJ/B;ILt/y;)V

    :cond_18
    iget-object v0, p0, LaY/K;->E:Lax/bD;

    iget-object v1, p0, LaY/K;->G:LaY/S;

    invoke-virtual {v0, v1}, Lax/bD;->a(LaE/m;)V

    const/4 v0, 0x1

    return v0
.end method

.method public aW()V
    .registers 3

    invoke-static {}, LaY/bu;->f()V

    iget-object v0, p0, LaY/K;->H:Lay/a;

    invoke-virtual {v0, p0}, Lay/a;->b(Lay/q;)V

    iget-object v0, p0, LaY/K;->E:Lax/bD;

    iget-object v1, p0, LaY/K;->G:LaY/S;

    invoke-virtual {v0, v1}, Lax/bD;->b(LaE/m;)V

    invoke-static {}, Lax/aP;->A()V

    iget-object v0, p0, LaY/K;->N:Lax/aS;

    invoke-virtual {v0}, Lax/aS;->h()V

    invoke-super {p0}, LaY/m;->aW()V

    return-void
.end method

.method public aX()V
    .registers 5

    invoke-super {p0}, LaY/m;->aX()V

    iget-object v0, p0, LaY/K;->F:Lax/r;

    const/4 v1, 0x0

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Lax/r;->a(Lcom/google/googlenav/aX;J)V

    return-void
.end method

.method public aY()V
    .registers 3

    invoke-super {p0}, LaY/m;->aY()V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->af()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, LaY/K;->i:Lcom/google/googlenav/ui/af;

    iget-object v1, p0, LaY/K;->K:Lcom/google/googlenav/ui/at;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/af;->b(Lcom/google/googlenav/ui/ag;)V

    :cond_14
    invoke-static {}, Lax/r;->d()Lax/q;

    move-result-object v0

    invoke-virtual {v0}, Lax/q;->c()V

    return-void
.end method

.method public aZ()V
    .registers 2

    invoke-super {p0}, LaY/m;->aZ()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LaY/K;->O:Z

    iget-object v0, p0, LaY/K;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0, p0}, LaY/Y;->l(LaY/i;)V

    invoke-static {}, Lax/r;->d()Lax/q;

    move-result-object v0

    invoke-virtual {v0}, Lax/q;->d()V

    return-void
.end method

.method public aa_()V
    .registers 2

    iget-object v0, p0, LaY/K;->r:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_11

    iget-object v0, p0, LaY/K;->r:Lcom/google/googlenav/ui/view/android/bs;

    instance-of v0, v0, Lay/q;

    if-eqz v0, :cond_11

    iget-object v0, p0, LaY/K;->r:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lay/q;

    invoke-interface {v0}, Lay/q;->aa_()V

    :cond_11
    return-void
.end method

.method public al()[Laq/a;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public am()V
    .registers 2

    invoke-super {p0}, LaY/m;->am()V

    iget-object v0, p0, LaY/K;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0, p0}, LaY/Y;->l(LaY/i;)V

    return-void
.end method

.method public ao()Z
    .registers 2

    invoke-super {p0}, LaY/m;->ao()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, LaY/K;->cc()V

    :cond_9
    return v0
.end method

.method protected ar()V
    .registers 3

    new-instance v0, Lcom/google/googlenav/ui/view/android/bw;

    iget-object v1, p0, LaY/K;->S:Lax/S;

    invoke-virtual {v1}, Lax/S;->c()Lbb/o;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/bw;-><init>(Lcom/google/googlenav/ui/p;Lbb/f;)V

    iput-object v0, p0, LaY/K;->r:Lcom/google/googlenav/ui/view/android/bs;

    return-void
.end method

.method public av()Z
    .registers 2

    invoke-virtual {p0}, LaY/K;->ae()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0}, LaY/m;->av()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public aw()Z
    .registers 2

    invoke-direct {p0}, LaY/K;->cf()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public ax()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public b(Lcom/google/googlenav/D;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public b()Lax/aS;
    .registers 2

    iget-object v0, p0, LaY/K;->N:Lax/aS;

    return-object v0
.end method

.method protected b(Lcom/google/googlenav/ui/C;)V
    .registers 9

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->af()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-direct {p0}, LaY/K;->cf()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, LaY/K;->bH()Lax/aP;

    move-result-object v4

    invoke-virtual {v4}, Lax/aP;->u()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, LaY/K;->c:LaJ/p;

    invoke-virtual {v4}, Lax/aP;->d()LaJ/B;

    move-result-object v2

    iget-object v3, p0, LaY/K;->C:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v3}, LaJ/p;->a(LaJ/B;Landroid/graphics/Point;)V

    iget-object v1, p0, LaY/K;->c:LaJ/p;

    invoke-virtual {v1, v0}, LaJ/p;->c(I)I

    move-result v3

    iget-object v0, p0, LaY/K;->C:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v3, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, LaY/K;->C:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v3, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, LaY/K;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->b()Lah/e;

    move-result-object v1

    iget-object v2, p0, LaY/K;->C:Landroid/graphics/Point;

    iget-object v5, p0, LaY/K;->c:LaJ/p;

    invoke-virtual {v5}, LaJ/p;->n()Z

    move-result v5

    invoke-virtual {v4, v5}, Lax/aP;->e(Z)I

    move-result v5

    iget-object v6, p0, LaY/K;->c:LaJ/p;

    invoke-virtual {v6}, LaJ/p;->n()Z

    move-result v6

    invoke-virtual {v4, v6}, Lax/aP;->f(Z)I

    move-result v6

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/bw;->a(Lah/e;Landroid/graphics/Point;IIII)V

    goto :goto_a
.end method

.method public b(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, LaY/K;->f:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->f()I

    move-result v1

    :goto_7
    if-ge v0, v1, :cond_2e

    invoke-virtual {p0}, LaY/K;->b()Lax/aS;

    move-result-object v2

    invoke-virtual {v2, v0}, Lax/aS;->a(I)Lax/aP;

    move-result-object v2

    invoke-virtual {v2}, Lax/aP;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {v2}, Lax/aP;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    :cond_29
    iget-object v1, p0, LaY/K;->f:Lcom/google/googlenav/E;

    invoke-interface {v1, v0}, Lcom/google/googlenav/E;->a(I)V

    :cond_2e
    invoke-virtual {p0}, LaY/K;->bN()V

    return-void

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public b(ZLax/aZ;)V
    .registers 3

    invoke-direct {p0}, LaY/K;->ce()V

    return-void
.end method

.method public b(Lax/aP;)Z
    .registers 4

    iget-object v0, p0, LaY/K;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->af()Lcom/google/googlenav/ay;

    move-result-object v0

    invoke-virtual {p1}, Lax/aP;->v()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ay;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bH()Lax/aP;
    .registers 2

    iget-object v0, p0, LaY/K;->f:Lcom/google/googlenav/E;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, LaY/K;->ah()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-direct {p0}, LaY/K;->bW()Lax/aP;

    move-result-object v0

    goto :goto_b
.end method

.method public bI()V
    .registers 3

    invoke-static {}, Lax/aA;->l()V

    invoke-virtual {p0}, LaY/K;->J()V

    invoke-static {}, Lcom/google/googlenav/android/U;->a()Lcom/google/googlenav/android/U;

    move-result-object v0

    const-class v1, Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/U;->a(Ljava/lang/Class;)V

    return-void
.end method

.method public bJ()V
    .registers 2

    invoke-virtual {p0}, LaY/K;->ae()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, LaY/K;->k()V

    :cond_9
    return-void
.end method

.method public bK()V
    .registers 3

    invoke-virtual {p0}, LaY/K;->ae()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0}, LaY/K;->bZ()V

    iget-object v0, p0, LaY/K;->S:Lax/S;

    invoke-virtual {v0}, Lax/S;->c()Lbb/o;

    :cond_e
    :goto_e
    iget-object v0, p0, LaY/K;->r:Lcom/google/googlenav/ui/view/android/bs;

    instance-of v0, v0, Lcom/google/googlenav/ui/view/android/ay;

    if-eqz v0, :cond_1b

    iget-object v0, p0, LaY/K;->r:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/view/android/ay;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ay;->v()V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    invoke-virtual {p0}, LaY/K;->af()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, LaY/K;->bH()Lax/aP;

    move-result-object v0

    if-nez v0, :cond_2c

    invoke-virtual {p0}, LaY/K;->k()V

    goto :goto_1b

    :cond_2c
    invoke-virtual {v0}, Lax/aP;->b()Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, LaY/K;->S:Lax/S;

    invoke-virtual {v1, v0}, Lax/S;->a(Lax/aP;)Lbb/o;

    goto :goto_e

    :cond_38
    iget-object v1, p0, LaY/K;->S:Lax/S;

    invoke-virtual {v1, v0}, Lax/S;->b(Lax/aP;)Lbb/o;

    goto :goto_e
.end method

.method public bL()V
    .registers 2

    invoke-super {p0}, LaY/m;->J()V

    iget v0, p0, LaY/K;->w:I

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaY/K;->h(I)V

    :cond_b
    return-void
.end method

.method public bM()J
    .registers 6

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, LaY/K;->bT()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_17

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    sub-long/2addr v0, v2

    :cond_17
    return-wide v0
.end method

.method public bN()V
    .registers 2

    invoke-virtual {p0}, LaY/K;->bH()Lax/aP;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, v0}, LaY/K;->c(Lax/aP;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LaY/K;->k(Z)V

    invoke-static {}, Lax/aA;->a()V

    :cond_10
    invoke-virtual {p0}, LaY/K;->m()V

    return-void
.end method

.method public bO()V
    .registers 3

    invoke-virtual {p0}, LaY/K;->bH()Lax/aP;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0, v0}, LaY/K;->c(Lax/aP;)V

    :cond_13
    const/4 v0, 0x0

    invoke-direct {p0, v0}, LaY/K;->k(Z)V

    iget-object v0, p0, LaY/K;->f:Lcom/google/googlenav/E;

    invoke-static {v0}, Lax/aA;->a(Lcom/google/googlenav/E;)V

    :cond_1c
    invoke-virtual {p0}, LaY/K;->l()V

    return-void
.end method

.method public bP()V
    .registers 2

    iget-object v0, p0, LaY/K;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->f()I

    move-result v0

    if-lez v0, :cond_15

    invoke-static {}, Lax/aO;->b()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaY/K;->b(I)V

    invoke-virtual {p0}, LaY/K;->ao()Z

    :cond_15
    :goto_15
    return-void

    :cond_16
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, LaY/K;->b(I)V

    goto :goto_15
.end method

.method bR()Lax/S;
    .registers 2

    iget-object v0, p0, LaY/K;->S:Lax/S;

    return-object v0
.end method

.method public bS()LaY/aj;
    .registers 2

    iget-object v0, p0, LaY/K;->V:LaY/aj;

    return-object v0
.end method

.method public bT()J
    .registers 3

    iget-object v0, p0, LaY/K;->f:Lcom/google/googlenav/E;

    check-cast v0, Lcom/google/googlenav/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->av()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Lcom/google/googlenav/D;)I
    .registers 4

    invoke-interface {p1}, Lcom/google/googlenav/D;->c()B

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-static {}, LaY/K;->bQ()I

    move-result v0

    invoke-virtual {p0, p1}, LaY/K;->f(Lcom/google/googlenav/D;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_7
.end method

.method public c()LaX/a;
    .registers 2

    iget-object v0, p0, LaY/K;->W:LaX/a;

    return-object v0
.end method

.method protected c(Lax/aP;)V
    .registers 3

    invoke-virtual {p1}, Lax/aP;->z()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lax/aP;->B()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LaY/K;->Y:Z

    :cond_c
    return-void
.end method

.method public c(Lcom/google/googlenav/aV;)V
    .registers 16

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->f()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p0}, LaY/K;->b()Lax/aS;

    move-result-object v0

    invoke-virtual {v0}, Lax/aS;->c()Z

    move-result v6

    invoke-direct {p0}, LaY/K;->bZ()V

    const-wide/16 v0, -0x1

    if-eqz v6, :cond_63

    invoke-direct {p0}, LaY/K;->bW()Lax/aP;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_26
    iget-object v2, p0, LaY/K;->f:Lcom/google/googlenav/E;

    invoke-interface {v2}, Lcom/google/googlenav/E;->d()B

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/googlenav/aV;->a(B)V

    move-wide v1, v0

    :goto_30
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    if-eqz v6, :cond_71

    const/4 v0, 0x0

    :goto_38
    iget-object v3, p0, LaY/K;->f:Lcom/google/googlenav/E;

    invoke-interface {v3}, Lcom/google/googlenav/E;->f()I

    move-result v3

    if-ge v0, v3, :cond_71

    new-instance v3, Ljava/lang/Long;

    invoke-virtual {p0}, LaY/K;->b()Lax/aS;

    move-result-object v4

    invoke-virtual {v4, v0}, Lax/aS;->a(I)Lax/aP;

    move-result-object v4

    invoke-virtual {v4}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0}, LaY/K;->b()Lax/aS;

    move-result-object v4

    invoke-virtual {v4, v0}, Lax/aS;->a(I)Lax/aP;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_63
    if-nez v6, :cond_6f

    invoke-virtual {p0}, LaY/K;->ae()Z

    move-result v2

    if-eqz v2, :cond_6f

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/google/googlenav/aV;->a(B)V

    :cond_6f
    move-wide v1, v0

    goto :goto_30

    :cond_71
    new-instance v0, Lax/aS;

    invoke-direct {v0, p1}, Lax/aS;-><init>(Lcom/google/googlenav/E;)V

    iput-object v0, p0, LaY/K;->N:Lax/aS;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, LaY/K;->N:Lax/aS;

    invoke-virtual {v5}, Lax/aS;->b()I

    move-result v8

    move v5, v0

    :goto_82
    if-ge v5, v8, :cond_133

    iget-object v0, p0, LaY/K;->N:Lax/aS;

    invoke-virtual {v0, v5}, Lax/aS;->a(I)Lax/aP;

    move-result-object v9

    invoke-virtual {v9}, Lax/aP;->b()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-static {}, Lax/aO;->b()Z

    move-result v0

    if-nez v0, :cond_9b

    iget-object v0, p0, LaY/K;->G:LaY/S;

    invoke-virtual {v0, v9}, LaY/S;->a(Lax/aP;)Z

    :cond_9b
    invoke-virtual {v9}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/aP;

    if-eqz v0, :cond_193

    invoke-virtual {v9}, Lax/aP;->d()LaJ/B;

    move-result-object v10

    invoke-virtual {v9}, Lax/aP;->u()J

    move-result-wide v11

    invoke-virtual {v0}, Lax/aP;->d()LaJ/B;

    move-result-object v13

    invoke-static {v10, v11, v12, v13}, Lax/bD;->a(LaJ/B;JLaJ/B;)Z

    move-result v10

    invoke-virtual {v9, v10}, Lax/aP;->d(Z)V

    invoke-virtual {v9}, Lax/aP;->K()Z

    move-result v10

    if-eqz v10, :cond_c1

    const/4 v3, 0x1

    :cond_c1
    invoke-virtual {v0}, Lax/aP;->K()Z

    move-result v10

    if-eqz v10, :cond_d7

    invoke-virtual {v9}, Lax/aP;->r()J

    move-result-wide v10

    invoke-virtual {v0}, Lax/aP;->r()J

    move-result-wide v12

    cmp-long v0, v10, v12

    if-nez v0, :cond_106

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lax/aP;->h(Z)V

    :cond_d7
    :goto_d7
    if-nez v4, :cond_193

    invoke-virtual {v9}, Lax/aP;->b()Z

    move-result v0

    if-nez v0, :cond_193

    invoke-virtual {v9}, Lax/aP;->n()Z

    move-result v0

    if-nez v0, :cond_193

    const/4 v0, 0x1

    :goto_e6
    if-nez v6, :cond_10c

    invoke-virtual {v9}, Lax/aP;->b()Z

    move-result v4

    if-eqz v4, :cond_10c

    const-wide/16 v10, -0x1

    cmp-long v4, v1, v10

    if-nez v4, :cond_10c

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->aw()Z

    move-result v4

    if-nez v4, :cond_10c

    invoke-virtual {p1, v5}, Lcom/google/googlenav/aV;->a(I)V

    :cond_fd
    :goto_fd
    invoke-virtual {v9}, Lax/aP;->B()V

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v0

    goto/16 :goto_82

    :cond_106
    iget-object v0, p0, LaY/K;->Z:LaX/h;

    invoke-virtual {v0}, LaX/h;->a()V

    goto :goto_d7

    :cond_10c
    invoke-virtual {v9}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v4, v1, v10

    if-nez v4, :cond_fd

    invoke-virtual {p1, v5}, Lcom/google/googlenav/aV;->a(I)V

    if-eqz v6, :cond_fd

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->d()B

    move-result v4

    iget-object v10, p0, LaY/K;->f:Lcom/google/googlenav/E;

    invoke-interface {v10}, Lcom/google/googlenav/E;->d()B

    move-result v10

    if-eq v4, v10, :cond_fd

    iget-object v4, p0, LaY/K;->f:Lcom/google/googlenav/E;

    invoke-interface {v4}, Lcom/google/googlenav/E;->d()B

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/googlenav/aV;->a(B)V

    goto :goto_fd

    :cond_133
    if-eqz v3, :cond_141

    iget-object v0, p0, LaY/K;->Z:LaX/h;

    invoke-virtual {v0}, LaX/h;->b()V

    invoke-virtual {p0}, LaY/K;->bS()LaY/aj;

    move-result-object v0

    invoke-virtual {v0}, LaY/aj;->a()V

    :cond_141
    iget-object v0, p0, LaY/K;->N:Lax/aS;

    invoke-virtual {v0}, Lax/aS;->a()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    iget-object v2, p0, LaY/K;->N:Lax/aS;

    invoke-virtual {v2}, Lax/aS;->b()I

    move-result v2

    :goto_152
    if-ge v0, v2, :cond_16f

    invoke-virtual {p0}, LaY/K;->b()Lax/aS;

    move-result-object v3

    invoke-virtual {v3, v0}, Lax/aS;->a(I)Lax/aP;

    move-result-object v3

    new-instance v4, Lay/o;

    invoke-virtual {v3}, Lax/aP;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lay/o;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v1, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_152

    :cond_16f
    iget-object v0, p0, LaY/K;->H:Lay/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lay/a;->a(Ljava/util/Vector;Lay/q;)Z

    new-instance v0, LaX/i;

    iget-object v1, p0, LaY/K;->H:Lay/a;

    iget-object v2, p0, LaY/K;->N:Lax/aS;

    sget v3, Lcom/google/googlenav/ui/bw;->bt:I

    invoke-direct {v0, v1, v2, v3}, LaX/i;-><init>(Lay/a;Lax/aS;I)V

    iput-object v0, p0, LaY/K;->I:LaX/i;

    new-instance v0, LaX/i;

    iget-object v1, p0, LaY/K;->H:Lay/a;

    iget-object v2, p0, LaY/K;->N:Lax/aS;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, LaX/i;-><init>(Lay/a;Lax/aS;I)V

    iput-object v0, p0, LaY/K;->J:LaX/i;

    invoke-direct {p0}, LaY/K;->cb()V

    goto/16 :goto_8

    :cond_193
    move v0, v4

    goto/16 :goto_e6
.end method

.method protected c(Lcom/google/googlenav/ui/C;)V
    .registers 5

    iget-object v0, p0, LaY/K;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->e()Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {v0}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v1

    invoke-virtual {p0}, LaY/K;->aj()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_a

    invoke-virtual {p0, p1, v0}, LaY/K;->b(Lcom/google/googlenav/ui/C;Lcom/google/googlenav/D;)V

    goto :goto_a
.end method

.method public d(Lcom/google/googlenav/ui/C;)V
    .registers 11

    const/16 v1, 0xe

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->b()Lah/e;

    move-result-object v4

    iget-object v0, p0, LaY/K;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->d(B)I

    move-result v2

    iget-object v0, p0, LaY/K;->a:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->c(B)I

    move-result v3

    invoke-virtual {p0}, LaY/K;->b()Lax/aS;

    move-result-object v0

    invoke-virtual {v0}, Lax/aS;->j()Laf/h;

    move-result-object v7

    const/4 v0, 0x0

    invoke-virtual {v7}, Laf/h;->b()I

    move-result v8

    move v6, v0

    :goto_20
    if-ge v6, v8, :cond_36

    invoke-virtual {v7, v6}, Laf/h;->a(I)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, LaY/K;->N:Lax/aS;

    invoke-virtual {v1, v0}, Lax/aS;->a(I)Lax/aP;

    move-result-object v1

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, LaY/K;->a(Lax/aP;IILah/e;Lcom/google/googlenav/ui/C;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_20

    :cond_36
    invoke-virtual {p0}, LaY/K;->bH()Lax/aP;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, LaY/K;->bH()Lax/aP;

    move-result-object v1

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, LaY/K;->a(Lax/aP;IILah/e;Lcom/google/googlenav/ui/C;)V

    :cond_45
    return-void
.end method

.method public d()[Lcom/google/googlenav/ui/aR;
    .registers 2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->af()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, LaY/K;->az()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, LaY/K;->ag()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, LaY/K;->aw()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, LaY/K;->Q:[Lcom/google/googlenav/ui/aR;

    iput-object v0, p0, LaY/K;->R:[Lcom/google/googlenav/ui/aR;

    :goto_20
    iget-object v0, p0, LaY/K;->R:[Lcom/google/googlenav/ui/aR;

    :goto_22
    return-object v0

    :cond_23
    iget-object v0, p0, LaY/K;->P:[Lcom/google/googlenav/ui/aR;

    iput-object v0, p0, LaY/K;->R:[Lcom/google/googlenav/ui/aR;

    goto :goto_20

    :cond_28
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public e()LaX/i;
    .registers 2

    iget-object v0, p0, LaY/K;->I:LaX/i;

    return-object v0
.end method

.method public e(Laq/b;)Z
    .registers 12

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/16 v9, 0x34

    const/4 v2, 0x1

    iget-object v0, p0, LaY/K;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v4

    invoke-virtual {p1}, Laq/b;->e()C

    move-result v5

    invoke-virtual {p0}, LaY/K;->ae()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    :goto_15
    return v2

    :cond_16
    if-eq v5, v9, :cond_1e

    const/16 v0, 0x36

    if-eq v5, v0, :cond_1e

    move v2, v3

    goto :goto_15

    :cond_1e
    if-ne v5, v9, :cond_31

    const-string v0, "pf"

    :goto_22
    invoke-static {v0}, Lax/aA;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, LaY/K;->ah()Z

    move-result v0

    if-eqz v0, :cond_34

    if-eq v4, v1, :cond_34

    invoke-virtual {p0, v4}, LaY/K;->i(I)V

    goto :goto_15

    :cond_31
    const-string v0, "nf"

    goto :goto_22

    :cond_34
    invoke-virtual {p0}, LaY/K;->b()Lax/aS;

    move-result-object v0

    invoke-virtual {v0}, Lax/aS;->b()I

    move-result v0

    if-le v0, v2, :cond_73

    invoke-virtual {p0}, LaY/K;->b()Lax/aS;

    move-result-object v0

    invoke-virtual {v0}, Lax/aS;->i()Laf/h;

    move-result-object v6

    int-to-long v7, v4

    invoke-virtual {v6, v7, v8}, Laf/h;->c(J)I

    move-result v7

    if-ltz v7, :cond_15

    if-ne v5, v9, :cond_71

    move v0, v1

    :goto_50
    add-int/2addr v0, v7

    invoke-virtual {v6}, Laf/h;->b()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v6}, Laf/h;->b()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-virtual {v6, v0}, Laf/h;->a(I)J

    move-result-wide v0

    long-to-int v0, v0

    if-eq v0, v4, :cond_73

    invoke-virtual {p0, v0}, LaY/K;->i(I)V

    invoke-virtual {p0}, LaY/K;->af()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, LaY/K;->f:Lcom/google/googlenav/E;

    invoke-static {v0}, Lax/aA;->a(Lcom/google/googlenav/E;)V

    goto :goto_15

    :cond_71
    move v0, v2

    goto :goto_50

    :cond_73
    move v2, v3

    goto :goto_15
.end method

.method protected f()Lba/a;
    .registers 2

    new-instance v0, Lba/e;

    invoke-direct {v0, p0}, Lba/e;-><init>(LaY/i;)V

    return-object v0
.end method

.method protected f(Laq/b;)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Laq/b;->e()C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_42

    invoke-virtual {p0}, LaY/K;->ae()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-direct {p0}, LaY/K;->ca()Lax/aP;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0}, LaY/K;->b()Lax/aS;

    move-result-object v2

    invoke-virtual {v1}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lax/aS;->a(J)I

    move-result v1

    if-ltz v1, :cond_2b

    invoke-virtual {p0, v1}, LaY/K;->b(I)V

    :cond_2b
    invoke-virtual {p0}, LaY/K;->bN()V

    :cond_2e
    :goto_2e
    return v0

    :cond_2f
    invoke-virtual {p0}, LaY/K;->af()Z

    move-result v2

    if-eqz v2, :cond_3b

    iput v1, p0, LaY/K;->w:I

    invoke-virtual {p0}, LaY/K;->bN()V

    goto :goto_2e

    :cond_3b
    invoke-static {}, Lax/aA;->c()V

    invoke-virtual {p0}, LaY/K;->k()V

    goto :goto_2e

    :cond_42
    invoke-direct {p0, p1}, LaY/K;->g(Laq/b;)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {p0, p1}, LaY/K;->d(Laq/b;)Z

    move-result v2

    if-nez v2, :cond_2e

    move v0, v1

    goto :goto_2e
.end method

.method public i()LaX/i;
    .registers 2

    iget-object v0, p0, LaY/K;->J:LaX/i;

    return-object v0
.end method

.method public i(I)V
    .registers 5

    iget-object v0, p0, LaY/K;->D:LaX/g;

    iget-object v1, p0, LaY/K;->N:Lax/aS;

    invoke-virtual {v1, p1}, Lax/aS;->a(I)Lax/aP;

    move-result-object v1

    invoke-virtual {v1}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LaX/g;->a(J)V

    iget-object v0, p0, LaY/K;->D:LaX/g;

    iget-object v1, p0, LaY/K;->S:Lax/S;

    invoke-virtual {v1}, Lax/S;->a()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, LaX/g;->b(I)V

    invoke-virtual {p0, p1}, LaY/K;->b(I)V

    invoke-virtual {p0}, LaY/K;->ao()Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LaY/K;->k(Z)V

    return-void
.end method

.method public i(Z)V
    .registers 5

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    if-eqz p1, :cond_13

    const/4 v1, 0x0

    new-array v1, v1, [B

    const-string v2, "FRIENDS_LAYER_PHOTO_PICKER_STORE"

    invoke-interface {v0, v1, v2}, Lak/m;->b([BLjava/lang/String;)I

    :goto_12
    return-void

    :cond_13
    const-string v1, "FRIENDS_LAYER_PHOTO_PICKER_STORE"

    invoke-interface {v0, v1}, Lak/m;->b(Ljava/lang/String;)Z

    goto :goto_12
.end method

.method public j()LaX/g;
    .registers 2

    iget-object v0, p0, LaY/K;->D:LaX/g;

    return-object v0
.end method

.method public j(Z)V
    .registers 3

    iget-object v0, p0, LaY/K;->S:Lax/S;

    invoke-virtual {v0, p1}, Lax/S;->a(Z)V

    invoke-virtual {p0}, LaY/K;->bK()V

    return-void
.end method

.method protected k()V
    .registers 2

    invoke-super {p0}, LaY/m;->k()V

    invoke-static {}, Lax/r;->d()Lax/q;

    move-result-object v0

    invoke-virtual {v0}, Lax/q;->b()V

    return-void
.end method

.method public l()V
    .registers 3

    invoke-virtual {p0}, LaY/K;->af()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, LaY/K;->D:LaX/g;

    iget-object v1, p0, LaY/K;->f:Lcom/google/googlenav/E;

    invoke-interface {v1}, Lcom/google/googlenav/E;->d()B

    move-result v1

    invoke-virtual {v0, v1}, LaX/g;->a(B)V

    :cond_11
    invoke-super {p0}, LaY/m;->l()V

    return-void
.end method

.method protected m()V
    .registers 3

    invoke-virtual {p0}, LaY/K;->bH()Lax/aP;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lax/aP;->y()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, LaY/K;->f:Lcom/google/googlenav/E;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/google/googlenav/E;->a(I)V

    :cond_12
    :goto_12
    invoke-super {p0}, LaY/m;->m()V

    return-void

    :cond_16
    iget-boolean v0, p0, LaY/K;->O:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LaY/K;->k(Z)V

    goto :goto_12
.end method

.method public o()V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, LaY/K;->bA()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v1, p0, LaY/K;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v1

    invoke-virtual {p0}, LaY/K;->af()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->ak()Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p0, LaY/K;->D:LaX/g;

    invoke-virtual {v2}, LaX/g;->a()B

    move-result v2

    if-eq v2, v0, :cond_42

    :goto_26
    invoke-virtual {p0}, LaY/K;->af()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->ak()Z

    move-result v2

    if-eqz v2, :cond_38

    :cond_36
    if-eqz v0, :cond_44

    :cond_38
    iget-object v0, p0, LaY/K;->D:LaX/g;

    invoke-virtual {v0}, LaX/g;->a()B

    move-result v0

    invoke-virtual {p0, v0}, LaY/K;->a(B)V

    goto :goto_7

    :cond_42
    const/4 v0, 0x0

    goto :goto_26

    :cond_44
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_51

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/x;->d()Lcom/google/googlenav/ui/wizard/y;

    :cond_51
    invoke-super {p0}, LaY/m;->o()V

    goto :goto_7
.end method

.method public r()V
    .registers 2

    invoke-direct {p0}, LaY/K;->bZ()V

    iget-object v0, p0, LaY/K;->S:Lax/S;

    invoke-virtual {v0}, Lax/S;->b()V

    invoke-super {p0}, LaY/m;->r()V

    return-void
.end method

.method protected v()V
    .registers 2

    invoke-virtual {p0}, LaY/K;->ae()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, LaY/K;->D:LaX/g;

    invoke-virtual {v0}, LaX/g;->c()I

    move-result v0

    invoke-direct {p0, v0}, LaY/K;->j(I)V

    :cond_f
    return-void
.end method

.method protected y()V
    .registers 2

    invoke-direct {p0}, LaY/K;->cd()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-super {p0}, LaY/m;->y()V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->af()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, LaY/K;->cc()V

    goto :goto_6
.end method
