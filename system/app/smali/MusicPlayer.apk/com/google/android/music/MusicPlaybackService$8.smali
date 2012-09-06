.class Lcom/google/android/music/MusicPlaybackService$8;
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

.field final synthetic val$what:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iput-object p2, p0, Lcom/google/android/music/MusicPlaybackService$8;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/android/music/MusicPlaybackService$8;->val$what:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$8;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$8;->val$what:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/music/homewidgets/NowPlayingWidgetProvider;->notifyChange(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #calls: Lcom/google/android/music/MusicPlaybackService;->updateNotification()V
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$500(Lcom/google/android/music/MusicPlaybackService;)V

    .line 581
    return-void
.end method
