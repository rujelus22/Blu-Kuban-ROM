.class public Lcom/google/googlenav/ui/wizard/cA;
.super Lcom/google/googlenav/ui/wizard/z;

# interfaces
.implements Lbb/c;


# instance fields
.field private A:Lbb/d;

.field private B:LaJ/B;

.field private C:LaJ/B;

.field private D:Lam/b;

.field private E:Ljava/util/List;

.field private F:Lcom/google/googlenav/ui/wizard/cR;

.field private G:Z

.field private H:Ljava/lang/String;

.field private I:Z

.field private J:Z

.field private K:Lam/b;

.field private L:Z

.field private M:Z

.field private final N:Lcom/google/googlenav/ay;

.field private final O:Landroid/content/DialogInterface$OnCancelListener;

.field private P:LaE/m;

.field protected a:I

.field protected g:Ljava/lang/String;

.field protected h:B

.field protected final i:LaE/h;

.field protected j:Z

.field protected final k:Landroid/graphics/Point;

.field private l:I

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Z

.field private final v:LaJ/p;

.field private final w:LaJ/u;

.field private final x:Lcom/google/googlenav/L;

.field private final y:Lcom/google/googlenav/ui/at;

.field private z:J


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hM;LaJ/p;LaJ/u;LaE/h;Lcom/google/googlenav/ay;Lcom/google/googlenav/L;Lcom/google/googlenav/ui/at;)V
    .registers 9

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput v0, p0, Lcom/google/googlenav/ui/wizard/cA;->a:I

    iput v0, p0, Lcom/google/googlenav/ui/wizard/cA;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/wizard/cA;->o:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/cA;->p:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->k:Landroid/graphics/Point;

    new-instance v0, Lcom/google/googlenav/ui/wizard/cB;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/cB;-><init>(Lcom/google/googlenav/ui/wizard/cA;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->O:Landroid/content/DialogInterface$OnCancelListener;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cA;->v:LaJ/p;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/cA;->w:LaJ/u;

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/cA;->i:LaE/h;

    iput-object p6, p0, Lcom/google/googlenav/ui/wizard/cA;->x:Lcom/google/googlenav/L;

    iput-object p7, p0, Lcom/google/googlenav/ui/wizard/cA;->y:Lcom/google/googlenav/ui/at;

    iput-object p5, p0, Lcom/google/googlenav/ui/wizard/cA;->N:Lcom/google/googlenav/ay;

    return-void
.end method

.method private D()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->P:LaE/m;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->i:LaE/h;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->P:LaE/m;

    invoke-virtual {v0, v1}, LaE/h;->c(LaE/m;)V

    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->P:LaE/m;

    return-void
.end method

.method private E()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    :cond_9
    new-instance v0, Lcom/google/googlenav/ui/wizard/cW;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/google/googlenav/ui/wizard/cW;-><init>(Lcom/google/googlenav/ui/wizard/cA;Lcom/google/googlenav/ui/p;Lcom/google/googlenav/ui/wizard/cB;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->O:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bs;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    return-void
.end method

.method private F()V
    .registers 3

    new-instance v0, Lcom/google/googlenav/ui/view/android/bj;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cA;->e()Lbb/o;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/bj;-><init>(Lcom/google/googlenav/ui/p;Lbb/o;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->O:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bs;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    return-void
.end method

.method private G()V
    .registers 8

    const/4 v6, 0x0

    const/16 v1, 0x32e

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->h(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->j(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    new-instance v3, Lbb/n;

    invoke-direct {v3, v6, v0}, Lbb/n;-><init>(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;)V

    const/16 v0, 0x40d

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/googlenav/ui/bp;->a(Ljava/util/Vector;Ljava/lang/String;)Lbb/p;

    move-result-object v5

    new-instance v0, Lbb/o;

    const/16 v1, 0x10

    const/16 v2, 0x413

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {v0 .. v6}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;Ljava/util/Vector;Lbb/p;[Laq/a;)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/bj;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/ui/view/android/bj;-><init>(Lcom/google/googlenav/ui/p;Lbb/o;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->O:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bs;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    return-void
.end method

.method private H()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->B:LaJ/B;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->A:Lbb/d;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->A:Lbb/d;

    invoke-interface {v0}, Lbb/d;->c()V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->A:Lbb/d;

    :cond_e
    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    invoke-virtual {v0}, Lbb/e;->b()V

    return-void
.end method

.method private I()V
    .registers 5

    const/4 v3, -0x1

    const/4 v2, 0x3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/cA;->a:I

    packed-switch v0, :pswitch_data_40

    :goto_7
    :pswitch_7
    return-void

    :pswitch_8
    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cA;->J()V

    goto :goto_7

    :pswitch_f
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cA;->H()V

    iget v0, p0, Lcom/google/googlenav/ui/wizard/cA;->l:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cA;->L:Z

    if-eqz v0, :cond_22

    :cond_1b
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cA;->J()V

    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    goto :goto_7

    :cond_22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    iput v2, p0, Lcom/google/googlenav/ui/wizard/cA;->p:I

    goto :goto_7

    :pswitch_29
    iget v0, p0, Lcom/google/googlenav/ui/wizard/cA;->a:I

    iput v0, p0, Lcom/google/googlenav/ui/wizard/cA;->n:I

    iput v3, p0, Lcom/google/googlenav/ui/wizard/cA;->a:I

    iput v2, p0, Lcom/google/googlenav/ui/wizard/cA;->p:I

    goto :goto_7

    :pswitch_32
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    iput v2, p0, Lcom/google/googlenav/ui/wizard/cA;->p:I

    goto :goto_7

    :pswitch_38
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    iput v2, p0, Lcom/google/googlenav/ui/wizard/cA;->p:I

    goto :goto_7

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_8
        :pswitch_f
        :pswitch_7
        :pswitch_29
        :pswitch_7
        :pswitch_f
        :pswitch_38
        :pswitch_7
        :pswitch_32
        :pswitch_38
    .end packed-switch
.end method

.method private J()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlenav/ui/wizard/cA;->p:I

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->F:Lcom/google/googlenav/ui/wizard/cR;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->F:Lcom/google/googlenav/ui/wizard/cR;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/cR;->Q_()V

    :cond_c
    return-void
.end method

.method private K()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->x:Lcom/google/googlenav/L;

    invoke-interface {v0}, Lcom/google/googlenav/L;->f()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->s:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->x:Lcom/google/googlenav/L;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->s:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->b(Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/wizard/db;)LaE/m;
    .registers 3

    new-instance v0, Lcom/google/googlenav/ui/wizard/cE;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/wizard/cE;-><init>(Lcom/google/googlenav/ui/wizard/cA;Lcom/google/googlenav/ui/wizard/db;)V

    return-object v0
.end method

.method private a(Landroid/os/Handler;)Lap/b;
    .registers 5

    new-instance v0, Lap/b;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/cH;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/ui/wizard/cH;-><init>(Lcom/google/googlenav/ui/wizard/cA;Landroid/os/Handler;)V

    invoke-direct {v0, v1, v2}, Lap/b;-><init>(Lap/c;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static a(Lam/b;)Lau/x;
    .registers 4

    invoke-static {p0}, Lcom/google/googlenav/ui/be;->a(Lam/b;)LaJ/B;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/google/googlenav/ui/be;->b(Lam/b;)Lt/y;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lau/x;->a(LaJ/B;Ljava/lang/String;Lt/y;)Lau/x;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/cA;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cA;->E:Ljava/util/List;

    return-object p1
.end method

.method private a(Lau/x;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->F:Lcom/google/googlenav/ui/wizard/cR;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/cR;->P_()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Lau/x;->o()Z

    move-result v0

    if-eqz v0, :cond_38

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->x:Lcom/google/googlenav/L;

    new-instance v1, Lcom/google/googlenav/bc;

    invoke-direct {v1}, Lcom/google/googlenav/bc;-><init>()V

    invoke-virtual {p1}, Lau/x;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/cD;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/cD;-><init>(Lcom/google/googlenav/ui/wizard/cA;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->a(Lcom/google/googlenav/aW;)Lcom/google/googlenav/bc;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->i(Z)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Lcom/google/googlenav/bb;)V

    :goto_37
    return-void

    :cond_38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/wizard/cA;->a(Lau/x;Lcom/google/googlenav/aV;)V

    goto :goto_37
.end method

.method private a(Lau/x;Lcom/google/googlenav/aV;)V
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->v:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->e()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->F:Lcom/google/googlenav/ui/wizard/cR;

    new-instance v2, Ljava/lang/Long;

    int-to-long v3, v0

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    const/4 v0, 0x0

    invoke-interface {v1, p1, v2, v0, p2}, Lcom/google/googlenav/ui/wizard/cR;->a(Lau/x;Ljava/lang/Long;Lam/b;Lcom/google/googlenav/aV;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/C;Z)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->v:LaJ/p;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->B:LaJ/B;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cA;->k:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, LaJ/p;->a(LaJ/B;Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->c:Lcom/google/googlenav/ui/bw;

    iget-byte v1, p0, Lcom/google/googlenav/ui/wizard/cA;->h:B

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/bw;->a(BC)Lcom/google/googlenav/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->k:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cA;->k:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/googlenav/e;->a(Lcom/google/googlenav/e;Lcom/google/googlenav/ui/C;II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->t:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    if-eqz p2, :cond_34

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->A:Lbb/d;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->A:Lbb/d;

    invoke-interface {v0}, Lbb/d;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->A:Lbb/d;

    :cond_34
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/cA;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cA;->I()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/cA;Lam/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/cA;->c(Lam/b;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/cA;Lau/x;Lcom/google/googlenav/aV;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/cA;->a(Lau/x;Lcom/google/googlenav/aV;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/cA;Lcom/google/googlenav/ui/wizard/cZ;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/cA;->b(Lcom/google/googlenav/ui/wizard/cZ;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/wizard/cZ;Lcom/google/googlenav/ui/wizard/db;)V
    .registers 11

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->i:LaE/h;

    invoke-virtual {v0}, LaE/h;->n()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->i:LaE/h;

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/google/googlenav/ui/wizard/db;->a(Z)V

    :cond_12
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x242

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/google/googlenav/ui/wizard/y;

    invoke-direct {v3, v6}, Lcom/google/googlenav/ui/wizard/y;-><init>(I)V

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;JZ)V

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/wizard/cA;->a(Lcom/google/googlenav/ui/wizard/db;)LaE/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->P:LaE/m;

    invoke-direct {p0, v7}, Lcom/google/googlenav/ui/wizard/cA;->a(Landroid/os/Handler;)Lap/b;

    move-result-object v0

    invoke-virtual {v0}, Lap/b;->g()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->i:LaE/h;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->P:LaE/m;

    invoke-virtual {v0, v1}, LaE/h;->a(LaE/m;)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/cA;Lam/b;)Lam/b;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cA;->D:Lam/b;

    return-object p1
.end method

.method private b(Lam/b;)V
    .registers 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->b:Lcom/google/googlenav/ui/wizard/hM;

    sget-object v2, Lcom/google/googlenav/ui/wizard/hh;->b:Lcom/google/googlenav/ui/wizard/hh;

    new-instance v3, Lcom/google/googlenav/ui/wizard/cK;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/wizard/cK;-><init>(Lcom/google/googlenav/ui/wizard/cA;)V

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/googlenav/ui/wizard/hM;->a(Lam/b;Lcom/google/googlenav/ui/wizard/hh;ZLcom/google/googlenav/ui/wizard/hg;)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/cA;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cA;->D()V

    return-void
.end method

.method private b(Lcom/google/googlenav/ui/wizard/cZ;)V
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/cZ;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->g:Ljava/lang/String;

    iget v0, p1, Lcom/google/googlenav/ui/wizard/cZ;->b:I

    iput v0, p0, Lcom/google/googlenav/ui/wizard/cA;->l:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->a(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cA;->j:Z

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/cZ;->a()V

    iget-boolean v0, p1, Lcom/google/googlenav/ui/wizard/cZ;->c:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cA;->m:Z

    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/cZ;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->q:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/cZ;->h:Lcom/google/googlenav/ui/wizard/cR;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->F:Lcom/google/googlenav/ui/wizard/cR;

    iget v0, p1, Lcom/google/googlenav/ui/wizard/cZ;->i:I

    iput v0, p0, Lcom/google/googlenav/ui/wizard/cA;->o:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->r:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/cZ;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->s:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/cZ;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->t:Ljava/lang/String;

    iget-byte v0, p1, Lcom/google/googlenav/ui/wizard/cZ;->l:B

    iput-byte v0, p0, Lcom/google/googlenav/ui/wizard/cA;->h:B

    iget-boolean v0, p1, Lcom/google/googlenav/ui/wizard/cZ;->m:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cA;->u:Z

    iget-boolean v0, p1, Lcom/google/googlenav/ui/wizard/cZ;->n:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cA;->J:Z

    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/cZ;->o:Lam/b;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->K:Lam/b;

    iget-boolean v0, p1, Lcom/google/googlenav/ui/wizard/cZ;->r:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cA;->M:Z

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/cZ;->c()Z

    move-result v0

    if-eqz v0, :cond_5a

    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/cA;->L:Z

    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/cZ;->p:Lam/b;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->D:Lam/b;

    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/cZ;->q:Ljava/util/List;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->E:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cA;->l()V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    :cond_59
    :goto_59
    return-void

    :cond_5a
    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/cZ;->e:LaJ/B;

    if-eqz v0, :cond_73

    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/cA;->L:Z

    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/cZ;->e:LaJ/B;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->C:LaJ/B;

    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/cZ;->e:LaJ/B;

    iget v1, p1, Lcom/google/googlenav/ui/wizard/cZ;->f:I

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/cA;->a(LaJ/B;I)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cA;->l()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    goto :goto_59

    :cond_73
    iget v0, p0, Lcom/google/googlenav/ui/wizard/cA;->l:I

    if-ne v0, v1, :cond_7e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cA;->l()V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    goto :goto_59

    :cond_7e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/cA;->a:I

    if-eqz v0, :cond_59

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    goto :goto_59
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/cA;)LaE/m;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->P:LaE/m;

    return-object v0
.end method

.method private c(Lam/b;)V
    .registers 7

    invoke-static {p1}, Lcom/google/googlenav/ui/wizard/cA;->a(Lam/b;)Lau/x;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->F:Lcom/google/googlenav/ui/wizard/cR;

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, p1, v3}, Lcom/google/googlenav/ui/wizard/cR;->a(Lau/x;Ljava/lang/Long;Lam/b;Lcom/google/googlenav/aV;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    return-void
.end method

.method private c(Lcom/google/googlenav/ui/C;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->A:Lbb/d;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->B:LaJ/B;

    if-eqz v0, :cond_21

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->A:Lbb/d;

    invoke-interface {v1}, Lbb/d;->a()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->v:LaJ/p;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cA;->B:LaJ/B;

    invoke-virtual {v1, v2, v0}, LaJ/p;->a(LaJ/B;Landroid/graphics/Point;)V

    :goto_1c
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->A:Lbb/d;

    invoke-interface {v1, v0, p1}, Lbb/d;->a(Landroid/graphics/Point;Lcom/google/googlenav/ui/C;)V

    :cond_21
    return-void

    :cond_22
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->v:LaJ/p;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cA;->B:LaJ/B;

    invoke-virtual {v1, v2, v0}, LaJ/p;->b(LaJ/B;Landroid/graphics/Point;)V

    goto :goto_1c
.end method

.method public static f()I
    .registers 1

    const/16 v0, 0x1f

    return v0
.end method


# virtual methods
.method public B()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cA;->G:Z

    return-void
.end method

.method protected C()V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->w()Lcom/google/googlenav/ui/wizard/dB;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cA;->a()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->x:Lcom/google/googlenav/L;

    const-string v2, "stars"

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/cA;->F:Lcom/google/googlenav/ui/wizard/cR;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/dB;->a(Lcom/google/googlenav/L;Ljava/lang/String;Lcom/google/googlenav/ui/wizard/cR;)V

    return-void
.end method

.method public W_()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cA;->I:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/cA;->I:Z

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->r:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cA;->a()V

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cA;->I:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cA;->l()V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->r:Ljava/lang/String;

    return-void
.end method

.method public Y_()V
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/cA;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->s:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->o()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->x:Lcom/google/googlenav/L;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->s:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->b(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public Z_()Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlenav/ui/wizard/cA;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    iget v1, p0, Lcom/google/googlenav/ui/wizard/cA;->a:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_15

    iget v1, p0, Lcom/google/googlenav/ui/wizard/cA;->p:I

    if-eq v1, v0, :cond_15

    iget v1, p0, Lcom/google/googlenav/ui/wizard/cA;->p:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public a(LaJ/B;)I
    .registers 6

    iget v0, p0, Lcom/google/googlenav/ui/wizard/cA;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cA;->B:LaJ/B;

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v2, 0x421

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->g:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/cA;->B:LaJ/B;

    invoke-virtual {v0, v1, p0, v2, v3}, Lbb/e;->a(Lcom/google/googlenav/ui/bl;Lbb/c;ZLaJ/B;)Lbb/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->A:Lbb/d;

    :cond_2d
    const/4 v0, 0x3

    return v0
.end method

.method public a(Laq/a;)I
    .registers 4

    sget-object v0, Lcom/google/googlenav/ui/n;->I:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->y:Lcom/google/googlenav/ui/at;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/at;->a(Z)V

    const/4 v0, 0x3

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x4

    goto :goto_f
.end method

.method public a(Laq/b;)I
    .registers 5

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cA;->o()V

    iget v0, p0, Lcom/google/googlenav/ui/wizard/cA;->p:I

    :goto_d
    return v0

    :cond_e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/cA;->a:I

    packed-switch v0, :pswitch_data_54

    :cond_13
    :goto_13
    :pswitch_13
    iget v0, p0, Lcom/google/googlenav/ui/wizard/cA;->p:I

    goto :goto_d

    :pswitch_16
    invoke-virtual {p1}, Laq/b;->e()C

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_13

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cA;->j:Z

    if-eqz v0, :cond_13

    const/16 v0, 0x32b

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlenav/ui/wizard/cA;->a(IILjava/lang/Object;)Z

    goto :goto_13

    :pswitch_2a
    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_35

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/googlenav/ui/wizard/cA;->p:I

    goto :goto_13

    :cond_35
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->w:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->c()LaJ/B;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->B:LaJ/B;

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cA;->m:Z

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->B:LaJ/B;

    const v1, 0x1869f

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/cA;->a(LaJ/B;I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    goto :goto_13

    :cond_4e
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    goto :goto_13

    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_16
        :pswitch_2a
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_16
    .end packed-switch
.end method

.method public a(Laq/c;)I
    .registers 6

    iget v0, p0, Lcom/google/googlenav/ui/wizard/cA;->a:I

    packed-switch v0, :pswitch_data_50

    :goto_5
    iget v0, p0, Lcom/google/googlenav/ui/wizard/cA;->p:I

    return v0

    :pswitch_8
    invoke-virtual {p1}, Laq/c;->h()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Laq/c;->j()Z

    move-result v0

    if-eqz v0, :cond_4c

    :cond_14
    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v2, 0x421

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->g:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lbb/e;->a(Lcom/google/googlenav/ui/bl;Lbb/c;Z)Lbb/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->A:Lbb/d;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->v:LaJ/p;

    invoke-virtual {p1}, Laq/c;->k()I

    move-result v1

    invoke-virtual {p1}, Laq/c;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, LaJ/p;->b(II)LaJ/B;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->B:LaJ/B;

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/cA;->p:I

    goto :goto_5

    :cond_4c
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/googlenav/ui/wizard/cA;->p:I

    goto :goto_5

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method protected a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lbd/k;
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/wizard/cS;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/ui/wizard/cS;-><init>(Lcom/google/googlenav/ui/wizard/cA;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method protected a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/R;
    .registers 6

    const/4 v3, 0x1

    new-instance v0, Lcom/google/googlenav/ui/view/android/R;

    invoke-direct {v0, p1, v3}, Lcom/google/googlenav/ui/view/android/R;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/cA;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->i:LaE/h;

    invoke-virtual {v1}, LaE/h;->j()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->i:LaE/h;

    invoke-virtual {v1}, LaE/h;->k()Z

    move-result v1

    if-nez v1, :cond_2f

    const/16 v1, 0x44d

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/cL;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/cL;-><init>(Lcom/google/googlenav/ui/wizard/cA;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/ui/wizard/cA;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lbd/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    :cond_2f
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/cA;->a(I)Z

    move-result v1

    if-eqz v1, :cond_49

    const/16 v1, 0x103

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/cM;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/cM;-><init>(Lcom/google/googlenav/ui/wizard/cA;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/ui/wizard/cA;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lbd/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    :cond_49
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/cA;->a(I)Z

    move-result v1

    if-eqz v1, :cond_63

    const/16 v1, 0x44c

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/cN;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/cN;-><init>(Lcom/google/googlenav/ui/wizard/cA;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/ui/wizard/cA;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lbd/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    :cond_63
    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/wizard/cA;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7b

    const/16 v1, 0x44e

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/cO;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/cO;-><init>(Lcom/google/googlenav/ui/wizard/cA;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/ui/wizard/cA;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lbd/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    :cond_7b
    iget-boolean v1, p0, Lcom/google/googlenav/ui/wizard/cA;->j:Z

    if-eqz v1, :cond_91

    const/16 v1, 0x276

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/cC;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/cC;-><init>(Lcom/google/googlenav/ui/wizard/cA;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/ui/wizard/cA;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lbd/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    :cond_91
    return-object v0
.end method

.method protected a(II)V
    .registers 11

    const/4 v7, 0x3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/cA;->a:I

    iput v0, p0, Lcom/google/googlenav/ui/wizard/cA;->n:I

    iput p1, p0, Lcom/google/googlenav/ui/wizard/cA;->a:I

    if-eq p1, v7, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    :cond_12
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->b:Lcom/google/googlenav/ui/wizard/hM;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    :cond_1e
    packed-switch p1, :pswitch_data_90

    :goto_21
    :pswitch_21
    return-void

    :pswitch_22
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/cA;->p:I

    goto :goto_21

    :pswitch_26
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cA;->l()V

    iput v7, p0, Lcom/google/googlenav/ui/wizard/cA;->p:I

    goto :goto_21

    :pswitch_2c
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cA;->K()V

    iput v7, p0, Lcom/google/googlenav/ui/wizard/cA;->p:I

    goto :goto_21

    :pswitch_32
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/ui/wizard/cA;->z:J

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->x:Lcom/google/googlenav/L;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->t:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    iput v7, p0, Lcom/google/googlenav/ui/wizard/cA;->p:I

    goto :goto_21

    :pswitch_4d
    const-string v0, ""

    iget v1, p0, Lcom/google/googlenav/ui/wizard/cA;->n:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_57

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->H:Ljava/lang/String;

    :cond_57
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->a(Ljava/lang/String;)V

    iput v7, p0, Lcom/google/googlenav/ui/wizard/cA;->p:I

    goto :goto_21

    :pswitch_5d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->b:Lcom/google/googlenav/ui/wizard/hM;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->b:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x409

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/googlenav/ui/wizard/x;->a:Lcom/google/googlenav/ui/wizard/y;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;JZ)V

    :cond_72
    iput v7, p0, Lcom/google/googlenav/ui/wizard/cA;->p:I

    goto :goto_21

    :pswitch_75
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cA;->F()V

    iput v7, p0, Lcom/google/googlenav/ui/wizard/cA;->p:I

    goto :goto_21

    :pswitch_7b
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cA;->G()V

    iput v7, p0, Lcom/google/googlenav/ui/wizard/cA;->p:I

    goto :goto_21

    :pswitch_81
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->E:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->b(Lam/b;)V

    iput v7, p0, Lcom/google/googlenav/ui/wizard/cA;->p:I

    goto :goto_21

    nop

    :pswitch_data_90
    .packed-switch -0x1
        :pswitch_22
        :pswitch_26
        :pswitch_2c
        :pswitch_32
        :pswitch_4d
        :pswitch_5d
        :pswitch_75
        :pswitch_7b
        :pswitch_21
        :pswitch_21
        :pswitch_81
    .end packed-switch
.end method

.method protected a(LaJ/B;I)V
    .registers 5

    new-instance v0, Lax/bo;

    invoke-direct {v0}, Lax/bo;-><init>()V

    invoke-virtual {p1}, LaJ/B;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lax/bo;->a(I)Lax/bo;

    move-result-object v0

    invoke-virtual {p1}, LaJ/B;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lax/bo;->b(I)Lax/bo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lax/bo;->e(I)Lax/bo;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/da;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/da;-><init>(Lcom/google/googlenav/ui/wizard/cA;)V

    invoke-virtual {v0, v1}, Lax/bo;->a(Lax/bn;)Lax/bo;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlenav/ui/wizard/cA;->u:Z

    invoke-virtual {v0, v1}, Lax/bo;->a(Z)Lax/bo;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlenav/ui/wizard/cA;->J:Z

    invoke-virtual {v0, v1}, Lax/bo;->b(Z)Lax/bo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lax/bo;->g(I)Lax/bo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->K:Lam/b;

    invoke-virtual {v0, v1}, Lax/bo;->a(Lam/b;)Lax/bo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lax/bo;->a(Ljava/lang/String;)Lax/bo;

    move-result-object v0

    invoke-virtual {v0}, Lax/bo;->a()Lax/bm;

    move-result-object v0

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/cZ;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->i:LaE/h;

    invoke-virtual {v0}, LaE/h;->j()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/cZ;->b()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_e
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/cA;->b(Lcom/google/googlenav/ui/wizard/cZ;)V

    :goto_11
    return-void

    :cond_12
    new-instance v0, Lcom/google/googlenav/ui/wizard/cJ;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/wizard/cJ;-><init>(Lcom/google/googlenav/ui/wizard/cA;Lcom/google/googlenav/ui/wizard/cZ;)V

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/wizard/cA;->a(Lcom/google/googlenav/ui/wizard/cZ;Lcom/google/googlenav/ui/wizard/db;)V

    goto :goto_11
.end method

.method protected a(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/l;->h()Lcom/google/android/maps/MapsActivity;

    move-result-object v1

    const-class v2, Lcom/google/googlenav/ui/wizard/EnterAddressActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/googlenav/android/U;->a()Lcom/google/googlenav/android/U;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/cU;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/googlenav/ui/wizard/cU;-><init>(Lcom/google/googlenav/ui/wizard/cA;Lcom/google/googlenav/ui/wizard/cB;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/android/U;->a(Landroid/content/Intent;Lcom/google/googlenav/android/V;)V

    return-void
.end method

.method protected a(I)Z
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/cA;->l:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 7

    const/4 v2, -0x1

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_7c

    const/4 v0, 0x0

    :goto_6
    return v0

    :sswitch_7
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cA;->C()V

    move v0, v1

    goto :goto_6

    :sswitch_c
    iget v0, p0, Lcom/google/googlenav/ui/wizard/cA;->n:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    move v0, v1

    goto :goto_6

    :sswitch_13
    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lau/x;->a(Ljava/lang/String;)Lau/x;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->a(Lau/x;)V

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    move v0, v1

    goto :goto_6

    :sswitch_21
    if-ne p2, v2, :cond_2a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->D:Lam/b;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->c(Lam/b;)V

    :goto_28
    move v0, v1

    goto :goto_6

    :cond_2a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->E:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->c(Lam/b;)V

    goto :goto_28

    :sswitch_36
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_47

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->b(Ljava/lang/String;)V

    :goto_45
    move v0, v1

    goto :goto_6

    :cond_47
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    goto :goto_45

    :sswitch_4c
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    move v0, v1

    goto :goto_6

    :sswitch_52
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p2}, Lcom/google/googlenav/ui/wizard/cA;->a(II)V

    move v0, v1

    goto :goto_6

    :sswitch_59
    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/cA;->r:Ljava/lang/String;

    move v0, v1

    goto :goto_6

    :sswitch_5f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->i:LaE/h;

    invoke-virtual {v0}, LaE/h;->q()LaJ/B;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cA;->i:LaE/h;

    invoke-virtual {v2}, LaE/h;->i()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/googlenav/ui/wizard/cA;->a(LaJ/B;I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/cA;->G:Z

    move v0, v1

    goto :goto_6

    :sswitch_76
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    move v0, v1

    goto :goto_6

    :sswitch_data_7c
    .sparse-switch
        0x1f5 -> :sswitch_5f
        0x1f6 -> :sswitch_76
        0x327 -> :sswitch_13
        0x328 -> :sswitch_21
        0x329 -> :sswitch_36
        0x32b -> :sswitch_7
        0x32c -> :sswitch_c
        0x32d -> :sswitch_4c
        0x32e -> :sswitch_59
        0x32f -> :sswitch_52
    .end sparse-switch
.end method

.method public a(Lbb/E;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cA;->m:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->B:LaJ/B;

    const v1, 0x1869f

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/cA;->a(LaJ/B;I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    :goto_10
    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    goto :goto_10
.end method

.method public a(Z)Z
    .registers 7

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlenav/ui/wizard/cA;->a:I

    packed-switch v1, :pswitch_data_36

    :pswitch_6
    const/4 v0, 0x0

    :cond_7
    :goto_7
    :pswitch_7
    return v0

    :pswitch_8
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/wizard/z;->a(Z)Z

    move-result v0

    goto :goto_7

    :pswitch_d
    iget-wide v1, p0, Lcom/google/googlenav/ui/wizard/cA;->z:J

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v3

    invoke-virtual {v3}, Laf/b;->v()Laf/a;

    move-result-object v3

    invoke-interface {v3}, Laf/a;->c()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_7

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->B:LaJ/B;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cA;->v:LaJ/p;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/cA;->B:LaJ/B;

    invoke-virtual {v2, v3}, LaJ/p;->a(LaJ/B;)Lt/y;

    move-result-object v2

    invoke-static {v1, v2}, Lau/x;->a(LaJ/B;Lt/y;)Lau/x;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/cA;->a(Lau/x;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    goto :goto_7

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_d
        :pswitch_6
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method protected b()V
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/cA;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cA;->F()V

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget v0, p0, Lcom/google/googlenav/ui/wizard/cA;->l:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->C:LaJ/B;

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cA;->E()V

    goto :goto_8
.end method

.method protected b(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/wizard/cA;->a(II)V

    return-void
.end method

.method public b(Lcom/google/googlenav/ui/C;)V
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/cA;->a:I

    packed-switch v0, :pswitch_data_14

    :goto_5
    :pswitch_5
    return-void

    :pswitch_6
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/wizard/z;->b(Lcom/google/googlenav/ui/C;)V

    goto :goto_5

    :pswitch_a
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/cA;->c(Lcom/google/googlenav/ui/C;)V

    goto :goto_5

    :pswitch_e
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/wizard/cA;->a(Lcom/google/googlenav/ui/C;Z)V

    goto :goto_5

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_e
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->dismiss()V

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cA;->H:Ljava/lang/String;

    invoke-static {p1}, Lau/x;->a(Ljava/lang/String;)Lau/x;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->a(Lau/x;)V

    return-void
.end method

.method public b(Lbb/E;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected c()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cA;->I:Z

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cA;->H()V

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/cA;->C:LaJ/B;

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/cA;->D:Lam/b;

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/cA;->E:Ljava/util/List;

    :cond_11
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cA;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->x:Lcom/google/googlenav/L;

    invoke-interface {v0}, Lcom/google/googlenav/L;->j()LaY/aT;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, LaY/aT;->e(ILjava/lang/Object;)V

    :cond_22
    return-void
.end method

.method protected e()Lbb/o;
    .registers 13

    const/16 v11, 0x32f

    const/16 v5, 0x32d

    const/4 v1, 0x2

    const/16 v10, 0x328

    const/4 v3, 0x0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cA;->u:Z

    if-eqz v0, :cond_49

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cA;->G:Z

    if-nez v0, :cond_21

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->a(I)Z

    move-result v0

    if-eqz v0, :cond_88

    :cond_21
    const/16 v0, 0x1c5

    :goto_23
    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/google/googlenav/ui/bg;->as:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v6}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->D:Lam/b;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/be;->a(Lam/b;Ljava/util/Vector;)V

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_49
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cA;->M:Z

    if-eqz v0, :cond_8b

    move v2, v5

    :goto_4e
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cA;->M:Z

    if-eqz v0, :cond_8e

    const/16 v0, 0x28f

    move v6, v0

    :goto_55
    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v8

    const/4 v0, 0x0

    move v7, v0

    :goto_5b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_b8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->E:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    const/16 v9, 0x10

    invoke-static {v0, v9}, Lam/g;->h(Lam/b;I)Z

    move-result v9

    if-eqz v9, :cond_b0

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lam/b;->h(I)Lam/b;

    move-result-object v9

    if-nez v9, :cond_92

    invoke-static {}, Lax/aA;->A()V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_84
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_5b

    :cond_88
    const/16 v0, 0x31f

    goto :goto_23

    :cond_8b
    const/4 v0, -0x1

    move v2, v0

    goto :goto_4e

    :cond_8e
    const/16 v0, 0x28e

    move v6, v0

    goto :goto_55

    :cond_92
    const/16 v9, 0x15

    invoke-virtual {v0, v9}, Lam/b;->d(I)I

    move-result v0

    if-ne v1, v0, :cond_a5

    invoke-static {}, Lax/aA;->z()V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84

    :cond_a5
    invoke-static {}, Lax/aA;->y()V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84

    :cond_b0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84

    :cond_b8
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->E:Ljava/util/List;

    invoke-static {v6}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v4, v8, v6, v2}, Lcom/google/googlenav/ui/be;->a(Ljava/util/List;Ljava/util/Vector;Ljava/util/List;Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cA;->M:Z

    if-eqz v0, :cond_f6

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cA;->M:Z

    if-eqz v0, :cond_f4

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v2, 0x413

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/google/googlenav/ui/bg;->r:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v6}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    :goto_e6
    new-instance v5, Lbb/p;

    invoke-direct {v5, v0, v3, v3, v3}, Lbb/p;-><init>(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;)V

    :goto_eb
    new-instance v0, Lbb/o;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cA;->q:Ljava/lang/String;

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;Ljava/util/Vector;Lbb/p;[Laq/a;)V

    return-object v0

    :cond_f4
    move-object v0, v3

    goto :goto_e6

    :cond_f6
    move-object v5, v3

    goto :goto_eb
.end method

.method protected g()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/wizard/cA;->o:I

    return v0
.end method

.method protected h()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cA;->m:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->i:LaE/h;

    invoke-virtual {v0}, LaE/h;->q()LaJ/B;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->i:LaE/h;

    invoke-virtual {v1}, LaE/h;->i()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/cA;->a(LaJ/B;I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cA;->G:Z

    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->i:LaE/h;

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->i:LaE/h;

    invoke-virtual {v0}, LaE/h;->q()LaJ/B;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cA;->i:LaE/h;

    invoke-virtual {v1}, LaE/h;->A()Lt/y;

    move-result-object v1

    invoke-static {v0, v1}, Lau/x;->b(LaJ/B;Lt/y;)Lau/x;

    move-result-object v0

    :goto_33
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->a(Lau/x;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    goto :goto_1a

    :cond_3b
    invoke-static {}, Lau/x;->a()Lau/x;

    move-result-object v0

    goto :goto_33
.end method

.method protected i()V
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    return-void
.end method

.method protected j()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cA;->N:Lcom/google/googlenav/ay;

    check-cast v0, Lcom/google/googlenav/android/h;

    new-instance v1, Lcom/google/googlenav/ui/wizard/cQ;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/wizard/cQ;-><init>(Lcom/google/googlenav/ui/wizard/cA;Lcom/google/googlenav/ui/wizard/cB;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/h;->a(Lcom/google/googlenav/android/V;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cA;->b(I)V

    return-void
.end method

.method public k()[Laq/a;
    .registers 4

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/googlenav/ui/wizard/cA;->a:I

    if-ne v0, v1, :cond_d

    new-array v0, v1, [Laq/a;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/googlenav/ui/n;->I:Laq/a;

    aput-object v2, v0, v1

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public m()I
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cA;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    const/16 v0, 0x8

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public o()V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cA;->I()V

    return-void
.end method

.method public y()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cA;->r()Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/google/googlenav/ui/wizard/cA;->a:I

    if-ne v1, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
