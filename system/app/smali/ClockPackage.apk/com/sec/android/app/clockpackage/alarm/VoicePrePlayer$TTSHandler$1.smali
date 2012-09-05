.class Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler$1;
.super Ljava/lang/Object;
.source "VoicePrePlayer.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler$1;->this$1:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUtteranceCompleted(Ljava/lang/String;)V
    .registers 5
    .parameter "utteranceId"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler$1;->this$1:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->DEBUG:Z
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$100(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 296
    const-string v0, "VoicePrePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UtteranceCompleted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_22
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler$1;->this$1:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$TTSHandler;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mIsVoiceComplete:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$702(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;Z)Z

    .line 300
    return-void
.end method
