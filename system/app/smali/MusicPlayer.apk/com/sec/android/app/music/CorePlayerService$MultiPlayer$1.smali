.class Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$1;
.super Ljava/lang/Object;
.source "CorePlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 3990
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$1;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 5
    .parameter "mp"

    .prologue
    .line 3993
    const-string v0, "MultiPlayer"

    const-string v1, "onCompletion()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3999
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$1;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v0, v0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$900(Lcom/sec/android/app/music/CorePlayerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 4000
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$1;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3200(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4001
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$1;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3200(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4002
    return-void
.end method
