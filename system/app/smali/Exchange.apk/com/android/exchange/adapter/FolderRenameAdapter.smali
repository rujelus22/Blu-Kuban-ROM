.class public Lcom/android/exchange/adapter/FolderRenameAdapter;
.super Lcom/android/exchange/adapter/AbstractCommandAdapter;
.source "FolderRenameAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;
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

.field private mToName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/exchange/EasSyncService;Ljava/lang/String;)V
    .registers 5
    .parameter "service"
    .parameter "toName"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractCommandAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 28
    const-string v0, "FolderRenameAdapter"

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->TAG:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->CODE_FOLDER_UPDATE_SUCCESS:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->CODE_FOLDER_UPDATE_NAME_EXISTS:I

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->CODE_FOLDER_UPDATE_SYSTEM_FOLDER:I

    .line 37
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->CODE_FOLDER_UPDATE_FOLDER_NOT_EXISTS:I

    .line 39
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->CODE_FOLDER_UPDATE_PARENT_FOLDER_NOT_FOUND:I

    .line 41
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->CODE_FOLDER_UPDATE_SERVER_ERROR:I

    .line 43
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->CODE_FOLDER_CREATE_ACCESS_DENIED:I

    .line 45
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->CODE_FOLDER_UPDATE_TIME_OUT:I

    .line 47
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->CODE_FOLDER_UPDATE_INVALID_SYNC_KEY:I

    .line 49
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->CODE_FOLDER_UPDATE_MALFORMED_REQUEST:I

    .line 51
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->CODE_FOLDER_UPDATE_UNKNOWN_ERROR:I

    .line 53
    iput-object v1, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->mToName:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->mDoNotRetry:Z

    .line 59
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->TAG:Ljava/lang/String;

    const-string v1, "FolderRenameAdapter.FolderRenameAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object p2, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->mToName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/adapter/FolderRenameAdapter;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exchange/adapter/FolderRenameAdapter;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->mToName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public callback(I)V
    .registers 6
    .parameter "status"

    .prologue
    .line 71
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/android/emailcommon/service/IEmailServiceCallback;->folderCommandStatus(IJI)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->mDoNotRetry:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 76
    :goto_f
    return-void

    .line 74
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method public cleanup()V
    .registers 1

    .prologue
    .line 113
    return-void
.end method

.method public getCollectionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCommandName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->TAG:Ljava/lang/String;

    const-string v1, "FolderRenameAdapter.getCommandName: FolderUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v0, "FolderUpdate"

    return-object v0
.end method

.method public hasChangedItems()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    iget-boolean v2, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->mDoNotRetry:Z

    if-ne v2, v0, :cond_7

    .line 66
    :goto_6
    return v1

    :cond_7
    iget-object v2, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->mToName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    :goto_13
    move v1, v0

    goto :goto_6

    :cond_15
    move v0, v1

    goto :goto_13
.end method

.method public isSyncable()Z
    .registers 2

    .prologue
    .line 116
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
    .line 104
    new-instance v0, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;-><init>(Lcom/android/exchange/adapter/FolderRenameAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractCommandAdapter;)V

    .line 105
    .local v0, parser:Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/FolderRenameAdapter$FolderRenameParser;->parse()Z

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
    .line 84
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->mToName:Ljava/lang/String;

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->mToName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 85
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    .line 86
    .local v0, parentServerId:Ljava/lang/String;
    if-nez v0, :cond_14

    .line 87
    const-string v0, "0"

    .line 89
    :cond_14
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

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->mToName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 94
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FolderRenameAdapter.FolderRenameAdapter.sendLocalChanges. from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->mToName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v1, 0x1

    .line 99
    .end local v0           #parentServerId:Ljava/lang/String;
    :goto_68
    return v1

    :cond_69
    const/4 v1, 0x0

    goto :goto_68
.end method

.method public wipe()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 124
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_35

    .line 125
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDstServerId:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mNewDisplayName:Ljava/lang/String;

    .line 127
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

    .line 130
    :cond_35
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderRenameAdapter;->TAG:Ljava/lang/String;

    const-string v1, "FolderRenameAdapter.FolderRenameParser.wipe finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method
