.class public Lcom/sprint/dsa/widget/ContentListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ContentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SprintZone_ContentListAdapater"


# instance fields
.field private final context:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPromos:Lcom/sprint/dsa/data/PageContent;

.field private mStyles:Lcom/sprint/dsa/pack/StylesApplicator;

.field private tcView:Lcom/sprint/dsa/widget/TestConnectionView;

.field private testGroupPosition:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->testGroupPosition:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mStyles:Lcom/sprint/dsa/pack/StylesApplicator;

    .line 35
    iput-object p1, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->context:Landroid/content/Context;

    .line 37
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sprint/dsa/pack/StylesApplicator;)V
    .registers 3
    .parameter "context"
    .parameter "styles"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sprint/dsa/widget/ContentListAdapter;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/sprint/dsa/widget/ContentListAdapter;->setStyles(Lcom/sprint/dsa/pack/StylesApplicator;)V

    .line 43
    return-void
.end method


# virtual methods
.method public _getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 17
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 102
    iget-object v6, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mPromos:Lcom/sprint/dsa/data/PageContent;

    if-nez v6, :cond_6

    const/4 v0, 0x0

    .line 205
    :cond_5
    :goto_5
    return-object v0

    .line 105
    :cond_6
    iget-object v6, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mPromos:Lcom/sprint/dsa/data/PageContent;

    invoke-virtual {v6, p1, p2}, Lcom/sprint/dsa/data/PageContent;->getFeatureItem(II)Lcom/sprint/dsa/data/FeatureItem;

    move-result-object v4

    .line 106
    .local v4, item:Lcom/sprint/dsa/data/FeatureItem;
    new-instance v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;

    const/4 v6, 0x0

    invoke-direct {v1, p0, v6}, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;-><init>(Lcom/sprint/dsa/widget/ContentListAdapter;Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;)V

    .line 108
    .local v1, holder:Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;
    invoke-virtual {v4}, Lcom/sprint/dsa/data/FeatureItem;->isConnectionTest()Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 109
    iput p1, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->testGroupPosition:I

    .line 110
    iget-object v6, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->tcView:Lcom/sprint/dsa/widget/TestConnectionView;

    if-nez v6, :cond_27

    .line 112
    new-instance v6, Lcom/sprint/dsa/widget/TestConnectionView;

    iget-object v7, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/sprint/dsa/widget/TestConnectionView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->tcView:Lcom/sprint/dsa/widget/TestConnectionView;

    .line 114
    :cond_27
    iget-object v0, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->tcView:Lcom/sprint/dsa/widget/TestConnectionView;

    goto :goto_5

    .line 116
    :cond_2a
    invoke-virtual {v4}, Lcom/sprint/dsa/data/FeatureItem;->isActivate()Z

    move-result v6

    if-eqz v6, :cond_66

    .line 117
    if-eqz p4, :cond_3a

    invoke-virtual {p4}, Landroid/view/View;->getId()I

    move-result v6

    const/high16 v7, 0x7f0b

    if-eq v6, v7, :cond_64

    .line 118
    :cond_3a
    iget-object v6, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v7, 0x7f03

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, childView:Landroid/view/View;
    const v6, 0x7f0b0002

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/sprint/dsa/data/FeatureItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    const v6, 0x7f0b0005

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 121
    invoke-virtual {v4}, Lcom/sprint/dsa/data/FeatureItem;->getDescription()Ljava/lang/String;

    move-result-object v7

    .line 120
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 123
    .end local v0           #childView:Landroid/view/View;
    :cond_64
    move-object v0, p4

    .restart local v0       #childView:Landroid/view/View;
    goto :goto_5

    .line 133
    .end local v0           #childView:Landroid/view/View;
    :cond_66
    iget-object v6, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030014

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 135
    .restart local v0       #childView:Landroid/view/View;
    const v6, 0x7f0b004c

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mCost:Landroid/widget/TextView;

    .line 136
    const v6, 0x7f0b004d

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RatingBar;

    iput-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mRatingBar:Landroid/widget/RatingBar;

    .line 137
    const v6, 0x7f0b0001

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 138
    const v6, 0x7f0b0002

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 139
    const v6, 0x7f0b004a

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mMore:Landroid/widget/TextView;

    .line 140
    const v6, 0x7f0b000d

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mDesc:Landroid/widget/TextView;

    .line 142
    invoke-virtual {v4}, Lcom/sprint/dsa/data/FeatureItem;->isMore()Z

    move-result v6

    if-eqz v6, :cond_122

    .line 145
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/sprint/dsa/data/FeatureItem;->setEnabled(Z)V

    .line 146
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mMore:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mDesc:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    :goto_d7
    invoke-virtual {v4}, Lcom/sprint/dsa/data/FeatureItem;->getCost()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1b8

    .line 178
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mCost:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    invoke-virtual {v4}, Lcom/sprint/dsa/data/FeatureItem;->isInstalled()Z

    move-result v6

    if-eqz v6, :cond_1ad

    .line 180
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mCost:Landroid/widget/TextView;

    const v7, 0x7f080011

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 184
    :goto_f1
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mRatingBar:Landroid/widget/RatingBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 185
    invoke-virtual {v4}, Lcom/sprint/dsa/data/FeatureItem;->getRating()J

    move-result-wide v6

    long-to-float v6, v6

    const/high16 v7, 0x4000

    div-float v5, v6, v7

    .line 186
    .local v5, rating:F
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v6, v5}, Landroid/widget/RatingBar;->setRating(F)V

    .line 196
    .end local v5           #rating:F
    :goto_105
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 197
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Lcom/sprint/dsa/data/FeatureItem;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1c8

    .line 198
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 199
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_5

    .line 151
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    :cond_122
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mMore:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mDesc:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 156
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/sprint/dsa/data/FeatureItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mDesc:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/sprint/dsa/data/FeatureItem;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v4}, Lcom/sprint/dsa/data/FeatureItem;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_19c

    .line 160
    invoke-virtual {v4}, Lcom/sprint/dsa/data/FeatureItem;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, imgUrl:Ljava/lang/String;
    if-eqz v3, :cond_164

    const-string v6, "sprint.png"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_173

    .line 162
    :cond_164
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_d7

    .line 164
    :cond_173
    if-eqz v3, :cond_18c

    const-string v6, "alert_icon.png"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18c

    .line 165
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const/high16 v7, 0x7f02

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d7

    .line 168
    :cond_18c
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const v7, 0x7f020007

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d7

    .line 172
    .end local v3           #imgUrl:Ljava/lang/String;
    :cond_19c
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Lcom/sprint/dsa/data/FeatureItem;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_d7

    .line 182
    :cond_1ad
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mCost:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/sprint/dsa/data/FeatureItem;->getCost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f1

    .line 188
    :cond_1b8
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mCost:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v6, v1, Lcom/sprint/dsa/widget/ContentListAdapter$ViewHolder;->mRatingBar:Landroid/widget/RatingBar;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto/16 :goto_105

    .line 201
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    :cond_1c8
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 202
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x46

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_5
.end method

