.class Lcom/android/exchange/ExchangeService$2;
.super Lcom/android/emailcommon/service/IEmailService$Stub;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService;)V
    .registers 2
    .parameter

    .prologue
    .line 738
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public OoOffice(JLcom/android/emailcommon/service/OoODataList;)V
    .registers 9
    .parameter "accountId"
    .parameter "data"

    .prologue
    .line 980
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->getAccountById(J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 982
    .local v0, acct:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v0, :cond_1c

    .line 983
    sget-wide v3, Lcom/android/exchange/ExchangeService;->MAILBOX_DUMMY_OoO:J

    invoke-static {v3, v4}, Lcom/android/exchange/ExchangeService;->removeFromSyncErrorMap(J)V

    .line 984
    new-instance v1, Lcom/android/exchange/EasOoOSvc;

    sget-object v3, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    invoke-direct {v1, v3, v0, p3}, Lcom/android/exchange/EasOoOSvc;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/service/OoODataList;)V

    .line 985
    .local v1, svc:Lcom/android/exchange/AbstractSyncService;
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "(OoOSvc)"

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 987
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 993
    .end local v1           #svc:Lcom/android/exchange/AbstractSyncService;
    .end local v2           #thread:Ljava/lang/Thread;
    :cond_1c
    return-void
.end method

.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
    .registers 7
    .parameter "userName"
    .parameter "password"
    .parameter "domain"
    .parameter "bTrustCert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 818
    new-instance v0, Lcom/android/exchange/EasSyncService;

    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/exchange/EasSyncService;->tryAutodiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public changeSmsSettings(J)V
    .registers 13
    .parameter "accountId"

    .prologue
    .line 1322
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->getAccountById(J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1323
    .local v0, acct:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v0, :cond_40

    .line 1324
    new-instance v1, Lcom/android/exchange/EasSyncService;

    sget-object v7, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    invoke-direct {v1, v7, v0}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1325
    .local v1, deviceInfoSvc:Lcom/android/exchange/EasSyncService;
    if-eqz v1, :cond_40

    .line 1326
    sget-object v7, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v1, v7}, Lcom/android/exchange/EasSyncService;->setupAdhocService(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 1328
    const-wide/16 v5, 0x0

    .line 1330
    .local v5, protocolVersion:D
    :try_start_19
    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_1e} :catch_46

    move-result-wide v5

    .line 1334
    :goto_1f
    :try_start_1f
    new-instance v4, Lcom/android/exchange/DeviceInformation;

    invoke-direct {v4, v5, v6}, Lcom/android/exchange/DeviceInformation;-><init>(D)V

    .line 1335
    .local v4, mDInfo:Lcom/android/exchange/DeviceInformation;
    sget-object v7, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->getUserAgent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8, v0}, Lcom/android/exchange/DeviceInformation;->prepareDeviceInformation(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 1337
    new-instance v2, Lcom/android/exchange/DeviceInformationTask;

    invoke-direct {v2, v4}, Lcom/android/exchange/DeviceInformationTask;-><init>(Lcom/android/exchange/DeviceInformation;)V

    .line 1339
    .local v2, deviceInfoTask:Lcom/android/exchange/DeviceInformationTask;
    sget-object v7, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    invoke-virtual {v2, v7, v1}, Lcom/android/exchange/DeviceInformationTask;->setUpService(Landroid/content/Context;Lcom/android/exchange/EasSyncService;)V

    .line 1341
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v2, v7}, Lcom/android/exchange/DeviceInformationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1352
    .end local v1           #deviceInfoSvc:Lcom/android/exchange/EasSyncService;
    .end local v2           #deviceInfoTask:Lcom/android/exchange/DeviceInformationTask;
    .end local v4           #mDInfo:Lcom/android/exchange/DeviceInformation;
    .end local v5           #protocolVersion:D
    :cond_40
    :goto_40
    return-void

    .line 1331
    .restart local v1       #deviceInfoSvc:Lcom/android/exchange/EasSyncService;
    .restart local v5       #protocolVersion:D
    :catch_41
    move-exception v3

    .line 1332
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_45} :catch_46

    goto :goto_1f

    .line 1343
    .end local v3           #e:Ljava/lang/Exception;
    :catch_46
    move-exception v3

    .line 1344
    .local v3, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1345
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal argument: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method public deleteAccountPIMData(J)V
    .registers 3
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1258
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->stopAccountSyncs(J)V

    .line 1260
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->deleteAccountPIMData(J)V

    .line 1261
    return-void
.end method

