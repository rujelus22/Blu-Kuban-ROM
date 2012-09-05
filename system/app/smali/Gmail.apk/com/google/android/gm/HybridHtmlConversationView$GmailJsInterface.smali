.class final Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;
.super Ljava/lang/Object;
.source "HybridHtmlConversationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/HybridHtmlConversationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "GmailJsInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/HybridHtmlConversationView;


# direct methods
.method constructor <init>(Lcom/google/android/gm/HybridHtmlConversationView;)V
    .registers 2
    .parameter

    .prologue
    .line 1350
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1351
    return-void
.end method

.method private declared-synchronized getLocalId(Ljava/lang/String;)J
    .registers 5
    .parameter "messageIdStr"

    .prologue
    .line 1503
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gm/HybridHtmlConversationBuilder;->messageIdForDomId(Ljava/lang/String;)J

    move-result-wide v0

    .line 1505
    .local v0, id:J
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-virtual {v2}, Lcom/google/android/gm/HybridHtmlConversationView;->isDataLoaded()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1509
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    invoke-static {v2}, Lcom/google/android/gm/HybridHtmlConversationView;->access$1300(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveToMessage(J)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 1511
    :cond_16
    monitor-exit p0

    return-wide v0

    .line 1503
    .end local v0           #id:J
    :catchall_18
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public forward(Ljava/lang/String;)V
    .registers 8
    .parameter "messageId"

    .prologue
    .line 1373
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->getLocalId(Ljava/lang/String;)J

    move-result-wide v1

    .line 1374
    .local v1, id:J
    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gm/HybridHtmlConversationView;->forward(J)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 1378
    .end local v1           #id:J
    :goto_9
    return-void

    .line 1375
    :catch_a
    move-exception v0

    .line 1376
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "GmailJs"

    const-string v4, "Error in GmailJsInterface.forward()"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_9
.end method

.method public getScrollYPercent()F
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1459
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_19

    .line 1460
    :try_start_4
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-virtual {v2}, Lcom/google/android/gm/HybridHtmlConversationView;->isDataLoaded()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1461
    monitor-exit v3

    .line 1467
    :goto_d
    return v1

    .line 1463
    :cond_e
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_16

    .line 1464
    :try_start_f
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mWebViewYPercent:F
    invoke-static {v2}, Lcom/google/android/gm/HybridHtmlConversationView;->access$1100(Lcom/google/android/gm/HybridHtmlConversationView;)F
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_14} :catch_19

    move-result v1

    goto :goto_d

    .line 1463
    :catchall_16
    move-exception v2

    :try_start_17
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw v2
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_19} :catch_19

    .line 1465
    :catch_19
    move-exception v0

    .line 1466
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "GmailJs"

    const-string v3, "Error in GmailJsInterface.getScrollYPercent()"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_d
.end method

.method public getTempMessageBodies()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1388
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    monitor-enter v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_20

    .line 1389
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-virtual {v2}, Lcom/google/android/gm/HybridHtmlConversationView;->isDataLoaded()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1390
    const-string v0, ""

    monitor-exit v3

    .line 1398
    :goto_e
    return-object v0

    .line 1392
    :cond_f
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mTempBodiesHtml:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/gm/HybridHtmlConversationView;->access$600(Lcom/google/android/gm/HybridHtmlConversationView;)Ljava/lang/String;

    move-result-object v0

    .line 1393
    .local v0, bodiesHtml:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    const/4 v4, 0x0

    #setter for: Lcom/google/android/gm/HybridHtmlConversationView;->mTempBodiesHtml:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/google/android/gm/HybridHtmlConversationView;->access$602(Lcom/google/android/gm/HybridHtmlConversationView;Ljava/lang/String;)Ljava/lang/String;

    .line 1394
    monitor-exit v3

    goto :goto_e

    .line 1395
    .end local v0           #bodiesHtml:Ljava/lang/String;
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v2
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_20} :catch_20

    .line 1396
    :catch_20
    move-exception v1

    .line 1397
    .local v1, e:Ljava/lang/Throwable;
    const-string v2, "GmailJs"

    const-string v3, "Error in GmailJsInterface.getTempMessageBodies()"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1398
    const-string v0, ""

    goto :goto_e
