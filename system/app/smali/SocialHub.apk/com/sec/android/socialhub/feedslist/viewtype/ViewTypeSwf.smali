.class public Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeSwf;
.super Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypePhoto;
.source "ViewTypeSwf.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypePhoto;-><init>()V

    return-void
.end method


# virtual methods
.method protected inflateMediaView(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 4
    .parameter "context"
    .parameter "wrapper"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->mEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->getSwfClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    :goto_a
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeSwf;->inflateMediaView(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/view/View$OnClickListener;)V

    .line 14
    return-void

    .line 13
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method
