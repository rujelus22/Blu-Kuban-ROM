.class Lcom/google/android/music/AsyncMediaPlayer$1;
.super Ljava/lang/Object;
.source "AsyncMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/AsyncMediaPlayer;-><init>(Landroid/content/Context;Lcom/google/android/music/MusicPlaybackService$ServiceHooks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AsyncMediaPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/music/AsyncMediaPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/music/AsyncMediaPlayer$1;->this$0:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 132
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/google/android/music/AsyncMediaPlayer$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/AsyncMediaPlayer$1$1;-><init>(Lcom/google/android/music/AsyncMediaPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 138
    return-void
.end method
