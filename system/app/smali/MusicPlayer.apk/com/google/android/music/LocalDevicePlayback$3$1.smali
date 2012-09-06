.class Lcom/google/android/music/LocalDevicePlayback$3$1;
.super Ljava/lang/Object;
.source "LocalDevicePlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/LocalDevicePlayback$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/LocalDevicePlayback$3;


# direct methods
.method constructor <init>(Lcom/google/android/music/LocalDevicePlayback$3;)V
    .registers 2
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$3$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    .line 501
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$3$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$3;

    iget-object v1, v1, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;
    invoke-static {v1}, Lcom/google/android/music/LocalDevicePlayback;->access$1800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$3$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$3;

    iget-object v2, v2, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$1600(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->getAudioIdAndListItemId(I)Landroid/util/Pair;

    move-result-object v0

    .line 503
    .local v0, audioIdAndListItemId:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/music/dl/ContentIdentifier;Ljava/lang/Long;>;"
    if-eqz v0, :cond_62

    .line 504
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$3$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$3;

    iget-object v1, v1, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupId:J
    invoke-static {v1}, Lcom/google/android/music/LocalDevicePlayback;->access$1900(Lcom/google/android/music/LocalDevicePlayback;)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$3$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$3;

    iget-object v1, v1, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v1}, Lcom/google/android/music/LocalDevicePlayback;->access$1600(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$3$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$3;

    iget-object v2, v2, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupPosition:I
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$2000(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 508
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$3$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$3;

    iget-object v1, v1, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupId:J
    invoke-static {v1, v3, v4}, Lcom/google/android/music/LocalDevicePlayback;->access$1902(Lcom/google/android/music/LocalDevicePlayback;J)J

    .line 509
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$3$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$3;

    iget-object v1, v1, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v2, -0x1

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupPosition:I
    invoke-static {v1, v2}, Lcom/google/android/music/LocalDevicePlayback;->access$2002(Lcom/google/android/music/LocalDevicePlayback;I)I

    .line 512
    :cond_45
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$3$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$3;

    iget-object v2, v1, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/music/dl/ContentIdentifier;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->refreshCursor(Lcom/google/android/music/dl/ContentIdentifier;)Z
    invoke-static {v2, v1}, Lcom/google/android/music/LocalDevicePlayback;->access$2100(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 513
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$3$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$3;

    iget-object v2, v1, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mListItemId:J
    invoke-static {v2, v3, v4}, Lcom/google/android/music/LocalDevicePlayback;->access$2202(Lcom/google/android/music/LocalDevicePlayback;J)J

    .line 516
    :cond_62
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$3$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$3;

    iget-object v1, v1, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    invoke-static {v1}, Lcom/google/android/music/LocalDevicePlayback;->access$900(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/player/AsyncMediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/player/AsyncMediaPlayer;->start()V

    .line 517
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$3$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$3;

    iget-object v1, v1, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const-string v2, "com.android.music.metachanged"

    invoke-virtual {v1, v2}, Lcom/google/android/music/LocalDevicePlayback;->notifyChange(Ljava/lang/String;)V

    .line 518
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$3$1;->this$1:Lcom/google/android/music/LocalDevicePlayback$3;

    iget-object v1, v1, Lcom/google/android/music/LocalDevicePlayback$3;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->setNextTrack()V
    invoke-static {v1}, Lcom/google/android/music/LocalDevicePlayback;->access$2300(Lcom/google/android/music/LocalDevicePlayback;)V

    .line 520
    return-void
.end method