.method public emptyTrash(J)V
    .registers 11
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1178
    iget-object v5, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    const/4 v6, 0x6

    invoke-static {v5, p1, p2, v6}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v1

    .line 1180
    .local v1, mailboxKey:J
    iget-object v5, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-static {v5, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 1181
    .local v0, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_34

    .line 1182
    new-instance v3, Lcom/android/exchange/EasEmptyTrashSvc;

    sget-object v5, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    invoke-direct {v3, v5, v0}, Lcom/android/exchange/EasEmptyTrashSvc;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 1183
    .local v3, svc:Lcom/android/exchange/AbstractSyncService;
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(EasEmptyTrashSvc)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1184
    .local v4, thread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 1189
    .end local v3           #svc:Lcom/android/exchange/AbstractSyncService;
    .end local v4           #thread:Ljava/lang/Thread;
    :goto_33
    return-void

    .line 1186
    :cond_34
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v5

    const/16 v6, 0x20

    const/16 v7, 0x64

    invoke-interface {v5, p1, p2, v6, v7}, Lcom/android/emailcommon/service/IEmailServiceCallback;->emptyTrashStatus(JII)V

    goto :goto_33
.end method

.method public folderCreate(JLjava/lang/String;J)V
    .registers 14
    .parameter "accountId"
    .parameter "folderName"
    .parameter "parentMailboxId"

    .prologue
    .line 997
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->getAccountById(J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 998
    .local v2, acct:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v2, :cond_1b

    .line 999
    new-instance v0, Lcom/android/exchange/EasFolderOperationSvc;

    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    sget v6, Lcom/android/exchange/EasFolderOperationSvc;->FO_CREATE:I

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/EasFolderOperationSvc;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;JI)V

    .line 1004
    .local v0, svc:Lcom/android/exchange/AbstractSyncService;
    new-instance v7, Ljava/lang/Thread;

    const-string v1, "(FolderCreate)"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1007
    .local v7, thread:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 1009
    .end local v0           #svc:Lcom/android/exchange/AbstractSyncService;
    .end local v7           #thread:Ljava/lang/Thread;
    :cond_1b
    return-void
.end method

.method public folderDelete(J)V
    .registers 8
    .parameter "mailboxId"

    .prologue
    .line 1038
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 1039
    .local v0, mbx:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_1d

    .line 1040
    new-instance v1, Lcom/android/exchange/EasFolderOperationSvc;

    sget-object v3, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    sget v4, Lcom/android/exchange/EasFolderOperationSvc;->FO_DELETE:I

    invoke-direct {v1, v3, v0, v4}, Lcom/android/exchange/EasFolderOperationSvc;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    .line 1043
    .local v1, svc:Lcom/android/exchange/AbstractSyncService;
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "(folderDelete)"

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1046
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1048
    .end local v1           #svc:Lcom/android/exchange/AbstractSyncService;
    .end local v2           #thread:Ljava/lang/Thread;
    :cond_1d
    return-void
.end method

.method public folderMove(JLjava/lang/String;)V
    .registers 9
    .parameter "mailboxId"
    .parameter "toMailboxServerId"

    .prologue
    .line 1025
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 1026
    .local v0, mbx:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_1d

    .line 1027
    new-instance v1, Lcom/android/exchange/EasFolderOperationSvc;

    sget-object v3, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    sget v4, Lcom/android/exchange/EasFolderOperationSvc;->FO_MOVE:I

    invoke-direct {v1, v3, v0, p3, v4}, Lcom/android/exchange/EasFolderOperationSvc;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;I)V

    .line 1030
    .local v1, svc:Lcom/android/exchange/AbstractSyncService;
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "(folderMove)"

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1033
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1035
    .end local v1           #svc:Lcom/android/exchange/AbstractSyncService;
    .end local v2           #thread:Ljava/lang/Thread;
    :cond_1d
    return-void
.end method

.method public folderRename(JLjava/lang/String;)V
    .registers 9
    .parameter "mailboxId"
    .parameter "toName"

    .prologue
    .line 1012
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 1013
    .local v0, mbx:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_1d

    .line 1014
    new-instance v1, Lcom/android/exchange/EasFolderOperationSvc;

    sget-object v3, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    sget v4, Lcom/android/exchange/EasFolderOperationSvc;->FO_RENAME:I

    invoke-direct {v1, v3, v0, p3, v4}, Lcom/android/exchange/EasFolderOperationSvc;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;I)V

    .line 1017
    .local v1, svc:Lcom/android/exchange/AbstractSyncService;
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "(folderRename)"

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1020
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1022
    .end local v1           #svc:Lcom/android/exchange/AbstractSyncService;
    .end local v2           #thread:Ljava/lang/Thread;
    :cond_1d
    return-void
.end method

.method public getAliasFromMap(J)Ljava/lang/String;
    .registers 9
    .parameter "tId"

    .prologue
    .line 746
    const-string v3, "exchange"

    const-string v4, "getAliasFromMap"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/4 v1, 0x0

    .line 748
    .local v1, alias:Ljava/lang/String;
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$100()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 750
    :try_start_d
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$200()Ljava/util/HashMap;

    move-result-object v3

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_3b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_38

    .line 754
    :goto_1e
    :try_start_1e
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_3b

    .line 755
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Returning Alias "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    return-object v1

    .line 751
    :catch_38
    move-exception v2

    .line 752
    .local v2, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1e

    .line 754
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_3b
    move-exception v3

    :try_start_3c
    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v3
