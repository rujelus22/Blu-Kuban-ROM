.class Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;
.super Ljava/util/TimerTask;
.source "LMTTUpdate.java"

# interfaces
.implements Lcom/vlingo/client/core/http/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/lmtt/LMTTUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessingTask"
.end annotation


# instance fields
.field changedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/lmtt/LMTTItem;",
            ">;"
        }
    .end annotation
.end field

.field clearLMTT:Z

.field langChange:Z

.field lmttUpdateType:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

.field retryCount:I

.field final synthetic this$0:Lcom/vlingo/client/lmtt/LMTTUpdate;

.field waitTime:J


# direct methods
.method constructor <init>(Lcom/vlingo/client/lmtt/LMTTUpdate;Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;JZZ)V
    .registers 7
    .parameter
    .parameter "lmttUpdateType"
    .parameter "waitTime"
    .parameter "clearLMTT"
    .parameter "langChange"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->this$0:Lcom/vlingo/client/lmtt/LMTTUpdate;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 160
    iput-wide p3, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->waitTime:J

    .line 161
    iput-boolean p5, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->clearLMTT:Z

    .line 162
    iput-object p2, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->lmttUpdateType:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    .line 163
    iput-boolean p6, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->langChange:Z

    .line 164
    return-void
.end method

.method private calculateDeltaChanges(Ljava/util/ArrayList;)I
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/lmtt/LMTTItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, changedItemsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/lmtt/LMTTItem;>;"
    const/4 v0, 0x0

    .line 305
    .local v0, count:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/lmtt/LMTTItem;

    .line 306
    .local v2, item:Lcom/vlingo/client/lmtt/LMTTItem;
    iget-object v3, v2, Lcom/vlingo/client/lmtt/LMTTItem;->changeType:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    invoke-virtual {v3, v0}, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->runningSum(I)I

    move-result v0

    goto :goto_5

    .line 308
    .end local v2           #item:Lcom/vlingo/client/lmtt/LMTTItem;
    :cond_18
    return v0
.end method


# virtual methods
.method end()V
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->this$0:Lcom/vlingo/client/lmtt/LMTTUpdate;

    #getter for: Lcom/vlingo/client/lmtt/LMTTUpdate;->taskList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vlingo/client/lmtt/LMTTUpdate;->access$000(Lcom/vlingo/client/lmtt/LMTTUpdate;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method getUpdateType()Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->lmttUpdateType:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    return-object v0
.end method

.method getWaitTime()J
    .registers 3

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->waitTime:J

    return-wide v0
.end method

.method isClearLMTT()Z
    .registers 2

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->clearLMTT:Z

    return v0
.end method

