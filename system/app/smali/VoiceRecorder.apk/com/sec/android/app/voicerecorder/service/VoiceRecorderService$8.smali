.class Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$8;
.super Ljava/lang/Object;
.source "VoiceRecorderService.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;
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
    .line 1498
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$8;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .registers 4
    .parameter "motionEvent"

    .prologue
    .line 1500
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    .line 1502
    .local v0, motion:I
    packed-switch v0, :pswitch_data_16

    .line 1510
    :cond_7
    :goto_7
    return-void

    .line 1504
    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$8;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1505
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$8;->this$0:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->pausePlay()V

    goto :goto_7

    .line 1502
    :pswitch_data_16
    .packed-switch 0xa
        :pswitch_8
    .end packed-switch
.end method
