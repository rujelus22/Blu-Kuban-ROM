.class Lcom/google/android/music/LocalDevicePlayback$14;
.super Ljava/lang/Object;
.source "LocalDevicePlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/LocalDevicePlayback;->acquireAsyncLockAndClearMediaList()Lcom/google/android/music/medialist/SongList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/LocalDevicePlayback;


# direct methods
.method constructor <init>(Lcom/google/android/music/LocalDevicePlayback;)V
    .registers 2
    .parameter

    .prologue
    .line 1577
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$14;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1579
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$14;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$1800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->setMediaList(Lcom/google/android/music/medialist/SongList;)V

    .line 1580
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$14;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0, v1}, Lcom/google/android/music/LocalDevicePlayback;->access$1202(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/medialist/SongList;)Lcom/google/android/music/medialist/SongList;

    .line 1581
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$14;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->onQueueChanged()V
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$300(Lcom/google/android/music/LocalDevicePlayback;)V

    .line 1582
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$14;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->onSongChanged()V
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$100(Lcom/google/android/music/LocalDevicePlayback;)V

    .line 1583
    return-void
.end method
