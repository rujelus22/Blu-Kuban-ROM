.class public Lcom/android/email/Controller$LegacyListener;
.super Lcom/android/email/MessagingListener;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LegacyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method public constructor <init>(Lcom/android/email/Controller;)V
    .registers 2
    .parameter

    .prologue
    .line 1372
    iput-object p1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-direct {p0}, Lcom/android/email/MessagingListener;-><init>()V

    .line 1373
    return-void
.end method


# virtual methods
.method public checkMailFinished(Landroid/content/Context;JJJ)V
    .registers 19
    .parameter "context"
    .parameter "accountId"
    .parameter "folderId"
    .parameter "tag"

    .prologue
    .line 1448
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    .line 1449
    :try_start_7
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1450
    .local v0, l:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/16 v6, 0x64

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    goto :goto_11

    .line 1452
    .end local v0           #l:Lcom/android/email/Controller$Result;
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_28
    move-exception v1

    monitor-exit v10
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw v1

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_2b
    :try_start_2b
    monitor-exit v10
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_28

    .line 1453
    return-void
.end method

.method public checkMailStarted(Landroid/content/Context;JJ)V
    .registers 17
    .parameter "context"
    .parameter "accountId"
    .parameter "tag"

    .prologue
    .line 1439
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    .line 1440
    :try_start_7
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1441
    .local v0, l:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-wide v2, p2

    move-wide v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    goto :goto_11

    .line 1443
    .end local v0           #l:Lcom/android/email/Controller$Result;
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_27
    move-exception v1

    monitor-exit v10
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw v1

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_2a
    :try_start_2a
    monitor-exit v10
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_27

    .line 1444
    return-void
.end method

.method public listFoldersFailed(JLjava/lang/String;)V
    .registers 9
    .parameter "accountId"
    .parameter "message"

    .prologue
    .line 1386
    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 1387
    :try_start_7
    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 1388
    .local v1, l:Lcom/android/email/Controller$Result;
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v2, p3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p1, p2, v4}, Lcom/android/email/Controller$Result;->updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_11

    .line 1390
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/Controller$Result;
    :catchall_27
    move-exception v2

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2a
    :try_start_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_27

    .line 1391
    return-void
.end method

.method public listFoldersFinished(J)V
    .registers 8
    .parameter "accountId"

    .prologue
    .line 1395
    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 1396
    :try_start_7
    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 1397
    .local v1, l:Lcom/android/email/Controller$Result;
    const/4 v2, 0x0

    const/16 v4, 0x64

    invoke-virtual {v1, v2, p1, p2, v4}, Lcom/android/email/Controller$Result;->updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_11

    .line 1399
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/Controller$Result;
    :catchall_24
    move-exception v2

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_27
    :try_start_27
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_24

    .line 1400
    return-void
.end method

.method public listFoldersStarted(J)V
    .registers 8
    .parameter "accountId"

    .prologue
    .line 1377
    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 1378
    :try_start_7
    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 1379
    .local v1, l:Lcom/android/email/Controller$Result;
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p1, p2, v4}, Lcom/android/email/Controller$Result;->updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_11

    .line 1381
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/Controller$Result;
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_26
    :try_start_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 1382
    return-void
.end method

.method public loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    .registers 26
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "me"
    .parameter "background"

    .prologue
    .line 1522
    const/16 v6, 0x11

    .line 1523
    .local v6, status:I
    if-eqz p7, :cond_e

    :try_start_4
    invoke-virtual/range {p7 .. p7}, Lcom/android/emailcommon/mail/MessagingException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_e

    .line 1524
    const/16 v6, 0x20

    .line 1526
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v1

    const/4 v7, 0x0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->loadAttachmentStatus(JJII)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1e} :catch_55

    .line 1529
    :goto_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    monitor-enter v2

    .line 1530
    :try_start_27
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_33
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/email/Controller$Result;

    .line 1538
    .local v7, listener:Lcom/android/email/Controller$Result;
    if-eqz p8, :cond_50

    const/4 v8, 0x0

    :goto_42
    const/4 v15, 0x0

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    invoke-virtual/range {v7 .. v15}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_33

    .line 1541
    .end local v7           #listener:Lcom/android/email/Controller$Result;
    .end local v16           #i$:Ljava/util/Iterator;
    :catchall_4d
    move-exception v1

    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_27 .. :try_end_4f} :catchall_4d

    throw v1

    .restart local v7       #listener:Lcom/android/email/Controller$Result;
    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_50
    move-object/from16 v8, p7

    .line 1538
    goto :goto_42

    .line 1541
    .end local v7           #listener:Lcom/android/email/Controller$Result;
    :cond_53
    :try_start_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_4d

    .line 1542
    return-void

    .line 1527
    .end local v16           #i$:Ljava/util/Iterator;
    :catch_55
    move-exception v1

    goto :goto_1e
