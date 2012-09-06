.class Lcom/google/android/apps/unveil/nonstop/SpeechEngine$1;
.super Ljava/lang/Object;
.source "SpeechEngine.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/nonstop/SpeechEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/nonstop/SpeechEngine;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/nonstop/SpeechEngine;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$1;->this$0:Lcom/google/android/apps/unveil/nonstop/SpeechEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .registers 6
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-static {}, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "onInit()"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$1;->this$0:Lcom/google/android/apps/unveil/nonstop/SpeechEngine;

    monitor-enter v1

    .line 87
    :try_start_f
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$1;->this$0:Lcom/google/android/apps/unveil/nonstop/SpeechEngine;

    #getter for: Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->textToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->access$100(Lcom/google/android/apps/unveil/nonstop/SpeechEngine;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-nez v0, :cond_19

    .line 89
    monitor-exit v1

    .line 108
    :goto_18
    return-void

    .line 92
    :cond_19
    if-nez p1, :cond_40

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$1;->this$0:Lcom/google/android/apps/unveil/nonstop/SpeechEngine;

    #getter for: Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->textToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->access$100(Lcom/google/android/apps/unveil/nonstop/SpeechEngine;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    new-instance v2, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$1$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$1$1;-><init>(Lcom/google/android/apps/unveil/nonstop/SpeechEngine$1;)V

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$1;->this$0:Lcom/google/android/apps/unveil/nonstop/SpeechEngine;

    const/4 v2, 0x1

    #setter for: Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->isTTSready:Z
    invoke-static {v0, v2}, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->access$302(Lcom/google/android/apps/unveil/nonstop/SpeechEngine;Z)Z

    .line 103
    invoke-static {}, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v2, "TextToSpeech is ready"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    :goto_3b
    monitor-exit v1

    goto :goto_18

    :catchall_3d
    move-exception v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_f .. :try_end_3f} :catchall_3d

    throw v0

    .line 105
    :cond_40
    :try_start_40
    invoke-static {}, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v2, "TTS failed to initialize"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4c
    .catchall {:try_start_40 .. :try_end_4c} :catchall_3d

    goto :goto_3b
.end method
