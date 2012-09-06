.class final Lcom/android/exchange/ExchangeService$1;
.super Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;-><init>()V

    return-void
.end method

.method private declared-synchronized broadcastCallback(Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;)V
    .registers 8
    .parameter "wrapper"

    .prologue
    .line 262
    monitor-enter p0

    :try_start_1
    sget-object v4, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-nez v4, :cond_1b

    const/4 v0, 0x0

    .line 264
    .local v0, callbackList:Landroid/os/RemoteCallbackList;,"Landroid/os/RemoteCallbackList<Lcom/android/emailcommon/service/IEmailServiceCallback;>;"
    :goto_6
    if-eqz v0, :cond_36

    .line 266
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_30

    move-result v1

    .line 268
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_d
    if-ge v3, v1, :cond_33

    .line 270
    :try_start_f
    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/service/IEmailServiceCallback;

    invoke-interface {p1, v4}, Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;->call(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_2b
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_18} :catch_22

    .line 268
    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 262
    .end local v0           #callbackList:Landroid/os/RemoteCallbackList;,"Landroid/os/RemoteCallbackList<Lcom/android/emailcommon/service/IEmailServiceCallback;>;"
    .end local v1           #count:I
    .end local v3           #i:I
    :cond_1b
    :try_start_1b
    sget-object v4, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    #getter for: Lcom/android/exchange/ExchangeService;->mCallbackList:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->access$000(Lcom/android/exchange/ExchangeService;)Landroid/os/RemoteCallbackList;
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_30

    move-result-object v0

    goto :goto_6

    .line 273
    .restart local v0       #callbackList:Landroid/os/RemoteCallbackList;,"Landroid/os/RemoteCallbackList<Lcom/android/emailcommon/service/IEmailServiceCallback;>;"
    .restart local v1       #count:I
    .restart local v3       #i:I
    :catch_22
    move-exception v2

    .line 276
    .local v2, e:Ljava/lang/RuntimeException;
    :try_start_23
    const-string v4, "ExchangeService"

    const-string v5, "Caught RuntimeException in broadcast"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2b

    goto :goto_18

    .line 281
    .end local v2           #e:Ljava/lang/RuntimeException;
    :catchall_2b
    move-exception v4

    :try_start_2c
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v4
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_30

    .line 262
    .end local v0           #callbackList:Landroid/os/RemoteCallbackList;,"Landroid/os/RemoteCallbackList<Lcom/android/emailcommon/service/IEmailServiceCallback;>;"
    .end local v1           #count:I
    .end local v3           #i:I
    :catchall_30
    move-exception v4

    monitor-exit p0

    throw v4

    .line 281
    .restart local v0       #callbackList:Landroid/os/RemoteCallbackList;,"Landroid/os/RemoteCallbackList<Lcom/android/emailcommon/service/IEmailServiceCallback;>;"
    .restart local v1       #count:I
    .restart local v3       #i:I
    :cond_33
    :try_start_33
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_30

    .line 284
    .end local v1           #count:I
    .end local v3           #i:I
    :cond_36
    monitor-exit p0

    return-void

    .line 271
    .restart local v1       #count:I
    .restart local v3       #i:I
    :catch_38
    move-exception v4

    goto :goto_18
.end method


# virtual methods
.method public loadAttachmentStatus(JJII)V
    .registers 15
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 288
    new-instance v0, Lcom/android/exchange/ExchangeService$1$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/exchange/ExchangeService$1$1;-><init>(Lcom/android/exchange/ExchangeService$1;JJII)V

    invoke-direct {p0, v0}, Lcom/android/exchange/ExchangeService$1;->broadcastCallback(Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;)V

    .line 294
    return-void
.end method

.method public sendMessageStatus(JLjava/lang/String;II)V
    .registers 13
    .parameter "messageId"
    .parameter "subject"
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 298
    new-instance v0, Lcom/android/exchange/ExchangeService$1$2;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/ExchangeService$1$2;-><init>(Lcom/android/exchange/ExchangeService$1;JLjava/lang/String;II)V

    invoke-direct {p0, v0}, Lcom/android/exchange/ExchangeService$1;->broadcastCallback(Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;)V

    .line 304
    return-void
.end method

.method public syncMailboxListStatus(JII)V
    .registers 11
    .parameter "accountId"
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 308
    new-instance v0, Lcom/android/exchange/ExchangeService$1$3;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/ExchangeService$1$3;-><init>(Lcom/android/exchange/ExchangeService$1;JII)V

    invoke-direct {p0, v0}, Lcom/android/exchange/ExchangeService$1;->broadcastCallback(Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;)V

    .line 314
    return-void
.end method

.method public syncMailboxStatus(JII)V
    .registers 11
    .parameter "mailboxId"
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 318
    new-instance v0, Lcom/android/exchange/ExchangeService$1$4;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/ExchangeService$1$4;-><init>(Lcom/android/exchange/ExchangeService$1;JII)V

    invoke-direct {p0, v0}, Lcom/android/exchange/ExchangeService$1;->broadcastCallback(Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;)V

    .line 324
    return-void
.end method
