.class public Lcom/android/exchange/EasFolderOperationSvc;
.super Lcom/android/exchange/EasSyncService;
.source "EasFolderOperationSvc.java"


# static fields
.field public static FO_CREATE:I

.field public static FO_DELETE:I

.field public static FO_MOVE:I

.field public static FO_RENAME:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private mNewFolderName:Ljava/lang/String;

.field private mOperation:I

.field private mParentFolderID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/16 v0, 0xa

    sput v0, Lcom/android/exchange/EasFolderOperationSvc;->FO_CREATE:I

    .line 21
    const/16 v0, 0xb

    sput v0, Lcom/android/exchange/EasFolderOperationSvc;->FO_RENAME:I

    .line 22
    const/16 v0, 0xc

    sput v0, Lcom/android/exchange/EasFolderOperationSvc;->FO_MOVE:I

    .line 23
    const/16 v0, 0xd

    sput v0, Lcom/android/exchange/EasFolderOperationSvc;->FO_DELETE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;JI)V
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "folderName"
    .parameter "parentFolderId"
    .parameter "operation"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 24
    const-string v0, "Folder Operation"

    iput-object v0, p0, Lcom/android/exchange/EasFolderOperationSvc;->TAG:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/android/exchange/EasFolderOperationSvc;->TAG:Ljava/lang/String;

    const-string v1, "EasFolderOperationSvc"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iput p6, p0, Lcom/android/exchange/EasFolderOperationSvc;->mOperation:I

    .line 35
    iput-object p3, p0, Lcom/android/exchange/EasFolderOperationSvc;->mNewFolderName:Ljava/lang/String;

    .line 36
    iput-wide p4, p0, Lcom/android/exchange/EasFolderOperationSvc;->mParentFolderID:J

    .line 37
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v2, 0x44

    invoke-static {p1, v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    .line 39
    iget-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V
    .registers 5
    .parameter "context"
    .parameter "mailbox"
    .parameter "operation"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 24
    const-string v0, "Folder Operation"

    iput-object v0, p0, Lcom/android/exchange/EasFolderOperationSvc;->TAG:Ljava/lang/String;

    .line 50
    iput p3, p0, Lcom/android/exchange/EasFolderOperationSvc;->mOperation:I

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;I)V
    .registers 6
    .parameter "context"
    .parameter "mailbox"
    .parameter "newName"
    .parameter "operation"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 24
    const-string v0, "Folder Operation"

    iput-object v0, p0, Lcom/android/exchange/EasFolderOperationSvc;->TAG:Ljava/lang/String;

    .line 44
    iput p4, p0, Lcom/android/exchange/EasFolderOperationSvc;->mOperation:I

    .line 45
    iput-object p3, p0, Lcom/android/exchange/EasFolderOperationSvc;->mNewFolderName:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 55
    iget-object v1, p0, Lcom/android/exchange/EasFolderOperationSvc;->TAG:Ljava/lang/String;

    const-string v2, "EasFolderOperationSvc.run"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0}, Lcom/android/exchange/EasFolderOperationSvc;->setupService()Z

    .line 59
    :try_start_c
    iget-object v1, p0, Lcom/android/exchange/EasFolderOperationSvc;->TAG:Ljava/lang/String;

    const-string v2, "before callback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V

    .line 62
    iget-object v1, p0, Lcom/android/exchange/EasFolderOperationSvc;->TAG:Ljava/lang/String;

    const-string v2, "after callback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_25} :catch_36d

    .line 67
    :goto_25
    const/4 v1, 0x0

    :try_start_26
    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 68
    iget v1, p0, Lcom/android/exchange/EasFolderOperationSvc;->mOperation:I

    sget v2, Lcom/android/exchange/EasFolderOperationSvc;->FO_CREATE:I

    if-ne v1, v2, :cond_a4

    .line 69
    new-instance v0, Lcom/android/exchange/adapter/FolderCreateAdapter;

    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v3, p0, Lcom/android/exchange/EasFolderOperationSvc;->mNewFolderName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/exchange/EasFolderOperationSvc;->mParentFolderID:J

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/adapter/FolderCreateAdapter;-><init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;Ljava/lang/String;J)V

    .line 71
    .local v0, createAdapter:Lcom/android/exchange/adapter/FolderCreateAdapter;
    invoke-virtual {p0, v0}, Lcom/android/exchange/EasFolderOperationSvc;->processCommand(Lcom/android/exchange/adapter/AbstractCommandAdapter;)V
    :try_end_41
    .catchall {:try_start_26 .. :try_end_41} :catchall_1c7
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_26 .. :try_end_41} :catch_b5
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_41} :catch_13c

    .line 92
    .end local v0           #createAdapter:Lcom/android/exchange/adapter/FolderCreateAdapter;
    :cond_41
    :goto_41
    iget-boolean v1, p0, Lcom/android/exchange/EasFolderOperationSvc;->mStop:Z

    if-nez v1, :cond_31a

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync finished exit status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 94
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 97
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v1, :pswitch_data_370

    .line 138
    :pswitch_65
    const/16 v10, 0x15

    .line 139
    .local v10, status:I
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasFolderOperationSvc;->errorLog(Ljava/lang/String;)V

    .line 147
    .end local v10           #status:I
    :cond_6c
    :goto_6c
    iget-boolean v1, p0, Lcom/android/exchange/EasFolderOperationSvc;->mStop:Z

    if-eqz v1, :cond_75

    .line 148
    const-string v1, "sync finished"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 149
    :cond_75
    iget-object v1, p0, Lcom/android/exchange/EasFolderOperationSvc;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exit EasFolderOperationSvc Thread id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/EasFolderOperationSvc;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/EasFolderOperationSvc;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_a0
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 72
    :cond_a4
    :try_start_a4
    iget v1, p0, Lcom/android/exchange/EasFolderOperationSvc;->mOperation:I

    sget v2, Lcom/android/exchange/EasFolderOperationSvc;->FO_RENAME:I

    if-ne v1, v2, :cond_12a

    .line 73
    new-instance v11, Lcom/android/exchange/adapter/FolderRenameAdapter;

    iget-object v1, p0, Lcom/android/exchange/EasFolderOperationSvc;->mNewFolderName:Ljava/lang/String;

    invoke-direct {v11, p0, v1}, Lcom/android/exchange/adapter/FolderRenameAdapter;-><init>(Lcom/android/exchange/EasSyncService;Ljava/lang/String;)V

    .line 75
    .local v11, updateAdapter:Lcom/android/exchange/adapter/FolderRenameAdapter;
    invoke-virtual {p0, v11}, Lcom/android/exchange/EasFolderOperationSvc;->processCommand(Lcom/android/exchange/adapter/AbstractCommandAdapter;)V
    :try_end_b4
    .catchall {:try_start_a4 .. :try_end_b4} :catchall_1c7
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_a4 .. :try_end_b4} :catch_b5
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_b4} :catch_13c

    goto :goto_41

    .line 83
    .end local v11           #updateAdapter:Lcom/android/exchange/adapter/FolderRenameAdapter;
    :catch_b5
    move-exception v7

    .line 84
    .local v7, e:Lcom/android/emailcommon/utility/DeviceAccessException;
    :try_start_b6
    const-string v1, "DeviceAccessException"

    const-string v2, "EasFolderOperationSvc::run"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 86
    iget-object v1, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    sget v3, Lcom/android/emailcommon/provider/EmailContent$Account;->DEVICE_IS_BLOCKED:I

    invoke-static {v1, v2, v3}, Lcom/android/exchange/ExchangeService;->blockDevice(JI)V
    :try_end_c9
    .catchall {:try_start_b6 .. :try_end_c9} :catchall_1c7

    .line 92
    iget-boolean v1, p0, Lcom/android/exchange/EasFolderOperationSvc;->mStop:Z

    if-nez v1, :cond_274

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync finished exit status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 94
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 97
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v1, :pswitch_data_38a

    .line 138
    :pswitch_ed
    const/16 v10, 0x15

    .line 139
    .restart local v10       #status:I
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasFolderOperationSvc;->errorLog(Ljava/lang/String;)V

    .line 147
    .end local v7           #e:Lcom/android/emailcommon/utility/DeviceAccessException;
    .end local v10           #status:I
    :cond_f4
    :goto_f4
    iget-boolean v1, p0, Lcom/android/exchange/EasFolderOperationSvc;->mStop:Z

    if-eqz v1, :cond_fd

    .line 148
    const-string v1, "sync finished"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 149
    :cond_fd
    iget-object v1, p0, Lcom/android/exchange/EasFolderOperationSvc;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exit EasFolderOperationSvc Thread id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/EasFolderOperationSvc;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/EasFolderOperationSvc;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a0

    .line 76
    :cond_12a
    :try_start_12a
    iget v1, p0, Lcom/android/exchange/EasFolderOperationSvc;->mOperation:I

    sget v2, Lcom/android/exchange/EasFolderOperationSvc;->FO_MOVE:I

    if-ne v1, v2, :cond_1b7

    .line 77
    new-instance v9, Lcom/android/exchange/adapter/FolderMoveAdapter;

    iget-object v1, p0, Lcom/android/exchange/EasFolderOperationSvc;->mNewFolderName:Ljava/lang/String;

    invoke-direct {v9, p0, v1}, Lcom/android/exchange/adapter/FolderMoveAdapter;-><init>(Lcom/android/exchange/EasSyncService;Ljava/lang/String;)V

    .line 78
    .local v9, moveAdapter:Lcom/android/exchange/adapter/FolderMoveAdapter;
    invoke-virtual {p0, v9}, Lcom/android/exchange/EasFolderOperationSvc;->processCommand(Lcom/android/exchange/adapter/AbstractCommandAdapter;)V
    :try_end_13a
    .catchall {:try_start_12a .. :try_end_13a} :catchall_1c7
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_12a .. :try_end_13a} :catch_b5
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_13a} :catch_13c

    goto/16 :goto_41

    .line 87
    .end local v9           #moveAdapter:Lcom/android/exchange/adapter/FolderMoveAdapter;
    :catch_13c
    move-exception v7

    .line 88
    .local v7, e:Ljava/io/IOException;
    :try_start_13d
    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 89
    .local v8, message:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Caught IOException: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    if-nez v8, :cond_14e

    const-string v8, "No message"

    .end local v8           #message:Ljava/lang/String;
    :cond_14e
    aput-object v8, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasFolderOperationSvc;->userLog([Ljava/lang/String;)V

    .line 90
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_156
    .catchall {:try_start_13d .. :try_end_156} :catchall_1c7

    .line 92
    iget-boolean v1, p0, Lcom/android/exchange/EasFolderOperationSvc;->mStop:Z

    if-nez v1, :cond_2c7

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync finished exit status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 94
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 97
    iget v1, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v1, :pswitch_data_3a4

    .line 138
    :pswitch_17a
    const/16 v10, 0x15

    .line 139
    .restart local v10       #status:I
    const-string v1, "Sync ended due to an exception."

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasFolderOperationSvc;->errorLog(Ljava/lang/String;)V

    .line 147
    .end local v7           #e:Ljava/io/IOException;
    .end local v10           #status:I
    :cond_181
    :goto_181
    iget-boolean v1, p0, Lcom/android/exchange/EasFolderOperationSvc;->mStop:Z

    if-eqz v1, :cond_18a

    .line 148
    const-string v1, "sync finished"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 149
    :cond_18a
    iget-object v1, p0, Lcom/android/exchange/EasFolderOperationSvc;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exit EasFolderOperationSvc Thread id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/EasFolderOperationSvc;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/EasFolderOperationSvc;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a0

    .line 79
    :cond_1b7
    :try_start_1b7
    iget v1, p0, Lcom/android/exchange/EasFolderOperationSvc;->mOperation:I

    sget v2, Lcom/android/exchange/EasFolderOperationSvc;->FO_DELETE:I

    if-ne v1, v2, :cond_41

    .line 80
    new-instance v6, Lcom/android/exchange/adapter/FolderDeleteAdapter;

    invoke-direct {v6, p0}, Lcom/android/exchange/adapter/FolderDeleteAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 81
    .local v6, deleteAdapter:Lcom/android/exchange/adapter/FolderDeleteAdapter;
    invoke-virtual {p0, v6}, Lcom/android/exchange/EasFolderOperationSvc;->processCommand(Lcom/android/exchange/adapter/AbstractCommandAdapter;)V
    :try_end_1c5
    .catchall {:try_start_1b7 .. :try_end_1c5} :catchall_1c7
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_1b7 .. :try_end_1c5} :catch_b5
    .catch Ljava/io/IOException; {:try_start_1b7 .. :try_end_1c5} :catch_13c

    goto/16 :goto_41

    .line 92
    .end local v6           #deleteAdapter:Lcom/android/exchange/adapter/FolderDeleteAdapter;
    :catchall_1c7
    move-exception v1

    iget-boolean v2, p0, Lcom/android/exchange/EasFolderOperationSvc;->mStop:Z

    if-nez v2, :cond_22b

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sync finished exit status :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 94
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->doneOutOfBand(Lcom/android/exchange/AbstractSyncService;)V

    .line 97
    iget v2, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v2, :pswitch_data_3be

    .line 138
    :pswitch_1ec
    const/16 v10, 0x15

    .line 139
    .restart local v10       #status:I
    const-string v2, "Sync ended due to an exception."

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasFolderOperationSvc;->errorLog(Ljava/lang/String;)V

    .line 147
    .end local v10           #status:I
    :cond_1f3
    :goto_1f3
    iget-boolean v2, p0, Lcom/android/exchange/EasFolderOperationSvc;->mStop:Z

    if-eqz v2, :cond_1fc

    .line 148
    const-string v2, "sync finished"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 149
    :cond_1fc
    iget-object v2, p0, Lcom/android/exchange/EasFolderOperationSvc;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exit EasFolderOperationSvc Thread id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/EasFolderOperationSvc;->mThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/EasFolderOperationSvc;->mThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    throw v1

    .line 145
    :cond_22b
    new-array v2, v12, [Ljava/lang/String;

    const-string v3, "Stopped FolderCreateSvc finished"

    aput-object v3, v2, v13

    invoke-virtual {p0, v2}, Lcom/android/exchange/EasFolderOperationSvc;->userLog([Ljava/lang/String;)V

    goto :goto_1f3

    .line 102
    :pswitch_235
    const/4 v10, 0x0

    .line 104
    .restart local v10       #status:I
    :try_start_236
    iget v2, p0, Lcom/android/exchange/EasFolderOperationSvc;->mOperation:I

    sget v3, Lcom/android/exchange/EasFolderOperationSvc;->FO_CREATE:I

    if-ne v2, v3, :cond_1f3

    .line 105
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v10, v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_246
    .catch Landroid/os/RemoteException; {:try_start_236 .. :try_end_246} :catch_247

    goto :goto_1f3

    .line 107
    :catch_247
    move-exception v7

    .line 108
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1f3

    .line 99
    .end local v7           #e:Landroid/os/RemoteException;
    .end local v10           #status:I
    :pswitch_24c
    const/16 v10, 0x20

    .line 100
    .restart local v10       #status:I
    goto :goto_1f3

    .line 112
    .end local v10           #status:I
    :pswitch_24f
    const/16 v10, 0x16

    .line 113
    .restart local v10       #status:I
    goto :goto_1f3

    .line 115
    .end local v10           #status:I
    :pswitch_252
    const/16 v10, 0x17

    .line 116
    .restart local v10       #status:I
    sget-object v2, Lcom/android/exchange/EasFolderOperationSvc;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4, v12}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_1f3

    .line 119
    .end local v10           #status:I
    :pswitch_25e
    const/4 v10, 0x3

    .line 120
    .restart local v10       #status:I
    goto :goto_1f3

    .line 123
    .end local v10           #status:I
    :pswitch_260
    const/4 v10, 0x4

    .line 124
    .restart local v10       #status:I
    goto :goto_1f3

    .line 127
    .end local v10           #status:I
    :pswitch_262
    const/16 v10, 0x14

    .line 129
    .restart local v10       #status:I
    :try_start_264
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v2

    const/16 v3, 0x10

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-interface {v2, v3, v4, v5, v10}, Lcom/android/emailcommon/service/IEmailServiceCallback;->folderCommandStatus(IJI)V
    :try_end_271
    .catch Landroid/os/RemoteException; {:try_start_264 .. :try_end_271} :catch_272

    goto :goto_1f3

    .line 132
    :catch_272
    move-exception v2

    goto :goto_1f3

    .line 145
    .end local v10           #status:I
    .local v7, e:Lcom/android/emailcommon/utility/DeviceAccessException;
    :cond_274
    new-array v1, v12, [Ljava/lang/String;

    const-string v2, "Stopped FolderCreateSvc finished"

    aput-object v2, v1, v13

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasFolderOperationSvc;->userLog([Ljava/lang/String;)V

    goto/16 :goto_f4

    .line 102
    :pswitch_27f
    const/4 v10, 0x0

    .line 104
    .restart local v10       #status:I
    :try_start_280
    iget v1, p0, Lcom/android/exchange/EasFolderOperationSvc;->mOperation:I

    sget v2, Lcom/android/exchange/EasFolderOperationSvc;->FO_CREATE:I

    if-ne v1, v2, :cond_f4

    .line 105
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v10, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_290
    .catch Landroid/os/RemoteException; {:try_start_280 .. :try_end_290} :catch_292

    goto/16 :goto_f4

    .line 107
    :catch_292
    move-exception v7

    .line 108
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_f4

    .line 99
    .end local v10           #status:I
    .local v7, e:Lcom/android/emailcommon/utility/DeviceAccessException;
    :pswitch_298
    const/16 v10, 0x20

    .line 100
    .restart local v10       #status:I
    goto/16 :goto_f4

    .line 112
    .end local v10           #status:I
    :pswitch_29c
    const/16 v10, 0x16

    .line 113
    .restart local v10       #status:I
    goto/16 :goto_f4

    .line 115
    .end local v10           #status:I
    :pswitch_2a0
    const/16 v10, 0x17

    .line 116
    .restart local v10       #status:I
    sget-object v1, Lcom/android/exchange/EasFolderOperationSvc;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3, v12}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_f4

    .line 119
    .end local v10           #status:I
    :pswitch_2ad
    const/4 v10, 0x3

    .line 120
    .restart local v10       #status:I
    goto/16 :goto_f4

    .line 123
    .end local v10           #status:I
    :pswitch_2b0
    const/4 v10, 0x4

    .line 124
    .restart local v10       #status:I
    goto/16 :goto_f4

    .line 127
    .end local v10           #status:I
    :pswitch_2b3
    const/16 v10, 0x14

    .line 129
    .restart local v10       #status:I
    :try_start_2b5
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-interface {v1, v2, v3, v4, v10}, Lcom/android/emailcommon/service/IEmailServiceCallback;->folderCommandStatus(IJI)V
    :try_end_2c2
    .catch Landroid/os/RemoteException; {:try_start_2b5 .. :try_end_2c2} :catch_2c4

    goto/16 :goto_f4

    .line 132
    :catch_2c4
    move-exception v1

    goto/16 :goto_f4

    .line 145
    .end local v10           #status:I
    .local v7, e:Ljava/io/IOException;
    :cond_2c7
    new-array v1, v12, [Ljava/lang/String;

    const-string v2, "Stopped FolderCreateSvc finished"

    aput-object v2, v1, v13

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasFolderOperationSvc;->userLog([Ljava/lang/String;)V

    goto/16 :goto_181

    .line 102
    :pswitch_2d2
    const/4 v10, 0x0

    .line 104
    .restart local v10       #status:I
    :try_start_2d3
    iget v1, p0, Lcom/android/exchange/EasFolderOperationSvc;->mOperation:I

    sget v2, Lcom/android/exchange/EasFolderOperationSvc;->FO_CREATE:I

    if-ne v1, v2, :cond_181

    .line 105
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v10, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_2e3
    .catch Landroid/os/RemoteException; {:try_start_2d3 .. :try_end_2e3} :catch_2e5

    goto/16 :goto_181

    .line 107
    :catch_2e5
    move-exception v7

    .line 108
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_181

    .line 99
    .end local v10           #status:I
    .local v7, e:Ljava/io/IOException;
    :pswitch_2eb
    const/16 v10, 0x20

    .line 100
    .restart local v10       #status:I
    goto/16 :goto_181

    .line 112
    .end local v10           #status:I
    :pswitch_2ef
    const/16 v10, 0x16

    .line 113
    .restart local v10       #status:I
    goto/16 :goto_181

    .line 115
    .end local v10           #status:I
    :pswitch_2f3
    const/16 v10, 0x17

    .line 116
    .restart local v10       #status:I
    sget-object v1, Lcom/android/exchange/EasFolderOperationSvc;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3, v12}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_181

    .line 119
    .end local v10           #status:I
    :pswitch_300
    const/4 v10, 0x3

    .line 120
    .restart local v10       #status:I
    goto/16 :goto_181

    .line 123
    .end local v10           #status:I
    :pswitch_303
    const/4 v10, 0x4

    .line 124
    .restart local v10       #status:I
    goto/16 :goto_181

    .line 127
    .end local v10           #status:I
    :pswitch_306
    const/16 v10, 0x14

    .line 129
    .restart local v10       #status:I
    :try_start_308
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-interface {v1, v2, v3, v4, v10}, Lcom/android/emailcommon/service/IEmailServiceCallback;->folderCommandStatus(IJI)V
    :try_end_315
    .catch Landroid/os/RemoteException; {:try_start_308 .. :try_end_315} :catch_317

    goto/16 :goto_181

    .line 132
    :catch_317
    move-exception v1

    goto/16 :goto_181

    .line 145
    .end local v7           #e:Ljava/io/IOException;
    .end local v10           #status:I
    :cond_31a
    new-array v1, v12, [Ljava/lang/String;

    const-string v2, "Stopped FolderCreateSvc finished"

    aput-object v2, v1, v13

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasFolderOperationSvc;->userLog([Ljava/lang/String;)V

    goto/16 :goto_6c

    .line 102
    :pswitch_325
    const/4 v10, 0x0

    .line 104
    .restart local v10       #status:I
    :try_start_326
    iget v1, p0, Lcom/android/exchange/EasFolderOperationSvc;->mOperation:I

    sget v2, Lcom/android/exchange/EasFolderOperationSvc;->FO_CREATE:I

    if-ne v1, v2, :cond_6c

    .line 105
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v10, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxStatus(JII)V
    :try_end_336
    .catch Landroid/os/RemoteException; {:try_start_326 .. :try_end_336} :catch_338

    goto/16 :goto_6c

    .line 107
    :catch_338
    move-exception v7

    .line 108
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_6c

    .line 99
    .end local v7           #e:Landroid/os/RemoteException;
    .end local v10           #status:I
    :pswitch_33e
    const/16 v10, 0x20

    .line 100
    .restart local v10       #status:I
    goto/16 :goto_6c

    .line 112
    .end local v10           #status:I
    :pswitch_342
    const/16 v10, 0x16

    .line 113
    .restart local v10       #status:I
    goto/16 :goto_6c

    .line 115
    .end local v10           #status:I
    :pswitch_346
    const/16 v10, 0x17

    .line 116
    .restart local v10       #status:I
    sget-object v1, Lcom/android/exchange/EasFolderOperationSvc;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3, v12}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto/16 :goto_6c

    .line 119
    .end local v10           #status:I
    :pswitch_353
    const/4 v10, 0x3

    .line 120
    .restart local v10       #status:I
    goto/16 :goto_6c

    .line 123
    .end local v10           #status:I
    :pswitch_356
    const/4 v10, 0x4

    .line 124
    .restart local v10       #status:I
    goto/16 :goto_6c

    .line 127
    .end local v10           #status:I
    :pswitch_359
    const/16 v10, 0x14

    .line 129
    .restart local v10       #status:I
    :try_start_35b
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-interface {v1, v2, v3, v4, v10}, Lcom/android/emailcommon/service/IEmailServiceCallback;->folderCommandStatus(IJI)V
    :try_end_368
    .catch Landroid/os/RemoteException; {:try_start_35b .. :try_end_368} :catch_36a

    goto/16 :goto_6c

    .line 132
    :catch_36a
    move-exception v1

    goto/16 :goto_6c

    .line 63
    .end local v10           #status:I
    :catch_36d
    move-exception v1

    goto/16 :goto_25

    .line 97
    :pswitch_data_370
    .packed-switch 0x0
        :pswitch_325
        :pswitch_33e
        :pswitch_342
        :pswitch_65
        :pswitch_346
        :pswitch_65
        :pswitch_353
        :pswitch_356
        :pswitch_65
        :pswitch_65
        :pswitch_359
    .end packed-switch

    :pswitch_data_38a
    .packed-switch 0x0
        :pswitch_27f
        :pswitch_298
        :pswitch_29c
        :pswitch_ed
        :pswitch_2a0
        :pswitch_ed
        :pswitch_2ad
        :pswitch_2b0
        :pswitch_ed
        :pswitch_ed
        :pswitch_2b3
    .end packed-switch

    :pswitch_data_3a4
    .packed-switch 0x0
        :pswitch_2d2
        :pswitch_2eb
        :pswitch_2ef
        :pswitch_17a
        :pswitch_2f3
        :pswitch_17a
        :pswitch_300
        :pswitch_303
        :pswitch_17a
        :pswitch_17a
        :pswitch_306
    .end packed-switch

    :pswitch_data_3be
    .packed-switch 0x0
        :pswitch_235
        :pswitch_24c
        :pswitch_24f
        :pswitch_1ec
        :pswitch_252
        :pswitch_1ec
        :pswitch_25e
        :pswitch_260
        :pswitch_1ec
        :pswitch_1ec
        :pswitch_262
    .end packed-switch
.end method
