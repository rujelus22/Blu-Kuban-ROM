.class Lcom/sec/android/app/voicerecorder/VoiceListActivity$5;
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
.field duration:J

.field newPosition:J

.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V
    .registers 9
    .parameter "arg0"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v0, 0x1

    .line 1115
    if-eqz p3, :cond_6a

    .line 1116
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mbProgressDragStatus:Z
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$700(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1117
    invoke-static {}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$400()Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 1118
    invoke-static {}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$400()Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getPlayerDuration()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$5;->duration:J

    .line 1121
    :cond_1c
    iget-wide v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$5;->duration:J

    int-to-long v3, p2

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x240

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$5;->newPosition:J

    .line 1123
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayerElapsedView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$800(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 1124
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mPlayerElapsedView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$800(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    iget-wide v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$5;->newPosition:J

    #calls: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->hmsConvert(J)Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$900(Lcom/sec/android/app/voicerecorder/VoiceListActivity;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1127
    :cond_3e
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mbProgressDragStatus:Z
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$700(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 1128
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mActivityState:I
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$1000(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)I

    move-result v1

    if-ne v1, v0, :cond_6a

    .line 1129
    invoke-static {}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$400()Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 1130
    invoke-static {}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$400()Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$5;->newPosition:J

    long-to-int v2, v2

    invoke-static {}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$400()Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getState()I

    move-result v3

    const/16 v4, 0x16

    if-ne v3, v4, :cond_6b

    :goto_67
    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->seek(IZ)V

    .line 1136
    :cond_6a
    return-void

    .line 1130
    :cond_6b
    const/4 v0, 0x0

    goto :goto_67
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->hideVolumePanel()V
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V

    .line 1108
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mbProgressDragStatus:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$702(Lcom/sec/android/app/voicerecorder/VoiceListActivity;Z)Z

    .line 1109
    invoke-static {}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$400()Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1110
    invoke-static {}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$400()Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getPlayerDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$5;->duration:J

    .line 1112
    :cond_1c
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 6
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 1097
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->mbProgressDragStatus:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$702(Lcom/sec/android/app/voicerecorder/VoiceListActivity;Z)Z

    .line 1098
    invoke-static {}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$400()Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 1099
    invoke-static {}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$400()Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$5;->newPosition:J

    long-to-int v1, v1

    invoke-static {}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$400()Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->seek(IZ)V

    .line 1103
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    iput-boolean v3, v0, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->isEnableFinishChecker:Z

    .line 1104
    return-void
.end method
