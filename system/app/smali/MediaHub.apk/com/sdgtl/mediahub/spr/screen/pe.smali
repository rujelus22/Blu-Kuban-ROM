.class final Lcom/sdgtl/mediahub/spr/screen/pe;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/pe;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pe;->d:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/screen/pe;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pe;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pe;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pe;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    return-object v0
.end method

.method public final a(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/pe;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/pe;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pe;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/pe;->a(I)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

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

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pe;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_21

    if-ltz p1, :cond_21

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pe;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pe;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_21

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pe;->d:Ljava/util/ArrayList;

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
    .registers 12

    const/4 v3, 0x0

    const v2, 0x7f0d003e

    const/4 v5, 0x1

    const/16 v7, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pe;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->G:I

    if-ne v0, v5, :cond_2b

    if-nez p2, :cond_23

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pe;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030021

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_22
    return-object p2

    :cond_23
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object p2, v0

    goto :goto_22

    :cond_2b
    if-nez p2, :cond_13d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pe;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030029

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/pf;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/pf;-><init>(Lcom/sdgtl/mediahub/spr/screen/pe;)V

    const v0, 0x7f0d0036

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/pf;->a:Landroid/widget/ImageView;

    const v0, 0x7f0d003d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/pf;->b:Landroid/widget/TextView;

    const v0, 0x7f0d0038

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/pf;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/pf;->f:Landroid/widget/ImageView;

    const v0, 0x7f0d0040

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/pf;->g:Landroid/widget/ImageView;

    const v0, 0x7f0d0047

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/pf;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/pf;->f:Landroid/widget/ImageView;

    const v0, 0x7f0d0044

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/pf;->e:Landroid/widget/TextView;

    const v0, 0x7f0d0099

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/screen/pf;->h:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_9c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pe;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/pf;->a:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->h:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/pf;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->n:Ljava/lang/String;

    if-eqz v1, :cond_146

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->n:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_146

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/pf;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->n:Ljava/lang/String;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/pf;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_ce
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pe;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_152

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->s:Ljava/lang/String;

    if-eqz v1, :cond_14c

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14c

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/pf;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/pe;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a007a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->s:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/pf;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_110
    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/pf;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_115
    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/pf;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_11a
    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/pf;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    move v3, v4

    :goto_120
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v3, v1, :cond_16b

    :goto_128
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->A:Ljava/lang/String;

    if-eqz v1, :cond_187

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->A:Ljava/lang/String;

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_187

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/pf;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_22

    :cond_13d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/pf;

    move-object v2, v0

    goto/16 :goto_9c

    :cond_146
    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/pf;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_ce

    :cond_14c
    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/pf;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_110

    :cond_152
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->p:Ljava/lang/String;

    if-eqz v1, :cond_115

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_115

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/pf;->h:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->p:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/pf;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11a

    :cond_16b
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->b:Ljava/lang/String;

    const-string v5, "01"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_183

    iget-object v1, v2, Lcom/sdgtl/mediahub/spr/screen/pf;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_128

    :cond_183
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_120

    :cond_187
    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/screen/pf;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_22
.end method

.method public final getViewTypeCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
