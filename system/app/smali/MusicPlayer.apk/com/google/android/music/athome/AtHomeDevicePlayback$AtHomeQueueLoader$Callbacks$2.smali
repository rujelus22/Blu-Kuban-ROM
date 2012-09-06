.class Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$2;
.super Ljava/lang/Object;
.source "AtHomeDevicePlayback.java"

# interfaces
.implements Lcom/google/android/music/athome/api/MusicConnector$OnInsertSongs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)V
    .registers 2
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$2;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInsertSongs(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 231
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$2;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    monitor-enter v1

    .line 232
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$2;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mIgnore:Z
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->access$000(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 233
    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_20

    .line 234
    const-string v0, "aah.Music"

    const-string v2, "Queue needs resync after inserting songs"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$2;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    const/4 v2, 0x1

    #setter for: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mQueueOutOfSync:Z
    invoke-static {v0, v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->access$102(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Z)Z

    .line 238
    :cond_20
    monitor-exit v1

    .line 239
    return-void

    .line 238
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v0
.end method
