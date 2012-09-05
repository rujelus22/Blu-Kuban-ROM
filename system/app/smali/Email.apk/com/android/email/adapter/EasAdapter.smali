.class public Lcom/android/email/adapter/EasAdapter;
.super Lcom/android/email/adapter/ProtocolAdapter;
.source "EasAdapter.java"


# static fields
.field private static mAccountStateHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/adapter/EasAdapter;->mAccountStateHash:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/email/adapter/ProtocolAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public addUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .parameter "endpointName"
    .parameter "userName"
    .parameter "password"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1051
    .local p4, serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncService;>;"
    return-void
.end method

.method public changeSmsSettings(J)V
    .registers 6
    .parameter "accountId"

    .prologue
    .line 498
    sget-object v1, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v1, v2}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    .line 499
    .local v0, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v0, :cond_d

    .line 504
    :try_start_a
    invoke-interface {v0, p1, p2}, Lcom/android/emailcommon/service/IEmailService;->changeSmsSettings(J)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    .line 509
    :cond_d
    :goto_d
    return-void

    .line 505
    :catch_e
    move-exception v1

    goto :goto_d
.end method

.method public createFolder(Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Mailbox;J)V
    .registers 12
    .parameter "folderName"
    .parameter "mailbox"
    .parameter "accountKey"

    .prologue
    .line 550
    sget-object v1, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v1, v2}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    .line 551
    .local v0, service:Lcom/android/emailcommon/service/IEmailService;
    if-nez v0, :cond_b

    .line 564
    :goto_a
    return-void

    .line 557
    :cond_b
    :try_start_b
    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/IEmailService;->folderCreate(JLjava/lang/String;J)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_14

    goto :goto_a

    .line 558
    :catch_14
    move-exception v6

    .line 559
    .local v6, e:Landroid/os/RemoteException;
    const-string v1, "EasAdapter"

    const-string v2, "EVENT@CONTR [createFolder] [RemoteException]"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a
.end method

.method public deleteAccountPIMData(J)V
    .registers 7
    .parameter "accountId"

    .prologue
    .line 328
    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 329
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v1, :cond_d

    .line 331
    :try_start_a
    invoke-interface {v1, p1, p2}, Lcom/android/emailcommon/service/IEmailService;->deleteAccountPIMData(J)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    .line 337
    :cond_d
    :goto_d
    return-void

    .line 332
    :catch_e
    move-exception v0

    .line 333
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EasAdapter"

    const-string v3, "[moveConversationAlways] Got RemoteException"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d
.end method

.method public deleteFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 6
    .parameter "mailbox"

    .prologue
    .line 531
    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 532
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    if-nez v1, :cond_b

    .line 545
    :goto_a
    return-void

    .line 538
    :cond_b
    :try_start_b
    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-interface {v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService;->folderDelete(J)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_a

    .line 539
    :catch_11
    move-exception v0

    .line 540
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EasAdapter"

    const-string v3, "EVENT@CONTR [deleteFolder] [RemoteException]"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a
.end method

.method public deleteMessage(Ljava/util/HashSet;JJ)Z
    .registers 17
    .parameter
    .parameter "accountId"
    .parameter "sourceMailboxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;JJ)Z"
        }
    .end annotation

    .prologue
    .line 341
    .local p1, messageId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 344
    .local v2, id:J
    sget-object v9, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    const/4 v10, 0x6

    invoke-static {v9, p2, p3, v10}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v6

    .line 348
    .local v6, trashMailboxId:J
    sget-object v9, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v4

    .line 352
    .local v4, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    sget-object v9, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, p2, p3, v2, v3}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 354
    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 355
    .local v8, uri:Landroid/net/Uri;
    sget-object v9, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 358
    .local v5, resolver:Landroid/content/ContentResolver;
    iget-wide v9, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v9, v9, v6

    if-eqz v9, :cond_3d

    iget v9, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_43

    .line 360
    :cond_3d
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_4

    .line 363
    :cond_43
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 364
    .local v0, cv:Landroid/content/ContentValues;
    const-string v9, "mailboxKey"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 365
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v0, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_4

    .line 368
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v2           #id:J
    .end local v4           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v5           #resolver:Landroid/content/ContentResolver;
    .end local v6           #trashMailboxId:J
    .end local v8           #uri:Landroid/net/Uri;
    :cond_57
    const/4 v9, 0x1

    return v9
