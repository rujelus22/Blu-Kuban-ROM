.class Lcom/google/android/music/MusicPlaybackService$3$1;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/MusicPlaybackService$3;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService$3;)V
    .registers 2
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$3$1;->this$1:Lcom/google/android/music/MusicPlaybackService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$3$1;->this$1:Lcom/google/android/music/MusicPlaybackService$3;

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #calls: Lcom/google/android/music/MusicPlaybackService;->updateNotification()V
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$500(Lcom/google/android/music/MusicPlaybackService;)V

    .line 178
    return-void
.end method
