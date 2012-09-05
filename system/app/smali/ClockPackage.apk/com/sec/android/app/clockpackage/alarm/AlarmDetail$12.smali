.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;
.super Ljava/lang/Object;
.source "AlarmDetail.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 8
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1044
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1400(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1045
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_20

    .line 1046
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1047
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1400(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1049
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1500(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 1050
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1500(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->getState()I

    move-result v0

    sget v1, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->STATE_PLAY:I

    if-ne v0, v1, :cond_3f

    .line 1051
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1400(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1053
    :cond_3f
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 1054
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolumePopup:Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmVolumeHelper;->changeAlarmVolume(I)V

    .line 1056
    :cond_50
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 12
    .parameter "seekBar"

    .prologue
    const v9, 0x7f0b0026

    const/4 v5, 0x2

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1059
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1400(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1300(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-virtual {v3, v8, v4, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1060
    sget-object v3, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_138

    .line 1061
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1200(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v3

    iget v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1c6

    .line 1063
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1065
    .local v2, vStrbuffer:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    const v4, 0x7f0e0129

    invoke-virtual {v3, v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1066
    .local v0, ampmBtn:Landroid/widget/Button;
    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-gtz v3, :cond_60

    .line 1067
    :cond_4f
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmName:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1068
    :cond_60
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_153

    .line 1069
    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1071
    invoke-virtual {v0}, Landroid/widget/Button;->isShown()Z

    move-result v3

    if-eqz v3, :cond_94

    .line 1072
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I

    move-result v3

    if-ne v3, v7, :cond_139

    .line 1073
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1077
    :cond_94
    :goto_94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b006d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b006e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1091
    :cond_ee
    :goto_ee
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1500(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    move-result-object v3

    if-eqz v3, :cond_126

    .line 1093
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .line 1095
    .local v1, vStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1400(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1300(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-virtual {v3, v8, v4, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1096
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1500(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v7}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->init(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1097
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->vpp:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1500(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->play()V

    .line 1101
    .end local v1           #vStr:Ljava/lang/String;
    :cond_126
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->clearFocus()V

    .line 1102
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->clearFocus()V

    .line 1112
    .end local v0           #ampmBtn:Landroid/widget/Button;
    .end local v2           #vStrbuffer:Ljava/lang/StringBuffer;
    :cond_138
    :goto_138
    return-void

    .line 1074
    .restart local v0       #ampmBtn:Landroid/widget/Button;
    .restart local v2       #vStrbuffer:Ljava/lang/StringBuffer;
    :cond_139
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I

    move-result v3

    if-ne v3, v5, :cond_94

    .line 1075
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_94

    .line 1082
    :cond_153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mHour:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMinute:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getCurrent()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1084
    invoke-virtual {v0}, Landroid/widget/Button;->isShown()Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 1085
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I

    move-result v3

    if-ne v3, v7, :cond_1ac

    .line 1086
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_ee

    .line 1087
    :cond_1ac
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAMPM:I
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I

    move-result v3

    if-ne v3, v5, :cond_ee

    .line 1088
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_ee

    .line 1105
    .end local v0           #ampmBtn:Landroid/widget/Button;
    .end local v2           #vStrbuffer:Ljava/lang/StringBuffer;
    :cond_1c6
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1400(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1300(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-virtual {v3, v8, v4, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1106
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "content://media/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_204

    .line 1107
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->playMediaPlayer(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_138

    .line 1109
    :cond_204
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$12;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mAlarmToneStr:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1700(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->playMediaPlayer(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_138
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 1115
    return-void
.end method