.end method

.method public emptyTrash(J)V
    .registers 8
    .parameter "accountId"

    .prologue
    .line 606
    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 607
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    if-nez v1, :cond_b

    .line 618
    :goto_a
    return-void

    .line 613
    :cond_b
    :try_start_b
    invoke-interface {v1, p1, p2}, Lcom/android/emailcommon/service/IEmailService;->emptyTrash(J)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_a

    .line 614
    :catch_f
    move-exception v0

    .line 615
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EasAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT@CONTR [emptyTrash] [RemoteException]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a
.end method

.method public getAvailableAccounts()V
    .registers 1

    .prologue
    .line 1132
    return-void
.end method

.method public getMailboxSyncState(J)I
    .registers 6
    .parameter "mailboxId"

    .prologue
    .line 693
    const/4 v1, -0x1

    .line 694
    .local v1, syncInterval:I
    invoke-virtual {p0, p1, p2}, Lcom/android/email/adapter/EasAdapter;->isMailboxSyncable(J)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 695
    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 696
    .local v0, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 698
    .end local v0           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_f
    return v1
.end method

.method public getOutOfOffice(J)V
    .registers 7
    .parameter "accountId"

    .prologue
    .line 464
    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 466
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    if-nez v1, :cond_b

    .line 477
    :goto_a
    return-void

    .line 472
    :cond_b
    const/4 v2, 0x0

    :try_start_c
    invoke-interface {v1, p1, p2, v2}, Lcom/android/emailcommon/service/IEmailService;->OoOffice(JLcom/android/emailcommon/service/OoODataList;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_a

    .line 473
    :catch_10
    move-exception v0

    .line 474
    .local v0, re:Landroid/os/RemoteException;
    const-string v2, "EasAdapter"

    const-string v3, "EVENT@CONTR [getOutOfOffice] [RemoteException]"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a
.end method

.method public getUserConfiguredAccounts()V
    .registers 1

    .prologue
    .line 1138
    return-void
.end method

.method public getUserProfile()V
    .registers 1

    .prologue
    .line 1144
    return-void
.end method

.method public hostChanged(J)V
    .registers 7
    .parameter "accountId"

    .prologue
    .line 1096
    :try_start_0
    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 1097
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    if-nez v1, :cond_b

    .line 1107
    .end local v1           #service:Lcom/android/emailcommon/service/IEmailService;
    :goto_a
    return-void

    .line 1101
    .restart local v1       #service:Lcom/android/emailcommon/service/IEmailService;
    :cond_b
    invoke-interface {v1, p1, p2}, Lcom/android/emailcommon/service/IEmailService;->hostChanged(J)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_a

    .line 1102
    .end local v1           #service:Lcom/android/emailcommon/service/IEmailService;
    :catch_f
    move-exception v0

    .line 1103
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "setServiceCallback"

    const-string v3, "RemoteException Occured "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a
.end method

.method public initProtocol()V
    .registers 1

    .prologue
    .line 69
    return-void
.end method

.method public isMailboxSyncable(J)Z
    .registers 7
    .parameter "mailboxId"

    .prologue
    const/4 v1, 0x0

    .line 677
    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 678
    .local v0, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_f

    .line 679
    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_f

    const/4 v1, 0x1

    .line 681
    :cond_f
    return v1
.end method

.method public loadAttachment(JJJI)V
    .registers 12
    .parameter "attachmentId"
    .parameter "messageId"
    .parameter "accountId"
    .parameter "addFlag"

    .prologue
    .line 197
    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 198
    .local v0, attachInfo:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 199
    .local v1, cv:Landroid/content/ContentValues;
    const-string v2, "flags"

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit8 v3, v3, 0x2

    or-int/2addr v3, p7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 202
    return-void
.end method

.method public loadAttachment(JJJJZZZ)V
    .registers 22
    .parameter "attachmentId"
    .parameter "messageId"
    .parameter "mailboxId"
    .parameter "accountId"
    .parameter "prune"
    .parameter "reconnect"
    .parameter "background"

    .prologue
    .line 208
    sget-object v1, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v1, v2}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v9

    .line 209
    .local v9, service:Lcom/android/emailcommon/service/IEmailService;
    if-nez v9, :cond_23

    .line 210
    const-string v1, "EasAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAttachment failed since no service, for msg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_22
    return-void

    .line 220
    :cond_23
    :try_start_23
    move/from16 v0, p11

    invoke-interface {v9, p1, p2, v0}, Lcom/android/emailcommon/service/IEmailService;->loadAttachment(JZ)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_29

    goto :goto_22

    .line 226
    :catch_29
    move-exception v8

    .line 227
    .local v8, e:Landroid/os/RemoteException;
    const-string v1, "EasAdapter"

    const-string v2, "EVENT@CTRL [loadAttachment] [RemoteException]"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 229
    sget-object v1, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    const-wide/16 v2, -0x1

    const/16 v6, 0x15

    const/4 v7, 0x0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/email/Controller$ServiceCallback;->loadAttachmentStatus(JJII)V

    goto :goto_22