.end method

.method public loadAttachmentFinished(JJJ)V
    .registers 18
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"

    .prologue
    .line 1504
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v0

    const/4 v5, 0x0

    const/16 v6, 0x64

    move-wide v1, p3

    move-wide/from16 v3, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->loadAttachmentStatus(JJII)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_3c

    .line 1508
    :goto_f
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    .line 1509
    :try_start_16
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_20
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1510
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/16 v8, 0x64

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_20

    .line 1512
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_37
    move-exception v1

    monitor-exit v10
    :try_end_39
    .catchall {:try_start_16 .. :try_end_39} :catchall_37

    throw v1

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_3a
    :try_start_3a
    monitor-exit v10
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_37

    .line 1513
    return-void

    .line 1506
    .end local v9           #i$:Ljava/util/Iterator;
    :catch_3c
    move-exception v1

    goto :goto_f
.end method

.method public loadAttachmentStarted(JJJZ)V
    .registers 19
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "requiresDownload"

    .prologue
    .line 1490
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-wide v1, p3

    move-wide/from16 v3, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->loadAttachmentStatus(JJII)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_3a

    .line 1494
    :goto_e
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    .line 1495
    :try_start_15
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1496
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/4 v8, 0x0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_1f

    .line 1498
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_35
    move-exception v1

    monitor-exit v10
    :try_end_37
    .catchall {:try_start_15 .. :try_end_37} :catchall_35

    throw v1

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_38
    :try_start_38
    monitor-exit v10
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_35

    .line 1499
    return-void

    .line 1492
    .end local v9           #i$:Ljava/util/Iterator;
    :catch_3a
    move-exception v1

    goto :goto_e
.end method

.method public loadMessageForViewFailed(JLjava/lang/String;)V
    .registers 13
    .parameter "messageId"
    .parameter "message"

    .prologue
    .line 1477
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v2

    .line 1478
    .local v2, accountId:J
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8

    .line 1479
    :try_start_11
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1480
    .local v0, listener:Lcom/android/email/Controller$Result;
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v1, p3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_1b

    .line 1483
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_32
    move-exception v1

    monitor-exit v8
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_32

    throw v1

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_35
    :try_start_35
    monitor-exit v8
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_32

    .line 1484
    return-void
.end method

.method public loadMessageForViewFinished(J)V
    .registers 12
    .parameter "messageId"

    .prologue
    .line 1467
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v2

    .line 1468
    .local v2, accountId:J
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8

    .line 1469
    :try_start_11
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1470
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/16 v6, 0x64

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_1b

    .line 1472
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_2f
    move-exception v1

    monitor-exit v8
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_2f

    throw v1

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_32
    :try_start_32
    monitor-exit v8
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2f

    .line 1473
    return-void
.end method

.method public loadMessageForViewStarted(J)V
    .registers 12
    .parameter "messageId"

    .prologue
    .line 1457
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v2

    .line 1458
    .local v2, accountId:J
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8

    .line 1459
    :try_start_11
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1460
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_1b

    .line 1462
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_2e
    move-exception v1

    monitor-exit v8
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_2e

    throw v1

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_31
    :try_start_31
    monitor-exit v8
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2e

    .line 1463
    return-void
.end method

