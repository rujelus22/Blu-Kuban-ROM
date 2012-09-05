.class public Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;
.super Landroid/widget/BaseAdapter;


# static fields
.field private static final LIST_MODE_FEATURE:I = 0x2

.field private static final LIST_MODE_MORE:I = 0x1


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mItems:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->mItems:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->getItem(I)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_21

    if-ltz p1, :cond_21

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_21

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->G:I

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x1

    goto :goto_20
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    const/16 v8, 0xa

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->G:I

    if-ne v0, v5, :cond_2a

    if-nez p2, :cond_22

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030021

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_21
    return-object p2

    :cond_22
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object p2, v0

    goto :goto_21

    :cond_2a
    if-nez p2, :cond_a1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter$ViewHolder;-><init>(Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;)V

    const v0, 0x7f0d0036

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter$ViewHolder;->ivCoverArt:Landroid/widget/ImageView;

    const v0, 0x7f0d0069

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter$ViewHolder;->ivFeatureList:Landroid/widget/ImageView;

    const v0, 0x7f0d003d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_5f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter$ViewHolder;->ivCoverArt:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->h:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v5, :cond_a9

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21

    :cond_a1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_5f

    :cond_a9
    iget-object v2, v1, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->G:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_e8

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter$ViewHolder;->ivFeatureList:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_bf
    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter$ViewHolder;->ivCoverArt:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_120

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/a/a;->d(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_f5

    const/16 v2, 0x7e

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v2, 0xb3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_e1
    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter$ViewHolder;->ivCoverArt:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_21

    :cond_e8
    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter$ViewHolder;->ivFeatureList:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v4, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_bf

    :cond_f5
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/a/a;->d(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v8, :cond_106

    const/16 v2, 0xd3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v2, 0x12d

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_e1

    :cond_106
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/a/a;->d(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v7, :cond_117

    const/16 v2, 0xd3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v2, 0x12d

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_e1

    :cond_117
    const/16 v2, 0x83

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v2, 0xbb

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_e1

    :cond_120
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/a/a;->d(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v8, :cond_131

    const/16 v2, 0xc6

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v2, 0x118

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_e1

    :cond_131
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/a/a;->d(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v7, :cond_142

    const/16 v2, 0xb2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v2, 0xfc

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_e1

    :cond_142
    const/16 v2, 0x76

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v2, 0xa8

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_e1
.end method

.method public getViewTypeCount()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public init()V
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->notifyDataSetChanged()V

    :cond_14
    return-void
.end method

.method public refresh(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->notifyDataSetChanged()V

    return-void
.end method