.end method

.method public loadMessageForView(J)V
    .registers 10
    .parameter "messageId"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 373
    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v3, v4}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 375
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    if-nez v1, :cond_14

    .line 376
    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    const/16 v4, 0x3f

    invoke-virtual {v3, p1, p2, v4, v5}, Lcom/android/email/Controller$ServiceCallback;->loadMessageForViewStatus(JII)V

    .line 390
    :goto_13
    return-void

    .line 382
    :cond_14
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 383
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 384
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "flagLoaded"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 385
    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 387
    const-string v3, "EasAdapter"

    const-string v4, "Unexpected loadMessageForView() for service-based message."

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    const/16 v4, 0x18

    invoke-virtual {v3, p1, p2, v4, v5}, Lcom/android/email/Controller$ServiceCallback;->loadMessageForViewStatus(JII)V

    goto :goto_13
.end method

.method public loadMore(J)V
    .registers 8
    .parameter "messageId"

    .prologue
    .line 395
    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 397
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    if-nez v1, :cond_13

    .line 398
    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/android/email/Controller$ServiceCallback;->loadMessageForViewStatus(JII)V

    .line 409
    :goto_12
    return-void

    .line 404
    :cond_13
    :try_start_13
    invoke-interface {v1, p1, p2}, Lcom/android/emailcommon/service/IEmailService;->loadMore(J)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_12

    .line 405
    :catch_17
    move-exception v0

    .line 406
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EasAdapter"

    const-string v3, "EVENT@CTRL [loadMore] [OperationApplicationException]"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_12
.end method

.method public loadMoreCancel()V
    .registers 5

    .prologue
    .line 413
    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 415
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    if-nez v1, :cond_b

    .line 426
    :goto_a
    return-void

    .line 421
    :cond_b
    :try_start_b
    invoke-interface {v1}, Lcom/android/emailcommon/service/IEmailService;->loadMoreCancel()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_a

    .line 422
    :catch_f
    move-exception v0

    .line 423
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EasAdapter"

    const-string v3, "EVENT@CTRL [loadMore] [OperationApplicationException]"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a
.end method

.method public modifyUserAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .parameter "accountId"
    .parameter "password"
    .parameter "accountName"
    .parameter "displayName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1058
    .local p6, serviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncService;>;"
    return-void
.end method

