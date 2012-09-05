.class public Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypePhoto;
.super Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;
.source "ViewTypePhoto.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;-><init>()V

    return-void
.end method


# virtual methods
.method public drawAttachment(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;ZLjava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "wrapper"
    .parameter "bSearchMode"
    .parameter "condition"

    .prologue
    .line 29
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 30
    return-void
.end method

.method public drawMedia(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;ZLjava/lang/String;)V
    .registers 23
    .parameter "context"
    .parameter "wrapper"
    .parameter "bSearchMode"
    .parameter "condition"

    .prologue
    .line 35
    invoke-virtual/range {p0 .. p2}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypePhoto;->inflateMediaView(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;)V

    .line 37
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    .line 38
    .local v8, count:I
    const/4 v13, 0x0

    .line 39
    .local v13, mAttachmentCaption:Landroid/widget/TextView;
    const/4 v14, 0x0

    .line 40
    .local v14, mAttachmentDescription:Landroid/widget/TextView;
    const/4 v10, 0x0

    .line 42
    .local v10, info:Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;
    const/4 v9, 0x0

    .local v9, index:I
    :goto_11
    if-ge v9, v8, :cond_10d

    .line 44
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 45
    .local v12, layout:Landroid/widget/LinearLayout;
    const v1, 0x7f0b00cc

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 46
    .local v11, item:Landroid/widget/FrameLayout;
    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v10

    .end local v10           #info:Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;
    check-cast v10, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;

    .line 47
    .restart local v10       #info:Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;
    const v1, 0x7f0b00cd

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 48
    .local v5, image:Landroid/widget/ImageView;
    const v1, 0x7f0b00cf

    invoke-virtual {v11, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 49
    .local v15, mImagePlay:Landroid/widget/ImageView;
    const v1, 0x7f0b009d

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13           #mAttachmentCaption:Landroid/widget/TextView;
    check-cast v13, Landroid/widget/TextView;

    .line 50
    .restart local v13       #mAttachmentCaption:Landroid/widget/TextView;
    const v1, 0x7f0b009e

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #mAttachmentDescription:Landroid/widget/TextView;
    check-cast v14, Landroid/widget/TextView;

    .line 53
    .restart local v14       #mAttachmentDescription:Landroid/widget/TextView;
    if-eqz v13, :cond_60

    if-eqz v14, :cond_60

    .line 55
    const/16 v1, 0x8

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    :cond_60
    invoke-virtual {v10}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v17

    .line 60
    .local v17, media_type:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v0, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miMediaCount:I

    move/from16 v16, v0

    .line 62
    .local v16, media_count:I
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypePhoto;->getImageService(Landroid/content/Context;)Lcom/sec/android/socialhub/image/ImageCacheManager;

    move-result-object v1

    invoke-virtual {v10}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaThumbnailURL()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v2, "video"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fc

    const/4 v6, 0x0

    :goto_80
    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 66
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_8b

    .line 68
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 71
    :cond_8b
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_d6

    .line 75
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    if-eqz v1, :cond_101

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_101

    .line 77
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    :goto_b5
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    if-eqz v1, :cond_107

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_107

    .line 86
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    :cond_d6
    :goto_d6
    const/16 v1, 0x8

    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 100
    const/4 v1, 0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_f8

    .line 102
    const/4 v1, 0x0

    sget v2, Lcom/sec/android/socialhub/util/HubColor;->SEARCH_COLOR:I

    move-object/from16 v0, p4

    invoke-static {v1, v14, v0, v2}, Lcom/sec/android/socialhub/util/SocialHubUtil;->setSearchedTextWithColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 103
    const/4 v1, 0x0

    sget v2, Lcom/sec/android/socialhub/util/HubColor;->SEARCH_COLOR:I

    move-object/from16 v0, p4

    invoke-static {v1, v13, v0, v2}, Lcom/sec/android/socialhub/util/SocialHubUtil;->setSearchedTextWithColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 42
    :cond_f8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_11

    .line 62
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    :cond_fc
    invoke-static {}, Lcom/sec/android/socialhub/image/SocialHubImage;->getImageError()I

    move-result v6

    goto :goto_80

    .line 82
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_101
    const/16 v1, 0x8

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b5

    .line 91
    :cond_107
    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d6

    .line 106
    .end local v5           #image:Landroid/widget/ImageView;
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v11           #item:Landroid/widget/FrameLayout;
    .end local v12           #layout:Landroid/widget/LinearLayout;
    .end local v15           #mImagePlay:Landroid/widget/ImageView;
    .end local v16           #media_count:I
    .end local v17           #media_type:Ljava/lang/String;
    :cond_10d
    return-void
.end method

.method protected inflateMediaView(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 4
    .parameter "context"
    .parameter "wrapper"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->mPhotoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypePhoto;->inflateMediaView(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

.method protected inflateMediaView(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/view/View$OnClickListener;)V
    .registers 15
    .parameter "context"
    .parameter "wrapper"
    .parameter "listener"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 115
    if-nez p2, :cond_6

    .line 174
    :cond_5
    :goto_5
    return-void

    .line 118
    :cond_6
    iget-object v5, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v5, v5, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 119
    iget-object v5, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v5, v5, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    iget-object v6, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 121
    iget-object v5, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v5, v5, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentType:Ljava/lang/String;

    if-eqz v5, :cond_32

    iget-object v5, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v5, v5, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentType:Ljava/lang/String;

    const-string v6, "mood"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 123
    const-string v5, "ViewTypePhoto"

    const-string v6, "inflateMediaView()"

    const-string v7, "AttchmentType is mood."

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 127
    :cond_32
    iget-object v5, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v5, v5, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mMediaInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3a
    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;

    .line 129
    .local v2, info:Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypePhoto;->getInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030026

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 131
    .local v3, item:Landroid/view/View;
    const v5, 0x7f0b00cc

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 133
    .local v4, layout:Landroid/widget/FrameLayout;
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 134
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    iget-object v6, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 136
    invoke-virtual {v2}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaThumbnailURL()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3a

    .line 138
    iget-object v5, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v5, v5, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    iget-object v5, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v5, v5, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    if-nez v5, :cond_80

    iget-object v5, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v5, v5, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    if-eqz v5, :cond_af

    .line 142
    :cond_80
    invoke-virtual {p0, v3, v4, p3, p2}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypePhoto;->setClickListener(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/view/View$OnClickListener;Lcom/sec/android/socialhub/feedslist/FeedView;)V

    .line 144
    invoke-virtual {v3, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 145
    invoke-virtual {v3, v10, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 146
    iget-object v5, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v5, v5, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 147
    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 149
    const-string v5, "video"

    invoke-virtual {v2}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 151
    invoke-virtual {v3, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 166
    :cond_a2
    :goto_a2
    const v5, 0x7f0b00cd

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 168
    .local v1, img:Landroid/widget/ImageView;
    invoke-virtual {p0, v1, p2}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypePhoto;->setImageTag(Landroid/widget/ImageView;Lcom/sec/android/socialhub/feedslist/FeedView;)V

    goto :goto_3a

    .line 156
    .end local v1           #img:Landroid/widget/ImageView;
    :cond_af
    invoke-virtual {v4, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-virtual {v3, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 158
    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 159
    iget-object v5, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v5, v5, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 160
    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    goto :goto_a2
.end method

.method protected setClickListener(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/view/View$OnClickListener;Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 6
    .parameter "layout"
    .parameter "image_frame"
    .parameter "listener"
    .parameter "wrapper"

    .prologue
    .line 178
    new-instance v0, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypePhoto$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypePhoto$1;-><init>(Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypePhoto;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 189
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    return-void
.end method

.method protected setImageTag(Landroid/widget/ImageView;Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 5
    .parameter "image"
    .parameter "wrapper"

    .prologue
    .line 194
    if-eqz p1, :cond_e

    .line 196
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miMediaCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_f

    .line 198
    const-string v0, "small"

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 205
    :cond_e
    :goto_e
    return-void

    .line 202
    :cond_f
    const-string v0, "large"

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_e
.end method
