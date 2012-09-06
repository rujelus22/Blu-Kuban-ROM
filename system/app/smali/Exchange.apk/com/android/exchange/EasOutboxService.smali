.class public Lcom/android/exchange/EasOutboxService;
.super Lcom/android/exchange/EasSyncService;
.source "EasOutboxService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;,
        Lcom/android/exchange/EasOutboxService$SendMailParser;,
        Lcom/android/exchange/EasOutboxService$SendMailEntity;
    }
.end annotation


# static fields
.field public static final BODY_SOURCE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sourceMessageKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/EasOutboxService;->BODY_SOURCE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V
    .registers 3
    .parameter "_context"
    .parameter "_mailbox"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;J)Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-static {p0, p1, p2}, Lcom/android/exchange/EasOutboxService;->getOriginalMessageInfo(Landroid/content/Context;J)Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getOriginalMessageInfo(Landroid/content/Context;J)Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    .registers 17
    .parameter "context"
    .parameter "msgId"

    .prologue
    .line 245
    const/4 v4, 0x0

    .line 246
    .local v4, itemId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 247
    .local v2, collectionId:Ljava/lang/String;
    const/4 v5, 0x0

    .line 250
    .local v5, longId:Ljava/lang/String;
    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lcom/android/exchange/EasOutboxService;->BODY_SOURCE_PROJECTION:[Ljava/lang/String;

    const-string v10, "messageKey=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {p0, v8, v9, v10, v11}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, cols:[Ljava/lang/String;
    if-eqz v3, :cond_57

    .line 254
    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 256
    .local v6, refId:J
    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "syncServerId"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "mailboxKey"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "protocolSearchInfo"

    aput-object v11, v9, v10

    invoke-static {p0, v8, v6, v7, v9}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 259
    if-eqz v3, :cond_57

    .line 260
    const/4 v8, 0x0

    aget-object v4, v3, v8

    .line 261
    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 263
    .local v0, boxId:J
    sget-object v8, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "serverId"

    aput-object v11, v9, v10

    invoke-static {p0, v8, v0, v1, v9}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 265
    if-eqz v3, :cond_57

    .line 266
    const/4 v8, 0x0

    aget-object v2, v3, v8

    .line 272
    .end local v0           #boxId:J
    .end local v6           #refId:J
    :cond_57
    if-nez v5, :cond_5d

    if-eqz v4, :cond_63

    if-eqz v2, :cond_63

    .line 273
    :cond_5d
    new-instance v8, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;

    invoke-direct {v8, v4, v2, v5}, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :goto_62
    return-object v8

    :cond_63
    const/4 v8, 0x0

    goto :goto_62
.end method

.method private sendCallback(JLjava/lang/String;I)V
    .registers 11
    .parameter "msgId"
    .parameter "subject"
    .parameter "status"

    .prologue
    .line 212
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    const/4 v5, 0x0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->sendMessageStatus(JLjava/lang/String;II)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 216
    :goto_b
    return-void

    .line 213
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method private sendFailed(JI)V
    .registers 7
    .parameter "msgId"
    .parameter "result"

    .prologue
    .line 279
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 280
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "syncServerId"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    iget-object v1, p0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, p1, p2, v0}, Lcom/android/emailcommon/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    .line 282
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 283
    return-void
.end method

