.class Lcom/google/android/apps/plus/service/SkyjamPlaybackService$1;
.super Ljava/lang/Object;
.source "SkyjamPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/SkyjamPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/service/SkyjamPlaybackService;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/SkyjamPlaybackService;)V
    .registers 2
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService$1;->this$0:Lcom/google/android/apps/plus/service/SkyjamPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService$1;->this$0:Lcom/google/android/apps/plus/service/SkyjamPlaybackService;

    #getter for: Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->access$000(Lcom/google/android/apps/plus/service/SkyjamPlaybackService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService$1;->this$0:Lcom/google/android/apps/plus/service/SkyjamPlaybackService;

    #getter for: Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->access$000(Lcom/google/android/apps/plus/service/SkyjamPlaybackService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService$1;->this$0:Lcom/google/android/apps/plus/service/SkyjamPlaybackService;

    #getter for: Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->access$000(Lcom/google/android/apps/plus/service/SkyjamPlaybackService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->access$100()I

    move-result v1

    if-ge v0, v1, :cond_6b

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService$1;->this$0:Lcom/google/android/apps/plus/service/SkyjamPlaybackService;

    #getter for: Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->access$000(Lcom/google/android/apps/plus/service/SkyjamPlaybackService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->access$202(I)I

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService$1;->this$0:Lcom/google/android/apps/plus/service/SkyjamPlaybackService;

    const v1, 0x7f070132

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService$1;->this$0:Lcom/google/android/apps/plus/service/SkyjamPlaybackService;

    invoke-static {}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->access$200()I

    move-result v5

    #calls: Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->getTimeString(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->access$400(Lcom/google/android/apps/plus/service/SkyjamPlaybackService;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService$1;->this$0:Lcom/google/android/apps/plus/service/SkyjamPlaybackService;

    invoke-static {}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->access$100()I

    move-result v5

    #calls: Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->getTimeString(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->access$400(Lcom/google/android/apps/plus/service/SkyjamPlaybackService;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    :goto_5a
    iget-object v0, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService$1;->this$0:Lcom/google/android/apps/plus/service/SkyjamPlaybackService;

    #calls: Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->dispatchStatusUpdate()V
    invoke-static {v0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->access$500(Lcom/google/android/apps/plus/service/SkyjamPlaybackService;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService$1;->this$0:Lcom/google/android/apps/plus/service/SkyjamPlaybackService;

    #getter for: Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->access$600(Lcom/google/android/apps/plus/service/SkyjamPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    return-void

    .line 93
    :cond_6b
    iget-object v0, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService$1;->this$0:Lcom/google/android/apps/plus/service/SkyjamPlaybackService;

    const v1, 0x7f070134

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->access$302(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5a
.end method
