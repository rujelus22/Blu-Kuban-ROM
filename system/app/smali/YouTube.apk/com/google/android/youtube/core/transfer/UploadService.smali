.class public Lcom/google/android/youtube/core/transfer/UploadService;
.super Lcom/google/android/youtube/core/transfer/TransferService;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/concurrent/Executor;

.field private b:Lorg/apache/http/client/HttpClient;

.field private c:Lcom/google/android/youtube/core/client/ad;

.field private d:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private e:Lcom/google/android/youtube/core/converter/http/df;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService;-><init>()V

    .line 88
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 2
    .parameter

    .prologue
    .line 36
    const-class v0, Lcom/google/android/youtube/core/transfer/UploadService;

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/youtube/core/transfer/d;)Lcom/google/android/youtube/core/utils/n;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 40
    const-class v0, Lcom/google/android/youtube/core/transfer/UploadService;

    invoke-static {p0, v0, p1}, Lcom/google/android/youtube/core/transfer/TransferService;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/youtube/core/transfer/d;)Lcom/google/android/youtube/core/utils/n;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/transfer/Transfer;Lcom/google/android/youtube/core/transfer/i;)Lcom/google/android/youtube/core/transfer/h;
    .registers 13
    .parameter
    .parameter

    .prologue
    .line 44
    new-instance v0, Lcom/google/android/youtube/core/transfer/w;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadService;->a:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/UploadService;->b:Lorg/apache/http/client/HttpClient;

    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/UploadService;->c:Lcom/google/android/youtube/core/client/ad;

    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/UploadService;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/UploadService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/BaseApplication;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/BaseApplication;->J()Lcom/google/android/youtube/core/Analytics;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/UploadService;->e:Lcom/google/android/youtube/core/converter/http/df;

    move-object v1, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/youtube/core/transfer/w;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/converter/http/df;Lcom/google/android/youtube/core/transfer/Transfer;Lcom/google/android/youtube/core/transfer/i;)V

    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    const-string v0, "uploads.db"

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    const-string v0, "upload_policy"

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 58
    invoke-super {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->onCreate()V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/UploadService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/BaseApplication;

    .line 60
    invoke-virtual {v0}, Lcom/google/android/youtube/core/BaseApplication;->x()Ljava/util/concurrent/Executor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/transfer/UploadService;->a:Ljava/util/concurrent/Executor;

    .line 61
    invoke-virtual {v0}, Lcom/google/android/youtube/core/BaseApplication;->z()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/transfer/UploadService;->b:Lorg/apache/http/client/HttpClient;

    .line 62
    invoke-virtual {v0}, Lcom/google/android/youtube/core/BaseApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/transfer/UploadService;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 63
    invoke-virtual {v0}, Lcom/google/android/youtube/core/BaseApplication;->A()Lcom/google/android/youtube/core/converter/k;

    move-result-object v1

    .line 64
    new-instance v2, Lcom/google/android/youtube/core/converter/http/df;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/youtube/core/converter/http/df;-><init>(Lcom/google/android/youtube/core/converter/k;Z)V

    iput-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadService;->e:Lcom/google/android/youtube/core/converter/http/df;

    .line 65
    check-cast v0, Lcom/google/android/youtube/core/client/ae;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ae;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadService;->c:Lcom/google/android/youtube/core/client/ad;

    .line 66
    return-void
.end method
