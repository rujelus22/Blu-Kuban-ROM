.class public Lcom/android/exchange/adapter/FolderDeleteAdapter;
.super Lcom/android/exchange/adapter/AbstractCommandAdapter;
.source "FolderDeleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;
    }
.end annotation


# instance fields
.field public final CODE_FOLDER_CREATE_ACCESS_DENIED:I

.field public final CODE_FOLDER_DELETE_FOLDER_NOT_EXISTS:I

.field public final CODE_FOLDER_DELETE_INVALID_SYNC_KEY:I

.field public final CODE_FOLDER_DELETE_MALFORMED_REQUEST:I

.field public final CODE_FOLDER_DELETE_SERVER_ERROR:I

.field public final CODE_FOLDER_DELETE_SUCCESS:I

.field public final CODE_FOLDER_DELETE_SYSTEM_FOLDER:I

.field public final CODE_FOLDER_DELETE_TIME_OUT:I

.field public final CODE_FOLDER_DELETE_UNKNOWN_ERROR:I

.field private mDoNotRetry:Z

.field mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

.field private mServerId:Ljava/lang/String;

.field private thisMailboxChanged:I

.field private thisMailboxId:J


# direct methods
.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .registers 5
    .parameter "service"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractCommandAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->CODE_FOLDER_DELETE_SUCCESS:I

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->CODE_FOLDER_DELETE_SYSTEM_FOLDER:I

    .line 37
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->CODE_FOLDER_DELETE_FOLDER_NOT_EXISTS:I

    .line 39
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->CODE_FOLDER_DELETE_SERVER_ERROR:I

    .line 44
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->CODE_FOLDER_CREATE_ACCESS_DENIED:I

    .line 47
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->CODE_FOLDER_DELETE_TIME_OUT:I

    .line 49
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->CODE_FOLDER_DELETE_INVALID_SYNC_KEY:I

    .line 51
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->CODE_FOLDER_DELETE_MALFORMED_REQUEST:I

    .line 53
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->CODE_FOLDER_DELETE_UNKNOWN_ERROR:I

    .line 55
    iput-object v1, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    .line 57
    iput-object v1, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mServerId:Ljava/lang/String;

    .line 60
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->thisMailboxId:J

    .line 62
    iput v2, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->thisMailboxChanged:I

    .line 64
    iput-boolean v2, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mDoNotRetry:Z

    .line 68
    const-string v0, "Mahskyript"

    const-string v1, "FolderDeleteAdapter.FolderDeleteAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/adapter/FolderDeleteAdapter;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mServerId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exchange/adapter/FolderDeleteAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/exchange/adapter/FolderDeleteAdapter;->deleteLocal()V

    return-void
.end method

.method private deleteLocal()V
    .registers 6

    .prologue
    .line 130
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 132
    .local v1, uri:Landroid/net/Uri;
    :try_start_a
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_12

    .line 136
    :goto_11
    return-void

    .line 133
    :catch_12
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method


# virtual methods
.method public callback(I)V
    .registers 6
    .parameter "status"

    .prologue
    .line 144
    const-string v0, "Mahskyript"

    const-string v1, "FolderDeleteAdapter.callback "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :try_start_7
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/android/emailcommon/service/IEmailServiceCallback;->folderCommandStatus(IJI)V

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mDoNotRetry:Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_17

    .line 151
    :goto_16
    return-void

    .line 149
    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method public cleanup()V
    .registers 1

    .prologue
    .line 105
    return-void
.end method

.method public getCollectionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCommandName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 154
    const-string v0, "Mahskyript"

    const-string v1, "FolderDeleteAdapter.getCommandName: FolderDelete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v0, "FolderDelete"

    return-object v0
.end method

.method public hasChangedItems()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    iget-boolean v2, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mDoNotRetry:Z

    if-ne v2, v0, :cond_7

    .line 140
    :goto_6
    return v1

    :cond_7
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    if-eqz v2, :cond_f

    :goto_d
    move v1, v0

    goto :goto_6

    :cond_f
    move v0, v1

    goto :goto_d
.end method

.method public isSyncable()Z
    .registers 3

    .prologue
    .line 72
    const-string v0, "Mahskyript"

    const-string v1, "FolderDeleteAdapter.isSyncable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .registers 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;-><init>(Lcom/android/exchange/adapter/FolderDeleteAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractCommandAdapter;)V

    .line 94
    .local v0, parser:Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/FolderDeleteAdapter$FolderDeleteParser;->parse()Z

    move-result v1

    return v1
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .registers 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    const/16 v0, 0x1d4

    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x1d2

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    const/16 v1, 0x1c8

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 82
    const-string v0, "Mahskyript"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FolderDeleteAdapter.sendLocalChanges. Deleting item serverId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v0, "Mahskyript"

    const-string v1, "FolderDeleteAdapter.sendLocalChanges Nothing to delete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public wipe()V
    .registers 7

    .prologue
    .line 114
    iget-wide v1, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->thisMailboxId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5f

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_5f

    .line 115
    const-string v1, "FolderDeleteAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wipe(). Marking this mailbox:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->thisMailboxId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as not deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget v1, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->thisMailboxChanged:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->thisMailboxChanged:I

    .line 118
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 119
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "flagChanged"

    iget v2, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->thisMailboxChanged:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/exchange/adapter/FolderDeleteAdapter;->thisMailboxId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 123
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_5f
    return-void
.end method
