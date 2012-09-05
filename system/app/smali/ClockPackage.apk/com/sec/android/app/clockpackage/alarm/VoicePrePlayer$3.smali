.class Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;
.super Landroid/os/CountDownTimer;
.source "VoicePrePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->init(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mCount:I
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$402(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;I)I

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoiceCount:I
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$502(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;I)I

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->timer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$600(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 128
    return-void
.end method

.method public onTick(J)V
    .registers 11
    .parameter "millisUntilFinished"

    .prologue
    .line 131
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$408(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)I

    .line 133
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mIsVoiceComplete:Z
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$700(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Z

    move-result v4

    if-eqz v4, :cond_2e

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoiceCount:I
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$500(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mCount:I
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$400(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)I

    move-result v5

    if-le v4, v5, :cond_2e

    .line 157
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$300(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 158
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$300(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 161
    :cond_2e
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mCount:I
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$400(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoiceCount:I
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$500(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)I

    move-result v5

    if-ne v4, v5, :cond_94

    .line 171
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$300(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    if-eqz v4, :cond_4d

    .line 172
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mSoundPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$300(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->pause()V

    .line 205
    :cond_4d
    :goto_4d
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->DEBUG:Z
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$100(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Z

    move-result v4

    if-eqz v4, :cond_93

    .line 206
    const-string v4, "VoicePrePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mCount:I
    invoke-static {v6}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$400(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  mVoiceCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoiceCount:I
    invoke-static {v6}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$500(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  mState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mState:I
    invoke-static {v6}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$1100(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_93
    return-void

    .line 175
    :cond_94
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mCount:I
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$400(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoiceCount:I
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$500(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)I

    move-result v5

    if-le v4, v5, :cond_4d

    .line 177
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->map:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$800(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "streamType"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->map:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$800(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "utteranceId"

    const-string v6, "alarm_name_string"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$900(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    if-eqz v4, :cond_111

    .line 186
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, mDefaultLanguage:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, mDefaultCountry:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, mDefaultLocVariant:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$900(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v2, v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 193
    .local v0, languageResult:I
    if-gez v0, :cond_fb

    .line 194
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$900(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 198
    :cond_fb
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$900(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoiceString:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$1000(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->map:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$800(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 202
    .end local v0           #languageResult:I
    .end local v1           #mDefaultCountry:Ljava/lang/String;
    .end local v2           #mDefaultLanguage:Ljava/lang/String;
    .end local v3           #mDefaultLocVariant:Ljava/lang/String;
    :cond_111
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer$3;->this$0:Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;

    const/16 v5, 0x3e8

    #setter for: Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->mVoiceCount:I
    invoke-static {v4, v5}, Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;->access$502(Lcom/sec/android/app/clockpackage/alarm/VoicePrePlayer;I)I

    goto/16 :goto_4d
.end method
