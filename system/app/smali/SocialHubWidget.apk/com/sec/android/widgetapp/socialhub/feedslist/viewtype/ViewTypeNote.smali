.class public Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeNote;
.super Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;
.source "ViewTypeNote.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;-><init>()V

    return-void
.end method


# virtual methods
.method public drawAttachment(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 3
    .parameter "view"
    .parameter "data"

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;->drawAttachment(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V

    .line 16
    return-void
.end method

.method public drawMedia(Landroid/content/Context;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 4
    .parameter "context"
    .parameter "view"
    .parameter "data"

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;->drawMedia(Landroid/content/Context;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V

    .line 23
    return-void
.end method

.method protected inflateMediaView(Landroid/content/Context;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 6
    .parameter "context"
    .parameter "view"
    .parameter "data"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;->mNoteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeNote;->inflateMediaView(Landroid/content/Context;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_15

    .line 32
    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 33
    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;->mNoteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    :cond_15
    return-void
.end method