.method public static sendMessage(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 7
    .parameter "context"
    .parameter "accountId"
    .parameter "msg"

    .prologue
    .line 505
    const/4 v1, 0x4

    invoke-static {p0, p1, p2, v1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    .line 506
    .local v0, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v0, :cond_10

    .line 507
    iget-wide v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    iput-wide v1, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 508
    iput-wide p1, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 509
    invoke-virtual {p3, p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 511
    :cond_10
    return-void
.end method


# virtual methods
.method generateSmartSendCmd(ZLcom/android/exchange/EasOutboxService$OriginalMessageInfo;)Ljava/lang/String;
    .registers 6
    .parameter "reply"
    .parameter "info"

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .local v0, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_29

    const-string v1, "SmartReply"

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object v1, p2, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;->mLongId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 222
    const-string v1, "&LongId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v1, p2, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;->mLongId:Ljava/lang/String;

    const-string v2, ":"

    invoke-static {v1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :goto_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 220
    :cond_29
    const-string v1, "SmartForward"

    goto :goto_9

    .line 225
    :cond_2c
    const-string v1, "&ItemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-object v1, p2, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;->mItemId:Ljava/lang/String;

    const-string v2, ":"

    invoke-static {v1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const-string v1, "&CollectionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-object v1, p2, Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;->mCollectionId:Ljava/lang/String;

    const-string v2, ":"

    invoke-static {v1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24
.end method

.method public run()V
    .registers 15

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/android/exchange/EasOutboxService;->setupService()Z

    .line 450
    iget-object v0, p0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/EasOutboxService;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0, v1}, Lcom/android/emailcommon/TrafficFlags;->getSmtpFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 451
    iget-object v0, p0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    .line 453
    .local v7, cacheDir:Ljava/io/File;
    :try_start_14
    iget-object v0, p0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasOutboxService;->mDeviceId:Ljava/lang/String;

    .line 455
    iget-object v0, p0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v3, "mailboxKey=? and (syncServerId is null or syncServerId!=1)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v12, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v12, v12, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3a
    .catchall {:try_start_14 .. :try_end_3a} :catchall_12f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3a} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3a} :catch_10b

    move-result-object v6

    .line 460
    .local v6, c:Landroid/database/Cursor;
    :cond_3b
    :try_start_3b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 461
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 462
    .local v9, msgId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-eqz v0, :cond_3b

    .line 463
    iget-object v0, p0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-static {v0, v9, v10}, Lcom/android/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 467
    invoke-virtual {p0, v7, v9, v10}, Lcom/android/exchange/EasOutboxService;->sendMessage(Ljava/io/File;J)I

    move-result v11

    .line 470
    .local v11, result:I
    const/16 v0, 0x16

    if-ne v11, v0, :cond_7f

    .line 471
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I
    :try_end_5f
    .catchall {:try_start_3b .. :try_end_5f} :catchall_c7

    .line 483
    :try_start_5f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_12f
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_10b

    .line 492
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 493
    const-string v0, "Outbox exited with status "

    iget v1, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    .line 494
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #msgId:J
    .end local v11           #result:I
    :goto_7b
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 496
    return-void

    .line 473
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v9       #msgId:J
    .restart local v11       #result:I
    :cond_7f
    const/16 v0, 0x17

    if-ne v11, v0, :cond_a3

    .line 474
    const/4 v0, 0x4

    :try_start_84
    iput v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I
    :try_end_86
    .catchall {:try_start_84 .. :try_end_86} :catchall_c7

    .line 483
    :try_start_86
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_12f
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_10b

    .line 492
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 493
    const-string v0, "Outbox exited with status "

    iget v1, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    goto :goto_7b

    .line 476
    :cond_a3
    const/16 v0, 0x15

    if-ne v11, v0, :cond_3b

    .line 477
    const/4 v0, 0x3

    :try_start_a8
    iput v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I
    :try_end_aa
    .catchall {:try_start_a8 .. :try_end_aa} :catchall_c7

    .line 483
    :try_start_aa
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_12f
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ad} :catch_10b

    .line 492
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 493
    const-string v0, "Outbox exited with status "

    iget v1, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    goto :goto_7b

    .line 483
    .end local v9           #msgId:J
    .end local v11           #result:I
    :catchall_c7
    move-exception v0

    :try_start_c8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_cc
    .catchall {:try_start_c8 .. :try_end_cc} :catchall_12f
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cc} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cc} :catch_10b

    .line 486
    .end local v6           #c:Landroid/database/Cursor;
    :catch_cc
    move-exception v8

    .line 487
    .local v8, e:Ljava/io/IOException;
    const/4 v0, 0x1

    :try_start_ce
    iput v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I
    :try_end_d0
    .catchall {:try_start_ce .. :try_end_d0} :catchall_12f

    .line 492
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 493
    const-string v0, "Outbox exited with status "

    iget v1, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    goto :goto_7b

    .line 483
    .end local v8           #e:Ljava/io/IOException;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_ea
    :try_start_ea
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 485
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I
    :try_end_f0
    .catchall {:try_start_ea .. :try_end_f0} :catchall_12f
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_f0} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_f0} :catch_10b

    .line 492
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 493
    const-string v0, "Outbox exited with status "

    iget v1, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    goto/16 :goto_7b

    .line 488
    .end local v6           #c:Landroid/database/Cursor;
    :catch_10b
    move-exception v8

    .line 489
    .local v8, e:Ljava/lang/Exception;
    :try_start_10c
    const-string v0, "Exception caught in EasOutboxService"

    invoke-virtual {p0, v0, v8}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 490
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I
    :try_end_114
    .catchall {:try_start_10c .. :try_end_114} :catchall_12f

    .line 492
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 493
    const-string v0, "Outbox exited with status "

    iget v1, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    goto/16 :goto_7b

    .line 492
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_12f
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, ": sync finished"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 493
    const-string v1, "Outbox exited with status "

    iget v2, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v1, v2}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    .line 494
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 492
    throw v0