.method public declared-synchronized sendPendingMessagesCompleted(J)V
    .registers 12
    .parameter "accountId"

    .prologue
    .line 1555
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2b

    .line 1556
    :try_start_8
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1557
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    const/16 v6, 0x64

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_12

    .line 1559
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_28
    move-exception v1

    monitor-exit v8
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    .line 1555
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1559
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_2e
    :try_start_2e
    monitor-exit v8
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_28

    .line 1560
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    .registers 16
    .parameter "accountId"
    .parameter "messageId"
    .parameter "reason"

    .prologue
    .line 1566
    monitor-enter p0

    :try_start_1
    instance-of v3, p5, Lcom/android/emailcommon/mail/MessagingException;

    if-eqz v3, :cond_33

    .line 1567
    move-object v0, p5

    check-cast v0, Lcom/android/emailcommon/mail/MessagingException;

    move-object v2, v0

    .line 1571
    .local v2, me:Lcom/android/emailcommon/mail/MessagingException;
    :goto_9
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v9

    monitor-enter v9
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_30

    .line 1572
    :try_start_10
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 1573
    .local v1, listener:Lcom/android/email/Controller$Result;
    const/4 v7, 0x0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_1a

    .line 1575
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_2d
    move-exception v3

    monitor-exit v9
    :try_end_2f
    .catchall {:try_start_10 .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    .line 1566
    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catchall_30
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1569
    :cond_33
    :try_start_33
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {p5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_30

    .restart local v2       #me:Lcom/android/emailcommon/mail/MessagingException;
    goto :goto_9

    .line 1575
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_3d
    :try_start_3d
    monitor-exit v9
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_2d

    .line 1576
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendPendingMessagesStarted(JJ)V
    .registers 14
    .parameter "accountId"
    .parameter "messageId"

    .prologue
    .line 1546
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_29

    .line 1547
    :try_start_8
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1548
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_12

    .line 1550
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_26
    move-exception v1

    monitor-exit v8
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_26

    :try_start_28
    throw v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    .line 1546
    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1550
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_2c
    :try_start_2c
    monitor-exit v8
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_26

    .line 1551
    monitor-exit p0

    return-void
.end method

.method public synchronizeMailboxFailed(JJLjava/lang/Exception;)V
    .registers 18
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "e"

    .prologue
    .line 1425
    move-object/from16 v0, p5

    instance-of v3, v0, Lcom/android/emailcommon/mail/MessagingException;

    if-eqz v3, :cond_33

    move-object/from16 v2, p5

    .line 1426
    check-cast v2, Lcom/android/emailcommon/mail/MessagingException;

    .line 1430
    .local v2, me:Lcom/android/emailcommon/mail/MessagingException;
    :goto_a
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v11

    monitor-enter v11

    .line 1431
    :try_start_11
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 1432
    .local v1, l:Lcom/android/email/Controller$Result;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJIILjava/util/ArrayList;)V

    goto :goto_1b

    .line 1434
    .end local v1           #l:Lcom/android/email/Controller$Result;
    .end local v10           #i$:Ljava/util/Iterator;
    :catchall_30
    move-exception v3

    monitor-exit v11
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_30

    throw v3

    .line 1428
    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    :cond_33
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .restart local v2       #me:Lcom/android/emailcommon/mail/MessagingException;
    goto :goto_a

    .line 1434
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_3d
    :try_start_3d
    monitor-exit v11
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_30

    .line 1435
    return-void
.end method

.method public synchronizeMailboxFinished(JJIILjava/util/ArrayList;)V
    .registers 19
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "totalMessagesInMailbox"
    .parameter "numNewMessages"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJII",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1414
    .local p7, addedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    .line 1415
    :try_start_7
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1416
    .local v0, l:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/16 v6, 0x64

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJIILjava/util/ArrayList;)V

    goto :goto_11

    .line 1419
    .end local v0           #l:Lcom/android/email/Controller$Result;
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_2a
    move-exception v1

    monitor-exit v10
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2a

    throw v1

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_2d
    :try_start_2d
    monitor-exit v10
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2a

    .line 1420
    return-void
.end method

.method public synchronizeMailboxStarted(JJ)V
    .registers 16
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 1404
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    .line 1405
    :try_start_7
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1406
    .local v0, l:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJIILjava/util/ArrayList;)V

    goto :goto_11

    .line 1408
    .end local v0           #l:Lcom/android/email/Controller$Result;
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_27
    move-exception v1

    monitor-exit v10
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw v1

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_2a
    :try_start_2a
    monitor-exit v10
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_27

    .line 1409
    return-void
.end method
