.class public Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeVideo;
.super Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;
.source "ViewTypeVideo.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;-><init>()V

    return-void
.end method

.method private inflateMediaView(Landroid/content/Context;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 13
    .parameter "context"
    .parameter "view"
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 101
    if-eqz p2, :cond_6

    if-nez p3, :cond_7

    .line 138
    :cond_6
    :goto_6
    return-void

    .line 104
    :cond_7
    iget-object v5, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 105
    iget-object v5, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 107
    iget-object v5, p3, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentType:Ljava/lang/String;

    if-eqz v5, :cond_29

    iget-object v5, p3, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentType:Ljava/lang/String;

    const-string v6, "mood"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 109
    const-string v5, "ViewTypeVideo"

    const-string v6, "inflateMediaView()"

    const-string v7, "AttchmentType is mood."

    invoke-static {v5, v6, v7}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 113
    :cond_29
    iget-object v5, p3, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mMediaInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2f
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;

    .line 115
    .local v2, info:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeVideo;->getInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030004

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 117
    .local v3, item:Landroid/view/View;
    const v5, 0x7f090021

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 119
    .local v4, layout:Landroid/widget/FrameLayout;
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5, p3}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 122
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaThumbnailURL()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2f

    .line 124
    iget-object v5, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {v3, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 128
    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 129
    iget-object v5, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 130
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 132
    const v5, 0x7f090022

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 134
    .local v1, img:Landroid/widget/ImageView;
    const-string v5, "large"

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_2f
.end method


# virtual methods
.method public drawAttachment(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 7
    .parameter "view"
    .parameter "data"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 26
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 28
    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    if-eqz v0, :cond_39

    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_39

    .line 30
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentCaption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :goto_20
    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    if-eqz v0, :cond_3f

    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3f

    .line 40
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :goto_38
    return-void

    .line 35
    :cond_39
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_20

    .line 45
    :cond_3f
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_38
.end method

.method public drawMedia(Landroid/content/Context;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 21
    .parameter "context"
    .parameter "view"
    .parameter "data"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeVideo;->inflateMediaView(Landroid/content/Context;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V

    .line 55
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    .line 57
    .local v8, count:I
    const/4 v13, 0x0

    .line 58
    .local v13, mAttachmentCaption:Landroid/widget/TextView;
    const/4 v14, 0x0

    .line 59
    .local v14, mAttachmentDescription:Landroid/widget/TextView;
    const/4 v10, 0x0

    .line 61
    .local v10, info:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;
    const/4 v9, 0x0

    .local v9, index:I
    :goto_f
    if-ge v9, v8, :cond_9e

    .line 63
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 64
    .local v12, layout:Landroid/widget/LinearLayout;
    const v1, 0x7f090021

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 65
    .local v11, item:Landroid/widget/FrameLayout;
    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v10

    .end local v10           #info:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;
    check-cast v10, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;

    .line 66
    .restart local v10       #info:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;
    const v1, 0x7f090022

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 67
    .local v5, image:Landroid/widget/ImageView;
    const v1, 0x7f090024

    invoke-virtual {v11, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 68
    .local v15, mImagePlay:Landroid/widget/ImageView;
    const v1, 0x7f090026

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13           #mAttachmentCaption:Landroid/widget/TextView;
    check-cast v13, Landroid/widget/TextView;

    .line 69
    .restart local v13       #mAttachmentCaption:Landroid/widget/TextView;
    const v1, 0x7f090027

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #mAttachmentDescription:Landroid/widget/TextView;
    check-cast v14, Landroid/widget/TextView;

    .line 71
    .restart local v14       #mAttachmentDescription:Landroid/widget/TextView;
    if-eqz v13, :cond_5c

    if-eqz v14, :cond_5c

    .line 73
    const/16 v1, 0x8

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    :cond_5c
    invoke-virtual {v10}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v16

    .line 79
    .local v16, media_type:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeVideo;->getImageService(Landroid/content/Context;)Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;

    move-result-object v1

    invoke-virtual {v10}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaThumbnailURL()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v2, "video"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    const/4 v6, 0x0

    :goto_74
    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->getImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 83
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_7f

    .line 85
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 88
    :cond_7f
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;->mVideoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 93
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 61
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_f

    .line 79
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    :cond_9a
    const v6, 0x7f020023

    goto :goto_74

    .line 96
    .end local v5           #image:Landroid/widget/ImageView;
    .end local v11           #item:Landroid/widget/FrameLayout;
    .end local v12           #layout:Landroid/widget/LinearLayout;
    .end local v15           #mImagePlay:Landroid/widget/ImageView;
    .end local v16           #media_type:Ljava/lang/String;
    :cond_9e
    return-void
.end method
