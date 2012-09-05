.class public Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;
.super Ljava/lang/Object;
.source "AndroidSpeechSynthesizer.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;
.implements Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechSynthesizer;


# instance fields
.field private mCompletionCallback:Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechCompletionCallback;

.field private mInitialized:Z

.field private mQueueUntilInitialized:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;->mInitialized:Z

    .line 44
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v0, p1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 45
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;->mQueueUntilInitialized:Ljava/util/List;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;)Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechCompletionCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;->mCompletionCallback:Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechCompletionCallback;

    return-object v0
.end method

.method private speakPhrase(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "phrase"
    .parameter "phraseId"

    .prologue
    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v0, options:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "utteranceId"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v1, p0, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 91
    return-void
.end method


# virtual methods
.method public clearQueue()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 69
    return-void
.end method

.method public enqueuePhrase(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "phrase"
    .parameter "phraseId"

    .prologue
    .line 55
    iget-object v1, p0, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;->mQueueUntilInitialized:Ljava/util/List;

    monitor-enter v1

    .line 56
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;->mInitialized:Z

    if-eqz v0, :cond_c

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;->speakPhrase(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_a
    monitor-exit v1

    .line 64
    return-void

    .line 61
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;->mQueueUntilInitialized:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 63
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public onInit(I)V
    .registers 8
    .parameter "status"

    .prologue
    .line 73
    iget-object v4, p0, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 76
    iget-object v5, p0, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;->mQueueUntilInitialized:Ljava/util/List;

    monitor-enter v5

    .line 77
    :try_start_8
    iget-object v4, p0, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;->mQueueUntilInitialized:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 78
    .local v0, entry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 79
    .local v2, phrase:Ljava/lang/String;
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 80
    .local v3, phraseId:Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;->speakPhrase(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 84
    .end local v0           #entry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #phrase:Ljava/lang/String;
    .end local v3           #phraseId:Ljava/lang/String;
    :catchall_26
    move-exception v4

    monitor-exit v5
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_26

    throw v4

    .line 82
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_29
    :try_start_29
    iget-object v4, p0, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;->mQueueUntilInitialized:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 83
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;->mInitialized:Z

    .line 84
    monitor-exit v5
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_26

    .line 85
    return-void
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .registers 4
    .parameter "utteranceId"

    .prologue
    .line 95
    invoke-static {}, Lcom/google/android/apps/books/util/HandlerExecutor;->getUiThreadExecutor()Lcom/google/android/apps/books/util/HandlerExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer$1;-><init>(Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/util/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method public setCompletionCallback(Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechCompletionCallback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;->mCompletionCallback:Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechCompletionCallback;

    .line 51
    return-void
.end method

.method public shutdown()V
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 108
    return-void
.end method
