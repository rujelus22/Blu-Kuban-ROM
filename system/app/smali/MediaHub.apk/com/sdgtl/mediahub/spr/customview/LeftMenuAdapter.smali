.class public Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsMenuIndex:I

.field private mItems:Ljava/util/ArrayList;

.field private mSelectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .registers 5

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->mItems:Ljava/util/ArrayList;

    iput p3, p0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->mIsMenuIndex:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sdgtl/mediahub/spr/common/cr;
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->getItem(I)Lcom/sdgtl/mediahub/spr/common/cr;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedPosition()I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->mSelectedPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    if-nez p2, :cond_110

    :try_start_2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030020

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_b} :catch_192

    move-result-object v1

    :try_start_c
    new-instance v2, Lcom/sdgtl/mediahub/spr/customview/l;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/customview/l;-><init>(Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;)V

    const v0, 0x7f0d000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/customview/l;->c:Landroid/widget/ImageView;

    const v0, 0x7f0d006e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/customview/l;->a:Landroid/widget/TextView;

    const v0, 0x7f0d006f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/customview/l;->b:Landroid/widget/TextView;

    const v0, 0x7f0d0070

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/customview/l;->d:Landroid/widget/ImageView;

    const v0, 0x7f0d006d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/customview/l;->e:Landroid/widget/ImageView;

    const v0, 0x7f0d0071

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/customview/l;->f:Landroid/widget/ImageView;

    const v0, 0x7f0d0072

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/customview/l;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_61
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/customview/l;->g:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/customview/l;->f:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/customview/l;->a:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/cr;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, p0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->mIsMenuIndex:I

    packed-switch v3, :pswitch_data_196

    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/customview/l;->b:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/customview/l;->c:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/customview/l;->c:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/cr;->d:Ljava/lang/String;

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/cr;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/cr;->h:Landroid/graphics/drawable/Drawable;

    :goto_a0
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-boolean v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->i:Z

    if-eqz v0, :cond_15c

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/customview/l;->d:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/customview/l;->e:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/customview/l;->f:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/customview/l;->g:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/customview/l;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<b>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/customview/l;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/customview/l;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<b>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/customview/l;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_10e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_10e} :catch_149

    :cond_10e
    :goto_10e
    move-object v0, v1

    :goto_10f
    return-object v0

    :cond_110
    :try_start_110
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/customview/l;
    :try_end_116
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_110 .. :try_end_116} :catch_192

    move-object v2, v0

    move-object v1, p2

    goto/16 :goto_61

    :pswitch_11a
    :try_start_11a
    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/customview/l;->b:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/customview/l;->b:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/customview/l;->c:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a0

    :catch_149
    move-exception v0

    move-object v0, v1

    goto :goto_10f

    :pswitch_14c
    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/customview/l;->b:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/customview/l;->c:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a0

    :cond_15c
    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/customview/l;->d:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/customview/l;->e:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->mSelectedPosition:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_17d

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/customview/l;->f:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/customview/l;->g:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_10e

    :cond_17d
    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->mSelectedPosition:I

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_10e

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/customview/l;->g:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/customview/l;->f:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_190
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11a .. :try_end_190} :catch_149

    goto/16 :goto_10e

    :catch_192
    move-exception v0

    move-object v0, p2

    goto/16 :goto_10f

    :pswitch_data_196
    .packed-switch 0x7
        :pswitch_11a
        :pswitch_14c
    .end packed-switch
.end method

.method public initCategoryCount()V
    .registers 4

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->getCount()I

    move-result v0

    if-lt v1, v0, :cond_c

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->notifyDataSetChanged()V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iput v2, v0, Lcom/sdgtl/mediahub/spr/common/cr;->g:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public setSelectedPosition(I)V
    .registers 5

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->getCount()I

    move-result v0

    if-lt v1, v0, :cond_1b

    iput p1, p0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->mSelectedPosition:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->mItems:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sdgtl/mediahub/spr/common/cr;->i:Z

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iput-boolean v2, v0, Lcom/sdgtl/mediahub/spr/common/cr;->i:Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method
