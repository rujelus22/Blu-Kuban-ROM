.class public Lcom/google/googlenav/ui/view/android/bN;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# static fields
.field static final a:Lai/f;


# instance fields
.field final A:LaJ/B;

.field final B:Z

.field final C:Lcom/google/googlenav/ah;

.field D:Z

.field final E:Z

.field final F:Lcom/google/googlenav/ui/p;

.field final G:I

.field final H:Z

.field final I:I

.field final J:Z

.field final K:[Ljava/lang/CharSequence;

.field final L:[Ljava/lang/CharSequence;

.field final M:I

.field final N:Ljava/lang/CharSequence;

.field final O:Lai/f;

.field final P:I

.field public final Q:I

.field private final R:Lcom/google/googlenav/ui/bF;

.field final b:Ljava/lang/CharSequence;

.field final c:[Ljava/lang/CharSequence;

.field final d:[Ljava/lang/CharSequence;

.field final e:[Ljava/lang/CharSequence;

.field final f:Ljava/lang/CharSequence;

.field final g:Z

.field final h:Ljava/lang/CharSequence;

.field final i:Ljava/lang/String;

.field final j:Ljava/lang/CharSequence;

.field final k:Ljava/lang/CharSequence;

.field final l:Ljava/lang/CharSequence;

.field final m:Ljava/lang/CharSequence;

.field final n:Ljava/lang/CharSequence;

.field final o:Ljava/lang/CharSequence;

.field final p:Ljava/lang/CharSequence;

.field final q:Ljava/lang/CharSequence;

.field final r:Ljava/lang/String;

.field final s:Ljava/lang/CharSequence;

.field final t:Ljava/lang/CharSequence;

.field final u:Ljava/lang/CharSequence;

.field final v:Lai/f;

.field final w:Lcom/google/googlenav/ui/bG;

.field final x:Lcom/google/googlenav/ui/bG;

.field final y:Lbb/a;

.field final z:Lai/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->r()Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    sput-object v0, Lcom/google/googlenav/ui/view/android/bN;->a:Lai/f;

    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/view/android/bO;)V
    .registers 7

    const/4 v4, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v4, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->K:[Ljava/lang/CharSequence;

    new-array v0, v4, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->L:[Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->a(Lcom/google/googlenav/ui/view/android/bO;)Lcom/google/googlenav/ui/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->F:Lcom/google/googlenav/ui/p;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->b(Lcom/google/googlenav/ui/view/android/bO;)Lcom/google/googlenav/ui/bF;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->R:Lcom/google/googlenav/ui/bF;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->c(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->b:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->d(Lcom/google/googlenav/ui/view/android/bO;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->c:[Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->e(Lcom/google/googlenav/ui/view/android/bO;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->d:[Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->f(Lcom/google/googlenav/ui/view/android/bO;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->e:[Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->g(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->f:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->h(Lcom/google/googlenav/ui/view/android/bO;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bN;->g:Z

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->i(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->h:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->j(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->k(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->j:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->l(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->k:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->m(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->l:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bN;->d(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->m:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->n(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->n:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->o(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->o:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->p(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->p:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->q(Lcom/google/googlenav/ui/view/android/bO;)Lcom/google/googlenav/ab;

    move-result-object v0

    invoke-static {v0}, LaY/aq;->a(Lcom/google/googlenav/ab;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->q:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->r(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->r:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->r(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->aU:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, LaY/aq;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->s:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bN;->a(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->t:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bN;->e(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->u:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bN;->g(Lcom/google/googlenav/ui/view/android/bO;)Lai/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->v:Lai/f;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bN;->f(Lcom/google/googlenav/ui/view/android/bO;)Lcom/google/googlenav/ui/bG;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->w:Lcom/google/googlenav/ui/bG;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->s(Lcom/google/googlenav/ui/view/android/bO;)Lcom/google/googlenav/an;

    move-result-object v0

    if-nez v0, :cond_131

    const/4 v0, 0x0

    :goto_ad
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->x:Lcom/google/googlenav/ui/bG;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->t(Lcom/google/googlenav/ui/view/android/bO;)Lbb/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->y:Lbb/a;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->u(Lcom/google/googlenav/ui/view/android/bO;)Lai/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->z:Lai/f;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->v(Lcom/google/googlenav/ui/view/android/bO;)LaJ/B;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->A:LaJ/B;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->w(Lcom/google/googlenav/ui/view/android/bO;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bN;->B:Z

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->x(Lcom/google/googlenav/ui/view/android/bO;)Lcom/google/googlenav/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->C:Lcom/google/googlenav/ah;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->y(Lcom/google/googlenav/ui/view/android/bO;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bN;->D:Z

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->z(Lcom/google/googlenav/ui/view/android/bO;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bN;->E:Z

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->A(Lcom/google/googlenav/ui/view/android/bO;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/bN;->P:I

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->B(Lcom/google/googlenav/ui/view/android/bO;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/bN;->Q:I

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->C(Lcom/google/googlenav/ui/view/android/bO;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/bN;->G:I

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->D(Lcom/google/googlenav/ui/view/android/bO;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bN;->H:Z

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->E(Lcom/google/googlenav/ui/view/android/bO;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/bN;->I:I

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->F(Lcom/google/googlenav/ui/view/android/bO;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bN;->J:Z

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->G(Lcom/google/googlenav/ui/view/android/bO;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/bN;->M:I

    const/4 v0, 0x0

    :goto_104
    if-ge v0, v4, :cond_13b

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bN;->K:[Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->H(Lcom/google/googlenav/ui/view/android/bO;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->I(Lcom/google/googlenav/ui/view/android/bO;)[Z

    move-result-object v3

    aget-boolean v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/google/googlenav/ui/view/android/bN;->a(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bN;->L:[Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->J(Lcom/google/googlenav/ui/view/android/bO;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->I(Lcom/google/googlenav/ui/view/android/bO;)[Z

    move-result-object v3

    aget-boolean v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/google/googlenav/ui/view/android/bN;->b(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_104

    :cond_131
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->s(Lcom/google/googlenav/ui/view/android/bO;)Lcom/google/googlenav/an;

    move-result-object v0

    invoke-static {v0}, LaY/m;->a(Lcom/google/googlenav/an;)Lcom/google/googlenav/ui/bG;

    move-result-object v0

    goto/16 :goto_ad

    :cond_13b
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bN;->c(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->N:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bN;->b(Lcom/google/googlenav/ui/view/android/bO;)Lai/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->O:Lai/f;

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;
    .registers 3

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->K(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 3

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bN;->J:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/google/googlenav/ui/bg;->bE:Lcom/google/googlenav/ui/bg;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    sget-object v0, Lcom/google/googlenav/ui/bg;->bC:Lcom/google/googlenav/ui/bg;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_10

    :cond_18
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private a(Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .registers 5

    if-eqz p2, :cond_7

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bN;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    iget v0, p0, Lcom/google/googlenav/ui/view/android/bN;->M:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_e

    const/4 v0, 0x0

    goto :goto_6

    :cond_e
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bN;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_6
.end method

.method private a([Ljava/lang/CharSequence;[Landroid/widget/TextView;)V
    .registers 9

    const/4 v2, 0x0

    if-eqz p1, :cond_2f

    array-length v4, p1

    move v3, v2

    move v0, v2

    :goto_6
    if-ge v3, v4, :cond_1e

    aget-object v5, p1, v3

    if-nez v5, :cond_10

    :goto_c
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_6

    :cond_10
    add-int/lit8 v1, v0, 0x1

    aget-object v0, p2, v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1c
    move v0, v1

    goto :goto_c

    :cond_1e
    :goto_1e
    array-length v1, p2

    if-ge v0, v1, :cond_2e

    add-int/lit8 v1, v0, 0x1

    aget-object v0, p2, v0

    if-eqz v0, :cond_2c

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2c
    move v0, v1

    goto :goto_1e

    :cond_2e
    return-void

    :cond_2f
    move v0, v2

    goto :goto_1e
.end method

.method private b(Lcom/google/googlenav/ui/view/android/bO;)Lai/f;
    .registers 4

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bN;->J:Z

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    const v1, 0x7f02030b

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->b(I)Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    :goto_11
    return-object v0

    :cond_12
    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    const v1, 0x7f020309

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->b(I)Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    goto :goto_11
.end method

.method private b(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bN;->J:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/google/googlenav/ui/bg;->bD:Lcom/google/googlenav/ui/bg;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    iget v0, p0, Lcom/google/googlenav/ui/view/android/bN;->M:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1d

    sget-object v0, Lcom/google/googlenav/ui/bg;->bB:Lcom/google/googlenav/ui/bg;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_10

    :cond_1d
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private b(Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .registers 5

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bN;->J:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/google/googlenav/ui/view/android/bN;->M:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1f

    :cond_9
    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    if-eqz p2, :cond_18

    sget-object v0, Lcom/google/googlenav/ui/bg;->bA:Lcom/google/googlenav/ui/bg;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    sget-object v0, Lcom/google/googlenav/ui/bg;->bz:Lcom/google/googlenav/ui/bg;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_17

    :cond_1f
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private c(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;
    .registers 6

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bN;->J:Z

    if-nez v0, :cond_2e

    iget v0, p0, Lcom/google/googlenav/ui/view/android/bN;->M:I

    if-gt v0, v1, :cond_2e

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->L(Lcom/google/googlenav/ui/view/android/bO;)I

    move-result v0

    if-ne v0, v1, :cond_16

    const/16 v0, 0x4f1

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    const/16 v0, 0x4f0

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->L(Lcom/google/googlenav/ui/view/android/bO;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_2e
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private d(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;
    .registers 5

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->z(Lcom/google/googlenav/ui/view/android/bO;)Z

    move-result v0

    if-nez v0, :cond_3a

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->M(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->M(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_19
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->N(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2a

    const-string v2, " "

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2a
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->N(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_31
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_38

    :goto_37
    return-object v0

    :cond_38
    move-object v0, v1

    goto :goto_37

    :cond_3a
    const/16 v0, 0x302

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/bg;->bo:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4d

    move-object v1, v0

    :cond_4d
    move-object v0, v1

    goto :goto_37
.end method

.method private e(Lcom/google/googlenav/ui/view/android/bO;)Ljava/lang/CharSequence;
    .registers 9

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->O(Lcom/google/googlenav/ui/view/android/bO;)Lcom/google/googlenav/ao;

    move-result-object v0

    if-eqz v0, :cond_70

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->O(Lcom/google/googlenav/ui/view/android/bO;)Lcom/google/googlenav/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ao;->a()[Lcom/google/googlenav/am;

    move-result-object v1

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    :goto_15
    array-length v4, v1

    if-ge v0, v4, :cond_4c

    aget-object v4, v1, v0

    iget-object v4, v4, Lcom/google/googlenav/am;->b:Ljava/lang/String;

    sget-object v5, Lcom/google/googlenav/ui/bg;->bv:Lcom/google/googlenav/ui/bg;

    sget-object v6, Lcom/google/googlenav/ui/bg;->bw:Lcom/google/googlenav/ui/bg;

    invoke-static {v3, v4, v5, v6}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;)V

    aget-object v4, v1, v0

    iget-object v4, v4, Lcom/google/googlenav/am;->a:Ljava/lang/String;

    sget-object v5, Lcom/google/googlenav/ui/bg;->bv:Lcom/google/googlenav/ui/bg;

    sget-object v6, Lcom/google/googlenav/ui/bg;->bw:Lcom/google/googlenav/ui/bg;

    invoke-static {v3, v4, v5, v6}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;)V

    aget-object v4, v1, v0

    iget-object v4, v4, Lcom/google/googlenav/am;->c:Ljava/lang/String;

    sget-object v5, Lcom/google/googlenav/ui/bg;->bv:Lcom/google/googlenav/ui/bg;

    sget-object v6, Lcom/google/googlenav/ui/bg;->bw:Lcom/google/googlenav/ui/bg;

    invoke-static {v3, v4, v5, v6}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;)V

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_49

    const-string v4, " "

    sget-object v5, Lcom/google/googlenav/ui/bg;->bv:Lcom/google/googlenav/ui/bg;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_4c
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    goto :goto_55

    :cond_65
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6e

    move-object v0, v1

    :goto_6c
    move-object v2, v0

    :cond_6d
    :goto_6d
    return-object v2

    :cond_6e
    move-object v0, v2

    goto :goto_6c

    :cond_70
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->P(Lcom/google/googlenav/ui/view/android/bO;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_6d

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->P(Lcom/google/googlenav/ui/view/android/bO;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ak;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    sget-object v4, Lcom/google/googlenav/ui/bg;->bv:Lcom/google/googlenav/ui/bg;

    sget-object v5, Lcom/google/googlenav/ui/bg;->bv:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v3, v4, v5}, LaY/aq;->a(Lcom/google/googlenav/ak;Ljava/util/Vector;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;)Z

    move-result v0

    if-eqz v0, :cond_7e

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;Landroid/text/SpannableStringBuilder;)V

    goto :goto_a2

    :cond_b2
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6d

    move-object v2, v1

    goto :goto_6d
.end method

.method private f(Lcom/google/googlenav/ui/view/android/bO;)Lcom/google/googlenav/ui/bG;
    .registers 5

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->O(Lcom/google/googlenav/ui/view/android/bO;)Lcom/google/googlenav/ao;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->O(Lcom/google/googlenav/ui/view/android/bO;)Lcom/google/googlenav/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ao;->d()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Lcom/google/googlenav/ui/bG;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->O(Lcom/google/googlenav/ui/view/android/bO;)Lcom/google/googlenav/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ao;->c()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/googlenav/ui/bw;->by:I

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/bG;-><init>(Ljava/lang/String;I)V

    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private g(Lcom/google/googlenav/ui/view/android/bO;)Lai/f;
    .registers 6

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->O(Lcom/google/googlenav/ui/view/android/bO;)Lcom/google/googlenav/ao;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->O(Lcom/google/googlenav/ui/view/android/bO;)Lcom/google/googlenav/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ao;->d()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->R:Lcom/google/googlenav/ui/bF;

    new-instance v1, Lcom/google/googlenav/ui/bG;

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/bO;->O(Lcom/google/googlenav/ui/view/android/bO;)Lcom/google/googlenav/ao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ao;->c()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/google/googlenav/ui/bw;->by:I

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/ui/bG;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bF;->a(Lcom/google/googlenav/ui/aj;)Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    goto :goto_7

    :cond_2a
    sget-object v0, Lcom/google/googlenav/ui/view/android/bN;->a:Lai/f;

    goto :goto_7
.end method


# virtual methods
.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 3

    new-instance v0, Lcom/google/googlenav/ui/view/android/bP;

    invoke-direct {v0}, Lcom/google/googlenav/ui/view/android/bP;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/google/googlenav/ui/view/android/bN;->a(Lcom/google/googlenav/ui/view/android/bP;Landroid/view/View;)V

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 8

    const/16 v1, 0x8

    const/4 v2, 0x0

    check-cast p2, Lcom/google/googlenav/ui/view/android/bP;

    invoke-virtual {p2}, Lcom/google/googlenav/ui/view/android/bP;->a()V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->G:Lcom/google/googlenav/ui/view/android/bQ;

    iget v0, v0, Lcom/google/googlenav/ui/view/android/bQ;->a:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1c

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->G:Lcom/google/googlenav/ui/view/android/bQ;

    iget v3, p0, Lcom/google/googlenav/ui/view/android/bN;->P:I

    iput v3, v0, Lcom/google/googlenav/ui/view/android/bQ;->b:I

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->b:Landroid/view/View;

    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bP;->G:Lcom/google/googlenav/ui/view/android/bQ;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/view/android/h;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    :cond_1c
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->b:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->d:Landroid/widget/CheckBox;

    if-eqz v0, :cond_4e

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bN;->B:Z

    if-eqz v0, :cond_18f

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->d:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/google/googlenav/ui/view/android/bN;->D:Z

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->H:Lcom/google/googlenav/ui/view/android/bQ;

    iget v3, p0, Lcom/google/googlenav/ui/view/android/bN;->P:I

    iput v3, v0, Lcom/google/googlenav/ui/view/android/bQ;->b:I

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->H:Lcom/google/googlenav/ui/view/android/bQ;

    iput-object p0, v0, Lcom/google/googlenav/ui/view/android/bQ;->d:Lcom/google/googlenav/ui/view/android/bN;

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->H:Lcom/google/googlenav/ui/view/android/bQ;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->C:Lcom/google/googlenav/ah;

    iput-object v3, v0, Lcom/google/googlenav/ui/view/android/bQ;->c:Lcom/google/googlenav/ah;

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->d:Landroid/widget/CheckBox;

    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bP;->H:Lcom/google/googlenav/ui/view/android/bQ;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/view/android/h;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    :cond_4e
    :goto_4e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->c:[Ljava/lang/CharSequence;

    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bP;->e:[Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/view/android/bN;->a([Ljava/lang/CharSequence;[Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->d:[Ljava/lang/CharSequence;

    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bP;->f:[Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/view/android/bN;->a([Ljava/lang/CharSequence;[Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->e:[Ljava/lang/CharSequence;

    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bP;->g:[Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/view/android/bN;->a([Ljava/lang/CharSequence;[Landroid/widget/TextView;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->f:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_83

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->J:Lcom/google/googlenav/ui/view/android/bR;

    if-eqz v0, :cond_83

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->J:Lcom/google/googlenav/ui/view/android/bR;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->f:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/googlenav/ui/view/android/bR;->a:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->j:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bP;->J:Lcom/google/googlenav/ui/view/android/bR;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/view/android/h;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    :cond_83
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->k:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->h:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9f

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->M:Lcom/google/googlenav/ui/view/android/bT;

    if-eqz v0, :cond_9f

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->M:Lcom/google/googlenav/ui/view/android/bT;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->i:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/googlenav/ui/view/android/bT;->a:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->k:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bP;->M:Lcom/google/googlenav/ui/view/android/bT;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/view/android/h;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    :cond_9f
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->l:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->j:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->m:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->k:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->s:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->l:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->t:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->m:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bP;->u:Landroid/view/View;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->n:Ljava/lang/CharSequence;

    if-nez v0, :cond_196

    move v0, v1

    :goto_c2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->v:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->n:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->w:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->o:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->x:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->p:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->y:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->q:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->z:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->s:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_fd

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->L:Lcom/google/googlenav/ui/view/android/bT;

    if-eqz v0, :cond_fd

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->L:Lcom/google/googlenav/ui/view/android/bT;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->r:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/googlenav/ui/view/android/bT;->a:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->z:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bP;->L:Lcom/google/googlenav/ui/view/android/bT;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/view/android/h;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    :cond_fd
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->A:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->t:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->x:Lcom/google/googlenav/ui/bG;

    if-eqz v3, :cond_113

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->R:Lcom/google/googlenav/ui/bF;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->x:Lcom/google/googlenav/ui/bG;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/bF;->a(Lcom/google/googlenav/ui/aj;)Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    :cond_113
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bP;->F:Landroid/widget/ImageView;

    invoke-static {v3, v0}, Lbd/l;->a(Landroid/widget/ImageView;Lai/f;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->F:Landroid/widget/ImageView;

    if-eqz v0, :cond_12d

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->K:Lcom/google/googlenav/ui/view/android/bS;

    if-eqz v0, :cond_12d

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->K:Lcom/google/googlenav/ui/view/android/bS;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->y:Lbb/a;

    iput-object v3, v0, Lcom/google/googlenav/ui/view/android/bS;->a:Lbb/a;

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->F:Landroid/widget/ImageView;

    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bP;->K:Lcom/google/googlenav/ui/view/android/bS;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/view/android/h;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    :cond_12d
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->h:Lcom/google/googlenav/ui/view/android/DistanceView;

    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bP;->i:Lcom/google/googlenav/ui/view/android/HeadingView;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bN;->A:LaJ/B;

    invoke-static {v0, v3, v4}, Lcom/google/googlenav/ui/view/android/bh;->a(Lcom/google/googlenav/ui/view/android/DistanceView;Lcom/google/googlenav/ui/view/android/HeadingView;LaJ/B;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->v:Lai/f;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->w:Lcom/google/googlenav/ui/bG;

    if-eqz v3, :cond_146

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->R:Lcom/google/googlenav/ui/bF;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->w:Lcom/google/googlenav/ui/bG;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/bF;->a(Lcom/google/googlenav/ui/aj;)Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    :cond_146
    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bP;->C:Landroid/widget/ImageView;

    invoke-static {v3, v0}, Lbd/l;->a(Landroid/widget/ImageView;Lai/f;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->B:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->u:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->D:Landroid/widget/ImageView;

    if-eqz v0, :cond_15d

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->D:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->z:Lai/f;

    invoke-static {v0, v3}, Lbd/l;->a(Landroid/widget/ImageView;Lai/f;)V

    :cond_15d
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->E:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_172

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->I:Lcom/google/googlenav/ui/view/android/bQ;

    if-eqz v0, :cond_172

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->I:Lcom/google/googlenav/ui/view/android/bQ;

    iget v3, p0, Lcom/google/googlenav/ui/view/android/bN;->P:I

    iput v3, v0, Lcom/google/googlenav/ui/view/android/bQ;->b:I

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->E:Landroid/widget/LinearLayout;

    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bP;->I:Lcom/google/googlenav/ui/view/android/bQ;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/view/android/h;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    :cond_172
    move v0, v2

    :goto_173
    const/4 v3, 0x4

    if-ge v0, v3, :cond_199

    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bP;->n:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bN;->K:[Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v3, p2, Lcom/google/googlenav/ui/view/android/bP;->o:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bN;->L:[Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_173

    :cond_18f
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_4e

    :cond_196
    move v0, v2

    goto/16 :goto_c2

    :cond_199
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->p:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->N:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->q:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->O:Lai/f;

    invoke-static {v0, v3}, Lbd/l;->a(Landroid/widget/ImageView;Lai/f;)V

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->r:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1b4

    iget v0, p0, Lcom/google/googlenav/ui/view/android/bN;->M:I

    if-lez v0, :cond_1b5

    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1b4
    :goto_1b4
    return-void

    :cond_1b5
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bP;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1b4
.end method

.method protected a(Lcom/google/googlenav/ui/view/android/bP;Landroid/view/View;)V
    .registers 10

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p2, p1, Lcom/google/googlenav/ui/view/android/bP;->b:Landroid/view/View;

    const v0, 0x7f0f0006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->c:Landroid/widget/TextView;

    const v0, 0x7f0f0295

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->d:Landroid/widget/CheckBox;

    iget-object v1, p1, Lcom/google/googlenav/ui/view/android/bP;->e:[Landroid/widget/TextView;

    const v0, 0x7f0f016a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    iget-object v1, p1, Lcom/google/googlenav/ui/view/android/bP;->e:[Landroid/widget/TextView;

    const v0, 0x7f0f016b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    iget-object v1, p1, Lcom/google/googlenav/ui/view/android/bP;->e:[Landroid/widget/TextView;

    const v0, 0x7f0f0298

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v4

    iget-object v1, p1, Lcom/google/googlenav/ui/view/android/bP;->f:[Landroid/widget/TextView;

    const v0, 0x7f0f0296

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    iget-object v1, p1, Lcom/google/googlenav/ui/view/android/bP;->f:[Landroid/widget/TextView;

    const v0, 0x7f0f0297

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    iget-object v1, p1, Lcom/google/googlenav/ui/view/android/bP;->g:[Landroid/widget/TextView;

    const v0, 0x7f0f029a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    iget-object v1, p1, Lcom/google/googlenav/ui/view/android/bP;->g:[Landroid/widget/TextView;

    const v0, 0x7f0f029b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    const v0, 0x7f0f0166

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/DistanceView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->h:Lcom/google/googlenav/ui/view/android/DistanceView;

    const v0, 0x7f0f0167

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/HeadingView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->i:Lcom/google/googlenav/ui/view/android/HeadingView;

    const v0, 0x7f0f029c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->j:Landroid/widget/TextView;

    const v0, 0x7f0f029d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->k:Landroid/widget/TextView;

    const v0, 0x7f0f029e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->l:Landroid/widget/TextView;

    const v0, 0x7f0f029f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->m:Landroid/widget/TextView;

    const v0, 0x7f0f023c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->s:Landroid/widget/TextView;

    const v0, 0x7f0f02a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->t:Landroid/widget/TextView;

    const v0, 0x7f0f004a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->u:Landroid/view/View;

    const v0, 0x7f0f02a3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->v:Landroid/widget/TextView;

    const v0, 0x7f0f02a8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->w:Landroid/widget/TextView;

    const v0, 0x7f0f02a4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->x:Landroid/widget/TextView;

    const v0, 0x7f0f004d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->y:Landroid/widget/TextView;

    const v0, 0x7f0f02a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->z:Landroid/widget/TextView;

    const v0, 0x7f0f004e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->A:Landroid/widget/TextView;

    const v0, 0x7f0f02a6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->B:Landroid/widget/TextView;

    const v0, 0x7f0f02a5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->C:Landroid/widget/ImageView;

    const v0, 0x7f0f0002

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->D:Landroid/widget/ImageView;

    const v0, 0x7f0f0245

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->E:Landroid/widget/LinearLayout;

    const v0, 0x7f0f002b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->F:Landroid/widget/ImageView;

    new-instance v0, Lcom/google/googlenav/ui/view/android/bQ;

    iget v1, p0, Lcom/google/googlenav/ui/view/android/bN;->Q:I

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/bQ;-><init>(Lcom/google/googlenav/ui/view/android/bN;I)V

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->G:Lcom/google/googlenav/ui/view/android/bQ;

    new-instance v0, Lcom/google/googlenav/ui/view/android/bQ;

    const/16 v1, 0x578

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/bQ;-><init>(Lcom/google/googlenav/ui/view/android/bN;I)V

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->H:Lcom/google/googlenav/ui/view/android/bQ;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_1eb

    iget-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->E:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1eb

    new-instance v0, Lcom/google/googlenav/ui/view/android/bQ;

    invoke-direct {v0, p0, v4}, Lcom/google/googlenav/ui/view/android/bQ;-><init>(Lcom/google/googlenav/ui/view/android/bN;I)V

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->I:Lcom/google/googlenav/ui/view/android/bQ;

    :goto_178
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bN;->g:Z

    if-eqz v0, :cond_1ee

    new-instance v0, Lcom/google/googlenav/ui/view/android/bR;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bN;->f:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/bR;-><init>(Lcom/google/googlenav/ui/view/android/bN;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->J:Lcom/google/googlenav/ui/view/android/bR;

    :goto_189
    new-instance v0, Lcom/google/googlenav/ui/view/android/bS;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bN;->y:Lbb/a;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/bS;-><init>(Lcom/google/googlenav/ui/view/android/bN;Lbb/a;)V

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->K:Lcom/google/googlenav/ui/view/android/bS;

    new-instance v0, Lcom/google/googlenav/ui/view/android/bT;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bN;->r:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/bT;-><init>(Lcom/google/googlenav/ui/view/android/bN;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->L:Lcom/google/googlenav/ui/view/android/bT;

    new-instance v0, Lcom/google/googlenav/ui/view/android/bT;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bN;->i:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/bT;-><init>(Lcom/google/googlenav/ui/view/android/bN;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->M:Lcom/google/googlenav/ui/view/android/bT;

    iget-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->b:Landroid/view/View;

    const v1, 0x7f0f02ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1f1

    iget-object v1, p1, Lcom/google/googlenav/ui/view/android/bP;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    move v3, v2

    :goto_1c0
    const/4 v2, 0x4

    if-ge v3, v2, :cond_1f1

    const v2, 0x7f0300eb

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p1, Lcom/google/googlenav/ui/view/android/bP;->n:[Landroid/widget/TextView;

    const v2, 0x7f0f004b

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v5, v3

    iget-object v5, p1, Lcom/google/googlenav/ui/view/android/bP;->o:[Landroid/widget/TextView;

    const v2, 0x7f0f02af

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v5, v3

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1c0

    :cond_1eb
    iput-object v6, p1, Lcom/google/googlenav/ui/view/android/bP;->I:Lcom/google/googlenav/ui/view/android/bQ;

    goto :goto_178

    :cond_1ee
    iput-object v6, p1, Lcom/google/googlenav/ui/view/android/bP;->J:Lcom/google/googlenav/ui/view/android/bR;

    goto :goto_189

    :cond_1f1
    const v0, 0x7f0f02ab

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->q:Landroid/widget/ImageView;

    const v0, 0x7f0f02ad

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->p:Landroid/widget/TextView;

    const v0, 0x7f0f02aa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/google/googlenav/ui/view/android/bP;->r:Landroid/widget/LinearLayout;

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/view/android/bN;->G:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/view/android/bN;->I:I

    return v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bN;->H:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    const/16 v7, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bN;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bN;->b:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_11
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bN;->c:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_31

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bN;->c:[Ljava/lang/CharSequence;

    array-length v4, v3

    move v1, v0

    :goto_1c
    if-ge v1, v4, :cond_31

    aget-object v5, v3, v1

    if-eqz v5, :cond_2e

    if-lez v0, :cond_29

    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_31
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->l:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3d

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->l:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_3d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->m:Ljava/lang/CharSequence;

    if-eqz v0, :cond_49

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->m:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_49
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->n:Ljava/lang/CharSequence;

    if-eqz v0, :cond_55

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->n:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_55
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->o:Ljava/lang/CharSequence;

    if-eqz v0, :cond_61

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->o:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_61
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->p:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6d

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->p:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_6d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->q:Ljava/lang/CharSequence;

    if-eqz v0, :cond_79

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->q:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_79
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->t:Ljava/lang/CharSequence;

    if-eqz v0, :cond_85

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->t:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_85
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->u:Ljava/lang/CharSequence;

    if-eqz v0, :cond_91

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->u:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
