.class public abstract Lcom/google/googlenav/ui/view/android/o;
.super Lcom/google/googlenav/ui/view/android/bx;


# instance fields
.field private c:Lcom/google/googlenav/ui/view/android/aH;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/p;ILbb/f;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/bx;-><init>(Lcom/google/googlenav/ui/p;ILbb/f;)V

    return-void
.end method

.method private a(Landroid/view/View;ILcom/google/googlenav/ui/bl;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f0205

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0024

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p3, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    invoke-static {v2}, Lcom/google/googlenav/ui/bw;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/o;->g:Lcom/google/googlenav/ui/view/android/aB;

    invoke-virtual {v1, p3}, Lcom/google/googlenav/ui/view/android/aB;->a(Lcom/google/googlenav/ui/bl;)Lcom/google/googlenav/ui/android/M;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_31
    return-void

    :cond_32
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/o;->g:Lcom/google/googlenav/ui/view/android/aB;

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/view/android/aB;->a(Lcom/google/googlenav/ui/bl;)Lcom/google/googlenav/ui/android/M;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_31
.end method


# virtual methods
.method protected I_()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/o;->a:Lbb/f;

    iget-object v0, v0, Lbb/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/o;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f0274

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f040a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/o;->a:Lbb/f;

    iget-object v1, v1, Lbb/f;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_35
    return-void
.end method

.method public J_()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/o;->c:Lcom/google/googlenav/ui/view/android/aH;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/o;->c:Lcom/google/googlenav/ui/view/android/aH;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aH;->c()V

    :cond_9
    return-void
.end method

.method protected N_()V
    .registers 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ap()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/o;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setUiOptions(I)V

    :goto_12
    return-void

    :cond_13
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/o;->a:Lbb/f;

    iget-object v1, v1, Lbb/f;->d:Ljava/lang/String;

    if-eqz v1, :cond_24

    const/4 v0, 0x0

    :cond_24
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/o;->requestWindowFeature(I)Z

    goto :goto_12
.end method

.method protected a(Landroid/view/LayoutInflater;Lbb/n;)Landroid/view/View;
    .registers 5

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_18

    const v0, 0x7f03008e

    :goto_d
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p2}, Lcom/google/googlenav/ui/view/android/o;->a(Landroid/view/ViewGroup;Lbb/n;)V

    return-object v0

    :cond_18
    const v0, 0x7f03008d

    goto :goto_d
.end method

.method protected a(Landroid/view/LayoutInflater;Lbb/o;Landroid/widget/AbsListView;)Landroid/view/View;
    .registers 5

    iget-object v0, p2, Lbb/o;->h:Lbb/n;

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/o;->a(Landroid/view/LayoutInflater;Lbb/n;)Landroid/view/View;

    move-result-object v0

    check-cast p3, Landroid/widget/ListView;

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    return-object v0
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 3

    const/16 v0, 0xe7

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    return-void
.end method

.method protected a(Landroid/view/ViewGroup;Lbb/n;)V
    .registers 6

    const v0, 0x7f0f0204

    iget-object v1, p2, Lbb/n;->l:Lcom/google/googlenav/ui/bl;

    const/16 v2, 0x1a1

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/view/android/o;->a(Landroid/view/View;ILcom/google/googlenav/ui/bl;Ljava/lang/String;)V

    const v0, 0x7f0f0206

    iget-object v1, p2, Lbb/n;->m:Lcom/google/googlenav/ui/bl;

    const/16 v2, 0x4c5

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/view/android/o;->a(Landroid/view/View;ILcom/google/googlenav/ui/bl;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-nez v0, :cond_3c

    new-instance v0, Lcom/google/googlenav/ui/view/android/aH;

    const v1, 0x7f0f01fc

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/o;->f:Lcom/google/googlenav/ui/p;

    check-cast p2, Lbb/j;

    invoke-direct {v0, v1, v2, p2}, Lcom/google/googlenav/ui/view/android/aH;-><init>(Landroid/view/View;Lcom/google/googlenav/ui/p;Lbb/j;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/o;->c:Lcom/google/googlenav/ui/view/android/aH;

    :cond_3c
    return-void
.end method

.method protected a(Landroid/widget/ListView;Lbb/o;)V
    .registers 5

    sget-object v0, Lcom/google/googlenav/ui/view/android/o;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/o;->f:Lcom/google/googlenav/ui/p;

    invoke-static {v0, p2, v1, p1}, Lcom/google/googlenav/ui/view/android/N;->a(Landroid/content/Context;Lbb/o;Lcom/google/googlenav/ui/p;Landroid/widget/ListView;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p2}, Lbb/o;->h()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    return-void
.end method

.method protected a(Lcom/google/googlenav/ui/bb;)Z
    .registers 6

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bb;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/o;->f:Lcom/google/googlenav/ui/p;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bb;->h()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bb;->k()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected b(Landroid/widget/ListView;Lbb/o;)V
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/view/android/p;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/p;-><init>(Lcom/google/googlenav/ui/view/android/o;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/q;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/q;-><init>(Lcom/google/googlenav/ui/view/android/o;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public b(Lcom/google/googlenav/ui/bb;)Z
    .registers 6

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "performAction is called"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bb;->b()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/googlenav/ui/bl;

    if-eqz v1, :cond_17

    move-object v0, p1

    check-cast v0, Lcom/google/googlenav/ui/bl;

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->t:Ljava/lang/String;

    :cond_17
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/o;->f:Lcom/google/googlenav/ui/p;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bb;->g()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bb;->k()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method protected k()Lbb/o;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/o;->a:Lbb/f;

    check-cast v0, Lbb/o;

    return-object v0
.end method

.method protected m()V
    .registers 1

    return-void
.end method
