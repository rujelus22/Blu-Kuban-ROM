.class final Lcom/sdgtl/mediahub/spr/screen/ts;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ts;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ts;->d:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/screen/ts;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ts;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ts;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ts;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    return-object v0
.end method

.method public final a(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ts;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/ts;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ts;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/ts;->a(I)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ts;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_21

    if-ltz p1, :cond_21

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ts;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ts;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_21

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ts;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->G:I

    :goto_20
    return v0

    :cond_21
    sget-boolean v0, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v0, :cond_2a

    const-string v0, "GenreAlbums#AlbumListAdapter.getItemViewType() - mAlbumInfo is null "

    invoke-static {v0}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;)I

    :cond_2a
    const/4 v0, 0x1

    goto :goto_20
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    const/16 v6, 0x8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ts;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f03005f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/tt;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/tt;-><init>(Lcom/sdgtl/mediahub/spr/screen/ts;)V

    const v0, 0x7f0d0036

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/tt;->a:Landroid/widget/ImageView;

    const v0, 0x7f0d003d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/tt;->b:Landroid/widget/TextView;

    const v0, 0x7f0d003e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/tt;->c:Landroid/widget/ImageView;

    const v0, 0x7f0d0140

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/tt;->e:Landroid/widget/TextView;

    const v0, 0x7f0d0040

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/tt;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ts;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->D:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/ArrayList;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5d

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a3

    :cond_5d
    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/screen/tt;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_62
    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->A:Ljava/lang/String;

    if-eqz v3, :cond_a9

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->A:Ljava/lang/String;

    const-string v4, "Y"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/screen/tt;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_75
    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/screen/tt;->a:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->h:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/screen/tt;->b:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ts;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ts;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->n:Ljava/lang/String;

    const-string v3, "Y"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/tt;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_a2
    return-object v1

    :cond_a3
    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/screen/tt;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_62

    :cond_a9
    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/screen/tt;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_75

    :cond_af
    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/tt;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a2
.end method
