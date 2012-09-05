.class public Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView;
.super Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;
.source "SocialHubExtendFeedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtendsBouncingListView"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;Landroid/content/Context;I)V
    .registers 5
    .parameter
    .parameter "ctx"
    .parameter "resource_id"

    .prologue
    const/4 v0, 0x1

    .line 650
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView;->this$1:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    .line 651
    invoke-direct {p0, p2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;-><init>(Landroid/content/Context;)V

    .line 652
    invoke-virtual {p0, p3}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView;->setEmptyMessage(I)V

    .line 653
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView;->useFlickDown(Z)V

    .line 654
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView;->useFlickUp(Z)V

    .line 655
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView;->setUseEmptyView(Z)V

    .line 656
    #getter for: Lcom/sec/android/socialhub/feedslist/FeedListView;->mAdapter:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;
    invoke-static {p1}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->access$600(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;)Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 657
    return-void
.end method


# virtual methods
.method public onFlickDown()V
    .registers 3

    .prologue
    .line 662
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onFlickDown()V

    .line 663
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView;->this$1:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->requestActivityRetrieve(Z)V

    .line 664
    return-void
.end method

.method public onFlickDownComplete(Z)V
    .registers 5
    .parameter "bContinue"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView;->this$1:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    #getter for: Lcom/sec/android/socialhub/feedslist/FeedListView;->mAdapter:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->access$700(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;)Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->bIsClick:Z

    .line 677
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onFlickDownComplete(Z)V

    .line 679
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView$1;-><init>(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 691
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView;->this$1:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->this$0:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->flag:Z
    invoke-static {v0, v1}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->access$302(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;Z)Z

    .line 692
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView;->this$1:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->getExtendView()Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView;->this$1:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    iget-object v1, v1, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->this$0:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->flag:Z
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;->setEnableRefreshMenu(Z)V

    .line 693
    return-void
.end method

.method public onFlickUp()V
    .registers 3

    .prologue
    .line 669
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onFlickUp()V

    .line 670
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView;->this$1:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->requestActivityRetrieve(Z)V

    .line 671
    return-void
.end method
