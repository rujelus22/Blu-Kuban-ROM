.class Lcom/samsung/dmp/layout/DMPVideoActivity$11;
.super Ljava/lang/Object;
.source "DMPVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPVideoActivity;->initializeUIForLandscape()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 997
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$11;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/16 v4, 0x578

    const/4 v3, 0x0

    .line 999
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$11;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->isShowVolume:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 1000
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$11;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$5600(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$11;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$5500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 1002
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$11;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 1003
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$11;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    const/4 v1, 0x1

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->isShowVolume:Z
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2502(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 1004
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$11;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1005
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$11;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1010
    :goto_42
    return-void

    .line 1007
    :cond_43
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$11;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 1008
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$11;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->isShowVolume:Z
    invoke-static {v0, v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2502(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    goto :goto_42
.end method
