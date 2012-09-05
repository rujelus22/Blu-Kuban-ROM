.class public Lcom/android/exchange/adapter/FolderCreateAdapter;
.super Lcom/android/exchange/adapter/AbstractCommandAdapter;
.source "FolderCreateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;
    }
.end annotation


# instance fields
.field public final CODE_FOLDER_CREATE_ACCESS_DENIED:I

.field public final CODE_FOLDER_CREATE_INVALID_SYNC_KEY:I

.field public final CODE_FOLDER_CREATE_MALFORMED_REQUEST:I

.field public final CODE_FOLDER_CREATE_NAME_EXISTS:I

.field public final CODE_FOLDER_CREATE_PARENT_FOLDER_NOT_FOUND:I

.field public final CODE_FOLDER_CREATE_SERVER_ERROR:I

.field public final CODE_FOLDER_CREATE_SUCCESS:I

.field public final CODE_FOLDER_CREATE_SYSTEM_FOLDER:I

.field public final CODE_FOLDER_CREATE_TIME_OUT:I

.field public final CODE_FOLDER_CREATE_UNKNOWN_CODE:I

.field public final CODE_FOLDER_CREATE_UNKNOWN_ERROR:I

.field private mNewFolderName:Ljava/lang/String;

.field private mParentFolderId:J

.field mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;Ljava/lang/String;J)V
    .registers 8
    .parameter "mailbox"
    .parameter "service"
    .parameter "newFolderName"
    .parameter "parentFolderId"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p2}, Lcom/android/exchange/adapter/AbstractCommandAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->CODE_FOLDER_CREATE_SUCCESS:I

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->CODE_FOLDER_CREATE_NAME_EXISTS:I

    .line 38
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->CODE_FOLDER_CREATE_SYSTEM_FOLDER:I

    .line 40
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->CODE_FOLDER_CREATE_PARENT_FOLDER_NOT_FOUND:I

    .line 42
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->CODE_FOLDER_CREATE_SERVER_ERROR:I

    .line 47
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->CODE_FOLDER_CREATE_ACCESS_DENIED:I

    .line 50
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->CODE_FOLDER_CREATE_TIME_OUT:I

    .line 52
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->CODE_FOLDER_CREATE_INVALID_SYNC_KEY:I

    .line 54
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->CODE_FOLDER_CREATE_MALFORMED_REQUEST:I

    .line 56
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->CODE_FOLDER_CREATE_UNKNOWN_ERROR:I

    .line 58
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->CODE_FOLDER_CREATE_UNKNOWN_CODE:I

    .line 60
    iput-object v1, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mResponse:Lcom/android/exchange/adapter/AbstractCommandAdapter$FolderCommandResponse;

    .line 62
    iput-object v1, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mNewFolderName:Ljava/lang/String;

    .line 64
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mParentFolderId:J

    .line 69
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.FolderCreateAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iput-object p3, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mNewFolderName:Ljava/lang/String;

    .line 71
    iput-wide p4, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mParentFolderId:J

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/adapter/FolderCreateAdapter;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mParentFolderId:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/exchange/adapter/FolderCreateAdapter;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mParentFolderId:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/exchange/adapter/FolderCreateAdapter;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mNewFolderName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/exchange/adapter/FolderCreateAdapter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mNewFolderName:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public callback(I)V
    .registers 6
    .parameter "status"

    .prologue
    .line 142
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :try_start_7
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/android/emailcommon/service/IEmailServiceCallback;->folderCommandStatus(IJI)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14

    .line 148
    :goto_13
    return-void

    .line 146
    :catch_14
    move-exception v0

    goto :goto_13
.end method

.method public cleanup()V
    .registers 3

    .prologue
    .line 124
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method public getCollectionName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 117
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.getCollectionName"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCommandName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 151
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.getCommandName"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v0, "FolderCreate"

    return-object v0
.end method

.method public hasChangedItems()Z
    .registers 5

    .prologue
    .line 137
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.hasChangedItems"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mNewFolderName:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-wide v0, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mParentFolderId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public isSyncable()Z
    .registers 3

    .prologue
    .line 75
    const-string v0, "Mahskyript"

    const-string v1, "FolderCreateAdapter.isSyncable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .registers 5
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 109
    const-string v1, "Mahskyript"

    const-string v2, "FolderCreateAdapter.parse"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v0, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;-><init>(Lcom/android/exchange/adapter/FolderCreateAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractCommandAdapter;)V

    .line 111
    .local v0, parser:Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/FolderCreateAdapter$FolderCreateParser;->parse()Z

    move-result v1

    return v1
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .registers 8
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 81
    const-string v3, "Mahskyript"

    const-string v4, "FolderCreateAdapter.sendLocalChanges"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mParentFolderId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 84
    .local v0, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v0, :cond_1a

    .line 85
    const-string v3, "EAS"

    const-string v4, "FolderCreateAdapter.sendLocalChanges exit 3, mailbox == null "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_19
    return v2

    .line 89
    :cond_1a
    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v4, 0x44

    if-eq v3, v4, :cond_5c

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    .line 91
    .local v1, parentFolderKey:Ljava/lang/String;
    :goto_22
    iget-object v3, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mNewFolderName:Ljava/lang/String;

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v3, :cond_5f

    .line 96
    const/16 v2, 0x1d3

    invoke-virtual {p1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x1d2

    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x1c9

    invoke-virtual {v2, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x1c7

    iget-object v4, p0, Lcom/android/exchange/adapter/FolderCreateAdapter;->mNewFolderName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0x1ca

    const-string v4, "12"

    invoke-virtual {v2, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 100
    const-string v2, "Mahskyript"

    const-string v3, "FolderCreateAdapter.sendLocalChanges exit 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v2, 0x1

    goto :goto_19

    .line 89
    .end local v1           #parentFolderKey:Ljava/lang/String;
    :cond_5c
    const-string v1, "0"

    goto :goto_22

    .line 103
    .restart local v1       #parentFolderKey:Ljava/lang/String;
    :cond_5f
    const-string v3, "Mahskyript"

    const-string v4, "FolderCreateAdapter.sendLocalChanges exit 2"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method public wipe()V
    .registers 1

    .prologue
    .line 129
    return-void
.end method
