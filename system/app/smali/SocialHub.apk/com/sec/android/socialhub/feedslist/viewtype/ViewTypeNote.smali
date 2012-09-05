.class public Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeNote;
.super Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypePhoto;
.source "ViewTypeNote.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
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
    .line 13
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypePhoto;->drawAttachment(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;ZLjava/lang/String;)V

    .line 14
    return-void
.end method

.method public drawMedia(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;ZLjava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "wrapper"
    .parameter "bSearchMode"
    .parameter "condition"

    .prologue
    .line 20
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypePhoto;->drawMedia(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;ZLjava/lang/String;)V

    .line 21
    return-void
.end method

.method protected inflateMediaView(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 5
    .parameter "context"
    .parameter "wrapper"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->mNoteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeNote;->inflateMediaView(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1d

    .line 30
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    iget-object v1, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 31
    iget-object v0, p2, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/viewtype/AbstractViewType;->mNoteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    :cond_1d
    return-void
.end method
