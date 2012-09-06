.class Lcom/google/googlenav/ui/wizard/cQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/cM;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/cM;)V
    .registers 2
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/cM;Lcom/google/googlenav/ui/wizard/cN;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/cQ;-><init>(Lcom/google/googlenav/ui/wizard/cM;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v5, 0x43

    .line 429
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/a;

    .line 431
    if-eqz v0, :cond_23

    .line 432
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->d()Lcom/google/googlenav/ui/view/a;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/a;->a()I

    move-result v3

    .line 436
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/a;->b()I

    move-result v4

    .line 438
    packed-switch v3, :pswitch_data_1dc

    .line 544
    :cond_23
    :goto_23
    :pswitch_23
    return-void

    .line 440
    :pswitch_24
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cM;->a(Lcom/google/googlenav/ui/wizard/cM;)LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->L()Ljava/util/Vector;

    move-result-object v0

    .line 441
    if-le v4, v6, :cond_4c

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v1, v4, :cond_4c

    .line 443
    const-string v1, "f"

    const-string v2, "r"

    invoke-static {v5, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/cM;->a(Lcom/google/googlenav/ui/wizard/cM;)LaM/am;

    move-result-object v1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    invoke-virtual {v1, v0}, LaM/am;->f(LaM/i;)V

    .line 448
    :cond_4c
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cM;->a()V

    goto :goto_23

    .line 451
    :pswitch_52
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cM;->a(Lcom/google/googlenav/ui/wizard/cM;)LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->K()Ljava/util/Vector;

    move-result-object v0

    .line 452
    if-le v4, v6, :cond_73

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v1, v4, :cond_73

    .line 454
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/cM;->a(Lcom/google/googlenav/ui/wizard/cM;)LaM/am;

    move-result-object v1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    invoke-virtual {v1, v0}, LaM/am;->g(LaM/i;)V

    .line 456
    :cond_73
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cM;->a()V

    goto :goto_23

    .line 459
    :pswitch_79
    const-string v0, "f"

    const-string v3, "l"

    invoke-static {v5, v0, v3}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cM;->a()V

    .line 463
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cM;->b(Lcom/google/googlenav/ui/wizard/cM;)Lcom/google/googlenav/J;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/J;->e()Z

    move-result v0

    if-nez v0, :cond_a4

    .line 464
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cM;->a(Lcom/google/googlenav/ui/wizard/cM;)LaM/am;

    move-result-object v0

    invoke-virtual {v0, v1}, LaM/am;->e(I)V

    .line 465
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cM;->b(Lcom/google/googlenav/ui/wizard/cM;)Lcom/google/googlenav/J;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->b(Z)V

    goto :goto_23

    .line 467
    :cond_a4
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cM;->b(Lcom/google/googlenav/ui/wizard/cM;)Lcom/google/googlenav/J;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/googlenav/J;->b(Z)V

    goto/16 :goto_23

    .line 471
    :pswitch_af
    const-string v0, "f"

    const-string v3, "t"

    invoke-static {v5, v0, v3}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cM;->b(Lcom/google/googlenav/ui/wizard/cM;)Lcom/google/googlenav/J;

    move-result-object v3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cM;->b(Lcom/google/googlenav/ui/wizard/cM;)Lcom/google/googlenav/J;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/J;->d()Z

    move-result v0

    if-nez v0, :cond_d3

    move v0, v1

    :goto_c9
    invoke-interface {v3, v0, v2}, Lcom/google/googlenav/J;->a(ZZ)V

    .line 476
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cM;->a()V

    goto/16 :goto_23

    :cond_d3
    move v0, v2

    .line 474
    goto :goto_c9

    .line 479
    :pswitch_d5
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cM;->b(Lcom/google/googlenav/ui/wizard/cM;)Lcom/google/googlenav/J;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/J;->b()I

    move-result v0

    if-eq v0, v1, :cond_f8

    .line 480
    const-string v0, "f"

    const-string v2, "s"

    invoke-static {v5, v0, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cM;->b(Lcom/google/googlenav/ui/wizard/cM;)Lcom/google/googlenav/J;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(I)Z

    .line 487
    :goto_f1
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cM;->a()V

    goto/16 :goto_23

    .line 485
    :cond_f8
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cM;->b(Lcom/google/googlenav/ui/wizard/cM;)Lcom/google/googlenav/J;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/googlenav/J;->a(I)Z

    goto :goto_f1

    .line 490
    :pswitch_102
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cM;->b(Lcom/google/googlenav/ui/wizard/cM;)Lcom/google/googlenav/J;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/J;->b()I

    move-result v0

    if-eq v0, v7, :cond_125

    .line 491
    const-string v0, "f"

    const-string v1, "n"

    invoke-static {v5, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cM;->b(Lcom/google/googlenav/ui/wizard/cM;)Lcom/google/googlenav/J;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/google/googlenav/J;->a(I)Z

    .line 498
    :goto_11e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cM;->a()V

    goto/16 :goto_23

    .line 496
    :cond_125
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cM;->b(Lcom/google/googlenav/ui/wizard/cM;)Lcom/google/googlenav/J;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/googlenav/J;->a(I)Z

    goto :goto_11e

    .line 501
    :pswitch_12f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cM;->b(Lcom/google/googlenav/ui/wizard/cM;)Lcom/google/googlenav/J;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/J;->c()Z

    move-result v0

    if-nez v0, :cond_152

    .line 502
    const-string v0, "f"

    const-string v2, "c"

    invoke-static {v5, v0, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cM;->b(Lcom/google/googlenav/ui/wizard/cM;)Lcom/google/googlenav/J;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->b_(Z)V

    .line 509
    :goto_14b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cM;->a()V

    goto/16 :goto_23

    .line 507
    :cond_152
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cM;->b(Lcom/google/googlenav/ui/wizard/cM;)Lcom/google/googlenav/J;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/googlenav/J;->b_(Z)V

    goto :goto_14b

    .line 512
    :pswitch_15c
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/m;

    .line 513
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/cM;->a(Lcom/google/googlenav/ui/wizard/cM;)LaM/am;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, LaM/am;->e(Ljava/lang/String;)LaM/i;

    move-result-object v1

    check-cast v1, LaM/y;

    .line 515
    if-nez v1, :cond_19d

    .line 516
    const-string v1, "f"

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v1, v3}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LayerTransit"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18d

    .line 520
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/m;->a(Ljava/lang/String;)V

    .line 522
    :cond_18d
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/cM;->a(Lcom/google/googlenav/ui/wizard/cM;)LaM/am;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, LaM/am;->b(Lcom/google/googlenav/layer/m;Z)LaM/y;

    .line 529
    :cond_196
    :goto_196
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cM;->a()V

    goto/16 :goto_23

    .line 524
    :cond_19d
    invoke-virtual {v1}, LaM/y;->bG()V

    .line 525
    invoke-virtual {v1}, LaM/y;->bH()Z

    move-result v0

    if-eqz v0, :cond_196

    .line 526
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cM;->a(Lcom/google/googlenav/ui/wizard/cM;)LaM/am;

    move-result-object v0

    invoke-virtual {v0, v1}, LaM/am;->g(LaM/i;)V

    goto :goto_196

    .line 532
    :pswitch_1b0
    invoke-static {}, Lcom/google/googlenav/K;->p()Z

    move-result v0

    if-eqz v0, :cond_1bb

    .line 533
    const-string v0, "My Maps"

    invoke-static {v0}, LP/a;->b(Ljava/lang/String;)V

    .line 536
    :cond_1bb
    const-string v0, "f"

    const/16 v1, 0x3ed

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/cM;->a(Lcom/google/googlenav/ui/wizard/cM;)LaM/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/cM;->b(LaM/am;)Lcom/google/googlenav/ui/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ay;->b()V

    .line 540
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cQ;->a:Lcom/google/googlenav/ui/wizard/cM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cM;->a()V

    goto/16 :goto_23

    .line 438
    :pswitch_data_1dc
    .packed-switch 0x3e9
        :pswitch_52
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_1b0
        :pswitch_23
        :pswitch_23
        :pswitch_79
        :pswitch_af
        :pswitch_23
        :pswitch_d5
        :pswitch_102
        :pswitch_23
        :pswitch_23
        :pswitch_12f
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_15c
    .end packed-switch
.end method
