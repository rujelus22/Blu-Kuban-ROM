.class public Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;
.super Lcom/sec/android/socialhub/feedslist/FeedListView;
.source "SocialHubExtendFeedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtendsListView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView;,
        Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsListAdapter;
    }
.end annotation


# instance fields
.field public mExtendView:Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;

.field private mMode:I

.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 344
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->this$0:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;

    .line 345
    invoke-direct {p0, p2}, Lcom/sec/android/socialhub/feedslist/FeedListView;-><init>(Landroid/content/Context;)V

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->mExtendView:Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;

    .line 341
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->mMode:I

    .line 346
    #getter for: Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mSearchQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder$SearchQuery;
    invoke-static {p1}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;)Lcom/sec/android/socialhub/SocialHubQueryBuilder$SearchQuery;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->setQueryBuilder(Lcom/sec/android/socialhub/SocialHubQueryBuilder;)V

    .line 347
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mAccountbar:Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->setVisibility(I)V

    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->showInputMethod(Z)V

    .line 349
    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 330
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->mMode:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;)Lcom/sec/android/socialhub/feedslist/FeedListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mAdapter:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;)Lcom/sec/android/socialhub/feedslist/FeedListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mAdapter:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;)Lcom/sec/android/socialhub/feedslist/FeedListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mAdapter:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    return-object v0
.end method

.method private setVisibleSearchMenu(Z)V
    .registers 5
    .parameter "visible"

    .prologue
    .line 438
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->this$0:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;)Landroid/view/Menu;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 440
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->this$0:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;)Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0b0130

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 441
    .local v0, search:Landroid/view/MenuItem;
    if-eqz v0, :cond_1a

    .line 443
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 446
    .end local v0           #search:Landroid/view/MenuItem;
    :cond_1a
    return-void
.end method


# virtual methods
.method protected getAbsListView()Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;
    .registers 4

    .prologue
    .line 457
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f080080

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsBouncingListView;-><init>(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;Landroid/content/Context;I)V

    return-object v0
.end method

.method public declared-synchronized getExtendView()Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;
    .registers 5

    .prologue
    .line 353
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->mExtendView:Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;

    if-nez v0, :cond_39

    .line 355
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->this$0:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory;->createExtendView(Landroid/content/Context;Landroid/os/Bundle;)Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->mExtendView:Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;

    .line 356
    const-string v0, "SocialHubExtendFeedActivity"

    const-string v1, "getExtendView()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instance - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->mExtendView:Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_39
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->mExtendView:Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    monitor-exit p0

    return-object v0

    .line 353
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getFeedListAdapter()Lcom/sec/android/socialhub/feedslist/FeedListAdapter;
    .registers 5

    .prologue
    .line 451
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsListAdapter;

    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f03001d

    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mBouncingLayout:Lcom/sec/android/socialhub/parent/AbsBouncingLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView$ExtendsListAdapter;-><init>(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;Landroid/content/Context;ILcom/sec/android/socialhub/parent/AbsBouncingLayout;)V

    return-object v0
.end method

.method public getSearchFieldList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->getExtendView()Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;->getSearchField()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 397
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 399
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->setNormalMode()V

    .line 405
    :goto_8
    return-void

    .line 403
    :cond_9
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->this$0:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->callSuperBackPressed()V

    goto :goto_8
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 391
    invoke-super {p0}, Lcom/sec/android/socialhub/feedslist/FeedListView;->onDestroy()V

    .line 392
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 367
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->showInputMethod(Z)V

    .line 368
    return-void
.end method

.method public onRefresh()V
    .registers 1

    .prologue
    .line 411
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 377
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mAdapter:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->notifyDataSetChanged()V

    .line 378
    sput-boolean v1, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->isLikeFavoriteClicked:Z

    .line 379
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->startQuery()V

    .line 384
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    .line 385
    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->showInputMethod(Z)V

    .line 386
    :cond_16
    return-void
.end method

