.class public Lcom/google/android/youtube/core/transfer/UploadService;
.super Lcom/google/android/youtube/core/transfer/TransferService;
.source "UploadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/transfer/UploadService$BootReceiver;
    }
.end annotation


# instance fields
.field private converter:Lcom/google/android/youtube/core/converter/http/VideoResponseConverter;

.field private executor:Ljava/util/concurrent/Executor;

.field private gdataClient:Lcom/google/android/youtube/core/client/GDataClient;

.field private httpClient:Lorg/apache/http/client/HttpClient;

.field private userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService;-><init>()V

    .line 79
    return-void
.end method

.method public static createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 2
    .parameter

    .prologue
    .line 35
    const-class v0, Lcom/google/android/youtube/core/transfer/UploadService;

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->createIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createTask(Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;Lcom/google/android/youtube/core/transfer/TransferTask$Listener;)Lcom/google/android/youtube/core/transfer/TransferTask;
    .registers 13
    .parameter "transfer"
    .parameter "listener"

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/youtube/core/transfer/UploadTask;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadService;->executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/UploadService;->httpClient:Lorg/apache/http/client/HttpClient;

    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/UploadService;->gdataClient:Lcom/google/android/youtube/core/client/GDataClient;

    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/UploadService;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/UploadService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/BaseApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/BaseApplication;->getAnalytics()Lcom/google/android/youtube/core/Analytics;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/UploadService;->converter:Lcom/google/android/youtube/core/converter/http/VideoResponseConverter;

    move-object v1, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/youtube/core/transfer/UploadTask;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/client/GDataClient;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/converter/http/VideoResponseConverter;Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;Lcom/google/android/youtube/core/transfer/TransferTask$Listener;)V

    return-object v0
.end method

.method protected getDatabaseName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    const-string v0, "uploads.db"

    return-object v0
.end method

.method protected getTransferNetworkPolicyPreference()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    const-string v0, "upload_policy"

    return-object v0
.end method

.method protected getTransferWhenChargingOnlyPreference()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 54
    invoke-super {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->onCreate()V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/UploadService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/BaseApplication;

    .line 56
    .local v0, app:Lcom/google/android/youtube/core/BaseApplication;
    invoke-virtual {v0}, Lcom/google/android/youtube/core/BaseApplication;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadService;->executor:Ljava/util/concurrent/Executor;

    .line 57
    invoke-virtual {v0}, Lcom/google/android/youtube/core/BaseApplication;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadService;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 58
    invoke-virtual {v0}, Lcom/google/android/youtube/core/BaseApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadService;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 59
    invoke-virtual {v0}, Lcom/google/android/youtube/core/BaseApplication;->getXmlParser()Lcom/google/android/youtube/core/converter/XmlParser;

    move-result-object v1

    .line 60
    .local v1, xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;
    new-instance v2, Lcom/google/android/youtube/core/converter/http/VideoResponseConverter;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/youtube/core/converter/http/VideoResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;Z)V

    iput-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadService;->converter:Lcom/google/android/youtube/core/converter/http/VideoResponseConverter;

    .line 61
    check-cast v0, Lcom/google/android/youtube/core/client/GDataClient$Provider;

    .end local v0           #app:Lcom/google/android/youtube/core/BaseApplication;
    invoke-interface {v0}, Lcom/google/android/youtube/core/client/GDataClient$Provider;->getGDataClient()Lcom/google/android/youtube/core/client/GDataClient;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadService;->gdataClient:Lcom/google/android/youtube/core/client/GDataClient;

    .line 62
    return-void
.end method
