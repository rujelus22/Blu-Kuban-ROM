.class public Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeMusic;
.super Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypePhoto;
.source "ViewTypeMusic.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypePhoto;-><init>()V

    return-void
.end method


# virtual methods
.method public drawAttachment(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;ZLjava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "wrapper"
    .parameter "bSearchMode"
    .parameter "condition"

    .prologue
    .line 17
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypePhoto;->drawAttachment(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;ZLjava/lang/String;)V

    .line 18
    return-void
.end method

.method protected inflateMediaView(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 6
    .parameter "context"
    .parameter "wrapper"

    .prologue
    const/4 v1, 0x0

    .line 23
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->getMusicClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    :goto_b
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeMusic;->inflateMediaView(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2e

    .line 27
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    iget-object v2, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 28
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    if-eqz v2, :cond_2b

    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->getMusicClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    :cond_2b
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    :cond_2e
    return-void

    :cond_2f
    move-object v0, v1

    .line 23
    goto :goto_b
.end method

.method protected setClickListener(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/view/View$OnClickListener;Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 6
    .parameter "layout"
    .parameter "image_frame"
    .parameter "listener"
    .parameter "wrapper"

    .prologue
    .line 36
    iget-object v0, p4, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 37
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method

.method protected setImageTag(Landroid/widget/ImageView;Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 4
    .parameter "image"
    .parameter "wrapper"

    .prologue
    .line 43
    if-eqz p1, :cond_7

    .line 45
    const-string v0, "attachement"

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 47
    :cond_7
    return-void
.end method