.method public _getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 238
    iget-object v3, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mPromos:Lcom/sprint/dsa/data/PageContent;

    if-nez v3, :cond_6

    .line 247
    :goto_5
    return-object v2

    .line 240
    :cond_6
    iget-object v3, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mPromos:Lcom/sprint/dsa/data/PageContent;

    invoke-virtual {v3, p1}, Lcom/sprint/dsa/data/PageContent;->getCategory(I)Lcom/sprint/dsa/data/CategoryItem;

    move-result-object v0

    .line 241
    .local v0, group:Lcom/sprint/dsa/data/CategoryItem;
    if-nez v0, :cond_10

    move-object v2, p3

    goto :goto_5

    .line 243
    :cond_10
    if-nez p3, :cond_1b

    iget-object v3, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030005

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 244
    :cond_1b
    const v2, 0x7f0b0002

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 246
    .local v1, title:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/sprint/dsa/data/CategoryItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, p3

    .line 247
    goto :goto_5
.end method

.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 276
    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getChild(II)Ljava/lang/Object;
    .registers 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mPromos:Lcom/sprint/dsa/data/PageContent;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 84
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mPromos:Lcom/sprint/dsa/data/PageContent;

    invoke-virtual {v0, p1, p2}, Lcom/sprint/dsa/data/PageContent;->getFeatureItem(II)Lcom/sprint/dsa/data/FeatureItem;

    move-result-object v0

    goto :goto_5
.end method

.method public getChildId(II)J
    .registers 5
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 88
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 93
    invoke-virtual/range {p0 .. p5}, Lcom/sprint/dsa/widget/ContentListAdapter;->_getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, childView:Landroid/view/View;
    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mStyles:Lcom/sprint/dsa/pack/StylesApplicator;

    if-eqz v1, :cond_f

    .line 95
    iget-object v1, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mStyles:Lcom/sprint/dsa/pack/StylesApplicator;

    invoke-virtual {v1, v0}, Lcom/sprint/dsa/pack/StylesApplicator;->apply(Landroid/view/View;)V

    .line 97
    :cond_f
    return-object v0
.end method

.method public getChildrenCount(I)I
    .registers 3
    .parameter "groupPosition"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mPromos:Lcom/sprint/dsa/data/PageContent;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 210
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mPromos:Lcom/sprint/dsa/data/PageContent;

    invoke-virtual {v0, p1}, Lcom/sprint/dsa/data/PageContent;->getChildCount(I)I

    move-result v0

    goto :goto_5
.end method

