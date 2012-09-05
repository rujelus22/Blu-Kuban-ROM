.class public Lbd/s;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# instance fields
.field a:Ljava/util/List;

.field private b:Lcom/google/googlenav/ah;

.field private c:LaY/ao;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ah;LaY/ao;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lbd/s;->a:Ljava/util/List;

    iput-object p1, p0, Lbd/s;->b:Lcom/google/googlenav/ah;

    iput-object p2, p0, Lbd/s;->c:LaY/ao;

    iput p3, p0, Lbd/s;->d:I

    return-void
.end method

.method static synthetic a(Lbd/s;)Lcom/google/googlenav/ah;
    .registers 2

    iget-object v0, p0, Lbd/s;->b:Lcom/google/googlenav/ah;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 4

    new-instance v1, Lbd/v;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lbd/v;-><init>(Lbd/t;)V

    const v0, 0x7f0f024d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lbd/v;->a:Landroid/view/ViewGroup;

    const v0, 0x7f0f024e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lbd/v;->b:Landroid/view/ViewGroup;

    const v0, 0x7f0f0251

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lbd/v;->d:Landroid/widget/TextView;

    const v0, 0x7f0f0228

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lbd/v;->e:Landroid/widget/TextView;

    const v0, 0x7f0f024f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lbd/v;->c:Landroid/widget/ImageView;

    const v0, 0x7f0f0252

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lbd/v;->f:Landroid/view/ViewGroup;

    const v0, 0x7f0f0256

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lbd/v;->g:Landroid/view/View;

    iget-object v0, p0, Lbd/s;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bX()Lbe/c;

    move-result-object v0

    invoke-virtual {v0}, Lbe/c;->g()Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lbd/s;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bX()Lbe/c;

    move-result-object v0

    invoke-virtual {v0}, Lbe/c;->h()Lbe/i;

    move-result-object v0

    invoke-virtual {v0}, Lbe/i;->l()Z

    move-result v0

    if-eqz v0, :cond_81

    const v0, 0x7f0f0254

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lbd/v;->f:Landroid/view/ViewGroup;

    const v0, 0x7f0f0253

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lbd/v;->g:Landroid/view/View;

    :cond_81
    const v0, 0x7f0f0255

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lbd/v;->h:Landroid/view/View;

    return-object v1
.end method

