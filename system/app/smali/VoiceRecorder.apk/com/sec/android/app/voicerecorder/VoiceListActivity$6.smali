.class Lcom/sec/android/app/voicerecorder/VoiceListActivity$6;
.super Ljava/lang/Object;
.source "VoiceListActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/VoiceListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V
    .registers 11
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 1151
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumebar:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$1100(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 1153
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosX()I

    move-result v0

    .line 1154
    .local v0, bubbleX:I
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosY()I

    move-result v1

    .line 1156
    .local v1, bubbleY:I
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbWidth()I

    move-result v3

    sub-int/2addr v0, v3

    .line 1158
    const/16 v3, 0xf

    if-ne p2, v3, :cond_92

    .line 1159
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x14

    add-int/2addr v1, v3

    .line 1166
    :goto_27
    if-nez p2, :cond_a8

    .line 1167
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolCtrl:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$1200(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    const v4, 0x7f02009a

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1171
    :goto_35
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumebar:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$1100(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v3

    invoke-virtual {v3, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubblePosition(Landroid/view/View;II)V

    .line 1172
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumebar:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$1100(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 1174
    if-eqz p3, :cond_69

    .line 1175
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumeSeekbar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$1300(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v2

    .line 1177
    .local v2, volumebarPosition:I
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$1400(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToastAudioShock(Landroid/content/Context;ILandroid/media/AudioManager;)V

    .line 1178
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$1400(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Landroid/media/AudioManager;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1181
    .end local v2           #volumebarPosition:I
    :cond_69
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumeKeyEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$1500(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_91

    .line 1182
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumeKeyEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$1500(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mHideVolumePanel:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$1600(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1183
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumeKeyEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$1500(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mHideVolumePanel:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$1600(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1185
    :cond_91
    return-void

    .line 1160
    :cond_92
    if-nez p2, :cond_9e

    .line 1161
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x5

    add-int/2addr v1, v3

    goto :goto_27

    .line 1163
    :cond_9e
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v1, v3

    goto :goto_27

    .line 1169
    :cond_a8
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolCtrl:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$1200(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    const v4, 0x7f02009e

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_35
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 3
    .parameter "seekBar"

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumebar:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$1100(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->showBubble()V

    .line 1147
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumebar:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$1100(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 1148
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 3
    .parameter "seekBar"

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumebar:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$1100(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 1142
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mVolumebar:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$1100(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 1143
    return-void
.end method