.method public moveConversationAlways(JJ[BI)V
    .registers 15
    .parameter "messageId"
    .parameter "toMailboxId"
    .parameter "conversationId"
    .parameter "ignore"

    .prologue
    .line 314
    sget-object v1, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v1, v2}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    .line 316
    .local v0, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v0, :cond_11

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move v6, p6

    .line 318
    :try_start_e
    invoke-interface/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailService;->moveConversationAlways(JJ[BI)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    .line 324
    :cond_11
    :goto_11
    return-void

    .line 319
    :catch_12
    move-exception v7

    .line 320
    .local v7, e:Landroid/os/RemoteException;
    const-string v1, "EasAdapter"

    const-string v2, "[moveConversationAlways] Got RemoteException"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_11
.end method

.method public moveFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;)V
    .registers 7
    .parameter "mailbox"
    .parameter "parentServerId"

    .prologue
    .line 588
    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 589
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    if-nez v1, :cond_b

    .line 602
    :goto_a
    return-void

    .line 595
    :cond_b
    :try_start_b
    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-interface {v1, v2, v3, p2}, Lcom/android/emailcommon/service/IEmailService;->folderMove(JLjava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_a

    .line 596
    :catch_11
    move-exception v0

    .line 597
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EasAdapter"

    const-string v3, "EVENT@CONTR [moveFolder] [RemoteException]"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a
.end method

.method public moveMessageToSameAccount(Ljava/util/ArrayList;[JLcom/android/emailcommon/provider/EmailContent$Account;JJJZ)V
    .registers 27
    .parameter
    .parameter "messageIds"
    .parameter "account"
    .parameter "accountId"
    .parameter "targetMailboxId"
    .parameter "prevMailboxId"
    .parameter "isDelete"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;[J",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            "JJJZ)V"
        }
    .end annotation

    .prologue
    .line 1157
    .local p1, messageIdsToMove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v13, "EasAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "moveMessageToSameAccount() is called : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p4

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p6

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p8

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    if-eqz p3, :cond_b4

    .line 1191
    const-string v13, "TAG"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isDelete= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p10

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1194
    .local v10, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v13, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1195
    .local v11, resolver:Landroid/content/ContentResolver;
    if-eqz p10, :cond_77

    .line 1196
    move-object/from16 v2, p2

    .local v2, arr$:[J
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_5f
    if-ge v6, v7, :cond_af

    aget-wide v8, v2, v6

    .line 1198
    .local v8, messageId:J
    sget-object v13, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 1201
    .local v12, uri:Landroid/net/Uri;
    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 1202
    .local v3, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    add-int/lit8 v6, v6, 0x1

    goto :goto_5f

    .line 1219
    .end local v2           #arr$:[J
    .end local v3           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #messageId:J
    .end local v12           #uri:Landroid/net/Uri;
    :cond_77
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1220
    .local v4, cv:Landroid/content/ContentValues;
    const-string v13, "mailboxKey"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1222
    const-string v13, "flagMoved"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1224
    move-object/from16 v2, p2

    .restart local v2       #arr$:[J
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v6, 0x0

    .restart local v6       #i$:I
    :goto_93
    if-ge v6, v7, :cond_af

    aget-wide v8, v2, v6

    .line 1225
    .restart local v8       #messageId:J
    sget-object v13, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 1227
    .restart local v12       #uri:Landroid/net/Uri;
    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 1228
    .restart local v3       #b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1224
    add-int/lit8 v6, v6, 0x1

    goto :goto_93

    .line 1233
    .end local v3           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v4           #cv:Landroid/content/ContentValues;
    .end local v8           #messageId:J
    .end local v12           #uri:Landroid/net/Uri;
    :cond_af
    :try_start_af
    const-string v13, "com.android.email.provider"

    invoke-virtual {v11, v13, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_b4
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_b4} :catch_b5
    .catch Landroid/content/OperationApplicationException; {:try_start_af .. :try_end_b4} :catch_ba

    .line 1250
    .end local v2           #arr$:[J
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v10           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v11           #resolver:Landroid/content/ContentResolver;
    :cond_b4
    :goto_b4
    return-void

    .line 1234
    .restart local v2       #arr$:[J
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    .restart local v10       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v11       #resolver:Landroid/content/ContentResolver;
    :catch_b5
    move-exception v5

    .line 1235
    .local v5, e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b4

    .line 1236
    .end local v5           #e:Landroid/os/RemoteException;
    :catch_ba
    move-exception v5

    .line 1237
    .local v5, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v5}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_b4
.end method

.method public refreshIRMTemplates(J)V
    .registers 7
    .parameter "accountId"

    .prologue
    .line 1255
    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 1256
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v1, :cond_d

    .line 1258
    :try_start_a
    invoke-interface {v1, p1, p2}, Lcom/android/emailcommon/service/IEmailService;->refreshIRMTemplates(J)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    .line 1263
    :cond_d
    :goto_d
    return-void

    .line 1259
    :catch_e
    move-exception v0

    .line 1260
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "IRM"

    const-string v3, "RefreshIRMTemplatesRemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public renameFolder(Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 7
    .parameter "folderName"
    .parameter "mailbox"

    .prologue
    .line 569
    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 570
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    if-nez v1, :cond_b

    .line 583
    :goto_a
    return-void

    .line 576
    :cond_b
    :try_start_b
    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-interface {v1, v2, v3, p1}, Lcom/android/emailcommon/service/IEmailService;->folderRename(JLjava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_a

    .line 577
    :catch_11
    move-exception v0

    .line 578
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EasAdapter"

    const-string v3, "EVENT@CONTR [renameFolder] [RemoteException]"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a
.end method

.method public searchOnServer(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 25
    .parameter "accId"
    .parameter "mailboxId"
    .parameter "foldId"
    .parameter "searchTextString"
    .parameter "greaterThanDateString"
    .parameter "lessThanDateString"
    .parameter "optionsDeepTraversalStr"
    .parameter "conversationIdStr"

    .prologue
    .line 1284
    sget-object v1, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v1, v2}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    .line 1285
    .local v0, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v0, :cond_25

    .line 1287
    :try_start_a
    new-instance v7, Ljava/lang/String;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v7, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-interface/range {v0 .. v11}, Lcom/android/emailcommon/service/IEmailService;->searchMessage(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_25} :catch_26
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_25} :catch_2f

    .line 1296
    :cond_25
    :goto_25
    return-void

    .line 1290
    :catch_26
    move-exception v12

    .line 1291
    .local v12, e:Landroid/os/RemoteException;
    const-string v1, "serchOnServer"

    const-string v2, "RemoteException : "

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 1292
    .end local v12           #e:Landroid/os/RemoteException;
    :catch_2f
    move-exception v12

    .line 1293
    .local v12, e:Ljava/io/UnsupportedEncodingException;
    const-string v1, "serchOnServer"

    const-string v2, "UnsupportedEncodingException : "

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25
.end method

.method public sendMeetingEditedResponse(JJI)V
    .registers 13
    .parameter "messageId"
    .parameter "draftMessageId"
    .parameter "response"

    .prologue
    .line 642
    sget-object v1, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v1, v2}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    .line 646
    .local v0, service:Lcom/android/emailcommon/service/IEmailService;
    if-nez v0, :cond_b

    .line 666
    :goto_a
    return-void

    :cond_b
    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    .line 656
    :try_start_e
    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/IEmailService;->sendMeetingEditedResponse(JJI)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_a

    .line 658
    :catch_12
    move-exception v6

    .line 660
    .local v6, e:Landroid/os/RemoteException;
    const-string v1, "EasAdapter"

    const-string v2, "EVENT@CONTR [sendMeetingEditedResponse] [RemoteException]"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a
