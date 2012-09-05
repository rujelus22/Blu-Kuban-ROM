.class public Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;
.super Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;
.source "ViewTypePhoto.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;-><init>()V

    return-void
.end method


# virtual methods
.method public drawAttachment(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 5
    .parameter "view"
    .parameter "data"

    .prologue
    .line 33
    if-eqz p1, :cond_d

    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_d

    .line 34
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 35
    :cond_d
    return-void
.end method

.method public drawMedia(Landroid/content/Context;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 22
    .parameter "context"
    .parameter "view"
    .parameter "data"

    .prologue
    .line 40
    invoke-virtual/range {p0 .. p3}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;->inflateMediaView(Landroid/content/Context;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V

    .line 42
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    .line 43
    .local v8, count:I
    const/4 v13, 0x0

    .line 44
    .local v13, mAttachmentCaption:Landroid/widget/TextView;
    const/4 v14, 0x0

    .line 45
    .local v14, mAttachmentDescription:Landroid/widget/TextView;
    const/4 v10, 0x0

    .line 47
    .local v10, info:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;
    const/4 v9, 0x0

    .local v9, index:I
    :goto_f
    if-ge v9, v8, :cond_e5

    .line 49
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 50
    .local v12, layout:Landroid/widget/LinearLayout;
    const v1, 0x7f090021

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 51
    .local v11, item:Landroid/widget/FrameLayout;
    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v10

    .end local v10           #info:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;
    check-cast v10, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;

    .line 52
    .restart local v10       #info:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;
    const v1, 0x7f090022

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 53
    .local v5, image:Landroid/widget/ImageView;
    const v1, 0x7f090024

    invoke-virtual {v11, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 54
    .local v15, mImagePlay:Landroid/widget/ImageView;
    const v1, 0x7f090026

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13           #mAttachmentCaption:Landroid/widget/TextView;
    check-cast v13, Landroid/widget/TextView;

    .line 55
    .restart local v13       #mAttachmentCaption:Landroid/widget/TextView;
    const v1, 0x7f090027

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #mAttachmentDescription:Landroid/widget/TextView;
    check-cast v14, Landroid/widget/TextView;

    .line 58
    .restart local v14       #mAttachmentDescription:Landroid/widget/TextView;
    if-eqz v13, :cond_5c

    if-eqz v14, :cond_5c

    .line 60
    const/16 v1, 0x8

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    :cond_5c
    invoke-virtual {v10}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v17

    .line 65
    .local v17, media_type:Ljava/lang/String;
    move-object/from16 v0, p3

    iget v0, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miMediaCount:I

    move/from16 v16, v0

    .line 67
    .local v16, media_count:I
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;->getImageService(Landroid/content/Context;)Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;

    move-result-object v1

    invoke-virtual {v10}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaThumbnailURL()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v2, "video"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d5

    const/4 v6, 0x0

    :goto_7a
    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->getImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 72
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_85

    .line 74
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 77
    :cond_85
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_c4

    .line 81
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    if-eqz v1, :cond_d9

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d9

    .line 83
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    :goto_a9
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    if-eqz v1, :cond_df

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_df

    .line 92
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    :cond_c4
    :goto_c4
    const/16 v1, 0x8

    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 104
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 47
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_f

    .line 67
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    :cond_d5
    const v6, 0x7f020023

    goto :goto_7a

    .line 88
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_d9
    const/16 v1, 0x8

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a9

    .line 97
    :cond_df
    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c4

    .line 107
    .end local v5           #image:Landroid/widget/ImageView;
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v11           #item:Landroid/widget/FrameLayout;
    .end local v12           #layout:Landroid/widget/LinearLayout;
    .end local v15           #mImagePlay:Landroid/widget/ImageView;
    .end local v16           #media_count:I
    .end local v17           #media_type:Ljava/lang/String;
    :cond_e5
    return-void
.end method

.method protected inflateMediaView(Landroid/content/Context;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 5
    .parameter "context"
    .parameter "view"
    .parameter "data"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;->mPhotoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;->inflateMediaView(Landroid/content/Context;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method protected inflateMediaView(Landroid/content/Context;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;Landroid/view/View$OnClickListener;)V
    .registers 15
    .parameter "context"
    .parameter "view"
    .parameter "data"
    .parameter "listener"

    .prologue
    .line 116
    if-eqz p2, :cond_4

    if-nez p3, :cond_5

    .line 175
    :cond_4
    :goto_4
    return-void

    .line 119
    :cond_5
    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 120
    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 122
    iget-object v0, p3, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentType:Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v0, p3, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentType:Ljava/lang/String;

    const-string v3, "mood"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 124
    const-string v0, "ViewTypePhoto"

    const-string v3, "inflateMediaView()"

    const-string v4, "AttchmentType is mood."

    invoke-static {v0, v3, v4}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 128
    :cond_27
    iget-object v0, p3, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mMediaInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2d
    :goto_2d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;

    .line 130
    .local v8, info:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;->getInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030004

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 132
    .local v1, item:Landroid/view/View;
    const v0, 0x7f090021

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 134
    .local v2, layout:Landroid/widget/FrameLayout;
    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 135
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0, p3}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 137
    invoke-virtual {v8}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaThumbnailURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 139
    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    iget-object v0, p3, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    if-nez v0, :cond_6b

    iget-object v0, p3, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    if-eqz v0, :cond_a7

    :cond_6b
    move-object v0, p0

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    .line 143
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;->setClickListener(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/view/View$OnClickListener;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V

    .line 145
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 146
    const/4 v0, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 147
    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v4, v5, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 148
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 150
    const-string v0, "video"

    invoke-virtual {v8}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 152
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 167
    :cond_9a
    :goto_9a
    const v0, 0x7f090022

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 169
    .local v7, img:Landroid/widget/ImageView;
    invoke-virtual {p0, v7, p2, p3}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;->setImageTag(Landroid/widget/ImageView;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V

    goto :goto_2d

    .line 157
    .end local v7           #img:Landroid/widget/ImageView;
    :cond_a7
    invoke-virtual {v2, p4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 159
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 160
    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v4, v5, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 161
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    goto :goto_9a
.end method

.method protected setClickListener(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/view/View$OnClickListener;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 7
    .parameter "layout"
    .parameter "image_frame"
    .parameter "listener"
    .parameter "view"
    .parameter "data"

    .prologue
    .line 179
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto$1;-><init>(Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 190
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    return-void
.end method

.method protected setImageTag(Landroid/widget/ImageView;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 6
    .parameter "image"
    .parameter "view"
    .parameter "data"

    .prologue
    .line 195
    if-eqz p1, :cond_c

    .line 197
    iget v0, p3, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miMediaCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_d

    .line 199
    const-string v0, "small"

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 206
    :cond_c
    :goto_c
    return-void

    .line 203
    :cond_d
    const-string v0, "large"

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_c
.end method
