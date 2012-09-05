.class public Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsListAdapter;
.super Lcom/sec/android/socialhub/feedslist/FeedListAdapter;
.source "SocialHubExtendFeedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtendsListAdapter"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;Landroid/content/Context;ILcom/sec/android/socialhub/parent/AbsBouncingLayout;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "bouncing"

    .prologue
    .line 582
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsListAdapter;->this$1:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    .line 583
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;-><init>(Landroid/content/Context;ILcom/sec/android/socialhub/parent/AbsBouncingLayout;)V

    .line 584
    return-void
.end method


# virtual methods
.method public getCurrentQueryBuilder()Lcom/sec/android/socialhub/SocialHubQueryBuilder;
    .registers 3

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsListAdapter;->isSearchMode()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 638
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsListAdapter;->this$1:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->this$0:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mSearchQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder$SearchQuery;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;)Lcom/sec/android/socialhub/SocialHubQueryBuilder$SearchQuery;

    move-result-object v0

    .line 640
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected getWrapper(Landroid/content/Context;Landroid/widget/Adapter;)Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    .registers 4
    .parameter "context"
    .parameter "adapter"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsListAdapter;->this$1:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->getExtendView()Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;->getWrapper(Landroid/content/Context;Landroid/widget/Adapter;)Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    move-result-object v0

    return-object v0
.end method

.method public isSearchMode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 631
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsListAdapter;->this$1:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->mMode:I
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->access$500(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;)I

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public makeIndexer(Landroid/database/Cursor;)V
    .registers 9
    .parameter "cursor"

    .prologue
    .line 595
    iget-object v5, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 596
    iget-object v5, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 598
    if-eqz p1, :cond_4b

    .line 600
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 601
    .local v0, count:I
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsListAdapter;->this$1:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    iget-object v5, v5, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->this$0:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;

    #calls: Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->drawTitle(I)V
    invoke-static {v5, v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->access$400(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;I)V

    .line 602
    if-lez v0, :cond_4b

    .line 604
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 606
    const/4 v4, 0x0

    .line 607
    .local v4, sectionName:Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 608
    .local v2, lDate:J
    const/4 v1, 0x0

    .line 612
    .local v1, id:I
    :cond_23
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsListAdapter;->this$1:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;

    invoke-virtual {v5}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->getExtendView()Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;->getIndexDate()I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 613
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 614
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsListAdapter;->calcSection(J)Ljava/lang/String;

    move-result-object v4

    .line 616
    if-eqz v4, :cond_45

    .line 618
    iget-object v5, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    :cond_45
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_23

    .line 624
    .end local v0           #count:I
    .end local v1           #id:I
    .end local v2           #lDate:J
    .end local v4           #sectionName:Ljava/lang/String;
    :cond_4b
    return-void
.end method
