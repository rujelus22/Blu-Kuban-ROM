.class public Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;
.super Ljava/lang/Object;
.source "SocialHubFeedsCommentListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestManager"
.end annotation


# instance fields
.field private final FLAG:[Ljava/lang/String;

.field bIsRefreshing:Z

.field private bRetrieved:Z

.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1261
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1263
    iput-boolean v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->bIsRefreshing:Z

    .line 1302
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "LOAD_MORE_POSSIBLE"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "LOAD_FAIL"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "LOADING"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "LOAD_COMPLETE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "LOAD_FIRST_FAIL"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "LOADING_ALL"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->FLAG:[Ljava/lang/String;

    .line 1314
    iput-boolean v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->bRetrieved:Z

    return-void
.end method


# virtual methods
.method public changeLoadingState(Z)V
    .registers 5
    .parameter "flag"

    .prologue
    .line 1344
    iput-boolean p1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->bIsRefreshing:Z

    .line 1345
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$2400(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Landroid/view/Menu;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1347
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$2400(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0b012b

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1348
    .local v0, refresh:Landroid/view/MenuItem;
    if-eqz v0, :cond_21

    .line 1350
    iget-boolean v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->bIsRefreshing:Z

    if-nez v1, :cond_22

    const/4 v1, 0x1

    :goto_1e
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1353
    .end local v0           #refresh:Landroid/view/MenuItem;
    :cond_21
    return-void

    .line 1350
    .restart local v0       #refresh:Landroid/view/MenuItem;
    :cond_22
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public getFlag(I)Ljava/lang/String;
    .registers 5
    .parameter "flag"

    .prologue
    .line 1318
    const/4 v1, 0x0

    .line 1322
    .local v1, str:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->FLAG:[Ljava/lang/String;

    aget-object v1, v2, p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_6

    .line 1329
    :goto_5
    return-object v1

    .line 1324
    :catch_6
    move-exception v0

    .line 1326
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public getLoadMoreStatus(IZZ)I
    .registers 16
    .parameter "reqType"
    .parameter "bContinue"
    .parameter "bSuccess"

    .prologue
    .line 1424
    const/4 v0, 0x1

    if-ne p3, v0, :cond_e

    .line 1426
    const/16 v0, 0xa

    if-ne p1, v0, :cond_a

    .line 1428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->bRetrieved:Z

    .line 1431
    :cond_a
    if-nez p2, :cond_e

    .line 1433
    const/4 v0, 0x3

    .line 1502
    :cond_d
    :goto_d
    return v0

    .line 1438
    :cond_e
    if-nez p3, :cond_13

    .line 1440
    sparse-switch p1, :sswitch_data_c6

    .line 1451
    :cond_13
    sget-object v0, Lcom/sec/android/app/sns/db/SnsDB$Comment;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "target/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mTargetId:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$1400(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1452
    .local v1, target_uri:Landroid/net/Uri;
    const-string v0, "activity_id=\'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mActivityId:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$700(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1454
    .local v9, selection:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1455
    .local v11, target_cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 1459
    .local v7, original:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    :try_start_46
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1460
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #calls: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->getFeedWrapper(Ljava/lang/String;)Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    invoke-static {v0, v9}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$2700(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;Ljava/lang/String;)Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    move-result-object v7

    .line 1462
    iget v8, v7, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miCommentCount:I

    .line 1463
    .local v8, original_count:I
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1465
    .local v10, target_count:I
    const-string v0, "SocialHubFeedsCommentListActivity"

    const-string v2, "getLoadMoreStatus()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "original_count - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", target_count - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_46 .. :try_end_84} :catchall_bb
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_84} :catch_af

    .line 1467
    const/16 v0, 0x70

    if-le v8, v0, :cond_a9

    .line 1469
    const/16 v0, 0x70

    if-ge v10, v0, :cond_9d

    .line 1471
    const/4 v0, 0x2

    .line 1496
    if-eqz v11, :cond_d

    .line 1498
    :goto_8f
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_d

    .line 1443
    .end local v1           #target_uri:Landroid/net/Uri;
    .end local v7           #original:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    .end local v8           #original_count:I
    .end local v9           #selection:Ljava/lang/String;
    .end local v10           #target_count:I
    .end local v11           #target_cursor:Landroid/database/Cursor;
    :sswitch_94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->bRetrieved:Z

    .line 1444
    const/4 v0, 0x4

    goto/16 :goto_d

    .line 1447
    :sswitch_9a
    const/4 v0, 0x1

    goto/16 :goto_d

    .line 1473
    .restart local v1       #target_uri:Landroid/net/Uri;
    .restart local v7       #original:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    .restart local v8       #original_count:I
    .restart local v9       #selection:Ljava/lang/String;
    .restart local v10       #target_count:I
    .restart local v11       #target_cursor:Landroid/database/Cursor;
    :cond_9d
    const/16 v0, 0x70

    if-ne v10, v0, :cond_a5

    .line 1475
    const/4 v0, 0x0

    .line 1496
    if-eqz v11, :cond_d

    goto :goto_8f

    .line 1479
    :cond_a5
    const/4 v0, 0x5

    .line 1496
    if-eqz v11, :cond_d

    goto :goto_8f

    .line 1484
    :cond_a9
    if-le v8, v10, :cond_c2

    .line 1486
    const/4 v0, 0x2

    .line 1496
    if-eqz v11, :cond_d

    goto :goto_8f

    .line 1490
    .end local v8           #original_count:I
    .end local v10           #target_count:I
    :catch_af
    move-exception v6

    .line 1492
    .local v6, e:Ljava/lang/Exception;
    :try_start_b0
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_bb

    .line 1496
    if-eqz v11, :cond_b8

    .line 1498
    .end local v6           #e:Ljava/lang/Exception;
    :goto_b5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1502
    :cond_b8
    const/4 v0, 0x1

    goto/16 :goto_d

    .line 1496
    :catchall_bb
    move-exception v0

    if-eqz v11, :cond_c1

    .line 1498
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1496
    :cond_c1
    throw v0

    .restart local v8       #original_count:I
    .restart local v10       #target_count:I
    :cond_c2
    if-eqz v11, :cond_b8

    goto :goto_b5

    .line 1440
    nop

    :sswitch_data_c6
    .sparse-switch
        0xa -> :sswitch_94
        0x2c -> :sswitch_9a
    .end sparse-switch
.end method

.method public handleCommentRetrieve(IZZ)V
    .registers 12
    .parameter "reqType"
    .parameter "bContinue"
    .parameter "bSuccess"

    .prologue
    const/4 v6, 0x1

    .line 1395
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentManager:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$2500(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->getLoadMoreStatus(IZZ)I

    move-result v7

    .line 1396
    .local v7, status:I
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mViewManager:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$2600(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$ViewManager;->setLightEffect(I)V

    .line 1398
    const-string v0, "SocialHubFeedsCommentListActivity"

    const-string v1, "refreshCommentListUI()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "comment_load_status - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentManager:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$2500(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->getFlag(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    packed-switch v7, :pswitch_data_52

    .line 1409
    :pswitch_3b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->changeLoadingState(Z)V

    .line 1410
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->refreshCommentListUI(Landroid/net/Uri;IIZZZ)V

    .line 1413
    :goto_49
    return-void

    .line 1404
    :pswitch_4a
    invoke-virtual {p0, v6}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->changeLoadingState(Z)V

    .line 1405
    invoke-virtual {p0, v6, v6}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->requestCommentRetrieve(ZZ)V

    goto :goto_49

    .line 1400
    nop

    :pswitch_data_52
    .packed-switch 0x2
        :pswitch_4a
        :pswitch_3b
        :pswitch_3b
        :pswitch_4a
    .end packed-switch
.end method

.method public isRefreshing()Z
    .registers 2

    .prologue
    .line 1339
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->bIsRefreshing:Z

    return v0
.end method

.method public requestCommentRetrieve(Z)V
    .registers 5
    .parameter "is_next"

    .prologue
    .line 1362
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->bIsRefreshing:Z

    if-nez v0, :cond_e

    .line 1364
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->changeLoadingState(Z)V

    .line 1365
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->requestComments(Z)V

    .line 1371
    :goto_d
    return-void

    .line 1369
    :cond_e
    const-string v0, "SocialHubFeedsCommentListActivity"

    const-string v1, "requestCommentRetrieve()"

    const-string v2, "currently refreshing.."

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public requestCommentRetrieve(ZZ)V
    .registers 4
    .parameter "is_next"
    .parameter "force"

    .prologue
    const/4 v0, 0x1

    .line 1381
    if-ne p2, v0, :cond_c

    .line 1383
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->changeLoadingState(Z)V

    .line 1384
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->requestComments(Z)V

    .line 1390
    :goto_b
    return-void

    .line 1388
    :cond_c
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$RequestManager;->requestCommentRetrieve(Z)V

    goto :goto_b
.end method
