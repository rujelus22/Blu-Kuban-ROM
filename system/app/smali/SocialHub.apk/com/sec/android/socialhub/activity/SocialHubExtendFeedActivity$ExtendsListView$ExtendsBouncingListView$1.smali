.class Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView$1;
.super Ljava/lang/Object;
.source "SocialHubExtendFeedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView;->onFlickDownComplete(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView;)V
    .registers 2
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView$1;->this$2:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 683
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView$1;->this$2:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView;->this$1:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    #getter for: Lcom/sec/android/socialhub/feedslist/FeedListView;->mAdapter:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->access$800(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;)Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->bIsClick:Z

    .line 684
    return-void
.end method