.method public onCancelled(Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 442
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v0

    const-string v1, "lmtt-cancelled"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public onFailure(Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->lmttUpdateType:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->LMTT_MUSIC_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    if-ne v0, v1, :cond_13

    .line 432
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v0

    const-string v1, "lmtt-onFailure-occurred-music-rescheduled"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    .line 436
    :goto_f
    invoke-virtual {p0}, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->retry()V

    .line 437
    return-void

    .line 434
    :cond_13
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v0

    const-string v1, "lmtt-onFailure-occurred-contact-rescheduled"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public onResponse(Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpResponse;)V
    .registers 16
    .parameter "request"
    .parameter "response"

    .prologue
    const/4 v12, 0x3

    const/4 v5, 0x1

    .line 312
    iget v1, p2, Lcom/vlingo/client/core/http/HttpResponse;->responseCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_121

    .line 313
    const/4 v7, 0x1

    .line 314
    .local v7, countsMustMatch:Z
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->lmttUpdateType:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    iget-object v2, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->this$0:Lcom/vlingo/client/lmtt/LMTTUpdate;

    iget-object v2, v2, Lcom/vlingo/client/lmtt/LMTTUpdate;->deviceItemCounts:Ljava/util/HashMap;

    invoke-static {v1, p2, v2, v7}, Lcom/vlingo/client/lmtt/LMTTComm;->handleLMTTResponse(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;Lcom/vlingo/client/core/http/HttpResponse;Ljava/util/HashMap;Z)I

    move-result v11

    .line 315
    .local v11, lmttResponseCode:I
    if-ne v11, v5, :cond_27

    .line 316
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->changedItems:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/vlingo/client/lmtt/LMTTDBUtil;->updateSynchedItems(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 320
    const/4 v11, 0x2

    .line 321
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v1

    const-string v2, "lmtt-error-writing-data"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    .line 358
    :cond_27
    :goto_27
    const/4 v1, 0x2

    if-ne v11, v1, :cond_58

    .line 359
    iget v1, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->retryCount:I

    if-ge v1, v12, :cond_fa

    .line 362
    invoke-virtual {p0}, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->end()V

    .line 363
    new-instance v0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;

    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->this$0:Lcom/vlingo/client/lmtt/LMTTUpdate;

    iget-object v2, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->lmttUpdateType:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;-><init>(Lcom/vlingo/client/lmtt/LMTTUpdate;Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;JZZ)V

    .line 364
    .local v0, task:Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;
    iget v1, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->setRetryCount(I)V

    .line 365
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->this$0:Lcom/vlingo/client/lmtt/LMTTUpdate;

    #calls: Lcom/vlingo/client/lmtt/LMTTUpdate;->scheduleTask(Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;)V
    invoke-static {v1, v0}, Lcom/vlingo/client/lmtt/LMTTUpdate;->access$100(Lcom/vlingo/client/lmtt/LMTTUpdate;Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;)V

    .line 366
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->lmttUpdateType:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    sget-object v2, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->LMTT_MUSIC_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    if-ne v1, v2, :cond_ef

    .line 369
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v1

    const-string v2, "lmtt-reschedule-full-music-update"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    .line 387
    .end local v0           #task:Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;
    :cond_58
    :goto_58
    if-ne v11, v12, :cond_69

    .line 388
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->lmttUpdateType:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    sget-object v2, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->LMTT_MUSIC_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    if-ne v1, v2, :cond_116

    .line 391
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v1

    const-string v2, "lmtt-comm-error-music-update"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    .line 413
    .end local v7           #countsMustMatch:Z
    .end local v11           #lmttResponseCode:I
    :cond_69
    :goto_69
    invoke-virtual {p0}, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->end()V

    .line 414
    return-void

    .line 323
    .restart local v7       #countsMustMatch:Z
    .restart local v11       #lmttResponseCode:I
    :cond_6d
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->this$0:Lcom/vlingo/client/lmtt/LMTTUpdate;

    iget-object v1, v1, Lcom/vlingo/client/lmtt/LMTTUpdate;->deviceItemCounts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_79
    :goto_79
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ce

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    .line 324
    .local v10, id:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;
    const/4 v8, 0x0

    .line 325
    .local v8, deviceItemCount:I
    sget-object v1, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_SONG:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    if-ne v10, v1, :cond_9e

    .line 326
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->this$0:Lcom/vlingo/client/lmtt/LMTTUpdate;

    iget-object v1, v1, Lcom/vlingo/client/lmtt/LMTTUpdate;->deviceItemCounts:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 327
    const-string v1, "song_count"

    invoke-static {v1, v8}, Lcom/vlingo/client/settings/Settings;->setInt(Ljava/lang/String;I)V

    goto :goto_79

    .line 332
    :cond_9e
    sget-object v1, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_PLAYLIST:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    if-ne v10, v1, :cond_b6

    .line 333
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->this$0:Lcom/vlingo/client/lmtt/LMTTUpdate;

    iget-object v1, v1, Lcom/vlingo/client/lmtt/LMTTUpdate;->deviceItemCounts:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 334
    const-string v1, "playlist_count"

    invoke-static {v1, v8}, Lcom/vlingo/client/settings/Settings;->setInt(Ljava/lang/String;I)V

    goto :goto_79

    .line 339
    :cond_b6
    sget-object v1, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_CONTACT:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    if-ne v10, v1, :cond_79

    .line 340
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->this$0:Lcom/vlingo/client/lmtt/LMTTUpdate;

    iget-object v1, v1, Lcom/vlingo/client/lmtt/LMTTUpdate;->deviceItemCounts:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 341
    const-string v1, "contact_count"

    invoke-static {v1, v8}, Lcom/vlingo/client/settings/Settings;->setInt(Ljava/lang/String;I)V

    goto :goto_79

    .line 348
    .end local v8           #deviceItemCount:I
    .end local v10           #id:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;
    :cond_ce
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->lmttUpdateType:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    sget-object v2, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->LMTT_MUSIC_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    if-ne v1, v2, :cond_e4

    .line 349
    const-string v1, "music_db_data_captured"

    invoke-static {v1, v5}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 350
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v1

    const-string v2, "lmtt-music-update-successful"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    goto/16 :goto_27

    .line 354
    :cond_e4
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v1

    const-string v2, "lmtt-contact-update-successful"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    goto/16 :goto_27

    .line 373
    .end local v9           #i$:Ljava/util/Iterator;
    .restart local v0       #task:Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;
    :cond_ef
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v1

    const-string v2, "lmtt-reschedule-full-contact-update"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    goto/16 :goto_58

    .line 376
    .end local v0           #task:Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;
    :cond_fa
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->lmttUpdateType:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    sget-object v2, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->LMTT_MUSIC_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    if-ne v1, v2, :cond_10b

    .line 379
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v1

    const-string v2, "lmtt-retry-exceeded-music-update"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    goto/16 :goto_58

    .line 383
    :cond_10b
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v1

    const-string v2, "lmtt-retry-exceeded-contact-update"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    goto/16 :goto_58

    .line 395
    :cond_116
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v1

    const-string v2, "lmtt-comm-error-contact-update"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    goto/16 :goto_69

    .line 401
    .end local v7           #countsMustMatch:Z
    .end local v11           #lmttResponseCode:I
    :cond_121
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->lmttUpdateType:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    sget-object v2, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->LMTT_MUSIC_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    if-ne v1, v2, :cond_135

    .line 404
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v1

    const-string v2, "lmtt-error-occurred-music-rescheduled"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    .line 410
    :goto_130
    invoke-virtual {p0}, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->retry()V

    goto/16 :goto_69

    .line 408
    :cond_135
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v1

    const-string v2, "lmtt-error-occurred-contact-rescheduled"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    goto :goto_130
.end method

.method public onTimeout(Lcom/vlingo/client/core/http/HttpRequest;)Z
    .registers 4
    .parameter "request"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->lmttUpdateType:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->LMTT_MUSIC_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    if-ne v0, v1, :cond_14

    .line 420
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v0

    const-string v1, "lmtt-timed-out-music-rescheduled"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    .line 424
    :goto_f
    invoke-virtual {p0}, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->retry()V

    .line 425
    const/4 v0, 0x1

    return v0

    .line 422
    :cond_14
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v0

    const-string v1, "lmtt-timed-out-contact-rescheduled"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public onWillExecuteRequest(Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 2
    .parameter "request"

    .prologue
    .line 446
    return-void
.end method

.method retry()V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 187
    iget-wide v1, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->waitTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-nez v1, :cond_26

    const-wide/32 v3, 0x1d4c0

    .line 188
    .local v3, newWaitTime:J
    :goto_c
    new-instance v0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;

    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->this$0:Lcom/vlingo/client/lmtt/LMTTUpdate;

    iget-object v2, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->lmttUpdateType:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;-><init>(Lcom/vlingo/client/lmtt/LMTTUpdate;Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;JZZ)V

    .line 189
    .local v0, task:Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;
    iget v1, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->setRetryCount(I)V

    .line 192
    invoke-virtual {p0}, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->end()V

    .line 193
    iget-object v1, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->this$0:Lcom/vlingo/client/lmtt/LMTTUpdate;

    #calls: Lcom/vlingo/client/lmtt/LMTTUpdate;->scheduleTask(Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;)V
    invoke-static {v1, v0}, Lcom/vlingo/client/lmtt/LMTTUpdate;->access$100(Lcom/vlingo/client/lmtt/LMTTUpdate;Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;)V

    .line 194
    return-void

    .line 187
    .end local v0           #task:Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;
    .end local v3           #newWaitTime:J
    :cond_26
    iget-wide v1, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->waitTime:J

    const-wide/16 v6, 0x4

    mul-long v3, v1, v6

    goto :goto_c
.end method

.method public run()V
    .registers 19

    .prologue
    .line 200
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->this$0:Lcom/vlingo/client/lmtt/LMTTUpdate;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/vlingo/client/lmtt/LMTTUpdate;->deviceItemCounts:Ljava/util/HashMap;

    .line 201
    const/4 v3, 0x1

    .line 202
    .local v3, isBulk:Z
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->langChange:Z

    if-nez v1, :cond_130

    .line 204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->lmttUpdateType:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    sget-object v2, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->LMTT_MUSIC_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    if-ne v1, v2, :cond_56

    .line 205
    const/4 v1, 0x2

    new-array v0, v1, [Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    move-object/from16 v16, v0

    const/4 v1, 0x0

    sget-object v2, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_PLAYLIST:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    aput-object v2, v16, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_SONG:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    aput-object v2, v16, v1

    .line 214
    .local v16, lmttItemTypes:[Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;
    :goto_29
    move-object/from16 v7, v16

    .local v7, arr$:[Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;
    array-length v14, v7

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_2d
    if-ge v13, v14, :cond_de

    aget-object v15, v7, v13

    .line 215
    .local v15, lmttItemType:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->changedItems:Ljava/util/ArrayList;

    .line 216
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->clearLMTT:Z

    if-eqz v1, :cond_43

    .line 219
    invoke-static {v15}, Lcom/vlingo/client/lmtt/LMTTDBUtil;->clearLMTTTable(Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;)V

    .line 221
    :cond_43
    invoke-static {v15}, Lcom/vlingo/client/lmtt/LMTTDBUtil;->getSynchedItems(Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;)Ljava/util/HashMap;

    move-result-object v17

    .line 222
    .local v17, synchedItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v17, :cond_6f

    .line 225
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v1

    const-string v2, "lmtt-synched-items-null"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->retry()V

    .line 301
    .end local v3           #isBulk:Z
    .end local v7           #arr$:[Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v15           #lmttItemType:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;
    .end local v16           #lmttItemTypes:[Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;
    .end local v17           #synchedItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_55
    return-void

    .line 207
    .restart local v3       #isBulk:Z
    :cond_56
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->lmttUpdateType:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    sget-object v2, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->LMTT_CONTACT_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    if-ne v1, v2, :cond_69

    .line 208
    const/4 v1, 0x1

    new-array v0, v1, [Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    move-object/from16 v16, v0

    const/4 v1, 0x0

    sget-object v2, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_CONTACT:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    aput-object v2, v16, v1

    .restart local v16       #lmttItemTypes:[Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;
    goto :goto_29

    .line 211
    .end local v16           #lmttItemTypes:[Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;
    :cond_69
    const/4 v1, 0x0

    new-array v0, v1, [Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    move-object/from16 v16, v0

    .restart local v16       #lmttItemTypes:[Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;
    goto :goto_29

    .line 230
    .restart local v7       #arr$:[Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;
    .restart local v13       #i$:I
    .restart local v14       #len$:I
    .restart local v15       #lmttItemType:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;
    .restart local v17       #synchedItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6f
    if-eqz v3, :cond_b2

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b2

    const/4 v3, 0x1

    .line 236
    :goto_78
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->this$0:Lcom/vlingo/client/lmtt/LMTTUpdate;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->changedItems:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    #calls: Lcom/vlingo/client/lmtt/LMTTUpdate;->getUpdateChangedItemsList(Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;Ljava/util/HashMap;Ljava/util/ArrayList;)I
    invoke-static {v1, v15, v0, v2}, Lcom/vlingo/client/lmtt/LMTTUpdate;->access$200(Lcom/vlingo/client/lmtt/LMTTUpdate;Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;Ljava/util/HashMap;Ljava/util/ArrayList;)I

    move-result v9

    .line 237
    .local v9, deviceItemCount:I
    if-ltz v9, :cond_ce

    .line 238
    if-nez v3, :cond_a1

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->changedItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->calculateDeltaChanges(Ljava/util/ArrayList;)I

    move-result v10

    .line 240
    .local v10, deviceItemCountDelta:I
    sget-object v1, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_SONG:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    if-ne v15, v1, :cond_b4

    .line 241
    const-string v1, "song_count"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vlingo/client/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v10, v1

    .line 247
    :cond_a0
    :goto_a0
    move v9, v10

    .line 249
    .end local v10           #deviceItemCountDelta:I
    :cond_a1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->this$0:Lcom/vlingo/client/lmtt/LMTTUpdate;

    iget-object v1, v1, Lcom/vlingo/client/lmtt/LMTTUpdate;->deviceItemCounts:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2d

    .line 230
    .end local v9           #deviceItemCount:I
    :cond_b2
    const/4 v3, 0x0

    goto :goto_78

    .line 242
    .restart local v9       #deviceItemCount:I
    .restart local v10       #deviceItemCountDelta:I
    :cond_b4
    sget-object v1, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_PLAYLIST:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    if-ne v15, v1, :cond_c1

    .line 243
    const-string v1, "playlist_count"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vlingo/client/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v10, v1

    goto :goto_a0

    .line 244
    :cond_c1
    sget-object v1, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_CONTACT:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    if-ne v15, v1, :cond_a0

    .line 245
    const-string v1, "contact_count"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vlingo/client/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v10, v1

    goto :goto_a0

    .line 254
    .end local v10           #deviceItemCountDelta:I
    :cond_ce
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v1

    const-string v2, "lmtt-error-generating-change-list"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->changedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 263
    .end local v9           #deviceItemCount:I
    .end local v15           #lmttItemType:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;
    .end local v17           #synchedItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_de
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->changedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_12b

    .line 266
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->lmttUpdateType:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->changedItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->langChange:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->this$0:Lcom/vlingo/client/lmtt/LMTTUpdate;

    iget-object v5, v5, Lcom/vlingo/client/lmtt/LMTTUpdate;->deviceItemCounts:Ljava/util/HashMap;

    move-object/from16 v6, p0

    invoke-static/range {v1 .. v6}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->getInstance(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;Ljava/util/ArrayList;ZZLjava/util/HashMap;Lcom/vlingo/client/core/http/HttpCallback;)Lcom/vlingo/client/lmtt/LMTTChunkUpdate;

    move-result-object v8

    .line 267
    .local v8, chunkUpdate:Lcom/vlingo/client/lmtt/LMTTChunkUpdate;
    invoke-virtual {v8}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->transmitChunk()V

    .line 269
    const-string v12, ""

    .line 270
    .local v12, helpTag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->lmttUpdateType:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    sget-object v2, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->LMTT_MUSIC_UPDATE:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    if-ne v1, v2, :cond_123

    .line 271
    if-eqz v3, :cond_120

    const-string v12, "lmtt-scheduled-music-full"

    .line 275
    :goto_111
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstanceShared()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_118} :catch_11a

    goto/16 :goto_55

    .line 298
    .end local v3           #isBulk:Z
    .end local v7           #arr$:[Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;
    .end local v8           #chunkUpdate:Lcom/vlingo/client/lmtt/LMTTChunkUpdate;
    .end local v12           #helpTag:Ljava/lang/String;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v16           #lmttItemTypes:[Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;
    :catch_11a
    move-exception v11

    .line 299
    .local v11, ex:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_55

    .line 271
    .end local v11           #ex:Ljava/lang/Exception;
    .restart local v3       #isBulk:Z
    .restart local v7       #arr$:[Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;
    .restart local v8       #chunkUpdate:Lcom/vlingo/client/lmtt/LMTTChunkUpdate;
    .restart local v12       #helpTag:Ljava/lang/String;
    .restart local v13       #i$:I
    .restart local v14       #len$:I
    .restart local v16       #lmttItemTypes:[Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;
    :cond_120
    :try_start_120
    const-string v12, "lmtt-scheduled-music-partial"

    goto :goto_111

    .line 273
    :cond_123
    if-eqz v3, :cond_128

    const-string v12, "lmtt-scheduled-contact-full"

    :goto_127
    goto :goto_111

    :cond_128
    const-string v12, "lmtt-scheduled-contact-partial"

    goto :goto_127

    .line 291
    .end local v8           #chunkUpdate:Lcom/vlingo/client/lmtt/LMTTChunkUpdate;
    .end local v12           #helpTag:Ljava/lang/String;
    :cond_12b
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->end()V

    goto/16 :goto_55

    .line 295
    .end local v7           #arr$:[Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v16           #lmttItemTypes:[Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;
    :cond_130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->lmttUpdateType:Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->changedItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->langChange:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->this$0:Lcom/vlingo/client/lmtt/LMTTUpdate;

    iget-object v5, v5, Lcom/vlingo/client/lmtt/LMTTUpdate;->deviceItemCounts:Ljava/util/HashMap;

    move-object/from16 v6, p0

    invoke-static/range {v1 .. v6}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->getInstance(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;Ljava/util/ArrayList;ZZLjava/util/HashMap;Lcom/vlingo/client/core/http/HttpCallback;)Lcom/vlingo/client/lmtt/LMTTChunkUpdate;

    move-result-object v8

    .line 296
    .restart local v8       #chunkUpdate:Lcom/vlingo/client/lmtt/LMTTChunkUpdate;
    invoke-virtual {v8}, Lcom/vlingo/client/lmtt/LMTTChunkUpdate;->transmitChunk()V
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_14b} :catch_11a

    goto/16 :goto_55
.end method

.method setRetryCount(I)V
    .registers 2
    .parameter "count"

    .prologue
    .line 175
    iput p1, p0, Lcom/vlingo/client/lmtt/LMTTUpdate$ProcessingTask;->retryCount:I

    .line 176
    return-void
.end method
