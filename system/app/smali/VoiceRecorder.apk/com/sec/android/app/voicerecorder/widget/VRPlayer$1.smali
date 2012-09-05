.class Lcom/sec/android/app/voicerecorder/widget/VRPlayer$1;
.super Landroid/os/Handler;
.source "VRPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/widget/VRPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCurrentVolume:F

.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/widget/VRPlayer;)V
    .registers 3
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer$1;->this$0:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 465
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer$1;->mCurrentVolume:F

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/16 v3, 0x1f

    const/high16 v2, 0x3f80

    .line 469
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3e

    .line 485
    :goto_9
    return-void

    .line 471
    :pswitch_a
    iget v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer$1;->mCurrentVolume:F

    const v1, 0x3c23d70a

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer$1;->mCurrentVolume:F

    .line 472
    iget v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer$1;->mCurrentVolume:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2b

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer$1;->this$0:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    #getter for: Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mFadeInHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->access$200(Lcom/sec/android/app/voicerecorder/widget/VRPlayer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 478
    :goto_23
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer$1;->this$0:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    iget v1, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer$1;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->volumeCtrl(F)V

    goto :goto_9

    .line 476
    :cond_2b
    iput v2, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer$1;->mCurrentVolume:F

    goto :goto_23

    .line 481
    :pswitch_2e
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer$1;->mCurrentVolume:F

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer$1;->this$0:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    #getter for: Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mFadeInHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->access$200(Lcom/sec/android/app/voicerecorder/widget/VRPlayer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_9

    .line 469
    nop

    :pswitch_data_3e
    .packed-switch 0x1f
        :pswitch_a
        :pswitch_2e
    .end packed-switch
.end method
