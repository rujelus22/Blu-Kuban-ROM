.class final Lcom/google/android/marvin/talkback/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field private synthetic a:Lcom/google/android/marvin/talkback/l;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/l;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/marvin/talkback/ab;->a:Lcom/google/android/marvin/talkback/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .registers 4

    if-nez p1, :cond_1e

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ab;->a:Lcom/google/android/marvin/talkback/l;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/l;->b(Lcom/google/android/marvin/talkback/l;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ab;->a:Lcom/google/android/marvin/talkback/l;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/l;->b(Lcom/google/android/marvin/talkback/l;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_13
    iget-object v0, p0, Lcom/google/android/marvin/talkback/ab;->a:Lcom/google/android/marvin/talkback/l;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/ab;->a:Lcom/google/android/marvin/talkback/l;

    invoke-static {v1}, Lcom/google/android/marvin/talkback/l;->c(Lcom/google/android/marvin/talkback/l;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/marvin/talkback/l;->a(Lcom/google/android/marvin/talkback/l;Landroid/speech/tts/TextToSpeech;)V

    :cond_1e
    return-void
.end method