.end method

.method public getApiLevel()I
    .registers 2

    .prologue
    .line 741
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized getLicenseKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 785
    monitor-enter p0

    const/4 v0, 0x0

    .line 786
    :try_start_2
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$300()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 787
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$300()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_18

    move-result-object v0

    .line 810
    :cond_c
    :goto_c
    monitor-exit p0

    return-object v0

    .line 788
    :cond_e
    if-nez p1, :cond_1b

    .line 789
    :try_start_10
    const-string v1, "getLicenseKey"

    const-string v2, "No context for getLicenseKey"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_18

    goto :goto_c

    .line 785
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0

    .line 793
    :cond_1b
    :try_start_1b
    invoke-static {p1}, Lcom/android/exchange/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/exchange/Preferences;

    move-result-object v1

    .line 794
    invoke-virtual {v1}, Lcom/android/exchange/Preferences;->getActivationLicense()Ljava/lang/String;

    move-result-object v0

    .line 795
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->access$302(Ljava/lang/String;)Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_18

    .line 796
    if-nez v0, :cond_c

    .line 798
    :try_start_28
    const-class v2, Lcom/android/exchange/EasSyncService;

    iget-object v3, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-static {v2, v3}, Lcom/android/exchange/AbstractSyncService;->activate(Ljava/lang/Class;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 800
    if-eqz v0, :cond_c

    .line 801
    invoke-virtual {v1, v0}, Lcom/android/exchange/Preferences;->setActivationLicense(Ljava/lang/String;)V

    .line 802
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->access$302(Ljava/lang/String;)Ljava/lang/String;
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_18
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_28 .. :try_end_38} :catch_39

    goto :goto_c

    .line 805
    :catch_39
    move-exception v1

    .line 806
    :try_start_3a
    const-string v1, "Activation"

    const-string v2, "Can\'t get server eas license"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_18

    goto :goto_c
.end method

