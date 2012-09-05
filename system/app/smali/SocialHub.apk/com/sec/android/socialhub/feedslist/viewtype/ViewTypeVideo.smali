.class public Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeVideo;
.super Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;
.source "ViewTypeVideo.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;-><init>()V

    return-void
.end method

.method private inflateMediaView(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 12
    .parameter "context"
    .parameter "wrapper"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 107
    if-nez p2, :cond_5

    .line 144
    :cond_4
    :goto_4
    return-void

    .line 110
    :cond_5
    iget-object v5, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v5, v5, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 111
    iget-object v5, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v5, v5, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    iget-object v6, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 113
    iget-object v5, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v5, v5, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentType:Ljava/lang/String;

    if-eqz v5, :cond_31

    iget-object v5, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v5, v5, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentType:Ljava/lang/String;

    const-string v6, "mood"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 115
    const-string v5, "ViewTypeVideo"

    const-string v6, "inflateMediaView()"

    const-string v7, "AttchmentType is mood."

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 119
    :cond_31
    iget-object v5, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v5, v5, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mMediaInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_39
    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;

    .line 121
    .local v2, info:Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeVideo;->getInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030026

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 123
    .local v3, item:Landroid/view/View;
    const v5, 0x7f0b00cc

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 125
    .local v4, layout:Landroid/widget/FrameLayout;
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 126
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    iget-object v6, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 128
    invoke-virtual {v2}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaThumbnailURL()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_39

    .line 130
    iget-object v5, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v5, v5, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {v3, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 134
    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 135
    iget-object v5, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v5, v5, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 136
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 138
    const v5, 0x7f0b00cd

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 140
    .local v1, img:Landroid/widget/ImageView;
    const-string v5, "large"

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_39
.end method


# virtual methods
.method public drawAttachment(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;ZLjava/lang/String;)V
    .registers 10
    .parameter "context"
    .parameter "wrapper"
    .parameter "bSearchMode"
    .parameter "condition"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 27
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 29
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    if-eqz v0, :cond_65

    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_65

    .line 31
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :goto_2d
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    if-eqz v0, :cond_6d

    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6d

    .line 41
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :goto_4f
    const/4 v0, 0x1

    if-ne p3, v0, :cond_64

    .line 51
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/socialhub/util/HubColor;->SEARCH_COLOR:I

    invoke-static {v4, v0, p4, v1}, Lcom/sec/android/socialhub/util/SocialHubUtil;->setSearchedTextWithColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 52
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/socialhub/util/HubColor;->SEARCH_COLOR:I

    invoke-static {v4, v0, p4, v1}, Lcom/sec/android/socialhub/util/SocialHubUtil;->setSearchedTextWithColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 54
    :cond_64
    return-void

    .line 36
    :cond_65
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2d

    .line 46
    :cond_6d
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4f
.end method

.method public drawMedia(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;ZLjava/lang/String;)V
    .registers 22
    .parameter "context"
    .parameter "wrapper"
    .parameter "bSearchMode"
    .parameter "condition"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p2}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeVideo;->inflateMediaView(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;)V

    .line 61
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    .line 63
    .local v8, count:I
    const/4 v13, 0x0

    .line 64
    .local v13, mAttachmentCaption:Landroid/widget/TextView;
    const/4 v14, 0x0

    .line 65
    .local v14, mAttachmentDescription:Landroid/widget/TextView;
    const/4 v10, 0x0

    .line 67
    .local v10, info:Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;
    const/4 v9, 0x0

    .local v9, index:I
    :goto_11
    if-ge v9, v8, :cond_a3

    .line 69
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 70
    .local v12, layout:Landroid/widget/LinearLayout;
    const v1, 0x7f0b00cc

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 71
    .local v11, item:Landroid/widget/FrameLayout;
    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v10

    .end local v10           #info:Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;
    check-cast v10, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;

    .line 72
    .restart local v10       #info:Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;
    const v1, 0x7f0b00cd

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 73
    .local v5, image:Landroid/widget/ImageView;
    const v1, 0x7f0b00cf

    invoke-virtual {v11, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 74
    .local v15, mImagePlay:Landroid/widget/ImageView;
    const v1, 0x7f0b009d

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13           #mAttachmentCaption:Landroid/widget/TextView;
    check-cast v13, Landroid/widget/TextView;

    .line 75
    .restart local v13       #mAttachmentCaption:Landroid/widget/TextView;
    const v1, 0x7f0b009e

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #mAttachmentDescription:Landroid/widget/TextView;
    check-cast v14, Landroid/widget/TextView;

    .line 77
    .restart local v14       #mAttachmentDescription:Landroid/widget/TextView;
    if-eqz v13, :cond_60

    if-eqz v14, :cond_60

    .line 79
    const/16 v1, 0x8

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    :cond_60
    invoke-virtual {v10}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v16

    .line 85
    .local v16, media_type:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeVideo;->getImageService(Landroid/content/Context;)Lcom/sec/android/socialhub/image/ImageCacheManager;

    move-result-object v1

    invoke-virtual {v10}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaThumbnailURL()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v2, "video"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    const/4 v6, 0x0

    :goto_78
    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 89
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_83

    .line 91
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 94
    :cond_83
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->mVideoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 99
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 67
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_11

    .line 85
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    :cond_9e
    invoke-static {}, Lcom/sec/android/socialhub/image/SocialHubImage;->getImageError()I

    move-result v6

    goto :goto_78

    .line 102
    .end local v5           #image:Landroid/widget/ImageView;
    .end local v11           #item:Landroid/widget/FrameLayout;
    .end local v12           #layout:Landroid/widget/LinearLayout;
    .end local v15           #mImagePlay:Landroid/widget/ImageView;
    .end local v16           #media_type:Ljava/lang/String;
    :cond_a3
    return-void
.end method