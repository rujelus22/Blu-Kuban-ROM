.class public Lcom/sec/android/socialhub/feedslist/FeedView;
.super Ljava/lang/Object;
.source "FeedView.java"

# interfaces
.implements Lcom/sec/android/socialhub/SocialHubBaseContextMenu$IContextMenuInfo;


# instance fields
.field protected bSearchMode:Z

.field public data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

.field protected mCondtion:Ljava/lang/String;

.field protected mCurrentField:I

.field protected mField:Ljava/lang/String;

.field public view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;Lcom/sec/android/socialhub/image/ImageCacheManager;Landroid/widget/Adapter;)V
    .registers 8
    .parameter "context"
    .parameter "view"
    .parameter "data"
    .parameter "manager"
    .parameter "adapter"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    .line 43
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->bSearchMode:Z

    .line 54
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->mCondtion:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->mField:Ljava/lang/String;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->mCurrentField:I

    .line 62
    iput-object p2, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    .line 63
    iput-object p3, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    .line 64
    return-void
.end method


# virtual methods
.method public alphaLike(I)V
    .registers 3
    .parameter "alpha"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandLike:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandLike:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2e

    .line 119
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandLike:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mTextView:Landroid/widget/TextView;

    instance-of v0, v0, Lcom/sec/android/socialhub/view/AlphaTextView;

    if-eqz v0, :cond_2e

    .line 120
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandLike:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mTextView:Landroid/widget/TextView;

    check-cast v0, Lcom/sec/android/socialhub/view/AlphaTextView;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/view/AlphaTextView;->onSetAlpha(I)Z

    .line 122
    :cond_2e
    return-void
.end method

.method public alphaReply(I)V
    .registers 3
    .parameter "alpha"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_39

    .line 101
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mTextView:Landroid/widget/TextView;

    instance-of v0, v0, Lcom/sec/android/socialhub/view/AlphaTextView;

    if-eqz v0, :cond_39

    .line 102
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mTextView:Landroid/widget/TextView;

    check-cast v0, Lcom/sec/android/socialhub/view/AlphaTextView;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/view/AlphaTextView;->onSetAlpha(I)Z

    .line 105
    :cond_39
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandComment:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandComment:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_67

    .line 108
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandComment:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mTextView:Landroid/widget/TextView;

    instance-of v0, v0, Lcom/sec/android/socialhub/view/AlphaTextView;

    if-eqz v0, :cond_67

    .line 109
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandComment:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mTextView:Landroid/widget/TextView;

    check-cast v0, Lcom/sec/android/socialhub/view/AlphaTextView;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/view/AlphaTextView;->onSetAlpha(I)Z

    .line 112
    :cond_67
    return-void
.end method

.method public destroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    .line 69
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    .line 70
    return-void
.end method

