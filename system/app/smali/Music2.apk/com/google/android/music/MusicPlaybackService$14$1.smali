.class Lcom/google/android/music/MusicPlaybackService$14$1;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService$14;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/MusicPlaybackService$14;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService$14;)V
    .registers 2
    .parameter

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$14$1;->this$1:Lcom/google/android/music/MusicPlaybackService$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$14$1;->this$1:Lcom/google/android/music/MusicPlaybackService$14;

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$14;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #calls: Lcom/google/android/music/MusicPlaybackService;->reloadQueue()V
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$2300(Lcom/google/android/music/MusicPlaybackService;)V

    .line 1326
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$14$1;->this$1:Lcom/google/android/music/MusicPlaybackService$14;

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$14;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mQueueIsSaveable:Z
    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$3102(Lcom/google/android/music/MusicPlaybackService;Z)Z

    .line 1327
    return-void
.end method