.method public a(Landroid/view/View;Z)V
    .registers 4

    if-eqz p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_7
    const/16 v0, 0x8

    goto :goto_3
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 11

    const/4 v5, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lbd/s;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bW()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    return-void

    :cond_b
    move-object v2, p2

    check-cast v2, Lbd/v;

    iget-object v0, p0, Lbd/s;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bX()Lbe/c;

    move-result-object v0

    invoke-virtual {v0}, Lbe/c;->g()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lbd/s;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bX()Lbe/c;

    move-result-object v0

    invoke-virtual {v0}, Lbe/c;->h()Lbe/i;

    move-result-object v3

    iget-object v0, v2, Lbd/v;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v2, Lbd/v;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, v2, Lbd/v;->f:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v5}, Lbd/s;->a(Landroid/view/View;Z)V

    invoke-virtual {v3}, Lbe/i;->l()Z

    move-result v0

    if-eqz v0, :cond_8e

    iget-object v0, v2, Lbd/v;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0f0254

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, Lbd/v;->f:Landroid/view/ViewGroup;

    iget-object v0, v2, Lbd/v;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0f0253

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lbd/v;->g:Landroid/view/View;

    :goto_51
    move v4, v5

    :goto_52
    invoke-virtual {v3}, Lbe/i;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_c3

    new-instance v6, Lbd/w;

    invoke-virtual {v3}, Lbe/i;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe/d;

    invoke-direct {v6, v0}, Lbd/w;-><init>(Lbe/d;)V

    invoke-virtual {v3}, Lbe/i;->l()Z

    move-result v0

    if-nez v0, :cond_a7

    const v0, 0x7f03010e

    iget-object v1, v2, Lbd/v;->f:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v5}, Lcom/google/googlenav/ui/bw;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lbd/w;->a:Landroid/widget/TextView;

    iget-object v0, v2, Lbd/v;->f:Landroid/view/ViewGroup;

    iget-object v1, v6, Lbd/w;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_85
    iget-object v0, v2, Lbd/v;->i:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_52

    :cond_8e
    iget-object v0, v2, Lbd/v;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0f0252

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, Lbd/v;->f:Landroid/view/ViewGroup;

    iget-object v0, v2, Lbd/v;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0f0256

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lbd/v;->g:Landroid/view/View;

    goto :goto_51

    :cond_a7
    const v0, 0x7f03010f

    iget-object v1, v2, Lbd/v;->f:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v5}, Lcom/google/googlenav/ui/bw;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0f02fe

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v6, Lbd/w;->a:Landroid/widget/TextView;

    iget-object v1, v2, Lbd/v;->f:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_85

    :cond_c3
    iget-object v0, v2, Lbd/v;->a:Landroid/view/ViewGroup;

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, v2, Lbd/v;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v7}, Lbd/s;->a(Landroid/view/View;Z)V

    iget-object v0, v2, Lbd/v;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v7}, Lbd/s;->a(Landroid/view/View;Z)V

    iget-object v0, v2, Lbd/v;->b:Landroid/view/ViewGroup;

    new-instance v1, Lbd/t;

    invoke-direct {v1, p0, p1}, Lbd/t;-><init>(Lbd/s;Lcom/google/googlenav/ui/p;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v2, Lbd/v;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Lbe/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lbd/v;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v7}, Lbd/s;->a(Landroid/view/View;Z)V

    iget-object v0, v2, Lbd/v;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v5}, Lbd/s;->a(Landroid/view/View;Z)V

    const/4 v0, 0x0

    iget-object v1, p0, Lbd/s;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->bX()Lbe/c;

    move-result-object v1

    invoke-virtual {v1}, Lbe/c;->b()Z

    move-result v1

    if-eqz v1, :cond_1a3

    invoke-virtual {v3}, Lbe/i;->h()Z

    move-result v1

    if-eqz v1, :cond_1a3

    invoke-virtual {v3}, Lbe/i;->i()Lbe/h;

    move-result-object v0

    const-string v1, "Called"

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    iget-object v5, v2, Lbd/v;->a:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lbe/h;->a(Ljava/lang/String;Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_11e
    :goto_11e
    if-eqz v0, :cond_12a

    iget-object v1, v2, Lbd/v;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lbd/v;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v7}, Lbd/s;->a(Landroid/view/View;Z)V

    :cond_12a
    iget-object v0, v2, Lbd/v;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v7}, Lbd/s;->a(Landroid/view/View;Z)V

    iget-object v1, v2, Lbd/v;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lbd/s;->c:LaY/ao;

    invoke-virtual {v0}, LaY/ao;->g()Z

    move-result v0

    if-eqz v0, :cond_1d0

    const v0, 0x7f0203c3

    :goto_13c
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v2, Lbd/v;->f:Landroid/view/ViewGroup;

    iget-object v1, p0, Lbd/s;->c:LaY/ao;

    invoke-virtual {v1}, LaY/ao;->g()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lbd/s;->a(Landroid/view/View;Z)V

    iget-object v0, v2, Lbd/v;->g:Landroid/view/View;

    if-eqz v0, :cond_159

    iget-object v0, v2, Lbd/v;->g:Landroid/view/View;

    iget-object v1, p0, Lbd/s;->c:LaY/ao;

    invoke-virtual {v1}, LaY/ao;->g()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lbd/s;->a(Landroid/view/View;Z)V

    :cond_159
    iget-object v0, v2, Lbd/v;->h:Landroid/view/View;

    invoke-virtual {p0, v0, v7}, Lbd/s;->a(Landroid/view/View;Z)V

    iget-object v0, v2, Lbd/v;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_164
    :goto_164
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbd/w;

    iget-object v0, v4, Lbd/w;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v7}, Lbd/s;->a(Landroid/view/View;Z)V

    invoke-virtual {v3}, Lbe/i;->l()Z

    move-result v0

    if-eqz v0, :cond_1d5

    iget-object v0, v4, Lbd/w;->a:Landroid/widget/TextView;

    iget-object v1, v4, Lbd/w;->b:Lbe/d;

    invoke-virtual {v1}, Lbe/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_186
    iget-object v0, v4, Lbd/w;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    new-instance v0, Lbd/u;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lbd/u;-><init>(Lbd/s;Lbd/v;Lbe/i;Lbd/w;Lcom/google/googlenav/ui/p;)V

    iget-object v1, v4, Lbd/w;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Laf/d;->b()Z

    move-result v1

    if-eqz v1, :cond_164

    iget-object v1, p0, Lbd/s;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_164

    :cond_1a3
    iget-object v1, p0, Lbd/s;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->bX()Lbe/c;

    move-result-object v1

    invoke-virtual {v1}, Lbe/c;->e()Z

    move-result v1

    if-eqz v1, :cond_11e

    invoke-virtual {v3}, Lbe/i;->j()Z

    move-result v1

    if-eqz v1, :cond_11e

    invoke-virtual {v3}, Lbe/i;->k()Lbe/g;

    move-result-object v0

    const-string v1, "Got directions"

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    iget-object v5, v2, Lbd/v;->a:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lbe/g;->a(Ljava/lang/String;Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_11e

    :cond_1d0
    const v0, 0x7f0203c4

    goto/16 :goto_13c

    :cond_1d5
    iget-object v0, v4, Lbd/w;->b:Lbe/d;

    invoke-virtual {v0}, Lbe/d;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->t:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v1, v4, Lbd/w;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_186
.end method

.method public b()I
    .registers 2

    const v0, 0x7f0300c6

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lbd/s;->d:I

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
