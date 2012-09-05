.class public Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView;
.super Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;
.source "FeedListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/feedslist/FeedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SocialHubFeedListView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/feedslist/FeedListView;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/feedslist/FeedListView;Landroid/content/Context;I)V
    .registers 5
    .parameter
    .parameter "ctx"
    .parameter "resource_id"

    .prologue
    const/4 v0, 0x1

    .line 592
    iput-object p1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView;->this$0:Lcom/sec/android/socialhub/feedslist/FeedListView;

    .line 593
    invoke-direct {p0, p2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;-><init>(Landroid/content/Context;)V

    .line 594
    invoke-virtual {p0, p3}, Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView;->setEmptyMessage(I)V

    .line 595
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView;->useFlickDown(Z)V

    .line 596
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView;->useFlickUp(Z)V

    .line 597
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView;->setUseEmptyView(Z)V

    .line 598
    return-void
.end method


# virtual methods
.method public onFlickDown()V
    .registers 3

    .prologue
    .line 650
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onFlickDown()V

    .line 651
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView;->this$0:Lcom/sec/android/socialhub/feedslist/FeedListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/feedslist/FeedListView;->requestActivityRetrieve(Z)V

    .line 652
    return-void
.end method

.method public onFlickDownComplete(Z)V
    .registers 5
    .parameter "bContinue"

    .prologue
    .line 634
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView;->this$0:Lcom/sec/android/socialhub/feedslist/FeedListView;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mAdapter:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->bIsClick:Z

    .line 635
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onFlickDownComplete(Z)V

    .line 637
    new-instance v0, Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView$1;-><init>(Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 645
    return-void
.end method

.method public onFlickUp()V
    .registers 3

    .prologue
    .line 657
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onFlickUp()V

    .line 658
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView;->this$0:Lcom/sec/android/socialhub/feedslist/FeedListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/feedslist/FeedListView;->requestActivityRetrieve(Z)V

    .line 659
    return-void
.end method
