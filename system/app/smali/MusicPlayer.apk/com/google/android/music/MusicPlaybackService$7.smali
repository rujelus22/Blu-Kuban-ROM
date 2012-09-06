.class Lcom/google/android/music/MusicPlaybackService$7;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;Lcom/google/android/music/DevicePlayback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$7;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iput-object p2, p0, Lcom/google/android/music/MusicPlaybackService$7;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$7;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$7;->val$intent:Landroid/content/Intent;

    #calls: Lcom/google/android/music/MusicPlaybackService;->updateRemoteControlMetadata(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$800(Lcom/google/android/music/MusicPlaybackService;Landroid/content/Intent;)V

    .line 566
    return-void
.end method
