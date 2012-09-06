.class Lcom/android/exchange/ExchangeService$2;
.super Lcom/android/emailcommon/service/IEmailService$Stub;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService;)V
    .registers 2
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .parameter "userName"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 342
    new-instance v0, Lcom/android/exchange/EasSyncService;

    invoke-direct {v0}, Lcom/android/exchange/EasSyncService;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/android/exchange/EasSyncService;->tryAutodiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public createFolder(JLjava/lang/String;)Z
    .registers 5
    .parameter "accountId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method public deleteAccountPIMData(J)V
    .registers 3
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 478
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->stopAccountSyncs(J)V

    .line 480
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->deleteAccountPIMData(J)V

    .line 481
    return-void
.end method

.method public deleteFolder(JLjava/lang/String;)Z
    .registers 5
    .parameter "accountId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public getApiLevel()I
    .registers 2

    .prologue
    .line 333
    const/4 v0, 0x2

    return v0
.end method

.method public hostChanged(J)V
    .registers 12
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 418
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 419
    .local v1, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v1, :cond_5

    .line 439
    :goto_4
    return-void

    .line 420
    :cond_5
    iget-object v6, v1, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 422
    .local v6, syncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Lcom/android/exchange/ExchangeService$SyncError;>;"
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 423
    .local v4, mailboxId:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$SyncError;

    .line 425
    .local v0, error:Lcom/android/exchange/ExchangeService$SyncError;
    invoke-static {v1, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    .line 428
    .local v3, m:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v3, :cond_37

    .line 429
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 430
    :cond_37
    if-eqz v0, :cond_f

    iget-wide v7, v3, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    cmp-long v7, v7, p1

    if-nez v7, :cond_f

    .line 431
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    .line 432
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    goto :goto_f

    .line 436
    .end local v0           #error:Lcom/android/exchange/ExchangeService$SyncError;
    .end local v3           #m:Lcom/android/emailcommon/provider/Mailbox;
    .end local v4           #mailboxId:J
    :cond_47
    const/4 v7, 0x1

    #calls: Lcom/android/exchange/ExchangeService;->stopAccountSyncs(JZ)V
    invoke-static {v1, p1, p2, v7}, Lcom/android/exchange/ExchangeService;->access$400(Lcom/android/exchange/ExchangeService;JZ)V

    .line 438
    const-string v7, "host changed"

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public loadAttachment(JZ)V
    .registers 8
    .parameter "attachmentId"
    .parameter "background"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 408
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 409
    .local v0, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAttachment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 410
    new-instance v1, Lcom/android/exchange/PartRequest;

    invoke-direct {v1, v0, v3, v3}, Lcom/android/exchange/PartRequest;-><init>(Lcom/android/emailcommon/provider/EmailContent$Attachment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->sendMessageRequest(Lcom/android/exchange/Request;)V

    .line 411
    return-void
.end method

.method public loadMore(J)V
    .registers 3
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 450
    return-void
.end method

.method public renameFolder(JLjava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "accountId"
    .parameter "oldName"
    .parameter "newName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method public searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I
    .registers 12
    .parameter "accountId"
    .parameter "searchParams"
    .parameter "destMailboxId"

    .prologue
    .line 484
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 485
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    .line 486
    :goto_5
    return v1

    :cond_6
    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/exchange/adapter/Search;->searchMessages(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I

    move-result v1

    goto :goto_5
.end method

.method public sendMeetingResponse(JI)V
    .registers 5
    .parameter "messageId"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 446
    new-instance v0, Lcom/android/exchange/MeetingResponseRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/exchange/MeetingResponseRequest;-><init>(JI)V

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->sendMessageRequest(Lcom/android/exchange/Request;)V

    .line 447
    return-void
.end method

.method public setCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .registers 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    #getter for: Lcom/android/exchange/ExchangeService;->mCallbackList:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->access$000(Lcom/android/exchange/ExchangeService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 468
    return-void
.end method

.method public setLogging(I)V
    .registers 2
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 442
    invoke-static {p1}, Lcom/android/exchange/Eas;->setUserDebug(I)V

    .line 443
    return-void
.end method

.method public startSync(JZ)V
    .registers 14
    .parameter "mailboxId"
    .parameter "userRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 346
    sget-object v2, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 347
    .local v2, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v2, :cond_8

    .line 401
    :cond_7
    :goto_7
    return-void

    .line 348
    :cond_8
    invoke-static {}, Lcom/android/exchange/ExchangeService;->checkExchangeServiceServiceRunning()V

    .line 349
    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v3

    .line 350
    .local v3, m:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v3, :cond_7

    .line 351
    iget-wide v4, v3, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {v2, v4, v5}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 352
    .local v0, acct:Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_7

    .line 355
    if-eqz p3, :cond_5b

    .line 356
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    #calls: Lcom/android/exchange/ExchangeService;->onSyncDisabledHold(Lcom/android/emailcommon/provider/Account;)Z
    invoke-static {v4, v0}, Lcom/android/exchange/ExchangeService;->access$100(Lcom/android/exchange/ExchangeService;Lcom/android/emailcommon/provider/Account;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 357
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    const/4 v5, 0x5

    invoke-virtual {v4, v2, v5, v0}, Lcom/android/exchange/ExchangeService;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    .line 358
    const-string v4, "User requested sync of account in sync disabled hold; releasing"

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 364
    :cond_2e
    :goto_2e
    sget-boolean v4, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    if-eqz v4, :cond_5b

    .line 367
    :try_start_32
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$300()Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, p1, p2, v5, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxStatus(JII)V

    .line 369
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$300()Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v4

    const/16 v5, 0x20

    const/4 v6, 0x0

    invoke-virtual {v4, p1, p2, v5, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxStatus(JII)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_45} :catch_46

    goto :goto_7

    .line 371
    :catch_46
    move-exception v4

    goto :goto_7

    .line 359
    :cond_48
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    #calls: Lcom/android/exchange/ExchangeService;->onSecurityHold(Lcom/android/emailcommon/provider/Account;)Z
    invoke-static {v4, v0}, Lcom/android/exchange/ExchangeService;->access$200(Lcom/android/exchange/ExchangeService;Lcom/android/emailcommon/provider/Account;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 360
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v4, v2, v6, v0}, Lcom/android/exchange/ExchangeService;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/Account;)Z

    .line 362
    const-string v4, "User requested sync of account in security hold; releasing"

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_2e

    .line 376
    :cond_5b
    iget v4, v3, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-ne v4, v6, :cond_90

    .line 380
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 381
    .local v1, cv:Landroid/content/ContentValues;
    const-string v4, "syncServerId"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 382
    invoke-virtual {v2}, Lcom/android/exchange/ExchangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "mailboxKey=?"

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 385
    iget-object v4, v2, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v4, "start outbox"

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 389
    .end local v1           #cv:Landroid/content/ContentValues;
    :cond_90
    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->isSyncable(Lcom/android/emailcommon/provider/Mailbox;)Z

    move-result v4

    if-nez v4, :cond_ad

    .line 392
    :try_start_96
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$300()Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, p1, p2, v5, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxStatus(JII)V

    .line 393
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$300()Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, p1, p2, v5, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxStatus(JII)V
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_a8} :catch_aa

    goto/16 :goto_7

    .line 394
    :catch_aa
    move-exception v4

    goto/16 :goto_7

    .line 399
    :cond_ad
    if-eqz p3, :cond_b6

    const/4 v4, 0x7

    :goto_b0
    const/4 v5, 0x0

    invoke-static {p1, p2, v4, v5}, Lcom/android/exchange/ExchangeService;->startManualSync(JILcom/android/exchange/Request;)V

    goto/16 :goto_7

    :cond_b6
    const/4 v4, 0x6

    goto :goto_b0
.end method

.method public stopSync(J)V
    .registers 3
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->stopManualSync(J)V

    .line 405
    return-void
.end method

.method public updateFolderList(J)V
    .registers 5
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 415
    return-void
.end method

.method public validate(Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 337
    const-class v0, Lcom/android/exchange/EasSyncService;

    iget-object v1, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-static {v0, p1, v1}, Lcom/android/exchange/AbstractSyncService;->validate(Ljava/lang/Class;Lcom/android/emailcommon/provider/HostAuth;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
