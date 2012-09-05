.class Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView$1;
.super Ljava/lang/Object;
.source "FeedListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView;->onFlickDownComplete(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView;)V
    .registers 2
    .parameter

    .prologue
    .line 638
    iput-object p1, p0, Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView$1;->this$1:Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 641
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView$1;->this$1:Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView;->this$0:Lcom/sec/android/socialhub/feedslist/FeedListView;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mAdapter:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    if-eqz v0, :cond_11

    .line 642
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView$1;->this$1:Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedListView$SocialHubFeedListView;->this$0:Lcom/sec/android/socialhub/feedslist/FeedListView;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mAdapter:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->bIsClick:Z

    .line 643
    :cond_11
    return-void
.end method
