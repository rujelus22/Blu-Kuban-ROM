.class final Lcom/anddoes/launcher/gc;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;

.field b:Ljava/util/List;

.field final synthetic c:Lcom/anddoes/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/anddoes/launcher/Launcher;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 5643
    iput-object p1, p0, Lcom/anddoes/launcher/gc;->c:Lcom/anddoes/launcher/Launcher;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 5640
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/gc;->a:Ljava/util/List;

    .line 5641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/gc;->b:Ljava/util/List;

    .line 5644
    invoke-virtual {p1}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5645
    if-eqz p2, :cond_1ab

    .line 5646
    iget-object v1, p1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->az:Z

    if-eqz v1, :cond_54

    iget-object v1, p1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->b:Z

    if-nez v1, :cond_54

    .line 5647
    invoke-static {p1}, Lcom/anddoes/launcher/Launcher;->l(Lcom/anddoes/launcher/Launcher;)Lcom/anddoes/launcher/gf;

    move-result-object v1

    sget-object v2, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    if-ne v1, v2, :cond_54

    .line 5648
    invoke-static {p1}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/Launcher;)Lcom/anddoes/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anddoes/launcher/Workspace;->f()Lcom/anddoes/launcher/az;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/Launcher;Lcom/anddoes/launcher/az;)V

    .line 5649
    invoke-static {p1}, Lcom/anddoes/launcher/Launcher;->m(Lcom/anddoes/launcher/Launcher;)Lcom/anddoes/launcher/az;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 5650
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->a:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5651
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->b:Ljava/util/List;

    const v2, 0x7f060276

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5654
    :cond_54
    iget-object v1, p1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->aA:Z

    if-eqz v1, :cond_84

    iget-object v1, p1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->k:Z

    if-eqz v1, :cond_84

    .line 5655
    iget-object v1, p1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->b:Z

    if-nez v1, :cond_84

    invoke-static {p1}, Lcom/anddoes/launcher/Launcher;->l(Lcom/anddoes/launcher/Launcher;)Lcom/anddoes/launcher/gf;

    move-result-object v1

    sget-object v2, Lcom/anddoes/launcher/gf;->a:Lcom/anddoes/launcher/gf;

    if-ne v1, v2, :cond_84

    .line 5656
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->a:Ljava/util/List;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5657
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->b:Ljava/util/List;

    const v2, 0x7f060278

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5659
    :cond_84
    iget-object v1, p1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->aB:Z

    if-eqz v1, :cond_a0

    .line 5660
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->a:Ljava/util/List;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5661
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->b:Ljava/util/List;

    const v2, 0x7f0600fe

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5674
    :cond_a0
    :goto_a0
    iget-object v1, p1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->aE:Z

    if-eqz v1, :cond_bc

    .line 5675
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->a:Ljava/util/List;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5676
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->b:Ljava/util/List;

    const v2, 0x7f060277

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5679
    :cond_bc
    if-eqz p2, :cond_db

    iget-object v1, p1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->aF:Z

    if-eqz v1, :cond_db

    .line 5680
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->a:Ljava/util/List;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5681
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->b:Ljava/util/List;

    const v2, 0x7f06005a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5684
    :cond_db
    iget-object v1, p1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->aC:Z

    if-eqz v1, :cond_f7

    .line 5685
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->a:Ljava/util/List;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5686
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->b:Ljava/util/List;

    const v2, 0x7f060279

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5689
    :cond_f7
    iget-object v1, p1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->aD:Z

    if-eqz v1, :cond_113

    .line 5690
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->a:Ljava/util/List;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5691
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->b:Ljava/util/List;

    const v2, 0x7f06027a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5694
    :cond_113
    iget-object v1, p1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->aG:Z

    if-eqz v1, :cond_130

    .line 5695
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->a:Ljava/util/List;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5696
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->b:Ljava/util/List;

    const v2, 0x7f060038

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5699
    :cond_130
    iget-object v1, p1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->aH:Z

    if-eqz v1, :cond_14d

    .line 5700
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->a:Ljava/util/List;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5701
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->b:Ljava/util/List;

    const v2, 0x7f06027b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5704
    :cond_14d
    iget-object v1, p1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->aI:Z

    if-eqz v1, :cond_170

    iget-object v1, p1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->b:Z

    if-nez v1, :cond_170

    .line 5705
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->a:Ljava/util/List;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5706
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->b:Ljava/util/List;

    const v2, 0x7f060039

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5709
    :cond_170
    iget-object v1, p1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->b:Z

    if-eqz v1, :cond_18d

    .line 5710
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->a:Ljava/util/List;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5711
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->b:Ljava/util/List;

    const v2, 0x7f06003a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5714
    :cond_18d
    iget-object v1, p1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v1, v1, Lcom/anddoes/launcher/preference/f;->aJ:Z

    if-eqz v1, :cond_1aa

    .line 5715
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->a:Ljava/util/List;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5716
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->b:Ljava/util/List;

    const v2, 0x7f06027c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5718
    :cond_1aa
    return-void

    .line 5664
    :cond_1ab
    invoke-static {p1}, Lcom/anddoes/launcher/Launcher;->n(Lcom/anddoes/launcher/Launcher;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_a0

    .line 5665
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->a:Ljava/util/List;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5666
    iget-object v1, p0, Lcom/anddoes/launcher/gc;->b:Ljava/util/List;

    const v2, 0x7f060019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a0
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    .prologue
    .line 5721
    iget-object v0, p0, Lcom/anddoes/launcher/gc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 5726
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 5731
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5737
    if-nez p2, :cond_1f

    .line 5739
    iget-object v0, p0, Lcom/anddoes/launcher/gc;->c:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 5740
    const v1, 0x7f03001c

    const/4 v2, 0x0

    .line 5739
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object p2, v0

    .line 5744
    :goto_13
    iget-object v0, p0, Lcom/anddoes/launcher/gc;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5745
    return-object p2

    .line 5742
    :cond_1f
    check-cast p2, Landroid/widget/TextView;

    goto :goto_13
.end method
