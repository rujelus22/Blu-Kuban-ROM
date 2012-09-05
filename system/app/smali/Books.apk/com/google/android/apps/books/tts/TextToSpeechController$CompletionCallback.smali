.class Lcom/google/android/apps/books/tts/TextToSpeechController$CompletionCallback;
.super Ljava/lang/Object;
.source "TextToSpeechController.java"

# interfaces
.implements Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/tts/TextToSpeechController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompletionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/tts/TextToSpeechController;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/tts/TextToSpeechController;)V
    .registers 2
    .parameter

    .prologue
    .line 956
    iput-object p1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$CompletionCallback;->this$0:Lcom/google/android/apps/books/tts/TextToSpeechController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/tts/TextToSpeechController;Lcom/google/android/apps/books/tts/TextToSpeechController$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 956
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/tts/TextToSpeechController$CompletionCallback;-><init>(Lcom/google/android/apps/books/tts/TextToSpeechController;)V

    return-void
.end method


# virtual methods
.method public onPhraseFinished(Ljava/lang/String;)V
    .registers 9
    .parameter "phraseId"

    .prologue
    const/4 v6, 0x3

    .line 965
    iget-object v3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$CompletionCallback;->this$0:Lcom/google/android/apps/books/tts/TextToSpeechController;

    #getter for: Lcom/google/android/apps/books/tts/TextToSpeechController;->mEnqueuedPhrases:Ljava/util/Map;
    invoke-static {v3}, Lcom/google/android/apps/books/tts/TextToSpeechController;->access$100(Lcom/google/android/apps/books/tts/TextToSpeechController;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 968
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;>;>;"
    const-string v3, "BooksTTS"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 969
    const-string v3, "BooksTTS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received completion callback for phrase "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 973
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 974
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;>;"
    if-eqz v0, :cond_aa

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;

    invoke-virtual {v3}, Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 975
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 976
    const-string v3, "BooksTTS"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 977
    const-string v3, "BooksTTS"

    const-string v4, "Matched first queued phrase"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_5f
    iget-object v3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$CompletionCallback;->this$0:Lcom/google/android/apps/books/tts/TextToSpeechController;

    #getter for: Lcom/google/android/apps/books/tts/TextToSpeechController;->mAutoAdvance:Z
    invoke-static {v3}, Lcom/google/android/apps/books/tts/TextToSpeechController;->access$200(Lcom/google/android/apps/books/tts/TextToSpeechController;)Z

    move-result v3

    if-nez v3, :cond_6e

    .line 980
    iget-object v3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$CompletionCallback;->this$0:Lcom/google/android/apps/books/tts/TextToSpeechController;

    sget-object v4, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;->COMPLETED_ITEM:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    #calls: Lcom/google/android/apps/books/tts/TextToSpeechController;->onStopReason(Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;)V
    invoke-static {v3, v4}, Lcom/google/android/apps/books/tts/TextToSpeechController;->access$300(Lcom/google/android/apps/books/tts/TextToSpeechController;Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;)V

    .line 996
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;>;"
    :cond_6e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_96

    .line 997
    const-string v3, "BooksTTS"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 998
    const-string v3, "BooksTTS"

    const-string v4, "Highlighting next enqueued phrase"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;

    iget-object v2, v3, Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;->phrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    .line 1001
    .local v2, sentence:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;
    iget-object v3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$CompletionCallback;->this$0:Lcom/google/android/apps/books/tts/TextToSpeechController;

    #calls: Lcom/google/android/apps/books/tts/TextToSpeechController;->focusOnPhrase(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;)V
    invoke-static {v3, v2}, Lcom/google/android/apps/books/tts/TextToSpeechController;->access$400(Lcom/google/android/apps/books/tts/TextToSpeechController;Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;)V

    .line 1004
    .end local v2           #sentence:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;
    :cond_96
    iget-object v3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$CompletionCallback;->this$0:Lcom/google/android/apps/books/tts/TextToSpeechController;

    #getter for: Lcom/google/android/apps/books/tts/TextToSpeechController;->mFillPhraseQueueStopReason:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;
    invoke-static {v3}, Lcom/google/android/apps/books/tts/TextToSpeechController;->access$500(Lcom/google/android/apps/books/tts/TextToSpeechController;)Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    move-result-object v3

    if-eqz v3, :cond_ba

    .line 1005
    iget-object v3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$CompletionCallback;->this$0:Lcom/google/android/apps/books/tts/TextToSpeechController;

    iget-object v4, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$CompletionCallback;->this$0:Lcom/google/android/apps/books/tts/TextToSpeechController;

    #getter for: Lcom/google/android/apps/books/tts/TextToSpeechController;->mFillPhraseQueueStopReason:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;
    invoke-static {v4}, Lcom/google/android/apps/books/tts/TextToSpeechController;->access$500(Lcom/google/android/apps/books/tts/TextToSpeechController;)Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    move-result-object v4

    #calls: Lcom/google/android/apps/books/tts/TextToSpeechController;->onStopReason(Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;)V
    invoke-static {v3, v4}, Lcom/google/android/apps/books/tts/TextToSpeechController;->access$300(Lcom/google/android/apps/books/tts/TextToSpeechController;Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;)V

    .line 1009
    :cond_a9
    :goto_a9
    return-void

    .line 982
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;>;"
    :cond_aa
    if-eqz v0, :cond_6e

    .line 989
    iget-object v4, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$CompletionCallback;->this$0:Lcom/google/android/apps/books/tts/TextToSpeechController;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;

    iget-object v3, v3, Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;->phrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    #calls: Lcom/google/android/apps/books/tts/TextToSpeechController;->focusOnPhrase(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;)V
    invoke-static {v4, v3}, Lcom/google/android/apps/books/tts/TextToSpeechController;->access$400(Lcom/google/android/apps/books/tts/TextToSpeechController;Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;)V

    goto :goto_a9

    .line 1006
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;>;"
    :cond_ba
    iget-object v3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$CompletionCallback;->this$0:Lcom/google/android/apps/books/tts/TextToSpeechController;

    #getter for: Lcom/google/android/apps/books/tts/TextToSpeechController;->mAutoAdvance:Z
    invoke-static {v3}, Lcom/google/android/apps/books/tts/TextToSpeechController;->access$200(Lcom/google/android/apps/books/tts/TextToSpeechController;)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 1007
    iget-object v3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$CompletionCallback;->this$0:Lcom/google/android/apps/books/tts/TextToSpeechController;

    #calls: Lcom/google/android/apps/books/tts/TextToSpeechController;->fillPhraseQueue()V
    invoke-static {v3}, Lcom/google/android/apps/books/tts/TextToSpeechController;->access$600(Lcom/google/android/apps/books/tts/TextToSpeechController;)V

    goto :goto_a9
.end method
