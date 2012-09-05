.class Lcom/google/android/music/MusicPlaybackService$15$1;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/MusicPlaybackService$15;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService$15;)V
    .registers 2
    .parameter

    .prologue
    .line 1579
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$15$1;->this$1:Lcom/google/android/music/MusicPlaybackService$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1582
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$15$1;->this$1:Lcom/google/android/music/MusicPlaybackService$15;

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$15;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-string v1, "com.android.music.queuechanged"

    #calls: Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_15

    .line 1584
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$15$1;->this$1:Lcom/google/android/music/MusicPlaybackService$15;

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$15;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$2400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1586
    return-void

    .line 1584
    :catchall_15
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$15$1;->this$1:Lcom/google/android/music/MusicPlaybackService$15;

    iget-object v1, v1, Lcom/google/android/music/MusicPlaybackService$15;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$2400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
