.class public Lcom/google/googlenav/ui/wizard/cW;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/cA;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/cA;Lcom/google/googlenav/ui/p;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cW;->a:Lcom/google/googlenav/ui/wizard/cA;

    const v0, 0x7f0d001c

    invoke-direct {p0, p2, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/cA;Lcom/google/googlenav/ui/p;Lcom/google/googlenav/ui/wizard/cB;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/cW;-><init>(Lcom/google/googlenav/ui/wizard/cA;Lcom/google/googlenav/ui/p;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/cW;)Lcom/google/googlenav/ui/p;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cW;->f:Lcom/google/googlenav/ui/p;

    return-object v0
.end method


# virtual methods
.method protected N_()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cW;->requestWindowFeature(I)Z

    :cond_14
    return-void
.end method

.method public c()Landroid/view/View;
    .registers 6

    const/4 v4, 0x0

    sget-object v0, Lcom/google/googlenav/ui/wizard/cW;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_41

    const v0, 0x7f0f00d2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cW;->a:Lcom/google/googlenav/ui/wizard/cA;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/cA;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0f0014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cW;->a:Lcom/google/googlenav/ui/wizard/cA;

    iget-byte v2, v2, Lcom/google/googlenav/ui/wizard/cA;->h:B

    const/4 v3, 0x4

    if-ne v2, v3, :cond_64

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const v2, 0x7f0201da

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_41
    :goto_41
    const v0, 0x7f0f005a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cW;->a:Lcom/google/googlenav/ui/wizard/cA;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cW;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/cA;->a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/R;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    new-instance v2, Lcom/google/googlenav/ui/wizard/cY;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/cY;-><init>(Lcom/google/googlenav/ui/wizard/cW;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v1

    :cond_64
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cW;->a:Lcom/google/googlenav/ui/wizard/cA;

    iget-byte v2, v2, Lcom/google/googlenav/ui/wizard/cA;->h:B

    const/4 v3, 0x5

    if-ne v2, v3, :cond_75

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const v2, 0x7f0201d8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_41

    :cond_75
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->ak()Z

    move-result v2

    if-eqz v2, :cond_85

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_41

    :cond_85
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const v2, 0x7f0201c8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_41
.end method

.method protected g()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cW;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v1

    if-nez v1, :cond_19

    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :goto_10
    new-instance v0, Lcom/google/googlenav/ui/wizard/cX;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/cX;-><init>(Lcom/google/googlenav/ui/wizard/cW;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/cW;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void

    :cond_19
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cW;->a:Lcom/google/googlenav/ui/wizard/cA;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/cA;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method
