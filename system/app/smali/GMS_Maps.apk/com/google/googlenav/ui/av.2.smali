.class public Lcom/google/googlenav/ui/av;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/ui/ad;

.field private final b:Lcom/google/googlenav/ui/D;

.field private final c:LaJ/u;

.field private final d:Lcom/google/googlenav/ui/wizard/hM;

.field private final e:LaY/Y;

.field private final f:Lcom/google/googlenav/ui/at;

.field private final g:Lcom/google/googlenav/ay;

.field private h:Lcom/google/googlenav/ui/aA;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/D;LaY/Y;Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/D;

    iput-object p3, p0, Lcom/google/googlenav/ui/av;->d:Lcom/google/googlenav/ui/wizard/hM;

    iput-object p2, p0, Lcom/google/googlenav/ui/av;->e:LaY/Y;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/D;->r()LaJ/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/av;->c:LaJ/u;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/D;->aw()Lcom/google/googlenav/ui/at;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/av;->f:Lcom/google/googlenav/ui/at;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/D;->af()Lcom/google/googlenav/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/av;->g:Lcom/google/googlenav/ay;

    new-instance v0, Lcom/google/googlenav/ui/ad;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->z()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/D;->ah()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/ad;-><init>(ZZ)V

    iput-object v0, p0, Lcom/google/googlenav/ui/av;->a:Lcom/google/googlenav/ui/ad;

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->a:Lcom/google/googlenav/ui/ad;

    invoke-static {v0}, Lae/d;->a(Lcom/google/googlenav/ui/ae;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aA;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->h:Lcom/google/googlenav/ui/aA;

    return-object v0
.end method

.method private a(I)V
    .registers 3

    packed-switch p1, :pswitch_data_18

    sget-object v0, Lcom/google/googlenav/ui/aA;->a:Lcom/google/googlenav/ui/aA;

    iput-object v0, p0, Lcom/google/googlenav/ui/av;->h:Lcom/google/googlenav/ui/aA;

    :goto_7
    return-void

    :pswitch_8
    sget-object v0, Lcom/google/googlenav/ui/aA;->c:Lcom/google/googlenav/ui/aA;

    iput-object v0, p0, Lcom/google/googlenav/ui/av;->h:Lcom/google/googlenav/ui/aA;

    goto :goto_7

    :pswitch_d
    sget-object v0, Lcom/google/googlenav/ui/aA;->d:Lcom/google/googlenav/ui/aA;

    iput-object v0, p0, Lcom/google/googlenav/ui/av;->h:Lcom/google/googlenav/ui/aA;

    goto :goto_7

    :pswitch_12
    sget-object v0, Lcom/google/googlenav/ui/aA;->b:Lcom/google/googlenav/ui/aA;

    iput-object v0, p0, Lcom/google/googlenav/ui/av;->h:Lcom/google/googlenav/ui/aA;

    goto :goto_7

    nop

    :pswitch_data_18
    .packed-switch 0x7f0e0007
        :pswitch_8
        :pswitch_d
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method static synthetic b(Lcom/google/googlenav/ui/av;)LaY/Y;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->e:LaY/Y;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ay;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->g:Lcom/google/googlenav/ay;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/D;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/D;

    return-object v0
.end method

.method private i()LaY/i;
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->e:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v1

    sget-object v2, Lcom/google/googlenav/ui/az;->a:[I

    iget-object v3, p0, Lcom/google/googlenav/ui/av;->h:Lcom/google/googlenav/ui/aA;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aA;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3a

    goto :goto_9

    :pswitch_1c
    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->e:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->v()LaY/G;

    move-result-object v0

    goto :goto_9

    :pswitch_26
    const/4 v2, 0x3

    if-eq v1, v2, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->e:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->B()LaY/K;

    move-result-object v0

    goto :goto_9

    :pswitch_30
    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->e:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->u()LaY/aG;

    move-result-object v0

    goto :goto_9

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_26
        :pswitch_30
    .end packed-switch
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/aA;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->h:Lcom/google/googlenav/ui/aA;

    return-object v0
.end method

.method public a(Landroid/view/Menu;)V
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->e:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_9b

    invoke-virtual {v0}, LaY/i;->aI()I

    move-result v1

    move v5, v1

    :goto_e
    if-eqz v0, :cond_a1

    invoke-virtual {v0}, LaY/i;->aJ()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v4, v1

    :goto_15
    if-eqz v0, :cond_aa

    invoke-virtual {v0}, LaY/i;->aK()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1b
    iget-object v2, p0, Lcom/google/googlenav/ui/av;->h:Lcom/google/googlenav/ui/aA;

    sget-object v6, Lcom/google/googlenav/ui/aA;->a:Lcom/google/googlenav/ui/aA;

    if-ne v2, v6, :cond_29

    iget-object v2, p0, Lcom/google/googlenav/ui/av;->e:LaY/Y;

    invoke-virtual {v2}, LaY/Y;->Q()Z

    move-result v2

    if-eqz v2, :cond_ad

    :cond_29
    const/4 v2, 0x1

    :goto_2a
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v6

    invoke-virtual {v6, v5, v4, v1, v2}, Lcom/google/googlenav/actionbar/a;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    const v1, 0x7f0f0422

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_43

    iget-object v2, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->aI()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_43
    const v1, 0x7f0f0281

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_55

    if-eqz v0, :cond_55

    invoke-virtual {v0}, LaY/i;->N()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_55
    const v1, 0x7f0f0425

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_67

    if-eqz v0, :cond_67

    invoke-virtual {v0}, LaY/i;->M()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_67
    const v1, 0x7f0f0426

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_7f

    instance-of v2, v0, LaY/G;

    if-eqz v2, :cond_7f

    check-cast v0, LaY/G;

    invoke-virtual {v0}, LaY/G;->bn()Z

    move-result v0

    if-nez v0, :cond_7f

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_7f
    const v0, 0x7f0f040d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_9a

    iget-object v1, p0, Lcom/google/googlenav/ui/av;->h:Lcom/google/googlenav/ui/aA;

    sget-object v2, Lcom/google/googlenav/ui/aA;->b:Lcom/google/googlenav/ui/aA;

    if-ne v1, v2, :cond_b0

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_91
    :goto_91
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    :cond_9a
    return-void

    :cond_9b
    const v1, 0x7f0201d5

    move v5, v1

    goto/16 :goto_e

    :cond_a1
    const/16 v1, 0x255

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto/16 :goto_15

    :cond_aa
    const/4 v1, 0x0

    goto/16 :goto_1b

    :cond_ad
    move v2, v3

    goto/16 :goto_2a

    :cond_b0
    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    goto :goto_91
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->e:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, LaY/i;->aH()I

    move-result v0

    :goto_c
    iget-object v2, p0, Lcom/google/googlenav/ui/av;->e:LaY/Y;

    invoke-virtual {v2}, LaY/Y;->w()LaY/bh;

    move-result-object v2

    if-eqz v2, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->e:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->w()LaY/bh;

    move-result-object v0

    invoke-virtual {v0}, LaY/bh;->aH()I

    move-result v0

    :cond_1e
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/av;->a(I)V

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x0

    :goto_25
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_43

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/aC;->a(Landroid/view/MenuItem;)Laq/a;

    move-result-object v3

    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Laq/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_3f
    const v0, 0x7f0e0006

    goto :goto_c

    :cond_43
    const v0, 0x7f0f00fd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_55

    if-eqz v1, :cond_55

    invoke-virtual {v1}, LaY/i;->aL()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_55
    invoke-static {p1}, Lcom/google/googlenav/ui/aC;->a(Landroid/view/Menu;)V

    invoke-static {p1}, Lcom/google/googlenav/ui/aC;->b(Landroid/view/Menu;)V

    const v0, 0x7f0f040d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_7f

    const/16 v0, 0x40d

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/aw;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/aw;-><init>(Lcom/google/googlenav/ui/av;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/googlenav/actionbar/a;->a(Landroid/view/View;Landroid/view/MenuItem;Lcom/google/googlenav/actionbar/b;)V

    :cond_7f
    return-void
.end method

.method public a(Landroid/view/MenuItem;)V
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->e:LaY/Y;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaY/Y;->b(Z)V

    :goto_f
    return-void

    :cond_10
    invoke-static {p1}, Lcom/google/googlenav/ui/aC;->a(Landroid/view/MenuItem;)Laq/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/av;->a(Laq/a;)V

    goto :goto_f
.end method

.method public a(Laq/a;)V
    .registers 10

    const/16 v6, 0x36

    const/16 v3, 0x34

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-static {p1}, Lcom/google/googlenav/ui/n;->a(Laq/a;)V

    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    invoke-static {v0}, Lcom/google/googlenav/u;->c(Lcom/google/googlenav/z;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->d:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v2, p0, Lcom/google/googlenav/ui/av;->c:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->n()Lam/b;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/googlenav/ui/wizard/hM;->a(Laq/a;Lam/b;)I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2d

    iget-object v2, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/ui/D;->a(ILaq/b;)Z

    :cond_29
    :goto_29
    invoke-virtual {p0}, Lcom/google/googlenav/ui/av;->b()V

    goto :goto_9

    :cond_2d
    sget-object v0, Lcom/google/googlenav/ui/n;->Y:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->j()V

    goto :goto_29

    :cond_3d
    sget-object v0, Lcom/google/googlenav/ui/n;->r:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-direct {p0}, Lcom/google/googlenav/ui/av;->i()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0, p1}, LaY/i;->a(Laq/a;)Z

    goto :goto_29

    :cond_4f
    sget-object v0, Lcom/google/googlenav/ui/n;->aC:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-direct {p0}, Lcom/google/googlenav/ui/av;->i()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_29

    new-instance v1, Laq/b;

    invoke-direct {v1, v3, v3, v4, v4}, Laq/b;-><init>(IIIZ)V

    invoke-virtual {v0, v1}, LaY/i;->e(Laq/b;)Z

    goto :goto_29

    :cond_66
    sget-object v0, Lcom/google/googlenav/ui/n;->aD:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-direct {p0}, Lcom/google/googlenav/ui/av;->i()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_29

    new-instance v1, Laq/b;

    invoke-direct {v1, v6, v6, v4, v4}, Laq/b;-><init>(IIIZ)V

    invoke-virtual {v0, v1}, LaY/i;->e(Laq/b;)Z

    goto :goto_29

    :cond_7d
    sget-object v0, Lcom/google/googlenav/ui/n;->D:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-direct {p0}, Lcom/google/googlenav/ui/av;->i()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v1

    if-ne v1, v5, :cond_29

    invoke-virtual {v0, p1}, LaY/i;->a(Laq/a;)Z

    goto :goto_29

    :cond_95
    iget-object v0, p0, Lcom/google/googlenav/ui/av;->e:LaY/Y;

    invoke-virtual {v0, p1}, LaY/Y;->a(Laq/a;)Z

    move-result v0

    if-eqz v0, :cond_ac

    sget-object v0, Lcom/google/googlenav/ui/n;->Q:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aB()V

    goto/16 :goto_29

    :cond_ac
    sget-object v0, Lcom/google/googlenav/ui/n;->G:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->d:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->d:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    new-instance v2, Lcom/google/googlenav/ui/wizard/y;

    invoke-direct {v2, v5, v1}, Lcom/google/googlenav/ui/wizard/y;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->d:Lcom/google/googlenav/ui/wizard/hM;

    new-instance v1, Lau/j;

    invoke-direct {v1}, Lau/j;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/hM;->a(Lau/j;)V

    goto/16 :goto_29

    :cond_d7
    sget-object v0, Lcom/google/googlenav/ui/n;->O:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/D;->a(I)Z

    goto/16 :goto_29

    :cond_e6
    sget-object v0, Lcom/google/googlenav/ui/n;->N:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f5

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/D;->a(I)Z

    goto/16 :goto_29

    :cond_f5
    sget-object v0, Lcom/google/googlenav/ui/n;->L:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_105

    sget-object v0, Lcom/google/googlenav/ui/n;->M:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    :cond_105
    iget-object v0, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->S()V

    goto/16 :goto_29

    :cond_10c
    sget-object v0, Lcom/google/googlenav/ui/n;->K:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11c

    sget-object v0, Lcom/google/googlenav/ui/n;->J:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    :cond_11c
    iget-object v0, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/D;

    sget-object v1, Lcom/google/googlenav/ui/n;->J:Laq/a;

    invoke-virtual {p1, v1}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x13c

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/D;->a(ZI)V

    goto/16 :goto_29

    :cond_12b
    sget-object v0, Lcom/google/googlenav/ui/n;->H:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13b

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/D;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->b(I)V

    goto/16 :goto_29

    :cond_13b
    sget-object v0, Lcom/google/googlenav/ui/n;->I:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14a

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->f:Lcom/google/googlenav/ui/at;

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/at;->a(Z)V

    goto/16 :goto_29

    :cond_14a
    sget-object v0, Lcom/google/googlenav/ui/n;->ah:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18e

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->i()Z

    move-result v0

    if-eqz v0, :cond_187

    invoke-static {}, Lax/aa;->l()Z

    move-result v0

    if-eqz v0, :cond_187

    invoke-static {}, Lax/aO;->a()Z

    move-result v0

    if-eqz v0, :cond_187

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->d:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v2, 0x123

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x125

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x124

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/google/googlenav/ui/ay;

    invoke-direct {v7, p0}, Lcom/google/googlenav/ui/ay;-><init>(Lcom/google/googlenav/ui/av;)V

    move-object v6, v1

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/aX;)V

    goto/16 :goto_29

    :cond_187
    iget-object v0, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->Z()V

    goto/16 :goto_29

    :cond_18e
    sget-object v0, Lcom/google/googlenav/ui/n;->P:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19f

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->d:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v1, p0, Lcom/google/googlenav/ui/av;->e:LaY/Y;

    invoke-virtual {v0, v1, v5}, Lcom/google/googlenav/ui/wizard/hM;->a(LaY/Y;Z)V

    goto/16 :goto_29

    :cond_19f
    sget-object v0, Lcom/google/googlenav/ui/n;->af:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ba

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->d:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v2, 0x1a4

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/D;->au()Lcom/google/googlenav/ui/X;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V

    goto/16 :goto_29

    :cond_1ba
    sget-object v0, Lcom/google/googlenav/ui/n;->ag:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cb

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->p()V

    goto/16 :goto_29

    :cond_1cb
    sget-object v0, Lcom/google/googlenav/ui/n;->R:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1da

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->N()V

    goto/16 :goto_29

    :cond_1da
    sget-object v0, Lcom/google/googlenav/ui/n;->Z:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e9

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->g:Lcom/google/googlenav/ay;

    invoke-interface {v0}, Lcom/google/googlenav/ay;->h()V

    goto/16 :goto_29

    :cond_1e9
    sget-object v0, Lcom/google/googlenav/ui/n;->ad:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    invoke-static {}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/V;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_208

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/D;

    const-string v1, "Nothing was collected. Please enable the \"Report Quality Feedback\" lab to start collecting debugging information."

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_208
    iget-object v1, p0, Lcom/google/googlenav/ui/av;->g:Lcom/google/googlenav/ay;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "gmm-search-feedback@google.com"

    aput-object v3, v2, v4

    const-string v3, "GMM->MFE Bug Report"

    invoke-interface {v1, v2, v3, v0}, Lcom/google/googlenav/ay;->a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/V;->c()V

    goto/16 :goto_29

    :cond_21e
    sget-object v0, Lcom/google/googlenav/ui/n;->ay:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22d

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->L()V

    goto/16 :goto_29

    :cond_22d
    sget-object v0, Lcom/google/googlenav/ui/n;->az:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23c

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->M()V

    goto/16 :goto_29

    :cond_23c
    sget-object v0, Lcom/google/googlenav/ui/n;->as:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24b

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->g:Lcom/google/googlenav/ay;

    invoke-interface {v0}, Lcom/google/googlenav/ay;->j()V

    goto/16 :goto_29

    :cond_24b
    sget-object v0, Lcom/google/googlenav/ui/n;->aa:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25e

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->g:Lcom/google/googlenav/ay;

    invoke-static {}, Lcom/google/googlenav/M;->X()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ay;->a(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_25e
    sget-object v0, Lcom/google/googlenav/ui/n;->ax:Laq/a;

    invoke-virtual {p1, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, Lcom/google/googlenav/ui/av;->c:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->c()LaJ/B;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/ui/D;->a(LaJ/B;Lau/x;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/D;

    const/16 v0, 0x400

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/google/googlenav/ui/wizard/x;->a:Lcom/google/googlenav/ui/wizard/y;

    const-wide/16 v6, 0x0

    move-object v4, v1

    invoke-virtual/range {v2 .. v7}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;J)V

    goto/16 :goto_29
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->a:Lcom/google/googlenav/ui/ad;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/ad;->e(Z)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->a:Lcom/google/googlenav/ui/ad;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ad;->b()V

    return-void
.end method

.method public b(Laq/a;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->a:Lcom/google/googlenav/ui/ad;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/ad;->a(Laq/a;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->a:Lcom/google/googlenav/ui/ad;

    iget-object v1, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/ad;->a(Z)V

    return-void
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->a:Lcom/google/googlenav/ui/ad;

    iget-object v1, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->ah()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/ad;->b(Z)V

    return-void
.end method

.method e()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->a:Lcom/google/googlenav/ui/ad;

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/login/g;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/ad;->d(Z)V

    return-void
.end method

.method f()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->a:Lcom/google/googlenav/ui/ad;

    invoke-static {}, Lax/aa;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/ad;->c(Z)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->ae()Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/ax;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/ax;-><init>(Lcom/google/googlenav/ui/av;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    :cond_22
    return-void
.end method

.method public g()[Laq/a;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->d:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->t()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ao()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->d:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->m()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->k()[Laq/a;

    move-result-object v0

    :goto_1c
    return-object v0

    :cond_1d
    iget-object v0, p0, Lcom/google/googlenav/ui/av;->a:Lcom/google/googlenav/ui/ad;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ad;->d()[Laq/a;

    move-result-object v0

    goto :goto_1c
.end method

.method public h()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/av;->a:Lcom/google/googlenav/ui/ad;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ad;->a()Z

    move-result v0

    return v0
.end method
