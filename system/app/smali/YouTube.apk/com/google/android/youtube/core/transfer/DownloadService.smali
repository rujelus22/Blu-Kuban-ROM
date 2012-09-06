.class public Lcom/google/android/youtube/core/transfer/DownloadService;
.super Lcom/google/android/youtube/core/transfer/TransferService;
.source "SourceFile"


# instance fields
.field private a:Ljava/security/Key;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService;-><init>()V

    .line 90
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 2
    .parameter

    .prologue
    .line 35
    const-class v0, Lcom/google/android/youtube/core/transfer/DownloadService;

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/youtube/core/transfer/i;)Lcom/google/android/youtube/core/utils/v;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 39
    const-class v0, Lcom/google/android/youtube/core/transfer/DownloadService;

    invoke-static {p0, v0, p1}, Lcom/google/android/youtube/core/transfer/TransferService;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/youtube/core/transfer/i;)Lcom/google/android/youtube/core/utils/v;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/transfer/Transfer;Lcom/google/android/youtube/core/transfer/n;)Lcom/google/android/youtube/core/transfer/m;
    .registers 13
    .parameter
    .parameter

    .prologue
    .line 43
    new-instance v0, Lcom/google/android/youtube/core/transfer/c;

    iget-object v1, p1, Lcom/google/android/youtube/core/transfer/Transfer;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    iget-wide v3, p1, Lcom/google/android/youtube/core/transfer/Transfer;->f:J

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/DownloadService;->g()Lcom/google/android/youtube/core/transfer/e;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/youtube/core/transfer/DownloadService;->a:Ljava/security/Key;

    move-object v5, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/youtube/core/transfer/c;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/youtube/core/transfer/n;ZZLcom/google/android/youtube/core/transfer/e;Ljava/security/Key;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/youtube/core/transfer/Transfer;)Ljava/lang/Runnable;
    .registers 3
    .parameter

    .prologue
    .line 55
    new-instance v0, Lcom/google/android/youtube/core/transfer/a;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/transfer/a;-><init>(Lcom/google/android/youtube/core/transfer/DownloadService;Lcom/google/android/youtube/core/transfer/Transfer;)V

    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    const-string v0, "downloads.db"

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    const-string v0, "download_policy"

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    const-string v0, "download_only_while_charging"

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    const-string v0, "transfer_max_connections"

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    const-string v0, "download_max_rate"

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 29
    invoke-super {p0}, Lcom/google/android/youtube/core/transfer/TransferService;->onCreate()V

    .line 30
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/DownloadService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/BaseApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/BaseApplication;->O()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/f;->a(Landroid/content/SharedPreferences;)Ljava/security/Key;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/DownloadService;->a:Ljava/security/Key;

    .line 32
    return-void
.end method
