.class Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;
.super Ljava/lang/Thread;
.source "AndroidVoiceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactCheckThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)V
    .registers 2
    .parameter

    .prologue
    .line 1350
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1350
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;-><init>(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 1353
    sget-boolean v4, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v4, :cond_9

    .line 1354
    const-string v4, "ContactCheckThread.run(): starting"

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 1356
    :cond_9
    :goto_9
    invoke-static {}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_4b

    .line 1358
    const/4 v1, 0x0

    .line 1361
    .local v1, contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    :try_start_10
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactInfosToCheck:Ljava/util/Set;
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$1300(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Ljava/util/Set;

    move-result-object v5

    monitor-enter v5
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_17} :catch_ce

    .line 1362
    :try_start_17
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactInfosToCheck:Ljava/util/Set;
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$1300(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1363
    sget-boolean v4, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v4, :cond_2c

    .line 1364
    const-string v4, "ContactCheckThread.run(): waiting for contacts to look up"

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 1366
    :cond_2c
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactInfosToCheck:Ljava/util/Set;
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$1300(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 1368
    :cond_35
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactInfosToCheck:Ljava/util/Set;
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$1300(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 1369
    sget-boolean v4, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v4, :cond_4a

    .line 1370
    const-string v4, "ContactCheckThread.run(): still no contacts to look up, exiting"

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 1372
    :cond_4a
    monitor-exit v5

    .line 1418
    .end local v1           #contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    :cond_4b
    :goto_4b
    return-void

    .line 1374
    .restart local v1       #contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    :cond_4c
    sget-boolean v4, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v4, :cond_76

    .line 1375
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ContactCheckThread.run(): have "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactInfosToCheck:Ljava/util/Set;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$1300(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " contacts to look up"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 1378
    :cond_76
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactInfosToCheck:Ljava/util/Set;
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$1300(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-object v1, v0

    .line 1379
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactInfosToCheck:Ljava/util/Set;
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$1300(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1380
    monitor-exit v5
    :try_end_92
    .catchall {:try_start_17 .. :try_end_92} :catchall_da

    .line 1382
    :try_start_92
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/VoiceUtil;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_dd

    .line 1383
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->checkLocalContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v1, v5, v6}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$1400(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;Lcom/google/android/apps/googlevoice/core/ContactInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    :goto_a9
    const/4 v3, 0x0

    .line 1400
    .local v3, noMoreContactsToCheck:Z
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactInfosToCheck:Ljava/util/Set;
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$1300(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Ljava/util/Set;

    move-result-object v5

    monitor-enter v5
    :try_end_b1
    .catch Ljava/lang/InterruptedException; {:try_start_92 .. :try_end_b1} :catch_ce

    .line 1401
    :try_start_b1
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    #getter for: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->contactInfosToCheck:Ljava/util/Set;
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$1300(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    .line 1402
    monitor-exit v5
    :try_end_bc
    .catchall {:try_start_b1 .. :try_end_bc} :catchall_f3

    .line 1403
    if-eqz v3, :cond_9

    .line 1404
    :try_start_be
    sget-boolean v4, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v4, :cond_c7

    .line 1405
    const-string v4, "ContactCheckThread.run(): no more contacts to look up, notifying listeners"

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 1408
    :cond_c7
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->notifyListenersContactsUpdated()V
    :try_end_cc
    .catch Ljava/lang/InterruptedException; {:try_start_be .. :try_end_cc} :catch_ce

    goto/16 :goto_9

    .line 1410
    .end local v3           #noMoreContactsToCheck:Z
    :catch_ce
    move-exception v2

    .line 1412
    .local v2, e:Ljava/lang/InterruptedException;
    sget-boolean v4, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v4, :cond_4b

    .line 1413
    const-string v4, "ContactCheckThread was interrupted, exiting"

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_4b

    .line 1380
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_da
    move-exception v4

    :try_start_db
    monitor-exit v5
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_da

    :try_start_dc
    throw v4

    .line 1387
    :cond_dd
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$ContactCheckThread;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->checkLocalContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v1, v5, v6}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;->access$1400(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;Lcom/google/android/apps/googlevoice/core/ContactInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f2
    .catch Ljava/lang/InterruptedException; {:try_start_dc .. :try_end_f2} :catch_ce

    goto :goto_a9

    .line 1402
    .restart local v3       #noMoreContactsToCheck:Z
    :catchall_f3
    move-exception v4

    :try_start_f4
    monitor-exit v5
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f3

    :try_start_f5
    throw v4
    :try_end_f6
    .catch Ljava/lang/InterruptedException; {:try_start_f5 .. :try_end_f6} :catch_ce
.end method