.end method

.method public onContentReady()V
    .registers 3

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/gm/HybridHtmlConversationView;->access$900(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$4;

    invoke-direct {v1, p0}, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$4;-><init>(Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1500
    return-void
.end method

.method public onConversationInitialized()V
    .registers 5

    .prologue
    .line 1407
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_1d

    .line 1408
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-virtual {v1}, Lcom/google/android/gm/HybridHtmlConversationView;->isDataLoaded()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1409
    monitor-exit v2

    .line 1428
    :goto_c
    return-void

    .line 1411
    :cond_d
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_29

    .line 1413
    :try_start_e
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/gm/HybridHtmlConversationView;->access$900(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$1;

    invoke-direct {v2, p0}, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$1;-><init>(Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1c} :catch_1d

    goto :goto_c

    .line 1424
    :catch_1d
    move-exception v0

    .line 1425
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "GmailJs"

    const-string v2, "Error in GmailJsInterface.onConversationInitialized()"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_c

    .line 1411
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v1
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2c} :catch_1d
.end method

.method public onWebContentGeometryChange([Ljava/lang/String;)V
    .registers 6
    .parameter "bodyHeightStrs"

    .prologue
    .line 1432
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_1d

    .line 1433
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-virtual {v1}, Lcom/google/android/gm/HybridHtmlConversationView;->isDataLoaded()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1434
    monitor-exit v2

    .line 1455
    :goto_c
    return-void

    .line 1436
    :cond_d
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_29

    .line 1438
    :try_start_e
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/gm/HybridHtmlConversationView;->access$900(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$2;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$2;-><init>(Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1c} :catch_1d

    goto :goto_c

    .line 1451
    :catch_1d
    move-exception v0

    .line 1452
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "GmailJs"

    const-string v2, "Error in GmailJsInterface.onWebContentGeometryChange()"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_c

    .line 1436
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v1
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2c} :catch_1d
.end method

.method public reply(Ljava/lang/String;)V
    .registers 8
    .parameter "messageId"

    .prologue
    .line 1355
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->getLocalId(Ljava/lang/String;)J

    move-result-wide v1

    .line 1356
    .local v1, id:J
    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gm/HybridHtmlConversationView;->reply(J)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 1360
    .end local v1           #id:J
    :goto_9
    return-void

    .line 1357
    :catch_a
    move-exception v0

    .line 1358
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "GmailJs"

    const-string v4, "Error in GmailJsInterface.reply()"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_9
.end method

.method public replyAll(Ljava/lang/String;)V
    .registers 8
    .parameter "messageId"

    .prologue
    .line 1364
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->getLocalId(Ljava/lang/String;)J

    move-result-wide v1

    .line 1365
    .local v1, id:J
    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gm/HybridHtmlConversationView;->replyAll(J)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 1369
    .end local v1           #id:J
    :goto_9
    return-void

    .line 1366
    :catch_a
    move-exception v0

    .line 1367
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "GmailJs"

    const-string v4, "Error in GmailJsInterface.replyAll()"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_9
.end method

.method public revealOverlay()V
    .registers 5

    .prologue
    .line 1473
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_1d

    .line 1474
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-virtual {v1}, Lcom/google/android/gm/HybridHtmlConversationView;->isDataLoaded()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1475
    monitor-exit v2

    .line 1488
    :goto_c
    return-void

    .line 1477
    :cond_d
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_29

    .line 1479
    :try_start_e
    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/gm/HybridHtmlConversationView;->access$900(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$3;

    invoke-direct {v2, p0}, Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface$3;-><init>(Lcom/google/android/gm/HybridHtmlConversationView$GmailJsInterface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1c} :catch_1d

    goto :goto_c

    .line 1485
    :catch_1d
    move-exception v0

    .line 1486
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "GmailJs"

    const-string v2, "Error in GmailJsInterface.revealOverlay()"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_c

    .line 1477
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v1
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2c} :catch_1d
.end method