.method public hostChanged(J)V
    .registers 12
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1108
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1109
    .local v1, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v1, :cond_5

    .line 1132
    :goto_4
    return-void

    .line 1111
    :cond_5
    iget-object v6, v1, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1113
    .local v6, syncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Lcom/android/exchange/ExchangeService$SyncError;>;"
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1114
    .local v4, mailboxId:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$SyncError;

    .line 1116
    .local v0, error:Lcom/android/exchange/ExchangeService$SyncError;
    invoke-static {v1, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v3

    .line 1121
    .local v3, m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v3, :cond_37

    .line 1122
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 1123
    :cond_37
    if-eqz v0, :cond_f

    iget-wide v7, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    cmp-long v7, v7, p1

    if-nez v7, :cond_f

    .line 1124
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    .line 1125
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    goto :goto_f

    .line 1129
    .end local v0           #error:Lcom/android/exchange/ExchangeService$SyncError;
    .end local v3           #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v4           #mailboxId:J
    :cond_47
    const/4 v7, 0x1

    #calls: Lcom/android/exchange/ExchangeService;->stopAccountSyncs(JZ)V
    invoke-static {v1, p1, p2, v7}, Lcom/android/exchange/ExchangeService;->access$1000(Lcom/android/exchange/ExchangeService;JZ)V

    .line 1131
    const-string v7, "host changed"

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public loadAttachment(JZ)V
    .registers 14
    .parameter "attachmentId"
    .parameter "background"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 954
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v4

    .line 955
    .local v4, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    sget-boolean v1, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v1, :cond_2f

    .line 956
    const-string v1, "ExchangeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadAttachment "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_2f
    if-eqz v4, :cond_75

    .line 960
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    iget-wide v8, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {v1, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    .line 962
    .local v3, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v3, :cond_75

    .line 963
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    iget-wide v8, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v1, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 964
    .local v2, m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v2, :cond_76

    iget v1, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v6, 0x62

    if-ne v1, v6, :cond_76

    .line 965
    const-string v1, "loadAttachment() - Fetch Document from SharePoing or UNC"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 967
    new-instance v0, Lcom/android/exchange/EasFetchDocumentSvc;

    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/EasFetchDocumentSvc;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Attachment;Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    .local v0, svc:Lcom/android/exchange/AbstractSyncService;
    new-instance v7, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "(EasFetchDocumentSvc)"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 970
    .local v7, thread:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 976
    .end local v0           #svc:Lcom/android/exchange/AbstractSyncService;
    .end local v2           #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v3           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v7           #thread:Ljava/lang/Thread;
    :cond_75
    :goto_75
    return-void

    .line 973
    .restart local v2       #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v3       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_76
    new-instance v1, Lcom/android/exchange/PartRequest;

    invoke-direct {v1, v4, v5, v5}, Lcom/android/exchange/PartRequest;-><init>(Lcom/android/emailcommon/provider/EmailContent$Attachment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->sendMessageRequest(Lcom/android/exchange/Request;)V

    goto :goto_75
.end method

.method public loadMore(J)V
    .registers 8
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1158
    iget-object v2, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 1160
    .local v0, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v0, :cond_14

    .line 1161
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v2

    const/high16 v3, 0x7

    const/16 v4, 0x64

    invoke-interface {v2, p1, p2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadMoreStatus(JII)V

    .line 1173
    :goto_13
    return-void

    .line 1165
    :cond_14
    sget-object v2, Lcom/android/exchange/ExchangeService;->elmsvc:Lcom/android/exchange/EasLoadMoreSvc;

    if-eqz v2, :cond_1b

    .line 1166
    const/4 v2, 0x0

    sput-object v2, Lcom/android/exchange/ExchangeService;->elmsvc:Lcom/android/exchange/EasLoadMoreSvc;

    .line 1167
    :cond_1b
    new-instance v2, Lcom/android/exchange/EasLoadMoreSvc;

    sget-object v3, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    invoke-direct {v2, v3, v0}, Lcom/android/exchange/EasLoadMoreSvc;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    sput-object v2, Lcom/android/exchange/ExchangeService;->elmsvc:Lcom/android/exchange/EasLoadMoreSvc;

    .line 1168
    new-instance v1, Ljava/lang/Thread;

    sget-object v2, Lcom/android/exchange/ExchangeService;->elmsvc:Lcom/android/exchange/EasLoadMoreSvc;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(EasLoadMoreSvc)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1169
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_13
.end method

.method public loadMoreCancel()V
    .registers 6

    .prologue
    .line 1266
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getElmSvc()Lcom/android/exchange/EasLoadMoreSvc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/EasLoadMoreSvc;->reset()V

    .line 1268
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getElmSvc()Lcom/android/exchange/EasLoadMoreSvc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exchange/EasLoadMoreSvc;->userCancelled()V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_20

    .line 1273
    :goto_e
    :try_start_e
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    invoke-static {}, Lcom/android/exchange/ExchangeService;->getElmSvcMsg()J

    move-result-wide v1

    const/high16 v3, 0x10

    const/16 v4, 0x64

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadMoreStatus(JII)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1d} :catch_1e

    .line 1278
    :goto_1d
    return-void

    .line 1276
    :catch_1e
    move-exception v0

    goto :goto_1d

    .line 1269
    :catch_20
    move-exception v0

    goto :goto_e
.end method

.method public moveConversationAlways(JJ[BI)V
    .registers 16
    .parameter "mailboxId"
    .parameter "toMailboxId"
    .parameter "conversationId"
    .parameter "ignore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1056
    new-instance v0, Lcom/android/exchange/EasConvSvc;

    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/exchange/EasConvSvc;-><init>(Landroid/content/Context;JJ[BI)V

    .line 1058
    .local v0, svc:Lcom/android/exchange/AbstractSyncService;
    new-instance v8, Ljava/lang/Thread;

    const-string v1, "(EasConvSvc)"

    invoke-direct {v8, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1059
    .local v8, thread:Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 1060
    return-void
.end method

.method public moveMessage(JJ)V
    .registers 6
    .parameter "messageId"
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1247
    new-instance v0, Lcom/android/exchange/MessageMoveRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/exchange/MessageMoveRequest;-><init>(JJ)V

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->sendMessageRequest(Lcom/android/exchange/Request;)V

    .line 1248
    return-void
.end method

.method public refreshIRMTemplates(J)V
    .registers 9
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1232
    sget-boolean v4, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v4, :cond_b

    .line 1233
    const-string v4, "IRM"

    const-string v5, "ExchangeService: refreshing templates"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :cond_b
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->getAccountById(J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1236
    .local v0, acct:Lcom/android/emailcommon/provider/EmailContent$Account;
    const/4 v1, 0x1

    .line 1237
    .local v1, isIrmtemplateRefreshNeeded:Z
    new-instance v2, Lcom/android/exchange/EasDevInfoSvc;

    sget-object v4, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    invoke-direct {v2, v4, v0, v1}, Lcom/android/exchange/EasDevInfoSvc;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Z)V

    .line 1238
    .local v2, svc:Lcom/android/exchange/AbstractSyncService;
    new-instance v3, Ljava/lang/Thread;

    const-string v4, "(EasDevInfoSvc IRM)"

    invoke-direct {v3, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1241
    .local v3, thread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1242
    return-void
.end method

.method public searchMessage(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 34
    .parameter "accId"
    .parameter "mailboxId"
    .parameter "foldId"
    .parameter "searchTextString"
    .parameter "greaterThanDateString"
    .parameter "lessThanDateString"
    .parameter "optionsDeepTraversalStr"
    .parameter "conversationIdStr"

    .prologue
    .line 1363
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 1364
    .local v4, accountIdStr:Ljava/lang/String;
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 1365
    .local v8, mailboxIdString:Ljava/lang/String;
    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    .line 1368
    .local v19, foldIdString:Ljava/lang/String;
    if-eqz p11, :cond_1a

    const-string v3, "null"

    move-object/from16 v0, p11

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1a

    .line 1369
    const/16 p11, 0x0

    .line 1373
    :cond_1a
    :try_start_1a
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1d} :catch_d1

    move-result-wide p1

    .line 1378
    :try_start_1e
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_21} :catch_da

    move-result-wide p3

    .line 1383
    :try_start_22
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_25} :catch_e3

    move-result-wide p5

    .line 1387
    const-string v3, "ExchangeProvider"

    const-string v5, "before buildSearchRequest"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    #calls: Lcom/android/exchange/ExchangeService;->buildSearchRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/exchange/SearchRequest;
    invoke-static/range {v3 .. v10}, Lcom/android/exchange/ExchangeService;->access$1100(Lcom/android/exchange/ExchangeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/exchange/SearchRequest;

    move-result-object v16

    .line 1394
    .local v16, request:Lcom/android/exchange/SearchRequest;
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 1395
    .local v9, context:Landroid/content/Context;
    const-string v3, "ExchangeProvider"

    const-string v5, "after buildSearchRequest"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    const/16 v18, 0x0

    .line 1400
    .local v18, emailResult:Lcom/android/exchange/provider/EmailResult;
    const/16 v20, 0x0

    .line 1402
    .local v20, intent:Landroid/content/Intent;
    move-wide/from16 v0, p5

    invoke-static {v9, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v21

    .line 1404
    .local v21, m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v21, :cond_ec

    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v5, 0x62

    if-ne v3, v5, :cond_ec

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    .line 1405
    invoke-static/range {v9 .. v16}, Lcom/android/exchange/EasSyncService;->searchDocument(Landroid/content/Context;JJJLcom/android/exchange/SearchRequest;)Lcom/android/exchange/provider/EmailResult;

    move-result-object v18

    .line 1408
    new-instance v20, Landroid/content/Intent;

    .end local v20           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.EMAILDOCSEARCH_COMPLETED"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1409
    .restart local v20       #intent:Landroid/content/Intent;
    const-string v3, "MailboxId"

    move-object/from16 v0, v20

    move-wide/from16 v1, p5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1410
    const-string v3, "LinkId"

    move-object/from16 v0, v20

    move-object/from16 v1, p7

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1418
    :goto_83
    const-string v3, "ExchangeProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after searchEmail , mailbox id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    if-eqz v18, :cond_cb

    .line 1424
    :try_start_9f
    const-string v3, "SearchResult"

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/exchange/provider/EmailResult;->result:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1425
    const-string v3, "Total"

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/exchange/provider/EmailResult;->total:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1426
    const-string v3, "StartRange"

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/exchange/provider/EmailResult;->startRange:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1427
    const-string v3, "EndRange"

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/exchange/provider/EmailResult;->endRange:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1430
    :cond_cb
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_d0} :catch_100

    .line 1434
    :goto_d0
    return-void

    .line 1374
    .end local v9           #context:Landroid/content/Context;
    .end local v16           #request:Lcom/android/exchange/SearchRequest;
    .end local v18           #emailResult:Lcom/android/exchange/provider/EmailResult;
    .end local v20           #intent:Landroid/content/Intent;
    .end local v21           #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :catch_d1
    move-exception v17

    .line 1375
    .local v17, e:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Illegal value in URI"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1379
    .end local v17           #e:Ljava/lang/NumberFormatException;
    :catch_da
    move-exception v17

    .line 1380
    .restart local v17       #e:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Illegal value in URI"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1384
    .end local v17           #e:Ljava/lang/NumberFormatException;
    :catch_e3
    move-exception v17

    .line 1385
    .restart local v17       #e:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Illegal value in URI"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v17           #e:Ljava/lang/NumberFormatException;
    .restart local v9       #context:Landroid/content/Context;
    .restart local v16       #request:Lcom/android/exchange/SearchRequest;
    .restart local v18       #emailResult:Lcom/android/exchange/provider/EmailResult;
    .restart local v20       #intent:Landroid/content/Intent;
    .restart local v21       #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_ec
    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    .line 1412
    invoke-static/range {v9 .. v16}, Lcom/android/exchange/EasSyncService;->searchEmail(Landroid/content/Context;JJJLcom/android/exchange/SearchRequest;)Lcom/android/exchange/provider/EmailResult;

    move-result-object v18

    .line 1414
    new-instance v20, Landroid/content/Intent;

    .end local v20           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.EMAILSEARCH_COMPLETED"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v20       #intent:Landroid/content/Intent;
    goto :goto_83

    .line 1431
    :catch_100
    move-exception v17

    .line 1432
    .local v17, e:Ljava/lang/Exception;
    const-string v3, "ExchangeProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fzhang exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0
.end method

.method public sendMeetingEditedResponse(JJI)V
    .registers 12
    .parameter "messageId"
    .parameter "draftMessageId"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1149
    new-instance v0, Lcom/android/exchange/MeetingResponseRequest;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/MeetingResponseRequest;-><init>(JJI)V

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->sendMessageRequest(Lcom/android/exchange/Request;)V

    .line 1151
    return-void
.end method

.method public sendMeetingResponse(JI)V
    .registers 5
    .parameter "messageId"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1139
    new-instance v0, Lcom/android/exchange/MeetingResponseRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/exchange/MeetingResponseRequest;-><init>(JI)V

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->sendMessageRequest(Lcom/android/exchange/Request;)V

    .line 1140
    return-void
.end method

.method public sendMessageCancel([JJJ)V
    .registers 19
    .parameter "messageIds"
    .parameter "outboxId"
    .parameter "accountId"

    .prologue
    .line 1283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMessageCancel : start. outboxId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1285
    sget-object v9, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1286
    .local v9, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v9, :cond_21

    .line 1287
    const-string v2, "sendMessageCancel : Fail to Cancel. exchangeService == null"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1319
    :goto_20
    return-void

    .line 1291
    :cond_21
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$500()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 1292
    :try_start_26
    move-wide v0, p2

    invoke-static {v9, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v10

    .line 1293
    .local v10, m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v10, :cond_33

    iget-wide v2, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    cmp-long v2, p4, v2

    if-eqz v2, :cond_3d

    .line 1294
    :cond_33
    const-string v2, "sendMessageCancel : Fail to Cancel. m == null || accountId != m.mAccountKey"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1295
    monitor-exit v12

    goto :goto_20

    .line 1318
    .end local v10           #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :catchall_3a
    move-exception v2

    monitor-exit v12
    :try_end_3c
    .catchall {:try_start_26 .. :try_end_3c} :catchall_3a

    throw v2

    .line 1297
    .restart local v10       #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_3d
    :try_start_3d
    iget-wide v2, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v9, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    .line 1298
    .local v8, acct:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v8, :cond_83

    .line 1299
    #getter for: Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/exchange/ExchangeService;->access$800(Lcom/android/exchange/ExchangeService;)Ljava/util/HashMap;

    move-result-object v2

    iget-wide v3, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/exchange/AbstractSyncService;

    .line 1300
    .local v11, service:Lcom/android/exchange/AbstractSyncService;
    if-eqz v11, :cond_7c

    move-object v0, v11

    check-cast v0, Lcom/android/exchange/EasSyncService;

    move-object v2, v0

    iget-boolean v2, v2, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    if-eqz v2, :cond_7c

    .line 1301
    instance-of v2, v11, Lcom/android/exchange/EasOutboxService;

    if-eqz v2, :cond_75

    .line 1302
    const-string v2, "sendMessageCancel : service instanceof EasOutboxService"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1303
    move-object v0, v11

    check-cast v0, Lcom/android/exchange/EasOutboxService;

    move-object v2, v0

    move-object v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/exchange/EasOutboxService;->sendMessageCancel([JJJ)V

    .line 1318
    monitor-exit v12

    goto :goto_20

    .line 1306
    :cond_75
    const-string v2, "sendMessageCancel : service is not instanceof EasOutboxService"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1307
    monitor-exit v12

    goto :goto_20

    .line 1310
    :cond_7c
    const-string v2, "sendMessageCancel : Fail to Cancel. service is not valid"

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1311
    monitor-exit v12

    goto :goto_20

    .line 1314
    .end local v11           #service:Lcom/android/exchange/AbstractSyncService;
    :cond_83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMessageCancel : Fail to Cancel. acct == null. accountId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1316
    monitor-exit v12
    :try_end_9c
    .catchall {:try_start_3d .. :try_end_9c} :catchall_3a

    goto :goto_20
.end method

.method public sendRecoveryPassword(JLjava/lang/String;)V
    .registers 10
    .parameter "accountId"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1198
    const-string v4, "ExchangeService"

    const-string v5, "sendRecoveryPassword"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->getAccountById(J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1200
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_15

    .line 1201
    const-string v4, "ExchangeService"

    const-string v5, "acccount is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :goto_14
    return-void

    .line 1205
    :cond_15
    :try_start_15
    new-instance v2, Lcom/android/exchange/PasswordRecoveryService;

    sget-object v4, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    invoke-direct {v2, v4, v0, p3}, Lcom/android/exchange/PasswordRecoveryService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;)V

    .line 1206
    .local v2, svc:Lcom/android/exchange/AbstractSyncService;
    new-instance v3, Ljava/lang/Thread;

    const-string v4, "(PasswordRecovery)"

    invoke-direct {v3, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1209
    .local v3, thread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_26} :catch_27

    goto :goto_14

    .line 1210
    .end local v2           #svc:Lcom/android/exchange/AbstractSyncService;
    .end local v3           #thread:Ljava/lang/Thread;
    :catch_27
    move-exception v1

    .line 1211
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14
.end method

.method public setCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .registers 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    #getter for: Lcom/android/exchange/ExchangeService;->mCallbackList:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->access$000(Lcom/android/exchange/ExchangeService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1194
    return-void
.end method

.method public setDeviceInfo(J)V
    .registers 8
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1223
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->getAccountById(J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1224
    .local v0, acct:Lcom/android/emailcommon/provider/EmailContent$Account;
    new-instance v1, Lcom/android/exchange/EasDevInfoSvc;

    sget-object v3, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    invoke-direct {v1, v3, v0}, Lcom/android/exchange/EasDevInfoSvc;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1225
    .local v1, svc:Lcom/android/exchange/AbstractSyncService;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(DevInfoSvc)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1226
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1227
    return-void
.end method

.method public setLogging(I)V
    .registers 2
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1135
    invoke-static {p1}, Lcom/android/emailcommon/EasRefs;->setUserDebug(I)V

    .line 1136
    return-void
.end method

.method public startSync(JZ)V
    .registers 16
    .parameter "mailboxId"
    .parameter "userRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 824
    const-string v6, "ExchangeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startSync() called. mailboxId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    sget-object v3, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 827
    .local v3, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v3, :cond_24

    .line 828
    const-string v6, "ExchangeService"

    const-string v7, "startSync() exchangeService == null. return"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_23
    :goto_23
    return-void

    .line 832
    :cond_24
    invoke-static {}, Lcom/android/exchange/ExchangeService;->checkExchangeServiceServiceRunning()V

    .line 834
    invoke-static {v3, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v4

    .line 835
    .local v4, m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v4, :cond_35

    .line 836
    const-string v6, "ExchangeService"

    const-string v7, "startSync() m == null. return"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 840
    :cond_35
    sget-boolean v6, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    if-eqz v6, :cond_92

    if-eqz p3, :cond_92

    .line 841
    const-string v6, "ExchangeService"

    const-string v7, "startSync() sConnectivityHold && userRequest. return"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :try_start_42
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$400()Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, p1, p2, v7, v8}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxStatus(JII)V

    .line 845
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$400()Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v6

    const/16 v7, 0x20

    const/4 v8, 0x0

    invoke-virtual {v6, p1, p2, v7, v8}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxStatus(JII)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_55} :catch_16f

    .line 850
    :goto_55
    iget v6, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_92

    .line 851
    const-string v6, "ExchangeService"

    const-string v7, "startSync() sConnectivityHold && userRequest. m.mType == Mailbox.TYPE_OUTBOX"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    if-eqz p3, :cond_23

    .line 854
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 855
    .local v2, cv:Landroid/content/ContentValues;
    const-string v6, "syncServerId"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 856
    const-string v6, "retrySendTimes"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 857
    invoke-virtual {v3}, Lcom/android/exchange/ExchangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "mailboxKey=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v2, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_23

    .line 867
    .end local v2           #cv:Landroid/content/ContentValues;
    :cond_92
    iget v6, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_15b

    .line 868
    const-string v6, "ExchangeService"

    const-string v7, "startSync() m.mType == Mailbox.TYPE_OUTBOX"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    if-eqz p3, :cond_ce

    .line 871
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 872
    .restart local v2       #cv:Landroid/content/ContentValues;
    const-string v6, "syncServerId"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 873
    const-string v6, "retrySendTimes"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 874
    invoke-virtual {v3}, Lcom/android/exchange/ExchangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "mailboxKey=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v2, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 882
    .end local v2           #cv:Landroid/content/ContentValues;
    :cond_ce
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$500()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 883
    :try_start_d3
    iget-object v6, v3, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    monitor-exit v7
    :try_end_dd
    .catchall {:try_start_d3 .. :try_end_dd} :catchall_158

    .line 886
    const-string v6, "start outbox"

    invoke-static {v6}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 894
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-wide v7, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 896
    .local v1, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v1, :cond_23

    .line 897
    iget-object v6, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x4028333333333333L

    cmpg-double v6, v6, v8

    if-lez v6, :cond_23

    .line 922
    .end local v1           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_fd
    iget-wide v6, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const/16 v8, 0x44

    invoke-static {v3, v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v5

    .line 924
    .local v5, m2:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v5, :cond_10f

    .line 925
    iget-object v6, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    const/4 v7, 0x4

    iget-wide v8, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #calls: Lcom/android/exchange/ExchangeService;->releaseSyncHoldMailbox(Landroid/content/Context;IJ)V
    invoke-static {v6, v3, v7, v8, v9}, Lcom/android/exchange/ExchangeService;->access$600(Lcom/android/exchange/ExchangeService;Landroid/content/Context;IJ)V

    .line 928
    :cond_10f
    iget v6, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_169

    .line 929
    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-static {p1, p2, v6, v7}, Lcom/android/exchange/ExchangeService;->startManualSync(JILcom/android/exchange/Request;)V

    .line 936
    :goto_119
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-wide v7, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 937
    .restart local v1       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v1, :cond_23

    iget v6, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v6, :cond_23

    iget-object v6, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v8, 0x402c

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_23

    .line 940
    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 941
    .local v0, RIC_Id:Ljava/lang/Long;
    iget-object v6, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    iget-wide v7, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    #calls: Lcom/android/exchange/ExchangeService;->getMailBoxIdRIC(J)Ljava/lang/Long;
    invoke-static {v6, v7, v8}, Lcom/android/exchange/ExchangeService;->access$700(Lcom/android/exchange/ExchangeService;J)Ljava/lang/Long;

    move-result-object v0

    .line 942
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_23

    .line 943
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/android/exchange/ExchangeService;->startManualSync(JILcom/android/exchange/Request;)V

    goto/16 :goto_23

    .line 884
    .end local v0           #RIC_Id:Ljava/lang/Long;
    .end local v1           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v5           #m2:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :catchall_158
    move-exception v6

    :try_start_159
    monitor-exit v7
    :try_end_15a
    .catchall {:try_start_159 .. :try_end_15a} :catchall_158

    throw v6

    .line 907
    :cond_15b
    iget v6, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v7, 0x8

    if-eq v6, v7, :cond_23

    .line 910
    iget v6, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v7, 0x62

    if-ne v6, v7, :cond_fd

    goto/16 :goto_23

    .line 931
    .restart local v5       #m2:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_169
    const-string v6, "startManualSync should not be called at startSync() in the case of OutBox"

    invoke-static {v6}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_119

    .line 847
    .end local v5           #m2:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :catch_16f
    move-exception v6

    goto/16 :goto_55
.end method

.method public stopSync(J)V
    .registers 3
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 950
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->stopManualSync(J)V

    .line 951
    return-void
.end method

.method public updateFolderList(J)V
    .registers 10
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x44

    .line 1074
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-eqz v1, :cond_18

    .line 1075
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    invoke-static {v1, p1, p2, v6}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 1077
    .local v0, m2:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_18

    .line 1078
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    sget-object v2, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    const/4 v3, 0x4

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #calls: Lcom/android/exchange/ExchangeService;->releaseSyncHoldMailbox(Landroid/content/Context;IJ)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/exchange/ExchangeService;->access$600(Lcom/android/exchange/ExchangeService;Landroid/content/Context;IJ)V

    .line 1086
    .end local v0           #m2:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_18
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-eqz v1, :cond_8d

    .line 1087
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    invoke-static {v1, p1, p2, v6}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 1089
    .restart local v0       #m2:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_8d

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8d

    .line 1090
    invoke-static {}, Lcom/android/exchange/ExchangeService;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1091
    :try_start_2e
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    #getter for: Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->access$800(Lcom/android/exchange/ExchangeService;)Ljava/util/HashMap;

    move-result-object v1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6e

    .line 1092
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    iget-object v1, v1, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFolderList(): Starting sync for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1094
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    const/4 v3, 0x5

    const/4 v4, 0x0

    #calls: Lcom/android/exchange/ExchangeService;->requestSync(Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V
    invoke-static {v1, v0, v3, v4}, Lcom/android/exchange/ExchangeService;->access$900(Lcom/android/exchange/ExchangeService;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    .line 1095
    monitor-exit v2

    .line 1105
    .end local v0           #m2:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :goto_6d
    return-void

    .line 1097
    .restart local v0       #m2:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncService for mailbox:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " already running. Cannot start FolderSync thread"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->errorlog(Ljava/lang/String;)V

    .line 1099
    monitor-exit v2
    :try_end_8d
    .catchall {:try_start_2e .. :try_end_8d} :catchall_94

    .line 1104
    .end local v0           #m2:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_8d
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_6d

    .line 1099
    .restart local v0       #m2:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :catchall_94
    move-exception v1

    :try_start_95
    monitor-exit v2
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw v1
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Landroid/os/Bundle;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 764
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 765
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-virtual {p0, v1}, Lcom/android/exchange/ExchangeService$2;->getLicenseKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 766
    if-nez v1, :cond_15

    .line 767
    const-string v1, "validate_result_code"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 773
    :goto_14
    return-object v0

    :cond_15
    const-class v0, Lcom/android/exchange/EasSyncService;

    iget-object v7, p0, Lcom/android/exchange/ExchangeService$2;->this$0:Lcom/android/exchange/ExchangeService;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-static/range {v0 .. v7}, Lcom/android/exchange/AbstractSyncService;->validate(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_14
.end method
