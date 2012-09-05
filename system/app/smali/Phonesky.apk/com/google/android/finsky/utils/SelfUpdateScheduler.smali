.class public Lcom/google/android/finsky/utils/SelfUpdateScheduler;
.super Ljava/lang/Object;
.source "SelfUpdateScheduler.java"

# interfaces
.implements Lcom/google/android/finsky/download/DownloadQueueListener;


# instance fields
.field private final mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

.field private mMarketVersion:I

.field private mOnAppExitDeferrer:Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;

.field private mUpdateDownload:Lcom/google/android/finsky/download/Download;

.field private mUpdateInProgress:Z


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/download/DownloadQueue;I)V
    .registers 4
    .parameter "downloadQueue"
    .parameter "marketVersion"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateInProgress:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateDownload:Lcom/google/android/finsky/download/Download;

    .line 64
    iput-object p1, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    .line 65
    iput p2, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mMarketVersion:I

    .line 66
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/finsky/utils/SelfUpdateScheduler;Lcom/google/android/finsky/download/Download;)Lcom/google/android/finsky/download/Download;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateDownload:Lcom/google/android/finsky/download/Download;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/utils/SelfUpdateScheduler;)Lcom/google/android/finsky/download/DownloadQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    return-object v0
.end method


# virtual methods
.method public checkForSelfUpdate(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V
    .registers 11
    .parameter "response"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 75
    iget-boolean v4, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateInProgress:Z

    if-eqz v4, :cond_e

    .line 76
    const-string v4, "Skipping self-update check as there is an update already queued."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    :goto_d
    return-void

    .line 82
    :cond_e
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getLatestClientVersionCode()I

    move-result v3

    .line 83
    .local v3, serverMarketVersion:I
    iget v4, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mMarketVersion:I

    if-lt v4, v3, :cond_2d

    .line 84
    const-string v4, "Skipping self-update. Local Version [%d] >= Server Version [%d]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mMarketVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    .line 90
    :cond_2d
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getLatestClientUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 91
    const-string v4, "Skipping self-update. No upgrade URL specified."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    .line 97
    :cond_3f
    iput-boolean v8, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateInProgress:Z

    .line 99
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, accountName:Ljava/lang/String;
    new-instance v1, Landroid/accounts/Account;

    const-string v4, "com.google"

    invoke-direct {v1, v2, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .local v1, account:Landroid/accounts/Account;
    new-instance v0, Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-direct {v0, v4, v1}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 103
    .local v0, a:Lcom/android/volley/toolbox/AndroidAuthenticator;
    new-instance v5, Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;

    invoke-direct {v5, p0, p1}, Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;-><init>(Lcom/google/android/finsky/utils/SelfUpdateScheduler;Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    sget-object v4, Lcom/google/android/finsky/config/G;->vendingSecureAuthTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v5, v6, v4}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAuthTokenAsync(Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public onAdd(Lcom/google/android/finsky/download/Download;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 177
    return-void
.end method

.method public onCancel(Lcom/google/android/finsky/download/Download;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 171
    return-void
.end method

.method public onComplete(Lcom/google/android/finsky/download/Download;)V
    .registers 5
    .parameter "download"

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateDownload:Lcom/google/android/finsky/download/Download;

    if-eq p1, v0, :cond_1e

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Self-update ignoring completed download "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :goto_1d
    return-void

    .line 131
    :cond_1e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateDownload:Lcom/google/android/finsky/download/Download;

    .line 132
    iget-object v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mOnAppExitDeferrer:Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;

    if-eqz v0, :cond_2d

    .line 133
    const-string v0, "Self-update package Uri was already assigned!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1d

    .line 137
    :cond_2d
    const-string v0, "Self-update ready to be installed, waiting for market to close."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    new-instance v0, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mOnAppExitDeferrer:Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;

    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mOnAppExitDeferrer:Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;

    new-instance v1, Lcom/google/android/finsky/utils/SelfUpdateScheduler$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/utils/SelfUpdateScheduler$2;-><init>(Lcom/google/android/finsky/utils/SelfUpdateScheduler;Lcom/google/android/finsky/download/Download;)V

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;->runOnApplicationClose(Ljava/lang/Runnable;I)V

    goto :goto_1d
.end method

.method public onError(Lcom/google/android/finsky/download/Download;I)V
    .registers 7
    .parameter "download"
    .parameter "httpStatus"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateDownload:Lcom/google/android/finsky/download/Download;

    if-ne p1, v0, :cond_13

    .line 162
    const-string v0, "Self-update failed because of HTTP error code: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :cond_13
    return-void
.end method

.method public onNotificationClicked(Lcom/google/android/finsky/download/Download;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 180
    return-void
.end method

.method public onProgress(Lcom/google/android/finsky/download/Download;Lcom/google/android/finsky/download/DownloadProgress;)V
    .registers 3
    .parameter "download"
    .parameter "progress"

    .prologue
    .line 183
    return-void
.end method

.method public onStart(Lcom/google/android/finsky/download/Download;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 168
    return-void
.end method

.method public onUpdate()V
    .registers 1

    .prologue
    .line 174
    return-void
.end method
