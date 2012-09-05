.class Lcom/android/providers/downloads/DownloadService$1;
.super Landroid/media/IMediaScannerListener$Stub;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/DownloadService;->scanFile(Lcom/android/providers/downloads/DownloadInfo;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/DownloadService;

.field final synthetic val$deleteFile:Z

.field final synthetic val$id:J

.field final synthetic val$key:Landroid/net/Uri;

.field final synthetic val$updateDatabase:Z


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/DownloadService;ZLandroid/net/Uri;ZJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadService$1;->this$0:Lcom/android/providers/downloads/DownloadService;

    iput-boolean p2, p0, Lcom/android/providers/downloads/DownloadService$1;->val$updateDatabase:Z

    iput-object p3, p0, Lcom/android/providers/downloads/DownloadService$1;->val$key:Landroid/net/Uri;

    iput-boolean p4, p0, Lcom/android/providers/downloads/DownloadService$1;->val$deleteFile:Z

    iput-wide p5, p0, Lcom/android/providers/downloads/DownloadService$1;->val$id:J

    invoke-direct {p0}, Landroid/media/IMediaScannerListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public scanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 11
    .parameter "path"
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 517
    iget-boolean v1, p0, Lcom/android/providers/downloads/DownloadService$1;->val$updateDatabase:Z

    if-eqz v1, :cond_2b

    .line 521
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 522
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "scanned"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 523
    if-eqz p2, :cond_1f

    .line 524
    const-string v1, "mediaprovider_uri"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :cond_1f
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$1;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v1}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$1;->val$key:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 540
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_2a
    :goto_2a
    return-void

    .line 528
    :cond_2b
    iget-boolean v1, p0, Lcom/android/providers/downloads/DownloadService$1;->val$deleteFile:Z

    if-eqz v1, :cond_2a

    .line 529
    if-eqz p2, :cond_3a

    .line 531
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$1;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v1}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 534
    :cond_3a
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$1;->this$0:Lcom/android/providers/downloads/DownloadService;

    #calls: Lcom/android/providers/downloads/DownloadService;->deleteFileIfExists(Ljava/lang/String;)V
    invoke-static {v1, p1}, Lcom/android/providers/downloads/DownloadService;->access$1100(Lcom/android/providers/downloads/DownloadService;Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$1;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v1}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id = ? "

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/android/providers/downloads/DownloadService$1;->val$id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2a
.end method