.end method

.method public sendMeetingResponse(JI)V
    .registers 8
    .parameter "messageId"
    .parameter "response"

    .prologue
    .line 622
    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 623
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    if-nez v1, :cond_b

    .line 634
    :goto_a
    return-void

    .line 629
    :cond_b
    :try_start_b
    invoke-interface {v1, p1, p2, p3}, Lcom/android/emailcommon/service/IEmailService;->sendMeetingResponse(JI)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_a

    .line 630
    :catch_f
    move-exception v0

    .line 631
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EasAdapter"

    const-string v3, "EVENT@CONTR [sendMeetingResponse] [RemoteException]"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a
.end method

.method public sendMessage(JJJ)V
    .registers 11
    .parameter "mailBoxId"
    .parameter "messageId"
    .parameter "accountId"

    .prologue
    .line 446
    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 448
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    if-nez v1, :cond_12

    .line 449
    const-string v2, "EasAdapter"

    const-string v3, "sendMessage null service"

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :goto_11
    return-void

    .line 455
    :cond_12
    const/4 v2, 0x0

    :try_start_13
    invoke-interface {v1, p1, p2, v2}, Lcom/android/emailcommon/service/IEmailService;->startSync(JZ)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_11

    .line 456
    :catch_17
    move-exception v0

    .line 457
    .local v0, re:Landroid/os/RemoteException;
    const-string v2, "EasAdapter"

    const-string v3, "EVENT@CONTR [sendMessage] [RemoteException]"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_11
