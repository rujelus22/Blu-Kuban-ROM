.class Lcom/google/googlenav/ui/wizard/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/aB;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/S;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/S;)V
    .registers 2
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/U;)V
    .registers 1
    .parameter

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/U;->i()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/U;Lcom/google/googlenav/ui/wizard/bn;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 454
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/U;->a(Lcom/google/googlenav/ui/wizard/bn;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/wizard/bn;)V
    .registers 10
    .parameter

    .prologue
    .line 752
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->b(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    const/16 v1, 0x90

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8f

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x362

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x6b

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/bn;)V

    .line 760
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/U;)V
    .registers 1
    .parameter

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/U;->j()V

    return-void
.end method

.method private i()V
    .registers 3

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->e(Lcom/google/googlenav/ui/wizard/S;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/S;->a(Lcom/google/googlenav/ui/wizard/S;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 738
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/am;->w()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 739
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/am;->b(Z)V

    .line 740
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/U;->e()V

    .line 741
    const/16 v0, 0x91

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(II)Landroid/widget/Toast;

    .line 745
    :cond_2d
    return-void
.end method

.method private j()V
    .registers 4

    .prologue
    .line 764
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->R()Landroid/content/Context;

    move-result-object v0

    .line 765
    const/16 v1, 0x92

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 767
    new-instance v0, Lcom/google/googlenav/cu;

    invoke-direct {v0}, Lcom/google/googlenav/cu;-><init>()V

    .line 768
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/am;->w()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 769
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->i(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/cu;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 773
    :goto_2f
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->c(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ag;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/S;->i(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/h;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/ag;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/cu;)V

    .line 774
    return-void

    .line 771
    :cond_3f
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->i(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/cu;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_2f
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/S;->a(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method public a(Lcom/google/googlenav/h;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 478
    invoke-virtual {p1}, Lcom/google/googlenav/h;->l()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 479
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->d(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/aE;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/V;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/ui/wizard/V;-><init>(Lcom/google/googlenav/ui/wizard/U;Lcom/google/googlenav/h;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/googlenav/ui/wizard/aE;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/ui/wizard/aJ;)V

    .line 500
    :goto_15
    return-void

    .line 496
    :cond_16
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-virtual {v0, p1, v1}, Lcom/google/googlenav/ui/wizard/S;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/friend/i;)V

    .line 497
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/S;->a(Ljava/util/List;)V

    .line 498
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->c(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ag;->a()V

    goto :goto_15
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/S;->a(Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method public a(Z)V
    .registers 5
    .parameter

    .prologue
    .line 727
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->b(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->I()Lcom/google/googlenav/friend/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/j;->k()Lcom/google/googlenav/friend/i;

    move-result-object v0

    .line 728
    invoke-virtual {v0, p1}, Lcom/google/googlenav/friend/i;->b(Z)V

    .line 729
    new-instance v0, Lcom/google/googlenav/cu;

    invoke-direct {v0}, Lcom/google/googlenav/cu;-><init>()V

    .line 730
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->c(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ag;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/S;->i(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/h;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/ag;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/cu;)V

    .line 731
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->b(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->a(Lcom/google/googlenav/ui/wizard/S;)Lam/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ju;->a(Lam/i;)V

    .line 472
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 686
    new-instance v0, Lcom/google/googlenav/ui/wizard/x;

    invoke-direct {v0}, Lcom/google/googlenav/ui/wizard/x;-><init>()V

    .line 688
    if-eqz p1, :cond_38

    :goto_7
    iput-object p1, v0, Lcom/google/googlenav/ui/wizard/x;->a:Ljava/lang/String;

    .line 689
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->j(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/aU;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/x;->b:Lcom/google/googlenav/aU;

    .line 690
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->k(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/ap;->h()Lat/B;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/x;->c:Lat/B;

    .line 693
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/am;->c(Z)V

    .line 694
    new-instance v1, Lcom/google/googlenav/ui/wizard/ab;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/ab;-><init>(Lcom/google/googlenav/ui/wizard/U;)V

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/x;->d:Lcom/google/googlenav/ui/wizard/y;

    .line 719
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->b(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/wizard/x;)V

    .line 720
    return-void

    .line 688
    :cond_38
    const-string p1, ""

    goto :goto_7
.end method

.method public c()V
    .registers 3

    .prologue
    .line 505
    new-instance v0, Lcom/google/googlenav/ui/wizard/gI;

    invoke-direct {v0}, Lcom/google/googlenav/ui/wizard/gI;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/gI;->a(Z)Lcom/google/googlenav/ui/wizard/gI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/gI;->b(Z)Lcom/google/googlenav/ui/wizard/gI;

    move-result-object v0

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/gI;->a(I)Lcom/google/googlenav/ui/wizard/gI;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->e(Lcom/google/googlenav/ui/wizard/S;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/gI;->a(Ljava/util/List;)Lcom/google/googlenav/ui/wizard/gI;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->b(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->H()Lah/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/gI;->a(Lah/s;)Lcom/google/googlenav/ui/wizard/gI;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/W;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/W;-><init>(Lcom/google/googlenav/ui/wizard/U;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/gI;->a(Lcom/google/googlenav/ui/wizard/gH;)Lcom/google/googlenav/ui/wizard/gI;

    move-result-object v0

    .line 523
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->b(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/wizard/gI;)V

    .line 524
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 528
    invoke-static {}, Lcom/google/googlenav/K;->p()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 529
    const-string v0, "Check in"

    invoke-static {v0}, LP/a;->b(Ljava/lang/String;)V

    .line 532
    :cond_b
    invoke-static {}, Lcom/google/googlenav/friend/Y;->k()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 534
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->f(Lcom/google/googlenav/ui/wizard/S;)V

    .line 578
    :goto_16
    return-void

    .line 541
    :cond_17
    new-instance v0, Lcom/google/googlenav/ui/wizard/X;

    invoke-static {}, Lcom/google/googlenav/friend/Y;->i()Lcom/google/googlenav/friend/Y;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/wizard/X;-><init>(Lcom/google/googlenav/ui/wizard/U;Lcom/google/googlenav/friend/bk;)V

    .line 577
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->b(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/bf;->a(Lcom/google/googlenav/ui/wizard/ju;)V

    goto :goto_16
.end method

.method public e()V
    .registers 4

    .prologue
    .line 583
    invoke-static {}, Lcom/google/googlenav/friend/au;->k()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/am;->w()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    .line 586
    :goto_13
    new-instance v1, Lcom/google/googlenav/ui/wizard/Y;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/Y;-><init>(Lcom/google/googlenav/ui/wizard/U;)V

    .line 604
    if-eqz v0, :cond_2f

    .line 605
    new-instance v0, Lcom/google/googlenav/ui/wizard/Z;

    invoke-static {}, Lcom/google/googlenav/friend/ae;->e()Lcom/google/googlenav/friend/bk;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/google/googlenav/ui/wizard/Z;-><init>(Lcom/google/googlenav/ui/wizard/U;Lcom/google/googlenav/friend/bk;Lcom/google/googlenav/ui/wizard/bn;)V

    .line 625
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->b(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/bf;->a(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 633
    :goto_2c
    return-void

    .line 583
    :cond_2d
    const/4 v0, 0x0

    goto :goto_13

    .line 627
    :cond_2f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/am;->w()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/S;->e(Lcom/google/googlenav/ui/wizard/S;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/wizard/S;->a(Lcom/google/googlenav/ui/wizard/S;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 628
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/U;->a(Lcom/google/googlenav/ui/wizard/bn;)V

    goto :goto_2c

    .line 630
    :cond_4d
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/U;->j()V

    goto :goto_2c
.end method

.method public f()V
    .registers 4

    .prologue
    .line 638
    new-instance v0, Lcom/google/googlenav/cu;

    invoke-direct {v0}, Lcom/google/googlenav/cu;-><init>()V

    .line 640
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/am;->x()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 641
    invoke-static {}, Lcom/google/googlenav/friend/ae;->a()Z

    move-result v1

    if-nez v1, :cond_42

    .line 642
    invoke-static {}, Lcom/google/googlenav/friend/E;->i()Lcom/google/googlenav/friend/E;

    move-result-object v1

    const/16 v2, 0x842

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/E;->a(I)V

    .line 644
    new-instance v1, Lcom/google/googlenav/ui/wizard/aa;

    invoke-static {}, Lcom/google/googlenav/friend/E;->i()Lcom/google/googlenav/friend/E;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/google/googlenav/ui/wizard/aa;-><init>(Lcom/google/googlenav/ui/wizard/U;Lcom/google/googlenav/friend/bk;Lcom/google/googlenav/cu;)V

    .line 673
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/S;->b(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/bf;->a(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 680
    :goto_32
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->c(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ag;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/S;->i(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/h;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/ag;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/cu;)V

    .line 681
    return-void

    .line 675
    :cond_42
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->i(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/cu;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_32

    .line 678
    :cond_4f
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->i(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/cu;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_32
.end method

.method public g()V
    .registers 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->g(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/ac;->e()V

    .line 779
    return-void
.end method

.method public h()V
    .registers 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->g(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/ac;->b()V

    .line 789
    return-void
.end method
