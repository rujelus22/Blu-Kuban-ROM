.class public Lcom/google/googlenav/ui/wizard/dL;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dp;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/dp;Lcom/google/googlenav/ui/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 696
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dL;->a:Lcom/google/googlenav/ui/wizard/dp;

    .line 697
    const v0, 0x7f0f001b

    invoke-direct {p0, p2, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 698
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/dp;Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/wizard/dq;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 694
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/dL;-><init>(Lcom/google/googlenav/ui/wizard/dp;Lcom/google/googlenav/ui/g;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dL;)Lcom/google/googlenav/ui/g;
    .registers 2
    .parameter

    .prologue
    .line 694
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dL;->g:Lcom/google/googlenav/ui/g;

    return-object v0
.end method


# virtual methods
.method protected I_()V
    .registers 3

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dL;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 712
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v1

    if-nez v1, :cond_19

    .line 713
    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 717
    :goto_10
    new-instance v0, Lcom/google/googlenav/ui/wizard/dM;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/dM;-><init>(Lcom/google/googlenav/ui/wizard/dL;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dL;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 723
    return-void

    .line 715
    :cond_19
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dL;->a:Lcom/google/googlenav/ui/wizard/dp;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/dp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method

.method protected N_()V
    .registers 2

    .prologue
    .line 702
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_14

    .line 703
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_14

    .line 704
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dL;->requestWindowFeature(I)Z

    .line 707
    :cond_14
    return-void
.end method

.method public c()Landroid/view/View;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 727
    sget-object v0, Lcom/google/googlenav/ui/wizard/dL;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400fc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 730
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_41

    .line 731
    const v0, 0x7f100025

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 732
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dL;->a:Lcom/google/googlenav/ui/wizard/dp;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/dp;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 734
    const v0, 0x7f100033

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 735
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dL;->a:Lcom/google/googlenav/ui/wizard/dp;

    iget-byte v2, v2, Lcom/google/googlenav/ui/wizard/dp;->c:B

    const/4 v3, 0x4

    if-ne v2, v3, :cond_64

    .line 736
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 737
    const v2, 0x7f020221

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 758
    :cond_41
    :goto_41
    const v0, 0x7f100026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 759
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dL;->a:Lcom/google/googlenav/ui/wizard/dp;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dL;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/dp;->a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/L;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 760
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 761
    new-instance v2, Lcom/google/googlenav/ui/wizard/dN;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/dN;-><init>(Lcom/google/googlenav/ui/wizard/dL;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 777
    return-object v1

    .line 738
    :cond_64
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dL;->a:Lcom/google/googlenav/ui/wizard/dp;

    iget-byte v2, v2, Lcom/google/googlenav/ui/wizard/dp;->c:B

    const/4 v3, 0x5

    if-ne v2, v3, :cond_75

    .line 739
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 740
    const v2, 0x7f02021f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_41

    .line 742
    :cond_75
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->an()Z

    move-result v2

    if-eqz v2, :cond_85

    .line 745
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_41

    .line 747
    :cond_85
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 748
    const v2, 0x7f02020c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_41
.end method