.end method

.method public sendPendingMessages(J)V
    .registers 9
    .parameter "accountId"

    .prologue
    .line 513
    sget-object v4, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x4

    invoke-static {v4, p1, p2, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v1

    .line 515
    .local v1, outboxId:J
    sget-object v4, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v4, v5}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v3

    .line 516
    .local v3, service:Lcom/android/emailcommon/service/IEmailService;
    if-nez v3, :cond_12

    .line 527
    :goto_11
    return-void

    .line 522
    :cond_12
    const/4 v4, 0x1

    :try_start_13
    invoke-interface {v3, v1, v2, v4}, Lcom/android/emailcommon/service/IEmailService;->startSync(JZ)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_11

    .line 523
    :catch_17
    move-exception v0

    .line 524
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "EasAdapter"

    const-string v5, "EVENT@CONTR [sendPendingMessages] [RemoteException]"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_11
.end method

.method public sendRecoveryPassword()V
    .registers 16

    .prologue
    .line 92
    const-string v12, "EasAdapter"

    const-string v13, "EVENT@CTRL [sendRecoveryPassword] [pwd]"

    invoke-static {v12, v13}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v12, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v13, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v12, v13}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v11

    .line 95
    .local v11, service:Lcom/android/emailcommon/service/IEmailService;
    if-nez v11, :cond_12

    .line 123
    :cond_11
    return-void

    .line 99
    :cond_12
    new-instance v8, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v12, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v8, v12}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 100
    .local v8, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryPassword()Ljava/lang/String;

    move-result-object v9

    .line 102
    .local v9, password:Ljava/lang/String;
    sget-object v12, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v12

    const-string v13, "com.android.exchange"

    invoke-virtual {v12, v13}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    .line 105
    .local v5, exchangeAccounts:[Landroid/accounts/Account;
    move-object v3, v5

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v7, v3

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2c
    if-ge v6, v7, :cond_11

    aget-object v0, v3, v6

    .line 108
    .local v0, account:Landroid/accounts/Account;
    sget-object v12, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "emailAddress=\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdWhere(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    .line 110
    .local v1, accountId:J
    const-string v12, "EasAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "accountId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-wide/16 v12, 0x0

    cmp-long v12, v1, v12

    if-lez v12, :cond_86

    .line 113
    sget-object v12, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v12

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v10

    .line 114
    .local v10, ps:Lcom/android/emailcommon/service/PolicySet;
    if-eqz v10, :cond_86

    iget-boolean v12, v10, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    if-eqz v12, :cond_86

    .line 116
    :try_start_83
    invoke-interface {v11, v1, v2, v9}, Lcom/android/emailcommon/service/IEmailService;->sendRecoveryPassword(JLjava/lang/String;)V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_86} :catch_89

    .line 105
    .end local v10           #ps:Lcom/android/emailcommon/service/PolicySet;
    :cond_86
    :goto_86
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    .line 117
    .restart local v10       #ps:Lcom/android/emailcommon/service/PolicySet;
    :catch_89
    move-exception v4

    .line 118
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_86
.end method

