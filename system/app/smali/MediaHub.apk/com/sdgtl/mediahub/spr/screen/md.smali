.class final Lcom/sdgtl/mediahub/spr/screen/md;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/md;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/md;->d:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/screen/md;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/md;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/md;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/sdgtl/mediahub/spr/common/eu;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/md;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eu;

    return-object v0
.end method

.method public final a(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/md;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/md;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/md;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/md;->a(I)Lcom/sdgtl/mediahub/spr/common/eu;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    const/4 v2, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/md;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eu;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/eu;->F:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/md;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030021

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/mf;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/mf;-><init>(Lcom/sdgtl/mediahub/spr/screen/md;)V

    const v0, 0x7f0d0075

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/mf;->a:Landroid/widget/TextView;

    move-object v0, v1

    :goto_2b
    return-object v0

    :cond_2c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/md;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f03002f

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/me;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/me;-><init>(Lcom/sdgtl/mediahub/spr/screen/md;)V

    const v0, 0x7f0d0036

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/me;->a:Landroid/widget/ImageView;

    const v0, 0x7f0d003d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/me;->b:Landroid/widget/TextView;

    const v0, 0x7f0d003e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/me;->c:Landroid/widget/ImageView;

    const v0, 0x7f0d00ad

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/me;->d:Landroid/widget/TextView;

    const v0, 0x7f0d00a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/me;->e:Landroid/widget/TextView;

    const v0, 0x7f0d00ae

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/me;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/md;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eu;

    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/screen/me;->a:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/eu;->r:Ljava/lang/String;

    invoke-static {v3, v4, v6}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/screen/me;->b:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/eu;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/eu;->C:Ljava/lang/String;

    if-eqz v3, :cond_11d

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/eu;->C:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_11d

    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/screen/me;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/md;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/eu;->C:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_ab
    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/eu;->j:Ljava/lang/String;

    const-string v4, "01"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bf

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/eu;->j:Ljava/lang/String;

    const-string v4, "02"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_123

    :cond_bf
    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/screen/me;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_c4
    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/eu;->j:Ljava/lang/String;

    const-string v4, "01"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d8

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/eu;->j:Ljava/lang/String;

    const-string v4, "03"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_129

    :cond_d8
    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/screen/me;->e:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/md;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    const v5, 0x7f0a00f4

    invoke-virtual {v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_e6
    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/screen/me;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/md;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/me;->f:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/md;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-wide v5, v0, Lcom/sdgtl/mediahub/spr/common/eu;->i:D

    invoke-static {v3, v5, v6}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    goto/16 :goto_2b

    :cond_11d
    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/screen/me;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_ab

    :cond_123
    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/screen/me;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c4

    :cond_129
    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/screen/me;->e:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/md;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    const v5, 0x7f0a00f5

    invoke-virtual {v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e6
.end method