.method public refreshView(IIZ)V
    .registers 9
    .parameter "reqType"
    .parameter "reqID"
    .parameter "bContinue"

    .prologue
    const/4 v4, 0x0

    .line 470
    const/4 v0, 0x0

    .line 472
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    if-nez v2, :cond_10

    .line 474
    const-string v2, "SocialHubExtendFeedActivity"

    const-string v3, "refreshView()"

    const-string v4, "mListView is null!!"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :goto_f
    return-void

    .line 478
    :cond_10
    iget v2, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3a

    .line 480
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->getExtendView()Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    invoke-virtual {v3, v4}, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->getQuery(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;->getCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 487
    :goto_23
    sparse-switch p1, :sswitch_data_70

    .line 513
    :cond_26
    :goto_26
    :try_start_26
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->this$0:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->bStart:Z
    invoke-static {v2}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->access$200(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 515
    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mAdapter:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->changeCursor(Landroid/database/Cursor;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_34} :catch_35

    goto :goto_f

    .line 531
    :catch_35
    move-exception v1

    .line 533
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    .line 484
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3a
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->getExtendView()Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_23

    .line 492
    :sswitch_43
    if-ltz p2, :cond_26

    iget v2, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mLastReqID:I

    if-ne p2, v2, :cond_26

    .line 494
    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    invoke-virtual {v2, p3}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onFlickDownComplete(Z)V

    goto :goto_26

    .line 502
    :sswitch_4f
    if-ltz p2, :cond_26

    iget v2, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mLastNextReqID:I

    if-ne p2, v2, :cond_26

    .line 504
    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    invoke-virtual {v2, p3}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onFlickUpComplete(Z)V

    goto :goto_26

    .line 519
    :cond_5b
    :try_start_5b
    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mAdapter:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    invoke-virtual {v2, v0}, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 522
    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_6c

    .line 524
    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 525
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mCursor:Landroid/database/Cursor;

    .line 528
    :cond_6c
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mCursor:Landroid/database/Cursor;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_6e} :catch_35

    goto :goto_f

    .line 487
    nop

    :sswitch_data_70
    .sparse-switch
        0x5 -> :sswitch_43
        0x6 -> :sswitch_43
        0x27 -> :sswitch_43
        0x2b -> :sswitch_4f
        0x30 -> :sswitch_4f
        0x33 -> :sswitch_4f
    .end sparse-switch
.end method

.method public requestActivityRetrieve(Z)V
    .registers 6
    .parameter "is_next"

    .prologue
    const/4 v3, 0x0

    .line 540
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1f

    .line 542
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->mExtendView:Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;

    invoke-interface {v0, p1}, Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;->requestActivityRetrieve(Z)I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mLastNextReqID:I

    .line 544
    iget v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mLastNextReqID:I

    if-gez v0, :cond_1e

    .line 546
    const-string v0, "SocialHubExtendFeedActivity"

    const-string v1, "requestActivityRetrieve()"

    const-string v2, "Some thing wrong!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onFlickUpComplete(Z)V

    .line 569
    :cond_1e
    :goto_1e
    return-void

    .line 552
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->mExtendView:Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;

    invoke-interface {v0, p1}, Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;->requestActivityRetrieve(Z)I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mLastReqID:I

    .line 554
    iget v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mLastReqID:I

    if-gez v0, :cond_3a

    .line 556
    const-string v0, "SocialHubExtendFeedActivity"

    const-string v1, "requestActivityRetrieve()"

    const-string v2, "Some thing wrong!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListView:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onFlickDownComplete(Z)V

    goto :goto_1e

    .line 565
    :cond_3a
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->this$0:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;

    #setter for: Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->flag:Z
    invoke-static {v0, v3}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->access$302(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;Z)Z

    .line 566
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->mExtendView:Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->this$0:Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->flag:Z
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/feedslist/extend/ExtendFeedFactory$IExtendView;->setEnableRefreshMenu(Z)V

    goto :goto_1e
.end method

.method public setNormalMode()V
    .registers 3

    .prologue
    .line 429
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->mMode:I

    .line 430
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->setVisibleSearchMenu(Z)V

    .line 431
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->setVisibility(I)V

    .line 432
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->showInputMethod(Z)V

    .line 433
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->startQuery()V

    .line 434
    return-void
.end method

.method public setSearchMode()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 415
    iput v3, p0, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->mMode:I

    .line 416
    invoke-direct {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->setVisibleSearchMenu(Z)V

    .line 417
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->setVisibility(I)V

    .line 421
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    invoke-virtual {v1, v0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->setSearchModel(Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;)V

    .line 422
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    iget-object v0, v0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->requestFocus()Z

    .line 424
    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->showInputMethod(Z)V

    .line 425
    return-void
.end method

.method public startQuery()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 464
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/sec/android/socialhub/activity/SocialHubExtendFeedActivity$ExtendsListView;->refreshView(IIZ)V

    .line 465
    return-void
.end method
