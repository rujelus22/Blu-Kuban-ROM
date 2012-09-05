.class public Lcom/google/android/youtube/core/transfer/DownloadService;
.super Lcom/google/android/youtube/core/transfer/TransferService;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/transfer/DownloadService$BootReceiver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService;-><init>()V

    .line 45
    return-void
.end method

.method public static createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 2
    .parameter

    .prologue
    .line 21
    const-class v0, Lcom/google/android/youtube/core/transfer/DownloadService;

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->createIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createTask(Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;Lcom/google/android/youtube/core/transfer/TransferTask$Listener;)Lcom/google/android/youtube/core/transfer/TransferTask;
    .registers 11
    .parameter "transfer"
    .parameter "listener"

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/youtube/core/transfer/DownloadTask;

    iget-object v1, p1, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->networkUri:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    iget-wide v3, p1, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->bytesTotal:J

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/core/transfer/DownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/youtube/core/transfer/TransferTask$Listener;ZZ)V

    return-object v0
.end method

.method protected getDatabaseName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    const-string v0, "downloads.db"

    return-object v0
.end method

.method protected getTransferNetworkPolicyPreference()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    const-string v0, "download_policy"

    return-object v0
.end method

.method protected getTransferWhenChargingOnlyPreference()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    const-string v0, "download_only_while_charging"

    return-object v0
.end method
