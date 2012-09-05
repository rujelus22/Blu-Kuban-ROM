.class public Lcom/android/exchange/adapter/FolderMoveAdapter;
.super Lcom/android/exchange/adapter/AbstractCommandAdapter;
.source "FolderMoveAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;
    }
.end annotation


# instance fields
.field public final CODE_FOLDER_CREATE_ACCESS_DENIED:I

.field public final CODE_FOLDER_UPDATE_FOLDER_NOT_EXISTS:I

.field public final CODE_FOLDER_UPDATE_INVALID_SYNC_KEY:I

.field public final CODE_FOLDER_UPDATE_MALFORMED_REQUEST:I

.field public final CODE_FOLDER_UPDATE_NAME_EXISTS:I

.field public final CODE_FOLDER_UPDATE_PARENT_FOLDER_NOT_FOUND:I

.field public final CODE_FOLDER_UPDATE_SERVER_ERROR:I

.field public final CODE_FOLDER_UPDATE_SUCCESS:I

.field public final CODE_FOLDER_UPDATE_SYSTEM_FOLDER:I

.field public final CODE_FOLDER_UPDATE_TIME_OUT:I

.field public final CODE_FOLDER_UPDATE_UNKNOWN_ERROR:I

.field private TAG:Ljava/lang/String;

.field private mDoNotRetry:Z

.field mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

.field private mToMailboxParentId:Ljava/lang/String;

.field private mToMailboxParentKey:J


# direct methods
.method public constructor <init>(Lcom/android/exchange/EasSyncService;Ljava/lang/String;)V
    .registers 10
    .parameter "service"
    .parameter "toMailboxParentId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractCommandAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 29
    const-string v0, "FolderMoveAdapter"

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->TAG:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    .line 32
    iput v5, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->CODE_FOLDER_UPDATE_SUCCESS:I

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->CODE_FOLDER_UPDATE_NAME_EXISTS:I

    .line 36
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->CODE_FOLDER_UPDATE_SYSTEM_FOLDER:I

    .line 38
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->CODE_FOLDER_UPDATE_FOLDER_NOT_EXISTS:I

    .line 40
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->CODE_FOLDER_UPDATE_PARENT_FOLDER_NOT_FOUND:I

    .line 42
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->CODE_FOLDER_UPDATE_SERVER_ERROR:I

    .line 44
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->CODE_FOLDER_CREATE_ACCESS_DENIED:I

    .line 46
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->CODE_FOLDER_UPDATE_TIME_OUT:I

    .line 48
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->CODE_FOLDER_UPDATE_INVALID_SYNC_KEY:I

    .line 50
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->CODE_FOLDER_UPDATE_MALFORMED_REQUEST:I

    .line 52
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->CODE_FOLDER_UPDATE_UNKNOWN_ERROR:I

    .line 54
    iput-object v1, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->mToMailboxParentId:Ljava/lang/String;

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->mToMailboxParentKey:J

    .line 57
    iput-boolean v4, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->mDoNotRetry:Z

    .line 61
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->TAG:Ljava/lang/String;

    const-string v1, "FolderUpdateAdapter.FolderUpdateAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iput-object p2, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->mToMailboxParentId:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->mToMailboxParentId:Ljava/lang/String;

    if-eqz v0, :cond_97

    .line 64
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    .line 65
    .local v2, proj:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serverId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->mToMailboxParentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "accountKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 69
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_7b
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 70
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 71
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->mToMailboxParentKey:J
    :try_end_92
    .catchall {:try_start_7b .. :try_end_92} :catchall_98
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_92} :catch_9f

    .line 76
    :cond_92
    if-eqz v6, :cond_97

    .line 77
    :goto_94
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 80
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_97
    return-void

    .line 76
    .restart local v2       #proj:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_98
    move-exception v0

    if-eqz v6, :cond_9e

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 76
    :cond_9e
    throw v0

    .line 73
    :catch_9f
    move-exception v0

    .line 76
    if-eqz v6, :cond_97

    goto :goto_94
