.class Lcom/google/android/music/MediaPlaybackActivity$3;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCurrentProgress:I

.field private mFromTouch:Z

.field final synthetic this$0:Lcom/google/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 717
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$3;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity$3;->mFromTouch:Z

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 9
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 727
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 730
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 732
    :cond_f
    if-nez p3, :cond_12

    .line 741
    :cond_11
    :goto_11
    return-void

    .line 735
    :cond_12
    iput p2, p0, Lcom/google/android/music/MediaPlaybackActivity$3;->mCurrentProgress:I

    .line 736
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$3;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$3;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mDuration:J
    invoke-static {v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$200(Lcom/google/android/music/MediaPlaybackActivity;)J

    move-result-wide v1

    iget v3, p0, Lcom/google/android/music/MediaPlaybackActivity$3;->mCurrentProgress:I

    int-to-long v3, v3

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    #setter for: Lcom/google/android/music/MediaPlaybackActivity;->mPosOverride:J
    invoke-static {v0, v1, v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$102(Lcom/google/android/music/MediaPlaybackActivity;J)J

    .line 737
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity$3;->mFromTouch:Z

    if-nez v0, :cond_11

    if-eqz p3, :cond_11

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity$3;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_11
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3
    .parameter "bar"

    .prologue
    .line 722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity$3;->mFromTouch:Z

    .line 723
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 6
    .parameter "bar"

    .prologue
    .line 743
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$3;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;
    invoke-static {v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$300(Lcom/google/android/music/MediaPlaybackActivity;)Lcom/google/android/music/IMusicPlaybackService;

    move-result-object v1

    if-nez v1, :cond_9

    .line 753
    :goto_8
    return-void

    .line 746
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$3;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;
    invoke-static {v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$300(Lcom/google/android/music/MediaPlaybackActivity;)Lcom/google/android/music/IMusicPlaybackService;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$3;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mPosOverride:J
    invoke-static {v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$100(Lcom/google/android/music/MediaPlaybackActivity;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/android/music/IMusicPlaybackService;->seek(J)J
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_18} :catch_23

    .line 751
    :goto_18
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/MediaPlaybackActivity$3;->mFromTouch:Z

    .line 752
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$3;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    const-wide/16 v2, -0x1

    #setter for: Lcom/google/android/music/MediaPlaybackActivity;->mPosOverride:J
    invoke-static {v1, v2, v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$102(Lcom/google/android/music/MediaPlaybackActivity;J)J

    goto :goto_8

    .line 747
    :catch_23
    move-exception v0

    .line 748
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method
