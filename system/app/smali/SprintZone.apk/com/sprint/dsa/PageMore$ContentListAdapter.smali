.class Lcom/sprint/dsa/PageMore$ContentListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PageMore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/PageMore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContentListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/PageMore;


# direct methods
.method public constructor <init>(Lcom/sprint/dsa/PageMore;)V
    .registers 2
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sprint/dsa/PageMore$ContentListAdapter;->this$0:Lcom/sprint/dsa/PageMore;

    .line 131
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sprint/dsa/PageMore$ContentListAdapter;->this$0:Lcom/sprint/dsa/PageMore;

    #getter for: Lcom/sprint/dsa/PageMore;->mCategory:Lcom/sprint/dsa/data/CategoryItem;
    invoke-static {v0}, Lcom/sprint/dsa/PageMore;->access$0(Lcom/sprint/dsa/PageMore;)Lcom/sprint/dsa/data/CategoryItem;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 136
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/sprint/dsa/PageMore$ContentListAdapter;->this$0:Lcom/sprint/dsa/PageMore;

    #getter for: Lcom/sprint/dsa/PageMore;->mCategory:Lcom/sprint/dsa/data/CategoryItem;
    invoke-static {v0}, Lcom/sprint/dsa/PageMore;->access$0(Lcom/sprint/dsa/PageMore;)Lcom/sprint/dsa/data/CategoryItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/dsa/data/CategoryItem;->getCount()I

    move-result v0

    goto :goto_9
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sprint/dsa/PageMore$ContentListAdapter;->this$0:Lcom/sprint/dsa/PageMore;

    #getter for: Lcom/sprint/dsa/PageMore;->mCategory:Lcom/sprint/dsa/data/CategoryItem;
    invoke-static {v0}, Lcom/sprint/dsa/PageMore;->access$0(Lcom/sprint/dsa/PageMore;)Lcom/sprint/dsa/data/CategoryItem;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 141
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/sprint/dsa/PageMore$ContentListAdapter;->this$0:Lcom/sprint/dsa/PageMore;

    #getter for: Lcom/sprint/dsa/PageMore;->mCategory:Lcom/sprint/dsa/data/CategoryItem;
    invoke-static {v0}, Lcom/sprint/dsa/PageMore;->access$0(Lcom/sprint/dsa/PageMore;)Lcom/sprint/dsa/data/CategoryItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sprint/dsa/data/CategoryItem;->getPromo(I)Lcom/sprint/dsa/data/FeatureItem;

    move-result-object v0

    goto :goto_9
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 145
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 150
    new-instance v0, Lcom/sprint/dsa/PageMore$ViewHolder;

    iget-object v4, p0, Lcom/sprint/dsa/PageMore$ContentListAdapter;->this$0:Lcom/sprint/dsa/PageMore;

    invoke-direct {v0, v4, v3}, Lcom/sprint/dsa/PageMore$ViewHolder;-><init>(Lcom/sprint/dsa/PageMore;Lcom/sprint/dsa/PageMore$ViewHolder;)V

    .line 151
    .local v0, holder:Lcom/sprint/dsa/PageMore$ViewHolder;
    iget-object v4, p0, Lcom/sprint/dsa/PageMore$ContentListAdapter;->this$0:Lcom/sprint/dsa/PageMore;

    #getter for: Lcom/sprint/dsa/PageMore;->mCategory:Lcom/sprint/dsa/data/CategoryItem;
    invoke-static {v4}, Lcom/sprint/dsa/PageMore;->access$0(Lcom/sprint/dsa/PageMore;)Lcom/sprint/dsa/data/CategoryItem;

    move-result-object v4

    if-nez v4, :cond_14

    .line 197
    :goto_13
    return-object v3

    .line 152
    :cond_14
    iget-object v4, p0, Lcom/sprint/dsa/PageMore$ContentListAdapter;->this$0:Lcom/sprint/dsa/PageMore;

    #getter for: Lcom/sprint/dsa/PageMore;->mCategory:Lcom/sprint/dsa/data/CategoryItem;
    invoke-static {v4}, Lcom/sprint/dsa/PageMore;->access$0(Lcom/sprint/dsa/PageMore;)Lcom/sprint/dsa/data/CategoryItem;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sprint/dsa/data/CategoryItem;->getPromo(I)Lcom/sprint/dsa/data/FeatureItem;

    move-result-object v1

    .line 154
    .local v1, item:Lcom/sprint/dsa/data/FeatureItem;
    if-nez p2, :cond_be

    .line 155
    iget-object v4, p0, Lcom/sprint/dsa/PageMore$ContentListAdapter;->this$0:Lcom/sprint/dsa/PageMore;

    #getter for: Lcom/sprint/dsa/PageMore;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/sprint/dsa/PageMore;->access$1(Lcom/sprint/dsa/PageMore;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030014

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 162
    .local v3, view:Landroid/view/View;
    :goto_2d
    const v4, 0x7f0b004c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/sprint/dsa/PageMore$ViewHolder;->mCost:Landroid/widget/TextView;

    .line 163
    const v4, 0x7f0b004d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RatingBar;

    iput-object v4, v0, Lcom/sprint/dsa/PageMore$ViewHolder;->mRatingBar:Landroid/widget/RatingBar;

    .line 164
    const v4, 0x7f0b0001

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/sprint/dsa/PageMore$ViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 165
    const v4, 0x7f0b0002

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/sprint/dsa/PageMore$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 166
    const v4, 0x7f0b000d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/sprint/dsa/PageMore$ViewHolder;->mDesc:Landroid/widget/TextView;

    .line 168
    iget-object v4, v0, Lcom/sprint/dsa/PageMore$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/sprint/dsa/data/FeatureItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v4, v0, Lcom/sprint/dsa/PageMore$ViewHolder;->mDesc:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/sprint/dsa/data/FeatureItem;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {v1}, Lcom/sprint/dsa/data/FeatureItem;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_ca

    .line 171
    invoke-virtual {v1}, Lcom/sprint/dsa/data/FeatureItem;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sprint.png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 172
    iget-object v4, v0, Lcom/sprint/dsa/PageMore$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const v5, 0x7f020016

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    :goto_90
    invoke-virtual {v1}, Lcom/sprint/dsa/data/FeatureItem;->getCost()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_de

    .line 180
    iget-object v4, v0, Lcom/sprint/dsa/PageMore$ViewHolder;->mCost:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    invoke-virtual {v1}, Lcom/sprint/dsa/data/FeatureItem;->isInstalled()Z

    move-result v4

    if-eqz v4, :cond_d4

    .line 182
    iget-object v4, v0, Lcom/sprint/dsa/PageMore$ViewHolder;->mCost:Landroid/widget/TextView;

    const v5, 0x7f080011

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 185
    :goto_a9
    iget-object v4, v0, Lcom/sprint/dsa/PageMore$ViewHolder;->mRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v4, v6}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 186
    invoke-virtual {v1}, Lcom/sprint/dsa/data/FeatureItem;->getRating()J

    move-result-wide v4

    long-to-float v4, v4

    const/high16 v5, 0x4000

    div-float v2, v4, v5

    .line 187
    .local v2, rating:F
    iget-object v4, v0, Lcom/sprint/dsa/PageMore$ViewHolder;->mRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v4, v2}, Landroid/widget/RatingBar;->setRating(F)V

    goto/16 :goto_13

    .line 158
    .end local v2           #rating:F
    .end local v3           #view:Landroid/view/View;
    :cond_be
    move-object v3, p2

    .restart local v3       #view:Landroid/view/View;
    goto/16 :goto_2d

    .line 174
    :cond_c1
    iget-object v4, v0, Lcom/sprint/dsa/PageMore$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const v5, 0x7f020007

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_90

    .line 176
    :cond_ca
    iget-object v4, v0, Lcom/sprint/dsa/PageMore$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/sprint/dsa/data/FeatureItem;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_90

    .line 184
    :cond_d4
    iget-object v4, v0, Lcom/sprint/dsa/PageMore$ViewHolder;->mCost:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/sprint/dsa/data/FeatureItem;->getCost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a9

    .line 190
    :cond_de
    iget-object v4, v0, Lcom/sprint/dsa/PageMore$ViewHolder;->mCost:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object v4, v0, Lcom/sprint/dsa/PageMore$ViewHolder;->mRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v4, v7}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto/16 :goto_13
.end method
