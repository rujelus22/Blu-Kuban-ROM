.class Lcom/google/android/music/dl/DownloadManager$5$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/dl/DownloadManager$5;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/DownloadManager$5;

.field final synthetic val$playbackService:Lcom/google/android/music/IMusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/DownloadManager$5;Lcom/google/android/music/IMusicPlaybackService;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 942
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadManager$5$1;->this$0:Lcom/google/android/music/dl/DownloadManager$5;

    iput-object p2, p0, Lcom/google/android/music/dl/DownloadManager$5$1;->val$playbackService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 8

    .prologue
    .line 946
    :try_start_0
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager$5$1;->val$playbackService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v4}, Lcom/google/android/music/IMusicPlaybackService;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_2c

    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager$5$1;->val$playbackService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v4}, Lcom/google/android/music/IMusicPlaybackService;->isPreparing()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 951
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager$5$1;->this$0:Lcom/google/android/music/dl/DownloadManager$5;

    iget-object v4, v4, Lcom/google/android/music/dl/DownloadManager$5;->val$downloadManager:Lcom/google/android/music/dl/DownloadManager;

    #calls: Lcom/google/android/music/dl/DownloadManager;->updateQueueForRingtoneOrKeepon()I
    invoke-static {v4}, Lcom/google/android/music/dl/DownloadManager;->access$600(Lcom/google/android/music/dl/DownloadManager;)I

    move-result v4

    if-nez v4, :cond_2b

    .line 952
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager$5$1;->this$0:Lcom/google/android/music/dl/DownloadManager$5;

    iget-object v4, v4, Lcom/google/android/music/dl/DownloadManager$5;->val$downloadManager:Lcom/google/android/music/dl/DownloadManager;

    invoke-virtual {v4}, Lcom/google/android/music/dl/DownloadManager;->isDownloading()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 954
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager$5$1;->this$0:Lcom/google/android/music/dl/DownloadManager$5;

    iget-object v4, v4, Lcom/google/android/music/dl/DownloadManager$5;->val$downloadManager:Lcom/google/android/music/dl/DownloadManager;

    #calls: Lcom/google/android/music/dl/DownloadManager;->requestStopService()V
    invoke-static {v4}, Lcom/google/android/music/dl/DownloadManager;->access$700(Lcom/google/android/music/dl/DownloadManager;)V

    .line 993
    :cond_2b
    :goto_2b
    return-void

    .line 961
    :cond_2c
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager$5$1;->this$0:Lcom/google/android/music/dl/DownloadManager$5;

    iget-object v4, v4, Lcom/google/android/music/dl/DownloadManager$5;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "music_playlist_prefetch_count"

    const/4 v6, 0x5

    invoke-static {v4, v5, v6}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 966
    .local v3, prefetchCount:I
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager$5$1;->val$playbackService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v4, v3}, Lcom/google/android/music/IMusicPlaybackService;->getNextSongs(I)[Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v2

    .line 969
    .local v2, playlist:[Lcom/google/android/music/dl/ContentIdentifier;
    const/4 v1, 0x0

    .line 970
    .local v1, numberOfNewDownloads:I
    if-eqz v2, :cond_54

    array-length v4, v2

    if-eqz v4, :cond_54

    .line 971
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager$5$1;->this$0:Lcom/google/android/music/dl/DownloadManager$5;

    iget-object v4, v4, Lcom/google/android/music/dl/DownloadManager$5;->val$downloadManager:Lcom/google/android/music/dl/DownloadManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v2, v5}, Lcom/google/android/music/dl/DownloadManager;->updateQueue([Lcom/google/android/music/dl/ContentIdentifier;I)I

    move-result v1

    .line 977
    :cond_54
    if-nez v1, :cond_68

    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager$5$1;->this$0:Lcom/google/android/music/dl/DownloadManager$5;

    iget-object v4, v4, Lcom/google/android/music/dl/DownloadManager$5;->val$downloadManager:Lcom/google/android/music/dl/DownloadManager;

    invoke-virtual {v4}, Lcom/google/android/music/dl/DownloadManager;->isDownloading()Z

    move-result v4

    if-nez v4, :cond_68

    .line 978
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager$5$1;->this$0:Lcom/google/android/music/dl/DownloadManager$5;

    iget-object v4, v4, Lcom/google/android/music/dl/DownloadManager$5;->val$downloadManager:Lcom/google/android/music/dl/DownloadManager;

    #calls: Lcom/google/android/music/dl/DownloadManager;->updateQueueForRingtoneOrKeepon()I
    invoke-static {v4}, Lcom/google/android/music/dl/DownloadManager;->access$600(Lcom/google/android/music/dl/DownloadManager;)I

    move-result v1

    .line 982
    :cond_68
    if-nez v1, :cond_2b

    .line 983
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager$5$1;->this$0:Lcom/google/android/music/dl/DownloadManager$5;

    iget-object v4, v4, Lcom/google/android/music/dl/DownloadManager$5;->val$downloadManager:Lcom/google/android/music/dl/DownloadManager;

    invoke-virtual {v4}, Lcom/google/android/music/dl/DownloadManager;->isDownloading()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 985
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager$5$1;->this$0:Lcom/google/android/music/dl/DownloadManager$5;

    iget-object v4, v4, Lcom/google/android/music/dl/DownloadManager$5;->val$downloadManager:Lcom/google/android/music/dl/DownloadManager;

    #calls: Lcom/google/android/music/dl/DownloadManager;->requestStopService()V
    invoke-static {v4}, Lcom/google/android/music/dl/DownloadManager;->access$700(Lcom/google/android/music/dl/DownloadManager;)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7b} :catch_7c

    goto :goto_2b

    .line 988
    .end local v1           #numberOfNewDownloads:I
    .end local v2           #playlist:[Lcom/google/android/music/dl/ContentIdentifier;
    .end local v3           #prefetchCount:I
    :catch_7c
    move-exception v0

    .line 989
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MusicDL"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method public taskCompleted()V
    .registers 3

    .prologue
    .line 999
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager$5$1;->this$0:Lcom/google/android/music/dl/DownloadManager$5;

    iget-object v1, v1, Lcom/google/android/music/dl/DownloadManager$5;->val$serviceToken:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 1000
    .local v0, token:Lcom/google/android/music/MusicUtils$ServiceToken;
    if-eqz v0, :cond_f

    .line 1001
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 1003
    :cond_f
    return-void
.end method