.method public drawAttacmentContent(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 526
    invoke-static {p1}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeFactory;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeFactory;->getViewType(Lcom/sec/android/socialhub/feedslist/FeedView;)Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;

    move-result-object v0

    .line 528
    .local v0, type:Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;
    iget-boolean v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->bSearchMode:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    iget v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->mCurrentField:I

    const v2, 0x7f0800e0

    if-eq v1, v2, :cond_1b

    iget v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->mCurrentField:I

    const v2, 0x7f0800e3

    if-ne v1, v2, :cond_23

    .line 530
    :cond_1b
    iget-boolean v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->bSearchMode:Z

    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->mCondtion:Ljava/lang/String;

    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->drawAttachment(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;ZLjava/lang/String;)V

    .line 536
    :goto_22
    return-void

    .line 534
    :cond_23
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->mCondtion:Ljava/lang/String;

    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->drawAttachment(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;ZLjava/lang/String;)V

    goto :goto_22
.end method

.method public drawComment(Landroid/content/Context;II)V
    .registers 13
    .parameter "context"
    .parameter "spType"
    .parameter "what"

    .prologue
    const/4 v8, 0x1

    .line 552
    invoke-static {p2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v3

    .line 554
    .local v3, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    if-nez v3, :cond_11

    .line 556
    const-string v4, "FeedView"

    const-string v5, "drawComment()"

    const-string v6, "sns is null!!!"

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :goto_10
    return-void

    .line 563
    :cond_11
    const/16 v4, 0x1a

    :try_start_13
    invoke-interface {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v4

    if-eqz v4, :cond_c4

    iget-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v4, v4, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miRecommendCount:I

    if-lez v4, :cond_c4

    .line 565
    iget-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v4, v4, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutLike:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 567
    const/4 v4, 0x4

    invoke-interface {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getString(I)I

    move-result v2

    .line 569
    .local v2, resource:I
    iget-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v4, v4, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miRecommendCount:I

    if-le v4, v8, :cond_37

    .line 571
    const/4 v4, 0x5

    invoke-interface {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getString(I)I

    move-result v2

    .line 574
    :cond_37
    if-ltz v2, :cond_b5

    .line 576
    iget-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v4, v4, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextLike:Landroid/widget/TextView;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v7, v7, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miRecommendCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    :goto_59
    const/16 v4, 0x14

    invoke-interface {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getDrawable(I)I

    move-result v1

    .line 585
    .local v1, img_resource:I
    if-ltz v1, :cond_68

    .line 587
    iget-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v4, v4, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageComment:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_68} :catch_bf

    .line 603
    .end local v1           #img_resource:I
    .end local v2           #resource:I
    :cond_68
    :goto_68
    const/16 v4, 0x8

    :try_start_6a
    invoke-interface {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v4

    if-eqz v4, :cond_ce

    iget-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v4, v4, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miCommentCount:I

    if-lez v4, :cond_ce

    .line 605
    iget-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v4, v4, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutComment:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 608
    const/4 v4, 0x6

    invoke-interface {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getString(I)I

    move-result v2

    .line 610
    .restart local v2       #resource:I
    iget-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v4, v4, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miCommentCount:I

    if-le v4, v8, :cond_8d

    .line 612
    const/4 v4, 0x7

    invoke-interface {v3, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getString(I)I

    move-result v2

    .line 615
    :cond_8d
    iget-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v4, v4, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextComment:Landroid/widget/TextView;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v7, v7, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miCommentCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_ad} :catch_af

    goto/16 :goto_10

    .line 623
    .end local v2           #resource:I
    :catch_af
    move-exception v0

    .line 625
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_10

    .line 580
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #resource:I
    :cond_b5
    :try_start_b5
    const-string v4, "FeedView"

    const-string v5, "drawComment()"

    const-string v6, "resource value is -1"

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_be} :catch_bf

    goto :goto_59

    .line 595
    .end local v2           #resource:I
    :catch_bf
    move-exception v0

    .line 597
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_68

    .line 592
    .end local v0           #e:Ljava/lang/Exception;
    :cond_c4
    :try_start_c4
    iget-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v4, v4, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutLike:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_cd} :catch_bf

    goto :goto_68

    .line 620
    :cond_ce
    :try_start_ce
    iget-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v4, v4, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutComment:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d7} :catch_af

    goto/16 :goto_10
.end method

.method public drawContent(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .registers 6
    .parameter "context"
    .parameter "mtext"

    .prologue
    const/16 v1, 0x8

    .line 430
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrContents:Ljava/lang/String;

    if-eqz v0, :cond_5a

    .line 439
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrContents:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_52

    .line 441
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextContent:Lcom/sec/android/socialhub/view/LinkTextView;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/view/LinkTextView;->setTag(Ljava/lang/Object;)V

    .line 443
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextContent:Lcom/sec/android/socialhub/view/LinkTextView;

    invoke-virtual {v0, p2}, Lcom/sec/android/socialhub/view/LinkTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextContent:Lcom/sec/android/socialhub/view/LinkTextView;

    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrContents:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/LinkTextView;->setTextWithLink(Ljava/lang/CharSequence;)V

    .line 456
    :goto_33
    iget-boolean v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->bSearchMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_51

    iget v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->mCurrentField:I

    const v1, 0x7f0800e0

    if-eq v0, v1, :cond_46

    iget v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->mCurrentField:I

    const v1, 0x7f0800e3

    if-ne v0, v1, :cond_51

    .line 458
    :cond_46
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextContent:Lcom/sec/android/socialhub/view/LinkTextView;

    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->mCondtion:Ljava/lang/String;

    sget v2, Lcom/sec/android/socialhub/util/HubColor;->SEARCH_COLOR:I

    invoke-static {p1, v0, v1, v2}, Lcom/sec/android/socialhub/util/SocialHubUtil;->setSearchedTextWithColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 460
    :cond_51
    return-void

    .line 448
    :cond_52
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_33

    .line 453
    :cond_5a
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_33
.end method

.method public drawExtendFavoriteButtonEx(Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .registers 8
    .parameter "listener"
    .parameter "is_favorite"

    .prologue
    .line 192
    if-eqz p2, :cond_32

    .line 194
    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutCommentFavoriteButton:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutCommentFavoriteButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const/4 v0, -0x1

    .line 199
    .local v0, res:I
    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v2, v2, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    invoke-static {v2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    .line 201
    .local v1, sns:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
    invoke-virtual {v1, p2}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->isLikeOrFavorite(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2e

    .line 203
    const v0, 0x7f02004c

    .line 210
    :goto_26
    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageFavorite:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    .end local v0           #res:I
    .end local v1           #sns:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
    :goto_2d
    return-void

    .line 207
    .restart local v0       #res:I
    .restart local v1       #sns:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
    :cond_2e
    const v0, 0x7f02004d

    goto :goto_26

    .line 214
    .end local v0           #res:I
    .end local v1           #sns:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
    :cond_32
    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutCommentFavoriteButton:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 215
    const-string v2, "FeedView"

    const-string v3, "drawExtendFavoriteButtonEx()"

    const-string v4, "is_favorite is null. so it can not favorite post."

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d
.end method

.method public drawExtendLikeButtonEx(Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .registers 9
    .parameter "listener"
    .parameter "recommandable"

    .prologue
    const/4 v5, 0x1

    .line 151
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    invoke-static {v3}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v2

    check-cast v2, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    .line 153
    .local v2, sns:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->isSupport(I)Z

    move-result v3

    if-eqz v3, :cond_57

    if-eqz p2, :cond_57

    .line 155
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutCommentLikeButton:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutCommentLikeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const/4 v1, -0x1

    .line 160
    .local v1, res:I
    invoke-virtual {v2, p2}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->isLikeOrFavorite(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v5, :cond_51

    .line 162
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getDrawable(I)I

    move-result v1

    .line 169
    :goto_30
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageLike:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    const-string v3, "false"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 173
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutCommentLikeButton:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 174
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageLike:Landroid/widget/ImageView;

    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 188
    .end local v1           #res:I
    .end local v2           #sns:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
    :cond_50
    :goto_50
    return-void

    .line 166
    .restart local v1       #res:I
    .restart local v2       #sns:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
    :cond_51
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getDrawable(I)I

    move-result v1

    goto :goto_30

    .line 179
    .end local v1           #res:I
    :cond_57
    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutCommentLikeButton:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    const-string v3, "FeedView"

    const-string v4, "drawExtendLikeButtonEx()"

    const-string v5, "recommendable is null. so it can not favorite post."

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_69} :catch_6a

    goto :goto_50

    .line 183
    .end local v2           #sns:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
    :catch_6a
    move-exception v0

    .line 185
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_50
.end method

.method public drawMedia(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .registers 6
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 511
    invoke-static {p1}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeFactory;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeFactory;->getViewType(Lcom/sec/android/socialhub/feedslist/FeedView;)Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;

    move-result-object v0

    .line 512
    .local v0, type:Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;
    invoke-virtual {v0, p2}, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->setVideoClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    iget-boolean v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->bSearchMode:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_26

    iget v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->mCurrentField:I

    const v2, 0x7f0800e0

    if-eq v1, v2, :cond_1e

    iget v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->mCurrentField:I

    const v2, 0x7f0800e3

    if-ne v1, v2, :cond_26

    .line 516
    :cond_1e
    iget-boolean v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->bSearchMode:Z

    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->mCondtion:Ljava/lang/String;

    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->drawMedia(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;ZLjava/lang/String;)V

    .line 522
    :goto_25
    return-void

    .line 520
    :cond_26
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->mCondtion:Ljava/lang/String;

    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->drawMedia(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;ZLjava/lang/String;)V

    goto :goto_25
.end method

.method public drawMixiLink(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/16 v4, 0x21

    const/4 v3, 0x0

    .line 649
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_6e

    .line 650
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentType:Ljava/lang/String;

    if-nez v1, :cond_6e

    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachment_m_href:Ljava/lang/String;

    if-eqz v1, :cond_6e

    .line 652
    const/4 v0, 0x0

    .line 653
    .local v0, spanString:Landroid/text/SpannableString;
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutRetweetBy:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 655
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mStrMediatype:Ljava/lang/String;

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 656
    new-instance v0, Landroid/text/SpannableString;

    .end local v0           #spanString:Landroid/text/SpannableString;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080123

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 657
    .restart local v0       #spanString:Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/URLSpan;

    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachment_m_href:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 659
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageReweetBy:Landroid/widget/ImageView;

    const v2, 0x7f020113

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 681
    :cond_55
    :goto_55
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextRetweetBy:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextRetweetBy:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 683
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextRetweetBy:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 686
    .end local v0           #spanString:Landroid/text/SpannableString;
    :cond_6e
    return-void

    .line 662
    .restart local v0       #spanString:Landroid/text/SpannableString;
    :cond_6f
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mStrMediatype:Ljava/lang/String;

    const-string v2, "note"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 663
    new-instance v0, Landroid/text/SpannableString;

    .end local v0           #spanString:Landroid/text/SpannableString;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080122

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 664
    .restart local v0       #spanString:Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/URLSpan;

    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachment_m_href:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 666
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageReweetBy:Landroid/widget/ImageView;

    const v2, 0x7f020112

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_55

    .line 668
    :cond_a6
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mStrMediatype:Ljava/lang/String;

    const-string v2, "status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    .line 669
    new-instance v0, Landroid/text/SpannableString;

    .end local v0           #spanString:Landroid/text/SpannableString;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080121

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 670
    .restart local v0       #spanString:Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/URLSpan;

    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachment_m_href:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 672
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageReweetBy:Landroid/widget/ImageView;

    const v2, 0x7f020114

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_55

    .line 674
    :cond_de
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mStrMediatype:Ljava/lang/String;

    const-string v2, "bookmark"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 675
    new-instance v0, Landroid/text/SpannableString;

    .end local v0           #spanString:Landroid/text/SpannableString;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080124

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 676
    .restart local v0       #spanString:Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/URLSpan;

    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachment_m_href:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 678
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageReweetBy:Landroid/widget/ImageView;

    const v2, 0x7f020111

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_55
.end method

.method public drawMood(Landroid/content/Context;)V
    .registers 11
    .parameter "context"

    .prologue
    const/16 v3, 0x8

    const/4 v8, 0x0

    .line 480
    invoke-static {p1}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/image/ImageCacheManager;

    move-result-object v0

    .line 482
    .local v0, image:Lcom/sec/android/socialhub/image/ImageCacheManager;
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentType:Ljava/lang/String;

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrAttachmentType:Ljava/lang/String;

    const-string v2, "mood"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 484
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrMoodName:Ljava/lang/String;

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrMoodText:Ljava/lang/String;

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrMoodIconUrl:Ljava/lang/String;

    if-eqz v1, :cond_84

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0800ad

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v4, v4, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miRecommendCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrMoodText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 486
    .local v7, moodText:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextMood:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v2, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrMoodIconUrl:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v4, v1, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageMood:Landroid/widget/ImageView;

    invoke-static {}, Lcom/sec/android/socialhub/image/SocialHubImage;->getImageError()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 491
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_7c

    .line 493
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageMood:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 496
    :cond_7c
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMood:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 507
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #moodText:Ljava/lang/String;
    :goto_83
    return-void

    .line 500
    :cond_84
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMood:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_83

    .line 504
    :cond_8c
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMood:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_83
.end method

.method public drawName(Landroid/content/Context;Z)V
    .registers 19
    .parameter "context"
    .parameter "bListView"

    .prologue
    .line 276
    const/4 v15, 0x0

    .line 278
    .local v15, time:Ljava/lang/CharSequence;
    invoke-static/range {p1 .. p1}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/image/ImageCacheManager;

    move-result-object v1

    .line 280
    .local v1, image:Lcom/sec/android/socialhub/image/ImageCacheManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-wide v2, v2, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mlTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_17b

    .line 282
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_16d

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-wide v2, v2, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mlTime:J

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/util/SocialHubDateFormat;->getTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    .line 294
    :goto_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextDate:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorName:Ljava/lang/String;

    if-eqz v2, :cond_f0

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrTargetDisplayName:Ljava/lang/String;

    if-eqz v2, :cond_258

    .line 305
    const/4 v9, 0x0

    .line 307
    .local v9, layout_width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImgWallPost:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .line 313
    .local v10, mConfig:Landroid/content/res/Configuration;
    iget v2, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17f

    .line 315
    const/16 v9, 0x119

    .line 322
    :cond_64
    :goto_64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v14, v2

    .line 323
    .local v14, text_my:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetNameDown:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrTargetDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v13, v2

    .line 325
    .local v13, text_friend:I
    add-int/lit8 v2, v9, -0x1a

    if-le v14, v2, :cond_1dd

    .line 327
    add-int/lit8 v2, v9, -0x12

    if-le v13, v2, :cond_188

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImgWallPost:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImgWallPostDown:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetName:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetNameDown:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownTwo:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownTwo:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownDown:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownDown:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrTargetDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    .end local v9           #layout_width:I
    .end local v10           #mConfig:Landroid/content/res/Configuration;
    .end local v13           #text_friend:I
    .end local v14           #text_my:I
    :cond_f0
    :goto_f0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v2, v2, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    invoke-static {v2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v11

    .line 386
    .local v11, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :try_start_fa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageMediaType:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 388
    const/16 v2, 0xe

    invoke-interface {v11, v2}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_142

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrIconUrl:Ljava/lang/String;

    if-eqz v2, :cond_142

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageMediaType:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v2, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrIconUrl:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v5, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageMediaType:Landroid/widget/ImageView;

    invoke-static {}, Lcom/sec/android/socialhub/image/SocialHubImage;->getIspBrokenIcon()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 394
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_142

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageMediaType:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_142
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_fa .. :try_end_142} :catch_2ab

    .line 406
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    :cond_142
    :goto_142
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->bSearchMode:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->mCurrentField:I

    const v3, 0x7f0800e0

    if-eq v2, v3, :cond_15b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->mCurrentField:I

    const v3, 0x7f0800e1

    if-ne v2, v3, :cond_16c

    .line 408
    :cond_15b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->mCondtion:Ljava/lang/String;

    sget v4, Lcom/sec/android/socialhub/util/HubColor;->SEARCH_COLOR:I

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4}, Lcom/sec/android/socialhub/util/SocialHubUtil;->setSearchedTextWithColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 411
    :cond_16c
    return-void

    .line 288
    .end local v11           #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :cond_16d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-wide v2, v2, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mlTime:J

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/util/SocialHubDateFormat;->getDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_22

    .line 292
    :cond_17b
    const-string v15, ""

    goto/16 :goto_22

    .line 317
    .restart local v9       #layout_width:I
    .restart local v10       #mConfig:Landroid/content/res/Configuration;
    :cond_17f
    iget v2, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_64

    .line 319
    const/16 v9, 0x259

    goto/16 :goto_64

    .line 338
    .restart local v13       #text_friend:I
    .restart local v14       #text_my:I
    :cond_188
    add-int/lit8 v2, v9, -0x12

    if-gt v13, v2, :cond_f0

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImgWallPost:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImgWallPostDown:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetName:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetNameDown:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownTwo:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownTwo:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrTargetDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownDown:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_f0

    .line 349
    :cond_1dd
    add-int/lit8 v2, v9, -0x1a

    if-gt v14, v2, :cond_f0

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImgWallPostDown:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownTwo:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownDown:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    add-int/lit8 v2, v14, 0x1a

    add-int/2addr v2, v13

    if-le v2, v9, :cond_22d

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetName:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetNameDown:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetNameDown:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrTargetDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f0

    .line 361
    :cond_22d
    add-int/lit8 v2, v14, 0x1a

    add-int/2addr v2, v13

    if-gt v2, v9, :cond_f0

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetNameDown:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrTargetDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f0

    .line 371
    .end local v9           #layout_width:I
    .end local v10           #mConfig:Landroid/content/res/Configuration;
    .end local v13           #text_friend:I
    .end local v14           #text_my:I
    :cond_258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImgWallPost:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImgWallPostDown:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetName:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetNameDown:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownTwo:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownDown:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v12, v2, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorName:Ljava/lang/String;

    .line 378
    .local v12, str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f0

    .line 401
    .end local v12           #str:Ljava/lang/String;
    .restart local v11       #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :catch_2ab
    move-exception v8

    .line 403
    .local v8, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v8}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto/16 :goto_142
.end method

.method public drawProfile(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    .line 221
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    invoke-static {v1}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v7

    .line 222
    .local v7, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    invoke-static {p1}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/image/ImageCacheManager;

    move-result-object v0

    .line 224
    .local v0, image:Lcom/sec/android/socialhub/image/ImageCacheManager;
    if-nez v7, :cond_18

    .line 226
    const-string v1, "FeedView"

    const-string v2, "drawProfile()"

    const-string v3, "ISnsAdapter is null!!!!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :goto_17
    return-void

    .line 230
    :cond_18
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v2, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorPhotoUrl:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v4, v1, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageProfile:Landroid/widget/ImageView;

    invoke-interface {v7}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getDefaultProfileImage()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 232
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_33

    .line 234
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageProfile:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 237
    :cond_33
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageISP:Landroid/widget/ImageView;

    invoke-interface {v7}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getSmallIspIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-interface {v7}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getReplyImageSource()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->changeImageResource(I)V

    .line 239
    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutProfile:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_17
.end method

.method public drawRetweetedBy(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 632
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutRetweetBy:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 634
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrForwarderName:Ljava/lang/String;

    if-eqz v0, :cond_32

    .line 636
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutRetweetBy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextRetweetBy:Landroid/widget/TextView;

    const v1, 0x7f080063

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrForwarderName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    :cond_32
    iget-boolean v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->bSearchMode:Z

    if-ne v0, v5, :cond_4f

    iget v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->mCurrentField:I

    const v1, 0x7f0800e0

    if-eq v0, v1, :cond_44

    iget v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->mCurrentField:I

    const v1, 0x7f0800e3

    if-ne v0, v1, :cond_4f

    .line 642
    :cond_44
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextRetweetBy:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->mCondtion:Ljava/lang/String;

    sget v2, Lcom/sec/android/socialhub/util/HubColor;->SEARCH_COLOR:I

    invoke-static {p1, v0, v1, v2}, Lcom/sec/android/socialhub/util/SocialHubUtil;->setSearchedTextWithColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 644
    :cond_4f
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 700
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorName:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 701
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorName:Ljava/lang/String;

    .line 702
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public inflateMediaView(Landroid/content/Context;Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;)V
    .registers 5
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 126
    invoke-static {p1}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeFactory;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeFactory;->getViewType(Lcom/sec/android/socialhub/feedslist/FeedView;)Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;

    move-result-object v0

    .line 127
    .local v0, type:Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;
    invoke-virtual {v0, p2}, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->setEventHandler(Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;)V

    .line 128
    invoke-virtual {p2}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->getPhotoClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->setPhotoClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {p2}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->getNoteClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->setNoteClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    return-void
.end method

.method public setSearchedMode(ZLcom/sec/android/socialhub/SocialHubQueryBuilder;)V
    .registers 6
    .parameter "flag"
    .parameter "builder"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->bSearchMode:Z

    .line 82
    if-eqz p2, :cond_17

    .line 84
    invoke-virtual {p2}, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->getConidtion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->mCondtion:Ljava/lang/String;

    .line 85
    invoke-virtual {p2}, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->getField()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->mField:Ljava/lang/String;

    .line 86
    invoke-virtual {p2}, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->getFieldResource()I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->mCurrentField:I

    .line 92
    :goto_16
    return-void

    .line 90
    :cond_17
    const-string v0, "FeedView"

    const-string v1, "setSearchedMode()"

    const-string v2, "builder is null!! it\'s critical!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method public setVisibleView(I)V
    .registers 3
    .parameter "what"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mEntireLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayout_Comment_Like:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    return-void
.end method
