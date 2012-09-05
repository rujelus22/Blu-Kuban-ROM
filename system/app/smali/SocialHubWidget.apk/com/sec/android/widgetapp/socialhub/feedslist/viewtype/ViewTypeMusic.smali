.class public Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeMusic;
.super Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;
.source "ViewTypeMusic.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;-><init>()V

    return-void
.end method


# virtual methods
.method public drawAttachment(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 3
    .parameter "view"
    .parameter "data"

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;->drawAttachment(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V

    .line 18
    return-void
.end method

.method protected inflateMediaView(Landroid/content/Context;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 6
    .parameter "context"
    .parameter "view"
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeMusic;->inflateMediaView(Landroid/content/Context;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_12

    .line 28
    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 30
    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    :cond_12
    return-void
.end method

.method protected setClickListener(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/view/View$OnClickListener;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 6
    .parameter "layout"
    .parameter "image_frame"
    .parameter "listener"
    .parameter "view"
    .parameter "data"

    .prologue
    .line 38
    invoke-virtual {p1, p5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method

.method protected setImageTag(Landroid/widget/ImageView;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 5
    .parameter "image"
    .parameter "view"
    .parameter "data"

    .prologue
    .line 45
    if-eqz p1, :cond_7

    .line 47
    const-string v0, "attachement"

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 49
    :cond_7
    return-void
.end method
