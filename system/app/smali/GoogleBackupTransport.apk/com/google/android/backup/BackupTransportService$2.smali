.class Lcom/google/android/backup/BackupTransportService$2;
.super Landroid/content/BroadcastReceiver;
.source "BackupTransportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/backup/BackupTransportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/backup/BackupTransportService;


# direct methods
.method constructor <init>(Lcom/google/android/backup/BackupTransportService;)V
    .registers 2
    .parameter

    .prologue
    .line 660
    iput-object p1, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 665
    const-string v5, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 667
    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    invoke-virtual {v5}, Lcom/google/android/backup/BackupTransportService;->clearMoratoriums()V

    .line 668
    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    #calls: Lcom/google/android/backup/BackupTransportService;->validateAndGetBackupAccount()Landroid/accounts/Account;
    invoke-static {v5}, Lcom/google/android/backup/BackupTransportService;->access$000(Lcom/google/android/backup/BackupTransportService;)Landroid/accounts/Account;

    .line 674
    :cond_17
    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Lcom/google/android/backup/BackupTransportService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 675
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v5

    if-nez v5, :cond_4b

    .line 677
    :cond_29
    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mBackupScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v5}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/common/OperationScheduler;->setEnabledState(Z)V

    .line 692
    :goto_32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 693
    .local v3, now:J
    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mBackupScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v5}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mSchedulerOptions:Lcom/android/common/OperationScheduler$Options;
    invoke-static {v6}, Lcom/google/android/backup/BackupTransportService;->access$200(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler$Options;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/common/OperationScheduler;->getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_7c

    .line 708
    :goto_4a
    return-void

    .line 678
    .end local v3           #now:J
    :cond_4b
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v5

    if-nez v5, :cond_5b

    .line 680
    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mBackupScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v5}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/common/OperationScheduler;->setEnabledState(Z)V

    goto :goto_32

    .line 682
    :cond_5b
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 683
    .local v2, ni:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_72

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 685
    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mBackupScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v5}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/common/OperationScheduler;->setEnabledState(Z)V

    goto :goto_32

    .line 688
    :cond_72
    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mBackupScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v5}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/common/OperationScheduler;->setEnabledState(Z)V

    goto :goto_32

    .line 697
    .end local v2           #ni:Landroid/net/NetworkInfo;
    .restart local v3       #now:J
    :cond_7c
    :try_start_7c
    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    #calls: Lcom/google/android/backup/BackupTransportService;->getBackupManager()Landroid/app/backup/IBackupManager;
    invoke-static {v5}, Lcom/google/android/backup/BackupTransportService;->access$300(Lcom/google/android/backup/BackupTransportService;)Landroid/app/backup/IBackupManager;

    move-result-object v5

    if-nez v5, :cond_95

    .line 698
    const-string v5, "BackupTransportService"

    const-string v6, "No BackupManager service available"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_8b} :catch_8c

    goto :goto_4a

    .line 704
    :catch_8c
    move-exception v1

    .line 705
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "BackupTransportService"

    const-string v6, "Error triggering backup"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    .line 701
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_95
    :try_start_95
    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mBackupScheduler:Lcom/android/common/OperationScheduler;
    invoke-static {v5}, Lcom/google/android/backup/BackupTransportService;->access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;

    move-result-object v5

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v5, v6, v7}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 702
    iget-object v5, p0, Lcom/google/android/backup/BackupTransportService$2;->this$0:Lcom/google/android/backup/BackupTransportService;

    #getter for: Lcom/google/android/backup/BackupTransportService;->mBackupManager:Landroid/app/backup/IBackupManager;
    invoke-static {v5}, Lcom/google/android/backup/BackupTransportService;->access$900(Lcom/google/android/backup/BackupTransportService;)Landroid/app/backup/IBackupManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/backup/IBackupManager;->backupNow()V
    :try_end_ac
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_ac} :catch_8c

    goto :goto_4a
.end method