.end method

.method static synthetic access$000(Lcom/android/exchange/adapter/FolderMoveAdapter;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exchange/adapter/FolderMoveAdapter;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->mToMailboxParentId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exchange/adapter/FolderMoveAdapter;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->mToMailboxParentKey:J

    return-wide v0
.end method

.method private repairParentKey(J)V
    .registers 9
    .parameter "parentKey"

    .prologue
    const/4 v5, 0x0

    .line 83
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "parentKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 87
    return-void
.end method


# virtual methods
.method public callback(I)V
    .registers 6
    .parameter "status"

    .prologue
    .line 112
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/android/emailcommon/service/IEmailServiceCallback;->folderCommandStatus(IJI)V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->mDoNotRetry:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 117
    :goto_f
    return-void

    .line 115
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method public cleanup()V
    .registers 1

    .prologue
    .line 152
    return-void
.end method

.method public getCollectionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCommandName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->TAG:Ljava/lang/String;

    const-string v1, "FolderMoveAdapter.getCommandName: FolderUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v0, "FolderUpdate"

    return-object v0
.end method

.method public hasChangedItems()Z
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 90
    iget-boolean v2, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->mDoNotRetry:Z

    if-ne v2, v1, :cond_9

    .line 107
    :goto_8
    return v0

    .line 92
    :cond_9
    iget-object v2, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->mToMailboxParentId:Ljava/lang/String;

    if-nez v2, :cond_23

    .line 93
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    if-nez v2, :cond_21

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_21

    .line 94
    invoke-direct {p0, v4, v5}, Lcom/android/exchange/adapter/FolderMoveAdapter;->repairParentKey(J)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/FolderMoveAdapter;->callback(I)V

    :cond_21
    move v0, v1

    .line 107
    goto :goto_8

    .line 97
    :cond_23
    iget-object v2, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->mToMailboxParentId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    iget-wide v4, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->mToMailboxParentKey:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3d

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/FolderMoveAdapter;->callback(I)V

    goto :goto_8

    .line 101
    :cond_3d
    iget-object v2, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->mToMailboxParentId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    iget-wide v4, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->mToMailboxParentKey:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_21

    .line 103
    iget-wide v1, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->mToMailboxParentKey:J

    invoke-direct {p0, v1, v2}, Lcom/android/exchange/adapter/FolderMoveAdapter;->repairParentKey(J)V

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/FolderMoveAdapter;->callback(I)V

    goto :goto_8
.end method

.method public isSyncable()Z
    .registers 2

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .registers 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;-><init>(Lcom/android/exchange/adapter/FolderMoveAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractCommandAdapter;)V

    .line 144
    .local v0, parser:Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/FolderMoveAdapter$FolderMoveParser;->parse()Z

    move-result v1

    return v1
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .registers 6
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->mToMailboxParentId:Ljava/lang/String;

    .line 126
    .local v0, parentId:Ljava/lang/String;
    if-nez v0, :cond_6

    .line 127
    const-string v0, "0"

    .line 128
    :cond_6
    if-eqz v0, :cond_3e

    .line 129
    const/16 v1, 0x1d5

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x1d2

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x1c8

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x1c9

    invoke-virtual {v1, v2, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x1c7

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 134
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->TAG:Ljava/lang/String;

    const-string v2, "FolderMoveAdapter.FolderMoveAdapter.sendLocalChanges. "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v1, 0x1

    .line 138
    :goto_3d
    return v1

    :cond_3e
    const/4 v1, 0x0

    goto :goto_3d
.end method

.method public wipe()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 163
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_35

    .line 164
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDstServerId:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mNewDisplayName:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 169
    :cond_35
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderMoveAdapter;->TAG:Ljava/lang/String;

    const-string v1, "FolderMoveAdapter.FolderMoveParser.wipe finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method
