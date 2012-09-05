.class Lcom/samsung/dmp/layout/DMPAudioActivity$8;
.super Ljava/lang/Object;
.source "DMPAudioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPAudioActivity;->initializeUIForPortrait()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 824
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$8;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

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

    .line 826
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$8;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->isShowVolume:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 827
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$8;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$3200(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$8;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$3100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 829
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$8;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$000(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 830
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$8;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    const/4 v1, 0x1

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->isShowVolume:Z
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$102(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    .line 831
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$8;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 832
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$8;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 837
    :goto_42
    return-void

    .line 834
    :cond_43
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$8;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$000(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 835
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$8;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->isShowVolume:Z
    invoke-static {v0, v3}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$102(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    goto :goto_42
.end method
