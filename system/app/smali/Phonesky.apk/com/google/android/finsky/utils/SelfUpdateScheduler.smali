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
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateInProgress:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateDownload:Lcom/google/android/finsky/download/Download;

    .line 67
    iput-object p1, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    .line 68
    iput p2, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mMarketVersion:I

    .line 69
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
    .registers 12
    .parameter "response"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 78
    iget-boolean v5, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateInProgress:Z

    if-eqz v5, :cond_e

    .line 79
    const-string v5, "Skipping self-update check as there is an update already queued."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :goto_d
    return-void

    .line 85
    :cond_e
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getLatestClientVersionCode()I

    move-result v4

    .line 86
    .local v4, serverMarketVersion:I
    iget v5, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mMarketVersion:I

    if-lt v5, v4, :cond_2d

    .line 87
    const-string v5, "Skipping self-update. Local Version [%d] >= Server Version [%d]"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mMarketVersion:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    .line 93
    :cond_2d
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getLatestClientUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 94
    const-string v5, "Skipping self-update. No upgrade URL specified."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    .line 100
    :cond_3f
    iput-boolean v9, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateInProgress:Z

    .line 102
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, accountName:Ljava/lang/String;
    new-instance v1, Landroid/accounts/Account;

    const-string v5, "com.google"

    invoke-direct {v1, v2, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v1, account:Landroid/accounts/Account;
    new-instance v0, Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    sget-object v5, Lcom/google/android/finsky/config/G;->vendingSecureAuthTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v0, v6, v1, v5}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 106
    .local v0, a:Lcom/android/volley/toolbox/AndroidAuthenticator;
    new-instance v3, Lcom/google/android/finsky/billing/AsyncAuthenticator;

    invoke-direct {v3, v0}, Lcom/google/android/finsky/billing/AsyncAuthenticator;-><init>(Lcom/android/volley/toolbox/Authenticator;)V

    .line 108
    .local v3, asyncAuthenticator:Lcom/google/android/finsky/billing/AsyncAuthenticator;
    new-instance v5, Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;

    invoke-direct {v5, p0, p1}, Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;-><init>(Lcom/google/android/finsky/utils/SelfUpdateScheduler;Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/google/android/finsky/billing/AsyncAuthenticator;->getToken(Lcom/google/android/finsky/billing/AsyncAuthenticator$Listener;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public onCancel(Lcom/google/android/finsky/download/Download;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 186
    return-void
.end method

.method public onComplete(Lcom/google/android/finsky/download/Download;)V
    .registers 7
    .parameter "download"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 134
    iget-object v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateDownload:Lcom/google/android/finsky/download/Download;

    if-eq p1, v0, :cond_1f

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Self-update ignoring completed download "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    :goto_1e
    return-void

    .line 139
    :cond_1f
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    const-string v1, "install.downloadComplete"

    const-string v2, "self-update-download"

    invoke-interface {v0, v1, v2, v4}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iput-object v4, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateDownload:Lcom/google/android/finsky/download/Download;

    .line 142
    iget-object v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mOnAppExitDeferrer:Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;

    if-eqz v0, :cond_3c

    .line 143
    const-string v0, "Self-update package Uri was already assigned!"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1e

    .line 147
    :cond_3c
    const-string v0, "Self-update ready to be installed, waiting for market to close."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    new-instance v0, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mOnAppExitDeferrer:Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;

    .line 149
    iget-object v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mOnAppExitDeferrer:Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;

    new-instance v1, Lcom/google/android/finsky/utils/SelfUpdateScheduler$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/utils/SelfUpdateScheduler$2;-><init>(Lcom/google/android/finsky/utils/SelfUpdateScheduler;Lcom/google/android/finsky/download/Download;)V

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;->runOnApplicationClose(Ljava/lang/Runnable;I)V

    goto :goto_1e
.end method

.method public onError(Lcom/google/android/finsky/download/Download;I)V
    .registers 7
    .parameter "download"
    .parameter "httpStatus"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateDownload:Lcom/google/android/finsky/download/Download;

    if-ne p1, v0, :cond_26

    .line 172
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    const-string v1, "install.downloadError"

    const-string v2, "self-update-download"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v0, "Self-update failed because of HTTP error code: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :cond_26
    return-void
.end method

.method public onNotificationClicked(Lcom/google/android/finsky/download/Download;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 189
    return-void
.end method

.method public onProgress(Lcom/google/android/finsky/download/Download;Lcom/google/android/finsky/download/DownloadProgress;)V
    .registers 3
    .parameter "download"
    .parameter "progress"

    .prologue
    .line 192
    return-void
.end method

.method public onStart(Lcom/google/android/finsky/download/Download;)V
    .registers 6
    .parameter "download"

    .prologue
    .line 180
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    const-string v1, "install.downloadStarted"

    const-string v2, "self-update-download"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method
