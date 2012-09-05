.class Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;
.super Landroid/content/BroadcastReceiver;
.source "VoiceRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->registerMediaButtonProcessListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/16 v11, 0x28

    const/4 v10, 0x4

    const/4 v9, 0x1

    const-wide/high16 v7, 0x4000

    const/4 v6, 0x0

    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Media_Button_Recieved"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 126
    const-string v4, "button"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 127
    .local v2, mediaButton:I
    const-string v4, "repeat"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 128
    .local v3, repeatecount:I
    const-string v4, "iskeydown"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 130
    .local v1, isKeyDown:Z
    if-eqz v1, :cond_e4

    .line 131
    packed-switch v2, :pswitch_data_f6

    .line 211
    .end local v1           #isKeyDown:Z
    .end local v2           #mediaButton:I
    .end local v3           #repeatecount:I
    :cond_2a
    :goto_2a
    :pswitch_2a
    return-void

    .line 135
    .restart local v1       #isKeyDown:Z
    .restart local v2       #mediaButton:I
    .restart local v3       #repeatecount:I
    :pswitch_2b
    if-nez v3, :cond_2a

    .line 136
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I
    invoke-static {v4}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$000(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)I

    move-result v4

    const/16 v5, 0x3ea

    if-ne v4, v5, :cond_3d

    .line 137
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v4}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->pauseRecording()Z

    goto :goto_2a

    .line 138
    :cond_3d
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I
    invoke-static {v4}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$000(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)I

    move-result v4

    const/16 v5, 0x3eb

    if-ne v4, v5, :cond_4d

    .line 139
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v4}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->resumeRecording()Z

    goto :goto_2a

    .line 140
    :cond_4d
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v4}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 141
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v4}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->pausePlay()V

    goto :goto_2a

    .line 142
    :cond_5b
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v4}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPaused()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 143
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v4}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->resumePlay()V

    goto :goto_2a

    .line 151
    :pswitch_69
    invoke-static {}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$100()I

    move-result v4

    if-le v4, v11, :cond_9a

    .line 152
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #setter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->TempLongKeyCnt:I
    invoke-static {v4, v10}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$202(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;I)I

    .line 157
    :goto_74
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v4}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getCurrentPosition()I

    move-result v0

    .line 159
    .local v0, cpos:I
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->TempLongKeyCnt:I
    invoke-static {v4}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$200(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/lit16 v4, v4, 0x3e8

    add-int/2addr v0, v4

    .line 161
    invoke-static {}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$100()I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_96

    .line 162
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v4, v0, v9}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->seek(IZ)V

    .line 165
    :cond_96
    invoke-static {}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$108()I

    goto :goto_2a

    .line 154
    .end local v0           #cpos:I
    :cond_9a
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-static {}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$100()I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    #setter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->TempLongKeyCnt:I
    invoke-static {v4, v5}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$202(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;I)I

    goto :goto_74

    .line 171
    :pswitch_a6
    invoke-static {}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$100()I

    move-result v4

    if-le v4, v11, :cond_d8

    .line 172
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #setter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->TempLongKeyCnt:I
    invoke-static {v4, v10}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$202(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;I)I

    .line 177
    :goto_b1
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v4}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getCurrentPosition()I

    move-result v0

    .line 179
    .restart local v0       #cpos:I
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    #getter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->TempLongKeyCnt:I
    invoke-static {v4}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$200(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/lit16 v4, v4, 0x3e8

    sub-int/2addr v0, v4

    .line 181
    invoke-static {}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$100()I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_d3

    .line 182
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v4, v0, v9}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->seek(IZ)V

    .line 185
    :cond_d3
    invoke-static {}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$108()I

    goto/16 :goto_2a

    .line 174
    .end local v0           #cpos:I
    :cond_d8
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-static {}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$100()I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    #setter for: Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->TempLongKeyCnt:I
    invoke-static {v4, v5}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$202(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;I)I

    goto :goto_b1

    .line 197
    :cond_e4
    packed-switch v2, :pswitch_data_112

    :pswitch_e7
    goto/16 :goto_2a

    .line 199
    :pswitch_e9
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v4}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->stopPlay()V

    goto/16 :goto_2a

    .line 204
    :pswitch_f0
    invoke-static {v6}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->access$102(I)I

    goto/16 :goto_2a

    .line 131
    nop

    :pswitch_data_f6
    .packed-switch 0x4f
        :pswitch_2b
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2b
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_a6
        :pswitch_69
    .end packed-switch

    .line 197
    :pswitch_data_112
    .packed-switch 0x56
        :pswitch_e9
        :pswitch_e7
        :pswitch_e7
        :pswitch_f0
        :pswitch_f0
    .end packed-switch
.end method
