.class final Lcom/sdgtl/mediahub/spr/screen/ss;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ss;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ss;->b:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/screen/ss;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ss;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ss;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ss;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/da;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/da;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ss;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/da;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/da;->c:I

    :goto_17
    return v0

    :cond_18
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ss;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/da;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/da;->b:Lcom/sdgtl/mediahub/spr/common/ct;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ct;->b:I

    goto :goto_17
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    const/16 v7, 0x8

    const/4 v6, 0x0

    if-nez p2, :cond_c9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ss;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/st;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/st;-><init>(Lcom/sdgtl/mediahub/spr/screen/ss;)V

    const v0, 0x7f0d0036

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/st;->a:Landroid/widget/ImageView;

    const v0, 0x7f0d003d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/st;->b:Landroid/widget/TextView;

    const v0, 0x7f0d0038

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/st;->e:Landroid/widget/TextView;

    const v0, 0x7f0d003e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/st;->c:Landroid/widget/ImageView;

    const v0, 0x7f0d0040

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/st;->d:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_4e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ss;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/da;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/da;->a:Ljava/lang/Object;

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/st;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->n:Ljava/lang/String;

    if-eqz v2, :cond_d2

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->n:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d2

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/st;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/ss;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    const v5, 0x7f0a0075

    invoke-virtual {v4, v5}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->n:Ljava/lang/String;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/st;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_97
    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->A:Ljava/lang/String;

    if-eqz v2, :cond_d8

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->A:Ljava/lang/String;

    const-string v3, "Y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/st;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_aa
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ss;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->x(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_bc

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ss;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->x(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_de

    :cond_bc
    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/st;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_c1
    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/screen/st;->a:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->h:Ljava/lang/String;

    invoke-static {v1, v0, v6}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    return-object p2

    :cond_c9
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/st;

    move-object v1, v0

    goto/16 :goto_4e

    :cond_d2
    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/st;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_97

    :cond_d8
    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/st;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_aa

    :cond_de
    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/screen/st;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c1
.end method

.method public final getViewTypeCount()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method
