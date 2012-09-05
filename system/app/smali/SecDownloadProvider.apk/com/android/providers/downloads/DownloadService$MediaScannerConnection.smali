.class public Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaScannerConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/DownloadService;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/DownloadService;)V
    .registers 2
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disconnectMediaScanner()V
    .registers 6

    .prologue
    .line 150
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    monitor-enter v2

    .line 151
    :try_start_3
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v3, 0x0

    #setter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z
    invoke-static {v1, v3}, Lcom/android/providers/downloads/DownloadService;->access$102(Lcom/android/providers/downloads/DownloadService;Z)Z

    .line 152
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;
    invoke-static {v1}, Lcom/android/providers/downloads/DownloadService;->access$200(Lcom/android/providers/downloads/DownloadService;)Landroid/media/IMediaScannerService;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 153
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v3, 0x0

    #setter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;
    invoke-static {v1, v3}, Lcom/android/providers/downloads/DownloadService;->access$202(Lcom/android/providers/downloads/DownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;

    .line 154
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_22

    .line 155
    const-string v1, "DownloadManager"

    const-string v3, "Disconnecting from Media Scanner"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_4d

    .line 158
    :cond_22
    :try_start_22
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v1, p0}, Lcom/android/providers/downloads/DownloadService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_27} :catch_2e

    .line 163
    :try_start_27
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 166
    :cond_2c
    :goto_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_4d

    .line 167
    return-void

    .line 159
    :catch_2e
    move-exception v0

    .line 160
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    :try_start_2f
    const-string v1, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbindService failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_2f .. :try_end_47} :catchall_50

    .line 163
    :try_start_47
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2c

    .line 166
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catchall_4d
    move-exception v1

    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_4d

    throw v1

    .line 163
    :catchall_50
    move-exception v1

    :try_start_51
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    throw v1
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_4d
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "className"
    .parameter "service"

    .prologue
    .line 132
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_b

    .line 133
    const-string v0, "DownloadManager"

    const-string v1, "Connected to Media Scanner"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_b
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    monitor-enter v1

    .line 137
    :try_start_e
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v2, 0x0

    #setter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z
    invoke-static {v0, v2}, Lcom/android/providers/downloads/DownloadService;->access$102(Lcom/android/providers/downloads/DownloadService;Z)Z

    .line 138
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-static {p2}, Landroid/media/IMediaScannerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerService;

    move-result-object v2

    #setter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;
    invoke-static {v0, v2}, Lcom/android/providers/downloads/DownloadService;->access$202(Lcom/android/providers/downloads/DownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;

    .line 139
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;
    invoke-static {v0}, Lcom/android/providers/downloads/DownloadService;->access$200(Lcom/android/providers/downloads/DownloadService;)Landroid/media/IMediaScannerService;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 140
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    #calls: Lcom/android/providers/downloads/DownloadService;->updateFromProvider()V
    invoke-static {v0}, Lcom/android/providers/downloads/DownloadService;->access$000(Lcom/android/providers/downloads/DownloadService;)V
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_31

    .line 144
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 146
    monitor-exit v1

    .line 147
    return-void

    .line 144
    :catchall_31
    move-exception v0

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    throw v0

    .line 146
    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_2a .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .parameter "className"

    .prologue
    .line 171
    :try_start_0
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_b

    .line 172
    const-string v0, "DownloadManager"

    const-string v1, "Disconnected from Media Scanner"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_24

    .line 175
    :cond_b
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    monitor-enter v1

    .line 176
    :try_start_e
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v2, 0x0

    #setter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;
    invoke-static {v0, v2}, Lcom/android/providers/downloads/DownloadService;->access$202(Lcom/android/providers/downloads/DownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;

    .line 177
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v2, 0x0

    #setter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z
    invoke-static {v0, v2}, Lcom/android/providers/downloads/DownloadService;->access$102(Lcom/android/providers/downloads/DownloadService;Z)Z

    .line 179
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 180
    monitor-exit v1

    .line 182
    return-void

    .line 180
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_21

    throw v0

    .line 175
    :catchall_24
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    monitor-enter v1

    .line 176
    :try_start_28
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v3, 0x0

    #setter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;
    invoke-static {v2, v3}, Lcom/android/providers/downloads/DownloadService;->access$202(Lcom/android/providers/downloads/DownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;

    .line 177
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v3, 0x0

    #setter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z
    invoke-static {v2, v3}, Lcom/android/providers/downloads/DownloadService;->access$102(Lcom/android/providers/downloads/DownloadService;Z)Z

    .line 179
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 180
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_3b

    throw v0

    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0
.end method
