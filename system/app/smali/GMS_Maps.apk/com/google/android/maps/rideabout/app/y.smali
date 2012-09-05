.class public Lcom/google/android/maps/rideabout/app/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;
.implements Lcom/google/android/maps/rideabout/app/z;


# instance fields
.field private final a:Landroid/speech/tts/TextToSpeech;

.field private final b:Lcom/google/android/maps/rideabout/app/e;

.field private final c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/maps/rideabout/app/y;->a:Landroid/speech/tts/TextToSpeech;

    invoke-static {p1}, Lcom/google/android/maps/rideabout/app/e;->a(Landroid/content/Context;)Lcom/google/android/maps/rideabout/app/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/y;->b:Lcom/google/android/maps/rideabout/app/e;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/app/y;->c:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/y;->c:Ljava/util/HashMap;

    const-string v1, "utteranceId"

    const-string v2, "RIDEABOUT_VOICE_GUIDANCE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/y;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/y;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_d
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/y;->b:Lcom/google/android/maps/rideabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/e;->e()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/y;->b:Lcom/google/android/maps/rideabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/e;->a()V

    :cond_d
    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/y;->a:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/rideabout/app/y;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    return-void
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .registers 3

    const-string v0, "RIDEABOUT_VOICE_GUIDANCE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/y;->b:Lcom/google/android/maps/rideabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/e;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/maps/rideabout/app/y;->b:Lcom/google/android/maps/rideabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/app/e;->b()V

    :cond_15
    return-void
.end method