.end method

.method sendMessage(Ljava/io/File;J)I
    .registers 37
    .parameter "cacheDir"
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 298
    const/16 v28, 0x0

    .line 300
    .local v28, result:I
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 302
    const-string v4, "eas_"

    const-string v5, "tmp"

    move-object/from16 v0, p1

    invoke-static {v4, v5, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v30

    .line 305
    .local v30, tmpFile:Ljava/io/File;
    :try_start_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p2

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1ad
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1e} :catch_1a1

    move-result-object v15

    .line 306
    .local v15, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v15, :cond_2d

    const/16 v4, 0x10

    .line 439
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 440
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z

    .line 443
    :cond_2c
    :goto_2c
    return v4

    .line 309
    :cond_2d
    :try_start_2d
    iget v0, v15, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v19, v0

    .line 310
    .local v19, flags:I
    and-int/lit8 v4, v19, 0x1

    if-eqz v4, :cond_15c

    const/16 v26, 0x1

    .line 311
    .local v26, reply:Z
    :goto_37
    and-int/lit8 v4, v19, 0x2

    if-eqz v4, :cond_160

    const/16 v20, 0x1

    .line 312
    .local v20, forward:Z
    :goto_3d
    const/high16 v4, 0x2

    and-int v4, v4, v19

    if-nez v4, :cond_164

    const/16 v21, 0x1

    .line 315
    .local v21, includeQuotedText:Z
    :goto_45
    const/16 v25, 0x0

    .line 317
    .local v25, referenceInfo:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    if-eqz v21, :cond_57

    if-nez v26, :cond_4d

    if-eqz v20, :cond_57

    .line 318
    :cond_4d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p2

    invoke-static {v4, v0, v1}, Lcom/android/exchange/EasOutboxService;->getOriginalMessageInfo(Landroid/content/Context;J)Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;

    move-result-object v25

    .line 321
    :cond_57
    if-eqz v25, :cond_168

    const/4 v8, 0x1

    .line 325
    .local v8, smartSend:Z
    :goto_5a
    if-eqz v20, :cond_67

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasOutboxService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v4, v4, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_67

    .line 326
    const/4 v8, 0x0

    .line 330
    :cond_67
    new-instance v7, Ljava/io/FileOutputStream;

    move-object/from16 v0, v30

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 331
    .local v7, fileOutputStream:Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    move-wide/from16 v5, p2

    invoke-static/range {v4 .. v9}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTo(Landroid/content/Context;JLjava/io/OutputStream;ZZ)V

    .line 332
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 335
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasOutboxService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v31, 0x402c

    cmpl-double v4, v4, v31

    if-ltz v4, :cond_16b

    const/16 v22, 0x1

    .line 339
    .local v22, isEas14:Z
    :goto_8d
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, v30

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 340
    .local v11, fileStream:Ljava/io/FileInputStream;
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 346
    .local v12, fileLength:J
    :goto_98
    const/4 v14, 0x0

    .line 347
    .local v14, modeTag:I
    if-eqz v22, :cond_179

    .line 348
    if-nez v8, :cond_16f

    const/16 v23, 0x0

    .line 350
    .local v23, mode:I
    :goto_9f
    invoke-static {}, Lcom/android/exchange/EasOutboxService$SendMailEntity;->access$100()[I

    move-result-object v4

    aget v14, v4, v23

    .line 351
    new-instance v9, Lcom/android/exchange/EasOutboxService$SendMailEntity;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-direct/range {v9 .. v15}, Lcom/android/exchange/EasOutboxService$SendMailEntity;-><init>(Landroid/content/Context;Ljava/io/FileInputStream;JILcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 357
    .end local v23           #mode:I
    .local v9, inputEntity:Lorg/apache/http/HttpEntity;
    :goto_ae
    const-string v16, "SendMail"

    .line 358
    .local v16, cmd:Ljava/lang/String;
    if-eqz v8, :cond_b8

    .line 360
    if-eqz v22, :cond_184

    .line 361
    if-eqz v26, :cond_180

    const-string v16, "SmartReply"

    .line 368
    :cond_b8
    :goto_b8
    if-nez v22, :cond_cf

    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&SaveInSent=T"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 371
    :cond_cf
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Send cmd: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 374
    const v4, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v9, v4}, Lcom/android/exchange/EasOutboxService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/android/exchange/EasResponse;
    :try_end_f9
    .catchall {:try_start_2d .. :try_end_f9} :catchall_1ad
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_f9} :catch_1a1

    move-result-object v27

    .line 376
    .local v27, resp:Lcom/android/exchange/EasResponse;
    :try_start_fa
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 377
    invoke-virtual/range {v27 .. v27}, Lcom/android/exchange/EasResponse;->getStatus()I
    :try_end_100
    .catchall {:try_start_fa .. :try_end_100} :catchall_240

    move-result v17

    .line 378
    .local v17, code:I
    const/16 v4, 0xc8

    move/from16 v0, v17

    if-ne v0, v4, :cond_1f1

    .line 381
    if-eqz v22, :cond_1b9

    .line 384
    :try_start_109
    new-instance v24, Lcom/android/exchange/EasOutboxService$SendMailParser;

    invoke-virtual/range {v27 .. v27}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v14}, Lcom/android/exchange/EasOutboxService$SendMailParser;-><init>(Ljava/io/InputStream;I)V

    .line 387
    .local v24, p:Lcom/android/exchange/EasOutboxService$SendMailParser;
    invoke-virtual/range {v24 .. v24}, Lcom/android/exchange/EasOutboxService$SendMailParser;->parse()Z

    .line 389
    invoke-virtual/range {v24 .. v24}, Lcom/android/exchange/EasOutboxService$SendMailParser;->getStatus()I

    move-result v29

    .line 390
    .local v29, status:I
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SendMail error, status: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 391
    invoke-static/range {v29 .. v29}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v4

    if-eqz v4, :cond_190

    .line 392
    const/16 v28, 0x17

    .line 400
    :cond_143
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasOutboxService;->sendFailed(JI)V
    :try_end_14c
    .catchall {:try_start_109 .. :try_end_14c} :catchall_240
    .catch Lcom/android/exchange/adapter/Parser$EmptyStreamException; {:try_start_109 .. :try_end_14c} :catch_1b8

    .line 430
    :try_start_14c
    invoke-virtual/range {v27 .. v27}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_14f
    .catchall {:try_start_14c .. :try_end_14f} :catchall_1ad
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_14f} :catch_1a1

    .line 439
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_158

    .line 440
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z

    :cond_158
    move/from16 v4, v28

    .line 401
    goto/16 :goto_2c

    .line 310
    .end local v7           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v8           #smartSend:Z
    .end local v9           #inputEntity:Lorg/apache/http/HttpEntity;
    .end local v11           #fileStream:Ljava/io/FileInputStream;
    .end local v12           #fileLength:J
    .end local v14           #modeTag:I
    .end local v16           #cmd:Ljava/lang/String;
    .end local v17           #code:I
    .end local v20           #forward:Z
    .end local v21           #includeQuotedText:Z
    .end local v22           #isEas14:Z
    .end local v24           #p:Lcom/android/exchange/EasOutboxService$SendMailParser;
    .end local v25           #referenceInfo:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    .end local v26           #reply:Z
    .end local v27           #resp:Lcom/android/exchange/EasResponse;
    .end local v29           #status:I
    :cond_15c
    const/16 v26, 0x0

    goto/16 :goto_37

    .line 311
    .restart local v26       #reply:Z
    :cond_160
    const/16 v20, 0x0

    goto/16 :goto_3d

    .line 312
    .restart local v20       #forward:Z
    :cond_164
    const/16 v21, 0x0

    goto/16 :goto_45

    .line 321
    .restart local v21       #includeQuotedText:Z
    .restart local v25       #referenceInfo:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    :cond_168
    const/4 v8, 0x0

    goto/16 :goto_5a

    .line 335
    .restart local v7       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v8       #smartSend:Z
    :cond_16b
    const/16 v22, 0x0

    goto/16 :goto_8d

    .line 348
    .restart local v11       #fileStream:Ljava/io/FileInputStream;
    .restart local v12       #fileLength:J
    .restart local v14       #modeTag:I
    .restart local v22       #isEas14:Z
    :cond_16f
    if-eqz v26, :cond_175

    const/16 v23, 0x1

    goto/16 :goto_9f

    :cond_175
    const/16 v23, 0x2

    goto/16 :goto_9f

    .line 354
    :cond_179
    :try_start_179
    new-instance v9, Lorg/apache/http/entity/InputStreamEntity;

    invoke-direct {v9, v11, v12, v13}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .restart local v9       #inputEntity:Lorg/apache/http/HttpEntity;
    goto/16 :goto_ae

    .line 361
    .restart local v16       #cmd:Ljava/lang/String;
    :cond_180
    const-string v16, "SmartForward"

    goto/16 :goto_b8

    .line 363
    :cond_184
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasOutboxService;->generateSmartSendCmd(ZLcom/android/exchange/EasOutboxService$OriginalMessageInfo;)Ljava/lang/String;
    :try_end_18d
    .catchall {:try_start_179 .. :try_end_18d} :catchall_1ad
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_18d} :catch_1a1

    move-result-object v16

    goto/16 :goto_b8

    .line 393
    .restart local v17       #code:I
    .restart local v24       #p:Lcom/android/exchange/EasOutboxService$SendMailParser;
    .restart local v27       #resp:Lcom/android/exchange/EasResponse;
    .restart local v29       #status:I
    :cond_190
    const/16 v4, 0x96

    move/from16 v0, v29

    if-ne v0, v4, :cond_143

    if-eqz v8, :cond_143

    .line 396
    :try_start_198
    invoke-virtual/range {v27 .. v27}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_19b
    .catchall {:try_start_198 .. :try_end_19b} :catchall_240
    .catch Lcom/android/exchange/adapter/Parser$EmptyStreamException; {:try_start_198 .. :try_end_19b} :catch_1b8

    .line 397
    const/4 v8, 0x0

    .line 430
    :try_start_19c
    invoke-virtual/range {v27 .. v27}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_19f
    .catchall {:try_start_19c .. :try_end_19f} :catchall_1ad
    .catch Ljava/io/IOException; {:try_start_19c .. :try_end_19f} :catch_1a1

    goto/16 :goto_98

    .line 433
    .end local v7           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v8           #smartSend:Z
    .end local v9           #inputEntity:Lorg/apache/http/HttpEntity;
    .end local v11           #fileStream:Ljava/io/FileInputStream;
    .end local v12           #fileLength:J
    .end local v14           #modeTag:I
    .end local v15           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v16           #cmd:Ljava/lang/String;
    .end local v17           #code:I
    .end local v19           #flags:I
    .end local v20           #forward:Z
    .end local v21           #includeQuotedText:Z
    .end local v22           #isEas14:Z
    .end local v24           #p:Lcom/android/exchange/EasOutboxService$SendMailParser;
    .end local v25           #referenceInfo:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    .end local v26           #reply:Z
    .end local v27           #resp:Lcom/android/exchange/EasResponse;
    .end local v29           #status:I
    :catch_1a1
    move-exception v18

    .line 435
    .local v18, e:Ljava/io/IOException;
    const/4 v4, 0x0

    const/16 v5, 0x20

    :try_start_1a5
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 436
    throw v18
    :try_end_1ad
    .catchall {:try_start_1a5 .. :try_end_1ad} :catchall_1ad

    .line 439
    .end local v18           #e:Ljava/io/IOException;
    :catchall_1ad
    move-exception v4

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1b7

    .line 440
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z

    .line 439
    :cond_1b7
    throw v4

    .line 402
    .restart local v7       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v8       #smartSend:Z
    .restart local v9       #inputEntity:Lorg/apache/http/HttpEntity;
    .restart local v11       #fileStream:Ljava/io/FileInputStream;
    .restart local v12       #fileLength:J
    .restart local v14       #modeTag:I
    .restart local v15       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v16       #cmd:Ljava/lang/String;
    .restart local v17       #code:I
    .restart local v19       #flags:I
    .restart local v20       #forward:Z
    .restart local v21       #includeQuotedText:Z
    .restart local v22       #isEas14:Z
    .restart local v25       #referenceInfo:Lcom/android/exchange/EasOutboxService$OriginalMessageInfo;
    .restart local v26       #reply:Z
    .restart local v27       #resp:Lcom/android/exchange/EasResponse;
    :catch_1b8
    move-exception v4

    .line 408
    :cond_1b9
    const/4 v4, 0x1

    :try_start_1ba
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Deleting message..."

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/EasOutboxService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v6, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 412
    const-wide/16 v4, -0x1

    iget-object v6, v15, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v10}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_1e1
    .catchall {:try_start_1ba .. :try_end_1e1} :catchall_240

    .line 430
    :try_start_1e1
    invoke-virtual/range {v27 .. v27}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_1e4
    .catchall {:try_start_1e1 .. :try_end_1e4} :catchall_1ad
    .catch Ljava/io/IOException; {:try_start_1e1 .. :try_end_1e4} :catch_1a1

    .line 439
    :goto_1e4
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1ed

    .line 440
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z

    :cond_1ed
    move/from16 v4, v28

    .line 443
    goto/16 :goto_2c

    .line 414
    :cond_1f1
    const/16 v4, 0x1f4

    move/from16 v0, v17

    if-ne v0, v4, :cond_202

    if-eqz v8, :cond_202

    .line 417
    :try_start_1f9
    invoke-virtual/range {v27 .. v27}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_1fc
    .catchall {:try_start_1f9 .. :try_end_1fc} :catchall_240

    .line 418
    const/4 v8, 0x0

    .line 430
    :try_start_1fd
    invoke-virtual/range {v27 .. v27}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_200
    .catchall {:try_start_1fd .. :try_end_200} :catchall_1ad
    .catch Ljava/io/IOException; {:try_start_1fd .. :try_end_200} :catch_1a1

    goto/16 :goto_98

    .line 420
    :cond_202
    const/4 v4, 0x1

    :try_start_203
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Message sending failed, code: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 421
    invoke-static/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z

    move-result v4

    if-eqz v4, :cond_237

    .line 422
    const/16 v28, 0x16

    .line 426
    :cond_22a
    :goto_22a
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/EasOutboxService;->sendFailed(JI)V
    :try_end_233
    .catchall {:try_start_203 .. :try_end_233} :catchall_240

    .line 430
    :try_start_233
    invoke-virtual/range {v27 .. v27}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_236
    .catchall {:try_start_233 .. :try_end_236} :catchall_1ad
    .catch Ljava/io/IOException; {:try_start_233 .. :try_end_236} :catch_1a1

    goto :goto_1e4

    .line 423
    :cond_237
    :try_start_237
    invoke-static/range {v17 .. v17}, Lcom/android/exchange/EasResponse;->isProvisionError(I)Z
    :try_end_23a
    .catchall {:try_start_237 .. :try_end_23a} :catchall_240

    move-result v4

    if-eqz v4, :cond_22a

    .line 424
    const/16 v28, 0x17

    goto :goto_22a

    .line 430
    .end local v17           #code:I
    :catchall_240
    move-exception v4

    :try_start_241
    invoke-virtual/range {v27 .. v27}, Lcom/android/exchange/EasResponse;->close()V

    throw v4
    :try_end_245
    .catchall {:try_start_241 .. :try_end_245} :catchall_1ad
    .catch Ljava/io/IOException; {:try_start_241 .. :try_end_245} :catch_1a1
.end method