.method public getCurrentListContent()Lcom/sprint/dsa/data/PageContent;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mPromos:Lcom/sprint/dsa/data/PageContent;

    return-object v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .registers 3
    .parameter "groupPosition"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mPromos:Lcom/sprint/dsa/data/PageContent;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 215
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mPromos:Lcom/sprint/dsa/data/PageContent;

    invoke-virtual {v0, p1}, Lcom/sprint/dsa/data/PageContent;->getCategory(I)Lcom/sprint/dsa/data/CategoryItem;

    move-result-object v0

    goto :goto_5
.end method

.method public getGroupCount()I
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mPromos:Lcom/sprint/dsa/data/PageContent;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 220
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mPromos:Lcom/sprint/dsa/data/PageContent;

    invoke-virtual {v0}, Lcom/sprint/dsa/data/PageContent;->getGroupCount()I

    move-result v0

    goto :goto_5
.end method

.method public getGroupId(I)J
    .registers 4
    .parameter "groupPosition"

    .prologue
    .line 224
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 229
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sprint/dsa/widget/ContentListAdapter;->_getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 230
    .local v0, groupView:Landroid/view/View;
    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mStyles:Lcom/sprint/dsa/pack/StylesApplicator;

    if-eqz v1, :cond_f

    .line 231
    iget-object v1, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mStyles:Lcom/sprint/dsa/pack/StylesApplicator;

    invoke-virtual {v1, v0}, Lcom/sprint/dsa/pack/StylesApplicator;->apply(Landroid/view/View;)V

    .line 233
    :cond_f
    return-object v0
.end method

.method public getTestConnectionView()Lcom/sprint/dsa/widget/TestConnectionView;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->tcView:Lcom/sprint/dsa/widget/TestConnectionView;

    return-object v0
.end method

.method public getTestGroupPosition()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->testGroupPosition:I

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .registers 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mPromos:Lcom/sprint/dsa/data/PageContent;

    invoke-virtual {v0, p1, p2}, Lcom/sprint/dsa/data/PageContent;->getFeatureItem(II)Lcom/sprint/dsa/data/FeatureItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/dsa/data/FeatureItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public setContent(Lcom/sprint/dsa/data/PageContent;)V
    .registers 9
    .parameter "promos"

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/sprint/dsa/data/PageContent;->copyContent()Lcom/sprint/dsa/data/PageContent;

    move-result-object v5

    iput-object v5, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mPromos:Lcom/sprint/dsa/data/PageContent;

    .line 62
    iget-object v5, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mPromos:Lcom/sprint/dsa/data/PageContent;

    invoke-virtual {v5}, Lcom/sprint/dsa/data/PageContent;->testConnection()Z

    move-result v5

    if-eqz v5, :cond_24

    iget-object v5, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->tcView:Lcom/sprint/dsa/widget/TestConnectionView;

    if-nez v5, :cond_24

    .line 64
    new-instance v5, Lcom/sprint/dsa/widget/TestConnectionView;

    iget-object v6, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/sprint/dsa/widget/TestConnectionView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->tcView:Lcom/sprint/dsa/widget/TestConnectionView;

    .line 65
    iget-object v5, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mPromos:Lcom/sprint/dsa/data/PageContent;

    invoke-virtual {v5}, Lcom/sprint/dsa/data/PageContent;->getGroupCount()I

    move-result v1

    .line 66
    .local v1, groupSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_22
    if-lt v2, v1, :cond_28

    .line 79
    .end local v1           #groupSize:I
    .end local v2           #i:I
    :cond_24
    invoke-virtual {p0}, Lcom/sprint/dsa/widget/ContentListAdapter;->notifyDataSetChanged()V

    .line 80
    return-void

    .line 67
    .restart local v1       #groupSize:I
    .restart local v2       #i:I
    :cond_28
    iget-object v5, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mPromos:Lcom/sprint/dsa/data/PageContent;

    invoke-virtual {v5, v2}, Lcom/sprint/dsa/data/PageContent;->getCategory(I)Lcom/sprint/dsa/data/CategoryItem;

    move-result-object v0

    .line 68
    .local v0, group:Lcom/sprint/dsa/data/CategoryItem;
    invoke-virtual {v0}, Lcom/sprint/dsa/data/CategoryItem;->getCount()I

    move-result v3

    .line 69
    .local v3, itemSize:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_33
    if-lt v4, v3, :cond_38

    .line 66
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 70
    :cond_38
    invoke-virtual {v0, v4}, Lcom/sprint/dsa/data/CategoryItem;->getPromo(I)Lcom/sprint/dsa/data/FeatureItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sprint/dsa/data/FeatureItem;->isConnectionTest()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 71
    iput v2, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->testGroupPosition:I

    .line 72
    move v2, v1

    .line 73
    goto :goto_35

    .line 69
    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_33
.end method

.method public setStyles(Lcom/sprint/dsa/pack/StylesApplicator;)V
    .registers 2
    .parameter "styles"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sprint/dsa/widget/ContentListAdapter;->mStyles:Lcom/sprint/dsa/pack/StylesApplicator;

    .line 53
    return-void
.end method
