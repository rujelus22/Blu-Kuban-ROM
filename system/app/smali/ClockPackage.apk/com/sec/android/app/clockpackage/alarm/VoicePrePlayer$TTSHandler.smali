.class Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;
.super Landroid/os/Handler;
.source "VoicePrePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TTSHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;-><init>(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 286
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    .line 308
    :cond_5
    :goto_5
    :pswitch_5
    return-void

    .line 291
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$900(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$900(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler$1;-><init>(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto :goto_5

    .line 286
    nop

    :pswitch_data_1e
    .packed-switch 0x4000
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
