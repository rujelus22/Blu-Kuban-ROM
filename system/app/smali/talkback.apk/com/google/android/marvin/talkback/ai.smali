.class final Lcom/google/android/marvin/talkback/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field private synthetic a:Lcom/google/android/marvin/talkback/l;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/l;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/marvin/talkback/ai;->a:Lcom/google/android/marvin/talkback/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .registers 6

    if-eqz p1, :cond_e

    const-class v0, Lcom/google/android/marvin/talkback/TalkBackService;

    const/4 v1, 0x6

    const-string v2, "TTS init failed."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/marvin/utils/l;->a(Ljava/lang/Class;ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/android/marvin/talkback/ai;->a:Lcom/google/android/marvin/talkback/l;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/l;->b(Lcom/google/android/marvin/talkback/l;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/ai;->a:Lcom/google/android/marvin/talkback/l;

    invoke-static {v1}, Lcom/google/android/marvin/talkback/l;->d(Lcom/google/android/marvin/talkback/l;)Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ai;->a:Lcom/google/android/marvin/talkback/l;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/ai;->a:Lcom/google/android/marvin/talkback/l;

    invoke-static {v1}, Lcom/google/android/marvin/talkback/l;->b(Lcom/google/android/marvin/talkback/l;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/marvin/talkback/l;->b(Lcom/google/android/marvin/talkback/l;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ai;->a:Lcom/google/android/marvin/talkback/l;

    const-string v1, "com.google.android.tts"

    invoke-static {v0, v1}, Lcom/google/android/marvin/talkback/l;->c(Lcom/google/android/marvin/talkback/l;Ljava/lang/String;)V

    goto :goto_d
.end method
