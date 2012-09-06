.class public Lcom/google/android/maps/rideabout/app/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;
.implements Lcom/google/android/maps/rideabout/app/x;


# instance fields
.field private final a:Landroid/speech/tts/TextToSpeech;

.field private final b:Lcom/google/android/maps/rideabout/app/e;

.field private final c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/google/android/maps/rideabout/app/w;->a:Landroid/speech/tts/TextToSpeech;

    .line 34
    new-instance v0, Lcom/google/android/maps/rideabout/app/e;

    invoke-direct {v0, p1}, Lcom/google/android/maps/rideabout/app/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/w;->b:Lcom/google/android/maps/rideabout/app/e;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/w;->c:Ljava/util/HashMap;

    .line 36
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/w;->c:Ljava/util/HashMap;

    const-string v1, "utteranceId"

    const-string v2, "RIDEABOUT_VOICE_GUIDANCE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {p2, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 38
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/w;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 64
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/w;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 66
    :cond_d
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/w;->b:Lcom/google/android/maps/rideabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/e;->c()Z

    move-result v0

    if-nez v0, :cond_d

    .line 43
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/w;->b:Lcom/google/android/maps/rideabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/e;->a()V

    .line 45
    :cond_d
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/w;->a:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/w;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 46
    return-void
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 70
    const-string v0, "RIDEABOUT_VOICE_GUIDANCE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/w;->b:Lcom/google/android/maps/rideabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/e;->c()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 71
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/w;->b:Lcom/google/android/maps/rideabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/e;->b()V

    .line 73
    :cond_15
    return-void
.end method
