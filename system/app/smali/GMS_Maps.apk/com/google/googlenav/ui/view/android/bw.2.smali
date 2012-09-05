.class public Lcom/google/googlenav/ui/view/android/bw;
.super Lcom/google/googlenav/ui/view/android/bh;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/p;Lbb/f;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/bh;-><init>(Lcom/google/googlenav/ui/p;Lbb/f;)V

    return-void
.end method

.method private a(Lbb/o;)Landroid/view/View;
    .registers 7

    const/16 v4, 0x1f1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bw;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f005a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->ao()Z

    move-result v2

    if-nez v2, :cond_68

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bw;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/google/googlenav/ui/view/android/bw;->a(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Lbb/o;Landroid/widget/AbsListView;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    if-eqz v2, :cond_4d

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/M;->ak()Z

    move-result v3

    if-nez v3, :cond_4d

    const v3, 0x7f0f0006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_4d

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bw;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bw;->f:Lcom/google/googlenav/ui/p;

    invoke-static {v2, p1, v3, v1}, Lcom/google/googlenav/ui/view/android/N;->a(Landroid/content/Context;Lbb/o;Lcom/google/googlenav/ui/p;Landroid/widget/ListView;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p1}, Lbb/o;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/bw;->a(Landroid/widget/AbsListView;)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/bw;->e(Landroid/view/View;)V

    return-object v0

    :cond_68
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bw;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4d
.end method

.method private a(Landroid/view/View;ILcom/google/googlenav/ui/bl;)V
    .registers 6

    if-eqz p3, :cond_18

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p3, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    invoke-static {v1}, Lcom/google/googlenav/ui/bw;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_18
    return-void
.end method

.method private e(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bw;->a:Lbb/f;

    check-cast v0, Lbb/o;

    iget-object v1, v0, Lbb/o;->p:Lbb/p;

    if-nez v1, :cond_9

    :goto_8
    return-void

    :cond_9
    const v1, 0x7f0f0011

    iget-object v2, v0, Lbb/o;->p:Lbb/p;

    iget-object v2, v2, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {p0, p1, v1, v2}, Lcom/google/googlenav/ui/view/android/bw;->a(Landroid/view/View;ILcom/google/googlenav/ui/bl;)V

    const v1, 0x7f0f0012

    iget-object v2, v0, Lbb/o;->p:Lbb/p;

    iget-object v2, v2, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {p0, p1, v1, v2}, Lcom/google/googlenav/ui/view/android/bw;->a(Landroid/view/View;ILcom/google/googlenav/ui/bl;)V

    const v1, 0x7f0f001c

    iget-object v0, v0, Lbb/o;->p:Lbb/p;

    iget-object v0, v0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-direct {p0, p1, v1, v0}, Lcom/google/googlenav/ui/view/android/bw;->a(Landroid/view/View;ILcom/google/googlenav/ui/bl;)V

    goto :goto_8
.end method


# virtual methods
.method protected a(Lbb/f;)Landroid/view/View;
    .registers 4

    iget v0, p1, Lbb/f;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    iget v0, p1, Lbb/f;->c:I

    packed-switch v0, :pswitch_data_16

    :cond_a
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/bh;->a(Lbb/f;)Landroid/view/View;

    move-result-object v0

    :goto_e
    return-object v0

    :pswitch_f
    check-cast p1, Lbb/o;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bw;->a(Lbb/o;)Landroid/view/View;

    move-result-object v0

    goto :goto_e

    :pswitch_data_16
    .packed-switch 0xb
        :pswitch_f
    .end packed-switch
.end method

.method protected b(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bw;->h:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bw;->h:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/bw;->e(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method protected c(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bw;->w()Lbb/o;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_30

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/bh;->c(Landroid/view/View;)V

    :goto_e
    return-void

    :sswitch_f
    iget-object v0, v0, Lbb/o;->p:Lbb/p;

    iget-object v0, v0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bw;->b(Lcom/google/googlenav/ui/bb;)Z

    goto :goto_e

    :sswitch_1a
    iget-object v0, v0, Lbb/o;->p:Lbb/p;

    iget-object v0, v0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bw;->b(Lcom/google/googlenav/ui/bb;)Z

    goto :goto_e

    :sswitch_25
    iget-object v0, v0, Lbb/o;->p:Lbb/p;

    iget-object v0, v0, Lbb/p;->b:[Lcom/google/googlenav/ui/bl;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bw;->b(Lcom/google/googlenav/ui/bb;)Z

    goto :goto_e

    :sswitch_data_30
    .sparse-switch
        0x7f0f0011 -> :sswitch_f
        0x7f0f0012 -> :sswitch_1a
        0x7f0f001c -> :sswitch_25
    .end sparse-switch
.end method

.method protected w()Lbb/o;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bw;->a:Lbb/f;

    check-cast v0, Lbb/o;

    return-object v0
.end method

.method public x()Landroid/widget/ListView;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bw;->h:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bw;->h:Landroid/view/View;

    const v1, 0x7f0f005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
