.class Lcom/sec/android/socialhub/service/SocialHubService$5;
.super Lcom/sec/android/socialhub/service/aidl/ISocialHubService$Stub;
.source "SocialHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/service/SocialHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/service/SocialHubService;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/service/SocialHubService;)V
    .registers 2
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    invoke-direct {p0}, Lcom/sec/android/socialhub/service/aidl/ISocialHubService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getContactName(JLjava/lang/String;)Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    .registers 6
    .parameter "contactID"
    .parameter "NumberOrEmail"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 530
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    invoke-static {v1}, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/contacts/cache/ContactCache;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->getContact(Ljava/lang/String;)Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;

    move-result-object v0

    .line 531
    .local v0, model:Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    return-object v0
.end method

.method public registerCallback(Lcom/sec/android/socialhub/service/aidl/ISocialHubServiceCallback;)I
    .registers 3
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 503
    if-eqz p1, :cond_9

    .line 505
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    iget-object v0, v0, Lcom/sec/android/socialhub/service/SocialHubService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 507
    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method public removeAccount(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "type"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 332
    new-instance v1, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;

    invoke-direct {v1}, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;-><init>()V

    .line 334
    .local v1, msg:Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/sec/android/socialhub/service/SocialHubService;->access$200(Lcom/sec/android/socialhub/service/SocialHubService;)Ljava/lang/Integer;

    move-result-object v3

    monitor-enter v3

    .line 336
    :try_start_c
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/sec/android/socialhub/service/SocialHubService;->access$200(Lcom/sec/android/socialhub/service/SocialHubService;)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    iget-object v5, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;
    invoke-static {v5}, Lcom/sec/android/socialhub/service/SocialHubService;->access$200(Lcom/sec/android/socialhub/service/SocialHubService;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #setter for: Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;
    invoke-static {v4, v5}, Lcom/sec/android/socialhub/service/SocialHubService;->access$202(Lcom/sec/android/socialhub/service/SocialHubService;Ljava/lang/Integer;)Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    .line 337
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_5d

    .line 339
    iput-object p1, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    .line 340
    const/4 v2, 0x0

    aget-object v2, p2, v2

    iput-object v2, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountID:Ljava/lang/String;

    .line 341
    iput-object p2, v1, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;->accountArray:[Ljava/lang/String;

    .line 343
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 344
    .local v0, handleMessage:Landroid/os/Message;
    const/16 v2, 0x11

    iput v2, v0, Landroid/os/Message;->what:I

    .line 345
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 347
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/socialhub/service/SocialHubService;->access$300(Lcom/sec/android/socialhub/service/SocialHubService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 349
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mMessageMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/socialhub/service/SocialHubService;->access$400(Lcom/sec/android/socialhub/service/SocialHubService;)Ljava/util/HashMap;

    move-result-object v2

    iget v3, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget v2, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    return v2

    .line 337
    .end local v0           #handleMessage:Landroid/os/Message;
    :catchall_5d
    move-exception v2

    :try_start_5e
    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v2
.end method

.method public removeMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I
    .registers 13
    .parameter "type"
    .parameter "id"
    .parameter "messageID"
    .parameter "threadID"
    .parameter "folderType"
    .parameter "isAll"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 361
    new-instance v1, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveMsgMessage;

    invoke-direct {v1}, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveMsgMessage;-><init>()V

    .line 363
    .local v1, msg:Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveMsgMessage;
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/sec/android/socialhub/service/SocialHubService;->access$200(Lcom/sec/android/socialhub/service/SocialHubService;)Ljava/lang/Integer;

    move-result-object v3

    monitor-enter v3

    .line 365
    :try_start_c
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/sec/android/socialhub/service/SocialHubService;->access$200(Lcom/sec/android/socialhub/service/SocialHubService;)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    iget-object v5, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;
    invoke-static {v5}, Lcom/sec/android/socialhub/service/SocialHubService;->access$200(Lcom/sec/android/socialhub/service/SocialHubService;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #setter for: Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;
    invoke-static {v4, v5}, Lcom/sec/android/socialhub/service/SocialHubService;->access$202(Lcom/sec/android/socialhub/service/SocialHubService;Ljava/lang/Integer;)Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    .line 366
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_65

    .line 368
    iput-object p1, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    .line 369
    const/4 v2, 0x0

    aget-object v2, p2, v2

    iput-object v2, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountID:Ljava/lang/String;

    .line 370
    iput-object p2, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountArray:[Ljava/lang/String;

    .line 371
    iput-object p3, v1, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->messageID:[Ljava/lang/String;

    .line 372
    iput-object p4, v1, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->threadID:[Ljava/lang/String;

    .line 373
    iput-object p5, v1, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->folderType:[Ljava/lang/String;

    .line 374
    iput-boolean p6, v1, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveMsgMessage;->isAll:Z

    .line 376
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 377
    .local v0, handleMessage:Landroid/os/Message;
    const/16 v2, 0x13

    iput v2, v0, Landroid/os/Message;->what:I

    .line 378
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 380
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/socialhub/service/SocialHubService;->access$300(Lcom/sec/android/socialhub/service/SocialHubService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 382
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mMessageMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/socialhub/service/SocialHubService;->access$400(Lcom/sec/android/socialhub/service/SocialHubService;)Ljava/util/HashMap;

    move-result-object v2

    iget v3, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget v2, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    return v2

    .line 366
    .end local v0           #handleMessage:Landroid/os/Message;
    :catchall_65
    move-exception v2

    :try_start_66
    monitor-exit v3
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v2
.end method

.method public requestDBSync(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter "type"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 412
    const-string v3, "1_Messaging"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 414
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mDirtyFlagMsg:Z
    invoke-static {v3}, Lcom/sec/android/socialhub/service/SocialHubService;->access$500(Lcom/sec/android/socialhub/service/SocialHubService;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 416
    const-string v3, "SocialHubService"

    const-string v4, "requestDBSync()"

    const-string v5, "Telephony provider is not changed."

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :goto_1a
    return v2

    .line 421
    :cond_1b
    const-string v3, "4_SevenIM"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 423
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mDirtyFlagIM:Z
    invoke-static {v3}, Lcom/sec/android/socialhub/service/SocialHubService;->access$600(Lcom/sec/android/socialhub/service/SocialHubService;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 425
    const-string v3, "SocialHubService"

    const-string v4, "requestDBSync()"

    const-string v5, "IM provider is not changed."

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 430
    :cond_35
    new-instance v1, Lcom/sec/android/socialhub/service/message/RequestMessage$DBSyncMessage;

    invoke-direct {v1}, Lcom/sec/android/socialhub/service/message/RequestMessage$DBSyncMessage;-><init>()V

    .line 432
    .local v1, msg:Lcom/sec/android/socialhub/service/message/RequestMessage$DBSyncMessage;
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/sec/android/socialhub/service/SocialHubService;->access$200(Lcom/sec/android/socialhub/service/SocialHubService;)Ljava/lang/Integer;

    move-result-object v3

    monitor-enter v3

    .line 434
    :try_start_41
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/sec/android/socialhub/service/SocialHubService;->access$200(Lcom/sec/android/socialhub/service/SocialHubService;)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    iget-object v5, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;
    invoke-static {v5}, Lcom/sec/android/socialhub/service/SocialHubService;->access$200(Lcom/sec/android/socialhub/service/SocialHubService;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #setter for: Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;
    invoke-static {v4, v5}, Lcom/sec/android/socialhub/service/SocialHubService;->access$202(Lcom/sec/android/socialhub/service/SocialHubService;Ljava/lang/Integer;)Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    .line 435
    monitor-exit v3
    :try_end_63
    .catchall {:try_start_41 .. :try_end_63} :catchall_8d

    .line 437
    iput-object p1, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    .line 438
    iput-object p2, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountID:Ljava/lang/String;

    .line 440
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 441
    .local v0, handleMessage:Landroid/os/Message;
    const/16 v2, 0x17

    iput v2, v0, Landroid/os/Message;->what:I

    .line 442
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 444
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/socialhub/service/SocialHubService;->access$300(Lcom/sec/android/socialhub/service/SocialHubService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 446
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mMessageMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/socialhub/service/SocialHubService;->access$400(Lcom/sec/android/socialhub/service/SocialHubService;)Ljava/util/HashMap;

    move-result-object v2

    iget v3, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    iget v2, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    goto :goto_1a

    .line 435
    .end local v0           #handleMessage:Landroid/os/Message;
    :catchall_8d
    move-exception v2

    :try_start_8e
    monitor-exit v3
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v2
.end method

.method public requestServerSync(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 10
    .parameter "type"
    .parameter "id"
    .parameter "isNext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 389
    new-instance v1, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoteSyncMessage;

    invoke-direct {v1}, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoteSyncMessage;-><init>()V

    .line 391
    .local v1, msg:Lcom/sec/android/socialhub/service/message/RequestMessage$RemoteSyncMessage;
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/sec/android/socialhub/service/SocialHubService;->access$200(Lcom/sec/android/socialhub/service/SocialHubService;)Ljava/lang/Integer;

    move-result-object v3

    monitor-enter v3

    .line 393
    :try_start_c
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/sec/android/socialhub/service/SocialHubService;->access$200(Lcom/sec/android/socialhub/service/SocialHubService;)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    iget-object v5, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;
    invoke-static {v5}, Lcom/sec/android/socialhub/service/SocialHubService;->access$200(Lcom/sec/android/socialhub/service/SocialHubService;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #setter for: Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;
    invoke-static {v4, v5}, Lcom/sec/android/socialhub/service/SocialHubService;->access$202(Lcom/sec/android/socialhub/service/SocialHubService;Ljava/lang/Integer;)Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    .line 394
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_58

    .line 396
    iput-object p1, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    .line 397
    iput-object p2, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountID:Ljava/lang/String;

    .line 399
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 400
    .local v0, handleMessage:Landroid/os/Message;
    const/16 v2, 0x16

    iput v2, v0, Landroid/os/Message;->what:I

    .line 401
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 403
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/socialhub/service/SocialHubService;->access$300(Lcom/sec/android/socialhub/service/SocialHubService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 405
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mMessageMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/socialhub/service/SocialHubService;->access$400(Lcom/sec/android/socialhub/service/SocialHubService;)Ljava/util/HashMap;

    move-result-object v2

    iget v3, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget v2, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    return v2

    .line 394
    .end local v0           #handleMessage:Landroid/os/Message;
    :catchall_58
    move-exception v2

    :try_start_59
    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v2
.end method

.method public setSyncEnabled(Z)Z
    .registers 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 538
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    invoke-virtual {v1, p1}, Lcom/sec/android/socialhub/service/SocialHubService;->setSharedPreferenceSyncValue(Z)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 542
    :goto_6
    return v1

    .line 540
    :catch_7
    move-exception v0

    .line 542
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public unregisterCallback(Lcom/sec/android/socialhub/service/aidl/ISocialHubServiceCallback;)V
    .registers 3
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 493
    if-eqz p1, :cond_9

    .line 495
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    iget-object v0, v0, Lcom/sec/android/socialhub/service/SocialHubService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 497
    :cond_9
    return-void
.end method

.method public updateMessage(Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)I
    .registers 16
    .parameter "type"
    .parameter "id"
    .parameter "option"
    .parameter "messageID"
    .parameter "threadID"
    .parameter "folderType"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 456
    new-instance v1, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;

    invoke-direct {v1}, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;-><init>()V

    .line 458
    .local v1, message:Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/sec/android/socialhub/service/SocialHubService;->access$200(Lcom/sec/android/socialhub/service/SocialHubService;)Ljava/lang/Integer;

    move-result-object v5

    monitor-enter v5

    .line 460
    :try_start_e
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/sec/android/socialhub/service/SocialHubService;->access$200(Lcom/sec/android/socialhub/service/SocialHubService;)Ljava/lang/Integer;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    iget-object v7, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;
    invoke-static {v7}, Lcom/sec/android/socialhub/service/SocialHubService;->access$200(Lcom/sec/android/socialhub/service/SocialHubService;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #setter for: Lcom/sec/android/socialhub/service/SocialHubService;->mReqID:Ljava/lang/Integer;
    invoke-static {v6, v7}, Lcom/sec/android/socialhub/service/SocialHubService;->access$202(Lcom/sec/android/socialhub/service/SocialHubService;Ljava/lang/Integer;)Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    .line 461
    monitor-exit v5
    :try_end_30
    .catchall {:try_start_e .. :try_end_30} :catchall_73

    .line 463
    iput-object p1, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    .line 464
    aget-object v2, p2, v4

    iput-object v2, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountID:Ljava/lang/String;

    .line 465
    iput-object p2, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountArray:[Ljava/lang/String;

    .line 466
    iput-object p4, v1, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->messageID:[Ljava/lang/String;

    .line 467
    iput-object p5, v1, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->threadID:[Ljava/lang/String;

    .line 469
    iput-object p6, v1, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->folderType:[Ljava/lang/String;

    .line 471
    if-ne p7, v3, :cond_76

    move v2, v3

    :goto_41
    iput-boolean v2, v1, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->is_read:Z

    .line 472
    if-ne p7, v3, :cond_78

    :goto_45
    iput-boolean v3, v1, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->is_favorite:Z

    .line 473
    iput p7, v1, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->status_followupflag:I

    .line 474
    iput p7, v1, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->status_lastverb:I

    .line 476
    iput p3, v1, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->updateAction:I

    .line 478
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 479
    .local v0, handleMessage:Landroid/os/Message;
    const/16 v2, 0x18

    iput v2, v0, Landroid/os/Message;->what:I

    .line 480
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 482
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/socialhub/service/SocialHubService;->access$300(Lcom/sec/android/socialhub/service/SocialHubService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 484
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mMessageMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/socialhub/service/SocialHubService;->access$400(Lcom/sec/android/socialhub/service/SocialHubService;)Ljava/util/HashMap;

    move-result-object v2

    iget v3, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    iget v2, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    return v2

    .line 461
    .end local v0           #handleMessage:Landroid/os/Message;
    :catchall_73
    move-exception v2

    :try_start_74
    monitor-exit v5
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v2

    :cond_76
    move v2, v4

    .line 471
    goto :goto_41

    :cond_78
    move v3, v4

    .line 472
    goto :goto_45
.end method

.method public uploadData(I[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .registers 21
    .parameter "updateType"
    .parameter "spTypeList"
    .parameter "title"
    .parameter "content"
    .parameter "tag"
    .parameter "fileName"
    .parameter "categoryOwnerID"
    .parameter "pfd"
    .parameter "fail_action"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 516
    :try_start_0
    new-instance v0, Lcom/sec/android/socialhub/service/model/UploadFileInfo;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/socialhub/service/model/UploadFileInfo;-><init>(I[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 517
    .local v0, info:Lcom/sec/android/socialhub/service/model/UploadFileInfo;
    new-instance v1, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;

    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/service/SocialHubService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/service/SocialHubService;->getSnsHandler()Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubService$5;->this$0:Lcom/sec/android/socialhub/service/SocialHubService;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubService;->mNotificationController:Lcom/sec/android/socialhub/notification/HubNotificationController;
    invoke-static {v4}, Lcom/sec/android/socialhub/service/SocialHubService;->access$700(Lcom/sec/android/socialhub/service/SocialHubService;)Lcom/sec/android/socialhub/notification/HubNotificationController;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/SocialHubSnsHandler;Lcom/sec/android/socialhub/notification/HubNotificationController;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sec/android/socialhub/service/model/UploadFileInfo;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_35

    .line 518
    const/4 v1, 0x0

    .line 522
    .end local v0           #info:Lcom/sec/android/socialhub/service/model/UploadFileInfo;
    :goto_34
    return v1

    .line 520
    :catch_35
    move-exception v10

    .line 522
    .local v10, e:Ljava/lang/Exception;
    const/4 v1, -0x1

    goto :goto_34
.end method
