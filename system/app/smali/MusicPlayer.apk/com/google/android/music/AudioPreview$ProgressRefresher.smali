.class Lcom/google/android/music/AudioPreview$ProgressRefresher;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgressRefresher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/google/android/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/google/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/google/android/music/AudioPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 322
    iget-object v1, p0, Lcom/google/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/google/android/music/AudioPreview;

    #getter for: Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;
    invoke-static {v1}, Lcom/google/android/music/AudioPreview;->access$400(Lcom/google/android/music/AudioPreview;)Lcom/google/android/music/AudioPreview$PreviewPlayer;

    move-result-object v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/google/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/google/android/music/AudioPreview;

    #getter for: Lcom/google/android/music/AudioPreview;->mSeeking:Z
    invoke-static {v1}, Lcom/google/android/music/AudioPreview;->access$900(Lcom/google/android/music/AudioPreview;)Z

    move-result v1

    if-nez v1, :cond_3d

    iget-object v1, p0, Lcom/google/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/google/android/music/AudioPreview;

    #getter for: Lcom/google/android/music/AudioPreview;->mDuration:I
    invoke-static {v1}, Lcom/google/android/music/AudioPreview;->access$1000(Lcom/google/android/music/AudioPreview;)I

    move-result v1

    if-eqz v1, :cond_3d

    .line 323
    iget-object v1, p0, Lcom/google/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/google/android/music/AudioPreview;

    #getter for: Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;
    invoke-static {v1}, Lcom/google/android/music/AudioPreview;->access$400(Lcom/google/android/music/AudioPreview;)Lcom/google/android/music/AudioPreview$PreviewPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/google/android/music/AudioPreview;

    #getter for: Lcom/google/android/music/AudioPreview;->mDuration:I
    invoke-static {v2}, Lcom/google/android/music/AudioPreview;->access$1000(Lcom/google/android/music/AudioPreview;)I

    move-result v2

    div-int v0, v1, v2

    .line 324
    .local v0, progress:I
    iget-object v1, p0, Lcom/google/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/google/android/music/AudioPreview;

    #getter for: Lcom/google/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/google/android/music/AudioPreview;->access$1100(Lcom/google/android/music/AudioPreview;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/google/android/music/AudioPreview;

    #getter for: Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;
    invoke-static {v2}, Lcom/google/android/music/AudioPreview;->access$400(Lcom/google/android/music/AudioPreview;)Lcom/google/android/music/AudioPreview$PreviewPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 326
    .end local v0           #progress:I
    :cond_3d
    iget-object v1, p0, Lcom/google/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/google/android/music/AudioPreview;

    #getter for: Lcom/google/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/music/AudioPreview;->access$1200(Lcom/google/android/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 327
    iget-object v1, p0, Lcom/google/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/google/android/music/AudioPreview;

    #getter for: Lcom/google/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/music/AudioPreview;->access$1200(Lcom/google/android/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/music/AudioPreview$ProgressRefresher;

    iget-object v3, p0, Lcom/google/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/google/android/music/AudioPreview;

    invoke-direct {v2, v3}, Lcom/google/android/music/AudioPreview$ProgressRefresher;-><init>(Lcom/google/android/music/AudioPreview;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 328
    return-void
.end method
