.class public Lcom/google/googlenav/ui/wizard/dB;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field a:Ljava/lang/String;

.field g:Lbd/az;

.field h:Lbd/an;

.field final i:LaM/f;

.field j:Lcom/google/googlenav/ui/wizard/cR;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/hM;LaM/f;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    const-string v0, "recent"

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dB;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/dB;->i:LaM/f;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Landroid/view/View;
    .registers 4

    const/4 v0, 0x0

    const-string v1, "stars"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dB;->g:Lbd/az;

    invoke-virtual {v0}, Lbd/az;->c()Landroid/view/View;

    move-result-object v0

    :cond_f
    :goto_f
    if-eqz v0, :cond_1a

    const-string v1, "card_id"

    invoke-static {v1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1a
    return-object v0

    :cond_1b
    const-string v1, "recent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dB;->h:Lbd/an;

    invoke-virtual {v0}, Lbd/an;->c()Landroid/view/View;

    move-result-object v0

    goto :goto_f
.end method

.method public a(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dB;->g:Lbd/az;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dB;->g:Lbd/az;

    invoke-virtual {v0, p1}, Lbd/az;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method protected a(Landroid/widget/TabHost;Lcom/google/googlenav/ui/Workspace;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Landroid/view/View;)V
    .registers 10

    invoke-virtual {p1, p3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dB;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bs;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    const v1, 0x7f0f03a0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    invoke-interface {p6}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p6, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p7}, Lcom/google/googlenav/ui/Workspace;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return-void
.end method

.method public a(Lcom/google/googlenav/L;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dB;->r()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/dB;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dB;->l()V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/googlenav/L;->c(Z)V

    goto :goto_6
.end method

.method public a(Lcom/google/googlenav/L;Ljava/lang/String;Lcom/google/googlenav/ui/wizard/cR;)V
    .registers 4

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/dB;->j:Lcom/google/googlenav/ui/wizard/cR;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/dB;->a(Lcom/google/googlenav/L;Ljava/lang/String;)V

    return-void
.end method

.method protected b()V
    .registers 7

    new-instance v0, Lbd/an;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dB;->i:LaM/f;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dB;->b:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/dB;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/dB;->j:Lcom/google/googlenav/ui/wizard/cR;

    new-instance v5, Lcom/google/googlenav/ui/wizard/dC;

    invoke-direct {v5, p0}, Lcom/google/googlenav/ui/wizard/dC;-><init>(Lcom/google/googlenav/ui/wizard/dB;)V

    invoke-direct/range {v0 .. v5}, Lbd/an;-><init>(LaM/f;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;Lcom/google/googlenav/ui/wizard/cR;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dB;->h:Lbd/an;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dB;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/L;->j()LaY/aT;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dB;->j:Lcom/google/googlenav/ui/wizard/cR;

    invoke-virtual {v0, v1}, LaY/aT;->a(Lcom/google/googlenav/ui/wizard/cR;)V

    new-instance v1, Lbd/az;

    invoke-direct {v1, v0}, Lbd/az;-><init>(LaY/aT;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/dB;->g:Lbd/az;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dB;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dB;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->hide()V

    :cond_37
    new-instance v0, Lcom/google/googlenav/ui/wizard/dD;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/dD;-><init>(Lcom/google/googlenav/ui/wizard/dB;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dB;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dB;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    return-void
.end method

.method protected c()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/dB;->j:Lcom/google/googlenav/ui/wizard/cR;

    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v0

    invoke-virtual {v0}, LaM/e;->b()LaM/B;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dB;->h:Lbd/an;

    invoke-interface {v0, v1}, LaM/B;->b(LaM/C;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dB;->g:Lbd/az;

    invoke-interface {v0, v1}, LaM/B;->b(LaM/C;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dB;->h:Lbd/an;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dB;->h:Lbd/an;

    invoke-virtual {v0}, Lbd/an;->dismiss()V

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/dB;->h:Lbd/an;

    :cond_23
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dB;->g:Lbd/az;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dB;->g:Lbd/az;

    invoke-virtual {v0}, Lbd/az;->dismiss()V

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/dB;->g:Lbd/az;

    :cond_2e
    return-void
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dB;->g:Lbd/az;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dB;->g:Lbd/az;

    invoke-virtual {v0}, Lbd/az;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dB;->g:Lbd/az;

    invoke-virtual {v0}, Lbd/az;->h()V

    :cond_11
    return-void
.end method

.method public o()V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dB;->j:Lcom/google/googlenav/ui/wizard/cR;

    if-eqz v0, :cond_3b

    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dB;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->v()Lcom/google/googlenav/ui/wizard/cA;

    move-result-object v0

    const/16 v1, 0x32c

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/cA;->a(IILjava/lang/Object;)Z

    :cond_18
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dB;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->c()Lcom/google/googlenav/ui/wizard/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_37

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->d()Lcom/google/googlenav/ui/wizard/y;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dB;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/google/googlenav/L;->b(I)V

    :cond_37
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dB;->a()V

    return-void

    :cond_3b
    const/4 v0, 0x0

    goto :goto_5
.end method