.method public serviceCheckMail(JJJLcom/android/email/Controller$Result;)V
    .registers 18
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "tag"
    .parameter "callback"

    .prologue
    .line 177
    sget-object v0, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v0, v1}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v9

    .line 178
    .local v9, service:Lcom/android/emailcommon/service/IEmailService;
    if-nez v9, :cond_23

    .line 179
    const-string v0, "EasAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceCheckMail failed since no service, for accountId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_22
    return-void

    .line 183
    :cond_23
    const-string v0, "Controller"

    const-string v1, "SyncManager does auto refresh for exchange accounts. Mark MailService sync complete. Nothing done here."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v0, -0x1

    invoke-direct {v1, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/16 v6, 0x64

    move-object/from16 v0, p7

    move-wide v2, p1

    move-wide v4, p3

    move-wide v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    goto :goto_22
.end method

.method public serviceLogging(I)V
    .registers 6
    .parameter "debugEnabled"

    .prologue
    .line 77
    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 78
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    if-nez v1, :cond_b

    .line 88
    :goto_a
    return-void

    .line 83
    :cond_b
    :try_start_b
    invoke-interface {v1, p1}, Lcom/android/emailcommon/service/IEmailService;->setLogging(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_a

    .line 84
    :catch_f
    move-exception v0

    .line 85
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EasAdapter"

    const-string v3, "EVENT@CTRL [serviceLogging] [RemoteException]"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a
.end method

.method public setMailboxSyncable(JJZ)V
    .registers 9
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "autoPush"

    .prologue
    .line 688
    const-string v0, "EasAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMailboxSyncable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    return-void
.end method

.method public setOutOfOffice(JLcom/android/emailcommon/service/OoODataList;)V
    .registers 8
    .parameter "accountId"
    .parameter "data"

    .prologue
    .line 481
    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 483
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    if-nez v1, :cond_b

    .line 494
    :goto_a
    return-void

    .line 489
    :cond_b
    :try_start_b
    invoke-interface {v1, p1, p2, p3}, Lcom/android/emailcommon/service/IEmailService;->OoOffice(JLcom/android/emailcommon/service/OoODataList;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_a

    .line 490
    :catch_f
    move-exception v0

    .line 491
    .local v0, re:Landroid/os/RemoteException;
    const-string v2, "EasAdapter"

    const-string v3, "EVENT@CONTR [setOutOfOffice] [RemoteException]"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a
.end method

.method public updateMailbox(JJZ)V
    .registers 12
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "userRequest"

    .prologue
    .line 127
    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 128
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_29

    .line 129
    const-string v3, "EasAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMailbox | Invalid account Id - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    const/16 v4, 0x3d

    const/4 v5, -0x1

    invoke-virtual {v3, p3, p4, v4, v5}, Lcom/android/email/Controller$ServiceCallback;->syncMailboxStatus(JII)V

    .line 155
    :goto_28
    return-void

    .line 145
    :cond_29
    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v3, v4}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v2

    .line 149
    .local v2, service:Lcom/android/emailcommon/service/IEmailService;
    :try_start_31
    invoke-interface {v2, p3, p4, p5}, Lcom/android/emailcommon/service/IEmailService;->startSync(JZ)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_28

    .line 151
    :catch_35
    move-exception v1

    .line 152
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "EasAdapter"

    const-string v4, "EVENT@CTRL [updateMailbox] [RemoteException]"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_28
.end method

.method public updateMailboxList(J)V
    .registers 7
    .parameter "accountId"

    .prologue
    .line 160
    sget-object v2, Lcom/android/email/adapter/EasAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/email/adapter/EasAdapter;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 162
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v1, :cond_d

    .line 165
    :try_start_a
    invoke-interface {v1, p1, p2}, Lcom/android/emailcommon/service/IEmailService;->updateFolderList(J)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    .line 171
    :cond_d
    :goto_d
    return-void

    .line 166
    :catch_e
    move-exception v0

    .line 167
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EasAdapter"

    const-string v3, "EVENT@CTRL [updateMailboxList] [RemoteException]"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d
.end method

.method public updateUserProfile(Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .registers 2
    .parameter "profileInfo"

    .prologue
    .line 1150
    return-void
.end method
