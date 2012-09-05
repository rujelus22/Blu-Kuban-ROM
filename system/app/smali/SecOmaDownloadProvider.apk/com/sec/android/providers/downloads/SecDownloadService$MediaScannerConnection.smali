.class public Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;
.super Ljava/lang/Object;
.source "SecDownloadService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/providers/downloads/SecDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaScannerConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/providers/downloads/SecDownloadService;


# direct methods
.method public constructor <init>(Lcom/sec/android/providers/downloads/SecDownloadService;)V
    .registers 2
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disconnectMediaScanner()V
    .registers 4

    .prologue
    .line 186
    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    monitor-enter v1

    .line 187
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/providers/downloads/SecDownloadService;->mMediaScannerConnecting:Z
    invoke-static {v0, v2}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$102(Lcom/sec/android/providers/downloads/SecDownloadService;Z)Z

    .line 188
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #getter for: Lcom/sec/android/providers/downloads/SecDownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;
    invoke-static {v0}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$200(Lcom/sec/android/providers/downloads/SecDownloadService;)Landroid/media/IMediaScannerService;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 189
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/providers/downloads/SecDownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;
    invoke-static {v0, v2}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$202(Lcom/sec/android/providers/downloads/SecDownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1e

    .line 195
    :try_start_17
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    invoke-virtual {v0, p0}, Lcom/sec/android/providers/downloads/SecDownloadService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1c} :catch_21

    .line 203
    :cond_1c
    :goto_1c
    :try_start_1c
    monitor-exit v1

    .line 204
    return-void

    .line 203
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_1e

    throw v0

    .line 196
    :catch_21
    move-exception v0

    goto :goto_1c
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "className"
    .parameter "service"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/providers/downloads/SecDownloadService;->mMediaScannerConnecting:Z
    invoke-static {v0, v1}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$102(Lcom/sec/android/providers/downloads/SecDownloadService;Z)Z

    .line 177
    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    monitor-enter v1

    .line 178
    :try_start_9
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    invoke-static {p2}, Landroid/media/IMediaScannerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerService;

    move-result-object v2

    #setter for: Lcom/sec/android/providers/downloads/SecDownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;
    invoke-static {v0, v2}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$202(Lcom/sec/android/providers/downloads/SecDownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;

    .line 179
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #getter for: Lcom/sec/android/providers/downloads/SecDownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;
    invoke-static {v0}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$200(Lcom/sec/android/providers/downloads/SecDownloadService;)Landroid/media/IMediaScannerService;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 180
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    #calls: Lcom/sec/android/providers/downloads/SecDownloadService;->updateFromProvider()V
    invoke-static {v0}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$000(Lcom/sec/android/providers/downloads/SecDownloadService;)V

    .line 182
    :cond_1f
    monitor-exit v1

    .line 183
    return-void

    .line 182
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "className"

    .prologue
    .line 211
    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    monitor-enter v1

    .line 212
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/providers/downloads/SecDownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;
    invoke-static {v0, v2}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$202(Lcom/sec/android/providers/downloads/SecDownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;

    .line 213
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;->this$0:Lcom/sec/android/providers/downloads/SecDownloadService;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/providers/downloads/SecDownloadService;->mMediaScannerConnecting:Z
    invoke-static {v0, v2}, Lcom/sec/android/providers/downloads/SecDownloadService;->access$102(Lcom/sec/android/providers/downloads/SecDownloadService;Z)Z

    .line 214
    monitor-exit v1

    .line 215
    return-void

    .line 214
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method
