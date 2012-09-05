.class public Lcom/google/googlenav/ui/view/android/be;
.super Lcom/google/googlenav/ui/view/android/bh;


# instance fields
.field private c:Lcom/google/googlenav/ui/view/android/bj;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/p;Lbb/f;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/bh;-><init>(Lcom/google/googlenav/ui/p;Lbb/f;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/be;)Lcom/google/googlenav/ui/view/android/bj;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/be;->c:Lcom/google/googlenav/ui/view/android/bj;

    return-object v0
.end method

.method private a(Ljava/lang/String;ILah/f;Ljava/util/Vector;)V
    .registers 8

    sget-object v0, Lcom/google/googlenav/ui/bg;->as:Lcom/google/googlenav/ui/bg;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-static {p2}, Lcom/google/googlenav/ui/bw;->f(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bw;->p()Lah/g;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;Lah/g;)Lcom/google/googlenav/ui/bn;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/bm;

    invoke-direct {v2}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/bm;->b(Lah/f;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private w()V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/be;->c:Lcom/google/googlenav/ui/view/android/bj;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/be;->c:Lcom/google/googlenav/ui/view/android/bj;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bj;->dismiss()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/be;->f:Lcom/google/googlenav/ui/p;

    const/16 v1, 0x149

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    :cond_12
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Lbb/o;Landroid/widget/AbsListView;)Landroid/view/View;
    .registers 8

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/googlenav/ui/view/android/bh;->a(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Lbb/o;Landroid/widget/AbsListView;)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    if-eqz v1, :cond_24

    invoke-static {}, Lcom/google/googlenav/android/a;->a()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p3, Lbb/o;->h:Lbb/n;

    iget-object v0, v0, Lbb/n;->l:Lcom/google/googlenav/ui/bl;

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->A:Ljava/lang/Object;

    check-cast v0, Lax/aP;

    invoke-virtual {v0}, Lax/aP;->b()Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v0}, Lax/aP;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/googlenav/android/H;->a(Ljava/lang/String;Landroid/view/View;)V

    :cond_24
    return-object v1
.end method

.method protected b(I)V
    .registers 10

    const/16 v7, 0x136

    const/16 v6, 0x135

    const/16 v5, 0x134

    const/4 v3, 0x0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->p()Lah/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bw;->ai:C

    invoke-interface {v0, v1}, Lah/g;->e(C)Lah/f;

    move-result-object v1

    const/16 v0, 0x1a0

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    if-ne p1, v5, :cond_68

    move-object v0, v1

    :goto_23
    invoke-direct {p0, v2, v5, v0, v4}, Lcom/google/googlenav/ui/view/android/be;->a(Ljava/lang/String;ILah/f;Ljava/util/Vector;)V

    const/16 v0, 0x18f

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    if-ne p1, v6, :cond_6a

    move-object v0, v1

    :goto_2f
    invoke-direct {p0, v2, v6, v0, v4}, Lcom/google/googlenav/ui/view/android/be;->a(Ljava/lang/String;ILah/f;Ljava/util/Vector;)V

    const/16 v0, 0x19a

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    if-ne p1, v7, :cond_6c

    :goto_3a
    invoke-direct {p0, v0, v7, v1, v4}, Lcom/google/googlenav/ui/view/android/be;->a(Ljava/lang/String;ILah/f;Ljava/util/Vector;)V

    new-instance v0, Lbb/o;

    const/4 v1, 0x2

    const/16 v2, 0x442

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;Ljava/util/Vector;Lbb/p;[Laq/a;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/be;->w()V

    new-instance v1, Lcom/google/googlenav/ui/view/android/bj;

    new-instance v2, Lcom/google/googlenav/ui/view/android/bf;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/android/bf;-><init>(Lcom/google/googlenav/ui/view/android/be;)V

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/ui/view/android/bj;-><init>(Lcom/google/googlenav/ui/p;Lbb/o;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/be;->c:Lcom/google/googlenav/ui/view/android/bj;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/be;->c:Lcom/google/googlenav/ui/view/android/bj;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bj;->show()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/be;->f:Lcom/google/googlenav/ui/p;

    const/16 v1, 0x148

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void

    :cond_68
    move-object v0, v3

    goto :goto_23

    :cond_6a
    move-object v0, v3

    goto :goto_2f

    :cond_6c
    move-object v1, v3

    goto :goto_3a
.end method

.method public b(Lcom/google/googlenav/ui/bb;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bb;->g()I

    move-result v0

    const/16 v1, 0x136

    if-eq v0, v1, :cond_10

    const/16 v1, 0x135

    if-eq v0, v1, :cond_10

    const/16 v1, 0x134

    if-ne v0, v1, :cond_15

    :cond_10
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/be;->b(I)V

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/bh;->b(Lcom/google/googlenav/ui/bb;)Z

    move-result v0

    goto :goto_14
.end method

.method protected l()V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/be;->w()V

    return-void
.end method
