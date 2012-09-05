.class public Lcom/google/android/youtube/core/transfer/DownloadService;
.super Lcom/google/android/youtube/core/transfer/TransferService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService;-><init>()V

    .line 54
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 2
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/google/android/youtube/core/transfer/DownloadService;

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/youtube/core/transfer/d;)Lcom/google/android/youtube/core/utils/n;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/google/android/youtube/core/transfer/DownloadService;

    invoke-static {p0, v0, p1}, Lcom/google/android/youtube/core/transfer/TransferService;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/youtube/core/transfer/d;)Lcom/google/android/youtube/core/utils/n;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/transfer/Transfer;Lcom/google/android/youtube/core/transfer/i;)Lcom/google/android/youtube/core/transfer/h;
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 30
    new-instance v0, Lcom/google/android/youtube/core/transfer/a;

    iget-object v1, p1, Lcom/google/android/youtube/core/transfer/Transfer;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    iget-wide v3, p1, Lcom/google/android/youtube/core/transfer/Transfer;->f:J

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/core/transfer/a;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/youtube/core/transfer/i;ZZ)V

    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    const-string v0, "downloads.db"

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    const-string v0, "download_policy"

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    const-string v0, "download_only_while_charging"

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    const-string v0, "transfer_max_connections"

    return-object v0
.end method
