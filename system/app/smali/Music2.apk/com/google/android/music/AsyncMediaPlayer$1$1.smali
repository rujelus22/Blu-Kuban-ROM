.class Lcom/google/android/music/AsyncMediaPlayer$1$1;
.super Ljava/lang/Object;
.source "AsyncMediaPlayer.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/AsyncMediaPlayer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/AsyncMediaPlayer$1;


# direct methods
.method constructor <init>(Lcom/google/android/music/AsyncMediaPlayer$1;)V
    .registers 2
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/android/music/AsyncMediaPlayer$1$1;->this$1:Lcom/google/android/music/AsyncMediaPlayer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .registers 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/music/AsyncMediaPlayer$1$1;->this$1:Lcom/google/android/music/AsyncMediaPlayer$1;

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer$1;->this$0:Lcom/google/android/music/AsyncMediaPlayer;

    const-string v1, "idle"

    #calls: Lcom/google/android/music/AsyncMediaPlayer;->releaseWakeLock(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->access$000(Lcom/google/android/music/AsyncMediaPlayer;Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x1

    return v0
.end method
