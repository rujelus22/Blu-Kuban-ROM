.class public Lcom/google/googlenav/ui/view/android/bO;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# instance fields
.field private A:Z

.field private B:Lcom/google/googlenav/ah;

.field private C:Z

.field private D:Z

.field private E:I

.field private F:Lcom/google/googlenav/ui/p;

.field private G:Lcom/google/googlenav/ui/bF;

.field private H:I

.field private I:[Ljava/lang/String;

.field private J:[Ljava/lang/String;

.field private K:[Z

.field private L:I

.field private M:Z

.field private N:I

.field private O:I

.field private P:Z

.field private Q:I

.field private b:Ljava/lang/CharSequence;

.field private c:[Ljava/lang/CharSequence;

.field private d:[Ljava/lang/CharSequence;

.field private e:[Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Z

.field private h:Ljava/lang/CharSequence;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;

.field private m:Ljava/lang/CharSequence;

.field private n:Ljava/lang/CharSequence;

.field private o:Ljava/lang/CharSequence;

.field private p:Ljava/lang/CharSequence;

.field private q:Ljava/lang/CharSequence;

.field private r:Lcom/google/googlenav/ab;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/CharSequence;

.field private u:Lcom/google/googlenav/ao;

.field private v:Ljava/util/Vector;

.field private w:Lcom/google/googlenav/an;

.field private x:Lbb/a;

.field private y:Lai/f;

.field private z:LaJ/B;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    sput v0, Lcom/google/googlenav/ui/view/android/bO;->a:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/bO;->H:I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->I:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->J:[Ljava/lang/String;

    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->K:[Z

    iput v2, p0, Lcom/google/googlenav/ui/view/android/bO;->L:I

    const v0, 0x7f0300b5

    iput v0, p0, Lcom/google/googlenav/ui/view/android/bO;->O:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bO;->P:Z

    iput v2, p0, Lcom/google/googlenav/ui/view/android/bO;->Q:I

    return-void
.end method

.method static synthetic A(Lcom/google/googlenav/ui/view/android/bO;)I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/view/android/bO;->E:I

    return v0
.end method

.method static synthetic B(Lcom/google/googlenav/ui/view/android/bO;)I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/view/android/bO;->H:I

    return v0
.end method

.method static synthetic C(Lcom/google/googlenav/ui/view/android/bO;)I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/view/android/bO;->O:I

    return v0
.end method

.method static synthetic D(Lcom/google/googlenav/ui/view/android/bO;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bO;->P:Z

    return v0
.end method

.method static synthetic E(Lcom/google/googlenav/ui/view/android/bO;)I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/view/android/bO;->Q:I

    return v0
.end method

.method static synthetic F(Lcom/google/googlenav/ui/view/android/bO;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bO;->M:Z

    return v0
.end method

.method static synthetic G(Lcom/google/googlenav/ui/view/android/bO;)I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/view/android/bO;->L:I

    return v0
.end method

.method static synthetic H(Lcom/google/googlenav/ui/view/android/bO;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->I:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic I(Lcom/google/googlenav/ui/view/android/bO;)[Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->K:[Z

    return-object v0
.end method

.method static synthetic J(Lcom/google/googlenav/ui/view/android/bO;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->J:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic K(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->t:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic L(Lcom/google/googlenav/ui/view/android/bO;)I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/view/android/bO;->N:I

    return v0
.end method

.method static synthetic M(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->m:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic N(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->n:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic O(Lcom/google/googlenav/ui/view/android/bO;)Lcom/google/googlenav/ao;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->u:Lcom/google/googlenav/ao;

    return-object v0
.end method

.method static synthetic P(Lcom/google/googlenav/ui/view/android/bO;)Ljava/util/Vector;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->v:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/bO;)Lcom/google/googlenav/ui/p;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->F:Lcom/google/googlenav/ui/p;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/bO;)Lcom/google/googlenav/ui/bF;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->G:Lcom/google/googlenav/ui/bF;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/view/android/bO;)[Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->c:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/view/android/bO;)[Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->d:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic f(Lcom/google/googlenav/ui/view/android/bO;)[Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->e:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic g(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic h(Lcom/google/googlenav/ui/view/android/bO;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bO;->g:Z

    return v0
.end method

.method static synthetic i(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->h:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic j(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->j:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic l(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->k:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic m(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->l:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic n(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->o:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic o(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->p:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic p(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->q:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic q(Lcom/google/googlenav/ui/view/android/bO;)Lcom/google/googlenav/ab;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->r:Lcom/google/googlenav/ab;

    return-object v0
.end method

.method static synthetic r(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lcom/google/googlenav/ui/view/android/bO;)Lcom/google/googlenav/an;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->w:Lcom/google/googlenav/an;

    return-object v0
.end method

.method static synthetic t(Lcom/google/googlenav/ui/view/android/bO;)Lbb/a;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->x:Lbb/a;

    return-object v0
.end method

.method static synthetic u(Lcom/google/googlenav/ui/view/android/bO;)Lai/f;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->y:Lai/f;

    return-object v0
.end method

.method static synthetic v(Lcom/google/googlenav/ui/view/android/bO;)LaJ/B;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->z:LaJ/B;

    return-object v0
.end method

.method static synthetic w(Lcom/google/googlenav/ui/view/android/bO;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bO;->A:Z

    return v0
.end method

.method static synthetic x(Lcom/google/googlenav/ui/view/android/bO;)Lcom/google/googlenav/ah;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->B:Lcom/google/googlenav/ah;

    return-object v0
.end method

.method static synthetic y(Lcom/google/googlenav/ui/view/android/bO;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bO;->C:Z

    return v0
.end method

.method static synthetic z(Lcom/google/googlenav/ui/view/android/bO;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bO;->D:Z

    return v0
.end method


# virtual methods
.method public a(LaJ/B;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bO;->z:LaJ/B;

    return-object p0
.end method

.method public a(Lab/e;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 4

    if-eqz p1, :cond_14

    invoke-static {p1}, LaY/aq;->a(Lab/e;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->h:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lab/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->i:Ljava/lang/String;

    :cond_14
    return-object p0
.end method

.method public a(Lai/f;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bO;->y:Lai/f;

    return-object p0
.end method

.method public a(Lbb/a;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bO;->x:Lbb/a;

    return-object p0
.end method

.method public a(Lcom/google/googlenav/ab;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bO;->r:Lcom/google/googlenav/ab;

    return-object p0
.end method

.method public a(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bO;->B:Lcom/google/googlenav/ah;

    return-object p0
.end method

.method public a(Lcom/google/googlenav/an;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bO;->w:Lcom/google/googlenav/an;

    return-object p0
.end method

.method public a(Lcom/google/googlenav/ao;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bO;->u:Lcom/google/googlenav/ao;

    return-object p0
.end method

.method public a(Lcom/google/googlenav/cd;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_29

    iget v0, p1, Lcom/google/googlenav/cd;->a:I

    if-ne v0, v1, :cond_27

    move v0, v1

    :goto_9
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bO;->e(Z)Lcom/google/googlenav/ui/view/android/bO;

    iget-object v0, p1, Lcom/google/googlenav/cd;->b:LK/bn;

    invoke-virtual {v0}, LK/bn;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ce;

    iget-object v4, v0, Lcom/google/googlenav/ce;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/googlenav/ce;->c:Ljava/lang/String;

    invoke-virtual {p0, v4, v0, v1}, Lcom/google/googlenav/ui/view/android/bO;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/googlenav/ui/view/android/bO;

    move v1, v2

    goto :goto_12

    :cond_27
    move v0, v2

    goto :goto_9

    :cond_29
    return-object p0
.end method

.method public a(Lcom/google/googlenav/ui/bF;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bO;->G:Lcom/google/googlenav/ui/bF;

    return-object p0
.end method

.method public a(Lcom/google/googlenav/ui/p;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bO;->F:Lcom/google/googlenav/ui/p;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 3

    sget-object v0, Lcom/google/googlenav/ui/bg;->bp:Lcom/google/googlenav/ui/bg;

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/bO;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/view/android/bO;

    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 4

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1, p2}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->b:Ljava/lang/CharSequence;

    :cond_c
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/googlenav/ui/view/android/bO;
    .registers 6

    iget v0, p0, Lcom/google/googlenav/ui/view/android/bO;->L:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->I:[Ljava/lang/String;

    iget v1, p0, Lcom/google/googlenav/ui/view/android/bO;->L:I

    aput-object p2, v0, v1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->J:[Ljava/lang/String;

    iget v1, p0, Lcom/google/googlenav/ui/view/android/bO;->L:I

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->K:[Z

    iget v1, p0, Lcom/google/googlenav/ui/view/android/bO;->L:I

    aput-boolean p3, v0, v1

    iget v0, p0, Lcom/google/googlenav/ui/view/android/bO;->L:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/bO;->L:I

    :cond_1d
    return-object p0
.end method

.method public a(Ljava/lang/String;Z)Lcom/google/googlenav/ui/view/android/bO;
    .registers 6

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {p1}, LaY/aq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1f

    sget-object v0, Lcom/google/googlenav/ui/bg;->aT:Lcom/google/googlenav/ui/bg;

    :goto_e
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    iput-object v2, p0, Lcom/google/googlenav/ui/view/android/bO;->f:Ljava/lang/CharSequence;

    iput-boolean p2, p0, Lcom/google/googlenav/ui/view/android/bO;->g:Z

    :cond_1e
    return-object p0

    :cond_1f
    sget-object v0, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    goto :goto_e
.end method

.method public a(Ljava/util/Vector;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bO;->v:Ljava/util/Vector;

    return-object p0
.end method

.method public a(Z)Lcom/google/googlenav/ui/view/android/bO;
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/view/android/bO;->A:Z

    return-object p0
.end method

.method public a([Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_35

    array-length v1, p1

    if-lez v1, :cond_35

    array-length v1, p1

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/bO;->c:[Ljava/lang/CharSequence;

    array-length v2, p1

    move v1, v0

    :goto_d
    if-ge v0, v2, :cond_35

    aget-object v3, p1, v0

    invoke-static {v3}, Las/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_25

    sget v4, Lcom/google/googlenav/ui/view/android/bO;->a:I

    if-ne v1, v4, :cond_2a

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bO;->c:[Ljava/lang/CharSequence;

    sget-object v5, Lcom/google/googlenav/ui/bg;->bs:Lcom/google/googlenav/ui/bg;

    invoke-static {v3, v5}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    aput-object v3, v4, v1

    :cond_25
    :goto_25
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_2a
    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bO;->c:[Ljava/lang/CharSequence;

    sget-object v5, Lcom/google/googlenav/ui/bg;->br:Lcom/google/googlenav/ui/bg;

    invoke-static {v3, v5}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    aput-object v3, v4, v1

    goto :goto_25

    :cond_35
    return-object p0
.end method

.method public b()Lcom/google/googlenav/ui/view/android/bN;
    .registers 2

    new-instance v0, Lcom/google/googlenav/ui/view/android/bN;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/bN;-><init>(Lcom/google/googlenav/ui/view/android/bO;)V

    return-object v0
.end method

.method public b(I)Lcom/google/googlenav/ui/view/android/bO;
    .registers 2

    iput p1, p0, Lcom/google/googlenav/ui/view/android/bO;->E:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 3

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->j:Ljava/lang/CharSequence;

    :cond_e
    return-object p0
.end method

.method public b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 4

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p1}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->m:Ljava/lang/CharSequence;

    :cond_10
    return-object p0
.end method

.method public b(Z)Lcom/google/googlenav/ui/view/android/bO;
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/view/android/bO;->C:Z

    return-object p0
.end method

.method public b([Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_28

    array-length v1, p1

    if-lez v1, :cond_28

    array-length v1, p1

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/bO;->d:[Ljava/lang/CharSequence;

    array-length v2, p1

    move v1, v0

    :goto_d
    if-ge v0, v2, :cond_28

    aget-object v3, p1, v0

    invoke-static {v3}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bO;->d:[Ljava/lang/CharSequence;

    aget-object v4, p1, v1

    sget-object v5, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    aput-object v4, v3, v1

    :cond_23
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_28
    return-object p0
.end method

.method public c(I)Lcom/google/googlenav/ui/view/android/bO;
    .registers 2

    iput p1, p0, Lcom/google/googlenav/ui/view/android/bO;->H:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 3

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->k:Ljava/lang/CharSequence;

    :cond_e
    return-object p0
.end method

.method public c(Z)Lcom/google/googlenav/ui/view/android/bO;
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/view/android/bO;->D:Z

    return-object p0
.end method

.method public c([Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_28

    array-length v1, p1

    if-lez v1, :cond_28

    array-length v1, p1

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/bO;->e:[Ljava/lang/CharSequence;

    array-length v2, p1

    move v1, v0

    :goto_d
    if-ge v0, v2, :cond_28

    aget-object v3, p1, v0

    invoke-static {v3}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bO;->e:[Ljava/lang/CharSequence;

    aget-object v4, p1, v1

    sget-object v5, Lcom/google/googlenav/ui/bg;->bc:Lcom/google/googlenav/ui/bg;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    aput-object v4, v3, v1

    :cond_23
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_28
    return-object p0
.end method

.method public d(I)Lcom/google/googlenav/ui/view/android/bO;
    .registers 2

    iput p1, p0, Lcom/google/googlenav/ui/view/android/bO;->O:I

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 3

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/google/googlenav/ui/bg;->aY:Lcom/google/googlenav/ui/bg;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->l:Ljava/lang/CharSequence;

    :cond_e
    return-object p0
.end method

.method public d(Z)Lcom/google/googlenav/ui/view/android/bO;
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/view/android/bO;->P:Z

    return-object p0
.end method

.method public e(I)Lcom/google/googlenav/ui/view/android/bO;
    .registers 2

    iput p1, p0, Lcom/google/googlenav/ui/view/android/bO;->Q:I

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 3

    sget-object v0, Lcom/google/googlenav/ui/bg;->bt:Lcom/google/googlenav/ui/bg;

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/bO;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    return-object v0
.end method

.method public e(Z)Lcom/google/googlenav/ui/view/android/bO;
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/view/android/bO;->M:Z

    return-object p0
.end method

.method public f(I)Lcom/google/googlenav/ui/view/android/bO;
    .registers 2

    iput p1, p0, Lcom/google/googlenav/ui/view/android/bO;->N:I

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 4

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    sget-object v1, Lcom/google/googlenav/ui/bg;->bh:Lcom/google/googlenav/ui/bg;

    invoke-static {p1, v1}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->n:Ljava/lang/CharSequence;

    :cond_16
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 3

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bO;->o:Ljava/lang/CharSequence;

    :cond_8
    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 3

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bO;->p:Ljava/lang/CharSequence;

    :cond_8
    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bO;->q:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;
    .registers 3

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/google/googlenav/ui/bg;->bt:Lcom/google/googlenav/ui/bg;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bO;->t:Ljava/lang/CharSequence;

    :cond_e
    return-object p0
.end method
