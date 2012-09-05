.class public abstract Lcom/android/exchange/adapter/AbstractSyncParser;
.super Lcom/android/exchange/adapter/AbstractUtiltyParser;
.source "AbstractSyncParser.java"


# instance fields
.field private final DELETE_MAILBOX_OF_TYPE:Ljava/lang/String;

.field cv:Landroid/content/ContentValues;

.field interval:I

.field protected mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field protected mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

.field private mBindArguments:[Ljava/lang/String;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mContext:Landroid/content/Context;

.field private mLooping:Z

.field protected mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field protected mService:Lcom/android/exchange/EasSyncService;

.field mailboxUpdated:Z

.field protected multiFolder:Z

.field newKey:Ljava/lang/String;

.field protected serverId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/Parser;Lcom/android/exchange/adapter/AbstractSyncAdapter;Z)V
    .registers 8
    .parameter "parser"
    .parameter "adapter"
    .parameter "resumeStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 106
    invoke-direct {p0, p1, p3}, Lcom/android/exchange/adapter/AbstractUtiltyParser;-><init>(Lcom/android/exchange/adapter/Parser;Z)V

    .line 58
    iput-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    .line 63
    iput-boolean v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->multiFolder:Z

    .line 64
    iput-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->serverId:Ljava/lang/String;

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mBindArguments:[Ljava/lang/String;

    .line 67
    iput v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->interval:I

    .line 68
    iput-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->cv:Landroid/content/ContentValues;

    .line 69
    iput-boolean v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mailboxUpdated:Z

    .line 73
    iput-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->newKey:Ljava/lang/String;

    .line 77
    const-string v0, "accountKey=? and type=?"

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->DELETE_MAILBOX_OF_TYPE:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    .line 108
    iget-object v0, p2, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 109
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    .line 110
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_34

    .line 111
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    .line 112
    :cond_34
    iget-object v0, p2, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 113
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 116
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    instance-of v0, v0, Lcom/android/exchange/adapter/SyncwithHBIAdapter;

    if-eqz v0, :cond_53

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->multiFolder:Z

    .line 119
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mBindArguments:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 123
    :cond_53
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .registers 7
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractUtiltyParser;-><init>(Ljava/io/InputStream;)V

    .line 58
    iput-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    .line 63
    iput-boolean v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->multiFolder:Z

    .line 64
    iput-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->serverId:Ljava/lang/String;

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mBindArguments:[Ljava/lang/String;

    .line 67
    iput v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->interval:I

    .line 68
    iput-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->cv:Landroid/content/ContentValues;

    .line 69
    iput-boolean v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mailboxUpdated:Z

    .line 73
    iput-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->newKey:Ljava/lang/String;

    .line 77
    const-string v0, "accountKey=? and type=?"

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->DELETE_MAILBOX_OF_TYPE:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    .line 89
    iget-object v0, p2, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 90
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    sget-object v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    .line 91
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_34

    .line 92
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    .line 93
    :cond_34
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 94
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 97
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    instance-of v0, v0, Lcom/android/exchange/adapter/SyncwithHBIAdapter;

    if-eqz v0, :cond_55

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->multiFolder:Z

    .line 100
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mBindArguments:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 104
    :cond_55
    return-void
.end method

.method private handleStatus()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 368
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 371
    .local v0, errorTemp:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v1

    .line 372
    .local v1, status:I
    new-array v2, v5, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AbstractSyncParser.handleStatus(): status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 373
    if-eq v1, v5, :cond_cf

    .line 374
    const-string v2, "Sync failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 377
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v6, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 382
    const/4 v2, 0x3

    if-eq v1, v2, :cond_49

    invoke-static {v1}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isBadSyncKey(I)Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 385
    :cond_49
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    const-string v3, "0"

    invoke-virtual {v2, v3, v6}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V

    .line 388
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    const/4 v3, -0x2

    iput v3, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 389
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v3, "Bad sync key; RESET and delete data"

    invoke-virtual {v2, v3}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 394
    const-string v2, "AbstractSyncParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mailbox Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v2, "AbstractSyncParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mailbox Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v2, "AbstractSyncParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Account Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    invoke-virtual {v2}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->wipe()V

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad Sync Key for mailbox type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 467
    :cond_cf
    :goto_cf
    return-void

    .line 413
    :cond_d0
    const/16 v2, 0x8

    if-ne v1, v2, :cond_de

    .line 418
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_cf

    .line 424
    :cond_de
    const/16 v2, 0xc

    if-ne v1, v2, :cond_f3

    .line 425
    const-string v2, "AbstractSyncParser"

    const-string v3, "protocol_12.1:status[12] - folder hierarchy has changed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_cf

    .line 428
    :cond_f3
    const/16 v2, 0xd

    if-ne v1, v2, :cond_ff

    .line 429
    const-string v2, "AbstractSyncParser"

    const-string v3, "protocol_12.1:status[13] - server can\'t process empty sync request"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf

    .line 431
    :cond_ff
    const/16 v2, 0xe

    if-ne v1, v2, :cond_10b

    .line 432
    const-string v2, "AbstractSyncParser"

    const-string v3, "protocol_12.1:status[14] - wait-interval is out of range"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf

    .line 435
    :cond_10b
    const/16 v2, 0xf

    if-ne v1, v2, :cond_117

    .line 436
    const-string v2, "AbstractSyncParser"

    const-string v3, "protocol_12.1:status[15] - too many folders for server to moniter their changes"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf

    .line 439
    :cond_117
    const/16 v2, 0x10

    if-ne v1, v2, :cond_123

    .line 440
    const-string v2, "AbstractSyncParser"

    const-string v3, "protocol_12.1:status[16] - indeterminate state"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf

    .line 444
    :cond_123
    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/AbstractSyncParser;->isProvisioningStatus(I)Z

    move-result v2

    if-eqz v2, :cond_13a

    .line 445
    const-string v2, "AbstractSyncParser"

    const-string v3, "protocol_14.0:status[142/143/144] - Provisioning needed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iput-boolean v5, v2, Lcom/android/exchange/EasSyncService;->mEasNeedsProvisioning:Z

    .line 447
    new-instance v2, Lcom/android/exchange/CommandStatusException;

    invoke-direct {v2, v1}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    throw v2

    .line 451
    :cond_13a
    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/AbstractSyncParser;->isDeviceAccessDenied(I)Z

    move-result v2

    if-eqz v2, :cond_153

    .line 452
    const-string v2, "AbstractSyncParser"

    const-string v3, "AbstractSyncParser::parse() - Received status 129, to Block device "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v2, Lcom/android/emailcommon/utility/DeviceAccessException;

    const v3, 0x40001

    const v4, 0x7f060014

    invoke-direct {v2, v3, v4}, Lcom/android/emailcommon/utility/DeviceAccessException;-><init>(II)V

    throw v2

    .line 460
    :cond_153
    const-string v2, "AbstractSyncParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exchange response status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v2, Lcom/android/exchange/CommandStatusException;

    invoke-direct {v2, v1}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    throw v2
.end method


# virtual methods
.method public abstract commandsParser()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation
.end method

.method public abstract commit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public isLooping()Z
    .registers 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mLooping:Z

    return v0
.end method

.method mailBoxUpdate()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 332
    const/4 v0, 0x0

    .line 335
    .local v0, abortSyncs:Z
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    iget v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->interval:I

    if-eq v1, v2, :cond_4c

    .line 336
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->cv:Landroid/content/ContentValues;

    const-string v2, "syncInterval"

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    iput-boolean v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mailboxUpdated:Z

    .line 350
    :cond_1c
    :goto_1c
    iget-boolean v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mailboxUpdated:Z

    if-eqz v1, :cond_39

    .line 351
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 352
    :try_start_27
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v1

    if-nez v1, :cond_38

    .line 353
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->cv:Landroid/content/ContentValues;

    invoke-virtual {v1, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 355
    :cond_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_27 .. :try_end_39} :catchall_84

    .line 358
    :cond_39
    if-eqz v0, :cond_4b

    .line 359
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "Aborting account syncs due to mailbox change to ping..."

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->stopAccountSyncs(J)V

    .line 362
    :cond_4b
    return-void

    .line 340
    :cond_4c
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget v1, v1, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    if-lez v1, :cond_1c

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1c

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    if-lez v1, :cond_1c

    .line 343
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Changes found to ping loop mailbox "

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, ": will ping."

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->cv:Landroid/content/ContentValues;

    const-string v2, "syncInterval"

    const/4 v3, -0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    iput-boolean v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mailboxUpdated:Z

    .line 347
    const/4 v0, 0x1

    goto :goto_1c

    .line 355
    :catchall_84
    move-exception v1

    :try_start_85
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v1
.end method

.method public parse()Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    const/4 v14, -0x2

    const/4 v13, -0x3

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 171
    const/4 v8, 0x0

    .line 172
    .local v8, moreAvailable:Z
    const/4 v9, 0x0

    .line 173
    .local v9, newSyncKey:Z
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v7, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 174
    .local v7, interval:I
    iput-boolean v11, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mLooping:Z

    .line 176
    invoke-virtual {p0, v11}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1a

    .line 177
    new-instance v0, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v0

    .line 180
    :cond_1a
    iput-boolean v11, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mailboxUpdated:Z

    .line 181
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->cv:Landroid/content/ContentValues;

    .line 184
    :cond_23
    :goto_23
    invoke-virtual {p0, v11}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v0

    if-eq v0, v12, :cond_1f1

    .line 192
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_33

    .line 193
    invoke-direct {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->handleStatus()V

    goto :goto_23

    .line 194
    :cond_33
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_23

    .line 195
    :cond_39
    :goto_39
    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v0

    if-eq v0, v12, :cond_23

    .line 196
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1ec

    .line 197
    :cond_47
    :goto_47
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v0

    if-eq v0, v12, :cond_39

    .line 198
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_59

    .line 199
    invoke-direct {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->handleStatus()V

    goto :goto_47

    .line 202
    :cond_59
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_166

    .line 204
    const-string v0, "saritha"

    const-string v1, "sync collection id"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->serverId:Ljava/lang/String;

    if-eqz v0, :cond_85

    .line 206
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->commit()V

    .line 207
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->mailBoxUpdate()V

    .line 208
    if-ne v8, v10, :cond_85

    .line 209
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMoreAvailableSyncHBI:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_85
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->serverId:Ljava/lang/String;

    .line 214
    const-string v0, "saritha"

    const-string v1, "sync collection id"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v0, "saritha"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sync collection id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->serverId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mBindArguments:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->serverId:Ljava/lang/String;

    aput-object v1, v0, v10

    .line 218
    iget-boolean v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->multiFolder:Z

    if-eqz v0, :cond_47

    .line 220
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? and serverId=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 227
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_10d

    :try_start_c7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 228
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 232
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object v1, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 233
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v7, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 234
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    .line 235
    const/4 v8, 0x0

    .line 238
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->cv:Landroid/content/ContentValues;

    .line 239
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Parsed key for "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ": "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->newKey:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_10d
    .catchall {:try_start_c7 .. :try_end_10d} :catchall_159

    .line 245
    :cond_10d
    if-eqz v6, :cond_118

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_118

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_118
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->newKey:Ljava/lang/String;

    if-eqz v0, :cond_154

    .line 250
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 254
    const/4 v8, 0x1

    .line 256
    :cond_12b
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->newKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14a

    .line 257
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->newKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v10}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V

    .line 258
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->cv:Landroid/content/ContentValues;

    const-string v1, "syncKey"

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->newKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iput-boolean v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mailboxUpdated:Z

    .line 261
    const/4 v9, 0x1

    .line 265
    :cond_14a
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    if-ne v0, v14, :cond_154

    .line 266
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput v13, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 269
    :cond_154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->newKey:Ljava/lang/String;

    goto/16 :goto_47

    .line 245
    :catchall_159
    move-exception v0

    if-eqz v6, :cond_165

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_165

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_165
    throw v0

    .line 272
    .end local v6           #c:Landroid/database/Cursor;
    :cond_166
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_171

    .line 273
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->commandsParser()V

    goto/16 :goto_47

    .line 274
    :cond_171
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_17b

    .line 275
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->responsesParser()V

    goto/16 :goto_47

    .line 276
    :cond_17b
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_184

    .line 277
    const/4 v8, 0x1

    goto/16 :goto_47

    .line 278
    :cond_184
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1e7

    .line 279
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->newKey:Ljava/lang/String;

    .line 282
    iget-boolean v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->multiFolder:Z

    if-nez v0, :cond_47

    .line 283
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    .line 284
    const/4 v8, 0x1

    .line 287
    :cond_1a3
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Parsed key for "

    aput-object v1, v0, v11

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v1, v0, v10

    const/4 v1, 0x2

    const-string v2, ": "

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->newKey:Ljava/lang/String;

    aput-object v1, v0, v12

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->newKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1db

    .line 289
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->newKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v10}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V

    .line 290
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->cv:Landroid/content/ContentValues;

    const-string v1, "syncKey"

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->newKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iput-boolean v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mailboxUpdated:Z

    .line 292
    const/4 v9, 0x1

    .line 296
    :cond_1db
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    if-ne v0, v14, :cond_47

    .line 297
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput v13, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    goto/16 :goto_47

    .line 301
    :cond_1e7
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto/16 :goto_47

    .line 305
    :cond_1ec
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto/16 :goto_39

    .line 312
    :cond_1f1
    if-eqz v8, :cond_200

    if-nez v9, :cond_200

    .line 313
    new-array v0, v10, [Ljava/lang/String;

    const-string v1, "!! SyncKey hasn\'t changed, setting moreAvailable = false"

    aput-object v1, v0, v11

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 314
    iput-boolean v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mLooping:Z

    .line 318
    :cond_200
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->commit()V

    .line 320
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->mailBoxUpdate()V

    .line 321
    if-ne v8, v10, :cond_21b

    .line 322
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMoreAvailableSyncHBI:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :cond_21b
    new-array v0, v10, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning moreAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 327
    return v8
.end method

.method public abstract responsesParser()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public skipParser(I)V
    .registers 4
    .parameter "endTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    .line 158
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto :goto_0

    .line 160
    :cond_b
    return-void
.end method

.method userLog(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .parameter "string"
    .parameter "num"
    .parameter "string2"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 476
    return-void
.end method

.method varargs userLog([Ljava/lang/String;)V
    .registers 3
    .parameter "strings"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0, p1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 472
    return-void
.end method
