.class Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;
.super Ljava/lang/Object;
.source "VoiceInput.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/VoiceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImeRecognitionListener"
.end annotation


# instance fields
.field private mEndpointed:Z

.field mSpeechStart:I

.field final mWaveBuffer:Ljava/io/ByteArrayOutputStream;

.field final synthetic this$0:Lcom/google/android/apps/translate/VoiceInput;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/translate/VoiceInput;)V
    .registers 3
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->this$0:Lcom/google/android/apps/translate/VoiceInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->mEndpointed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/translate/VoiceInput;Lcom/google/android/apps/translate/VoiceInput$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;-><init>(Lcom/google/android/apps/translate/VoiceInput;)V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .registers 2

    .prologue
    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->mEndpointed:Z

    .line 337
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->mSpeechStart:I

    .line 338
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->this$0:Lcom/google/android/apps/translate/VoiceInput;

    #calls: Lcom/google/android/apps/translate/VoiceInput;->onError()V
    invoke-static {v0}, Lcom/google/android/apps/translate/VoiceInput;->access$400(Lcom/google/android/apps/translate/VoiceInput;)V

    .line 339
    return-void
.end method

.method public onBufferReceived([B)V
    .registers 3
    .parameter "buf"

    .prologue
    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 353
    :goto_5
    return-void

    .line 350
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public onEndOfSpeech()V
    .registers 5

    .prologue
    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->mEndpointed:Z

    .line 358
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->this$0:Lcom/google/android/apps/translate/VoiceInput;

    const/4 v1, 0x2

    #setter for: Lcom/google/android/apps/translate/VoiceInput;->mState:I
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/VoiceInput;->access$002(Lcom/google/android/apps/translate/VoiceInput;I)I

    .line 359
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->this$0:Lcom/google/android/apps/translate/VoiceInput;

    #getter for: Lcom/google/android/apps/translate/VoiceInput;->mRecognitionView:Lcom/google/android/apps/translate/RecognitionView;
    invoke-static {v0}, Lcom/google/android/apps/translate/VoiceInput;->access$100(Lcom/google/android/apps/translate/VoiceInput;)Lcom/google/android/apps/translate/RecognitionView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    iget v2, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->mSpeechStart:I

    iget-object v3, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/translate/RecognitionView;->showWorking(Ljava/io/ByteArrayOutputStream;II)V

    .line 360
    return-void
.end method

.method public onError(I)V
    .registers 4
    .parameter "errorType"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->this$0:Lcom/google/android/apps/translate/VoiceInput;

    const/4 v1, 0x3

    #setter for: Lcom/google/android/apps/translate/VoiceInput;->mState:I
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/VoiceInput;->access$002(Lcom/google/android/apps/translate/VoiceInput;I)I

    .line 365
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->this$0:Lcom/google/android/apps/translate/VoiceInput;

    iget-boolean v1, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->mEndpointed:Z

    #calls: Lcom/google/android/apps/translate/VoiceInput;->onError(IZ)V
    invoke-static {v0, p1, v1}, Lcom/google/android/apps/translate/VoiceInput;->access$500(Lcom/google/android/apps/translate/VoiceInput;IZ)V

    .line 366
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->this$0:Lcom/google/android/apps/translate/VoiceInput;

    #calls: Lcom/google/android/apps/translate/VoiceInput;->onError()V
    invoke-static {v0}, Lcom/google/android/apps/translate/VoiceInput;->access$400(Lcom/google/android/apps/translate/VoiceInput;)V

    .line 367
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .registers 3
    .parameter "eventType"
    .parameter "params"

    .prologue
    .line 408
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .registers 11
    .parameter "partialResults"

    .prologue
    const/4 v8, 0x0

    .line 390
    const-string v6, "com.google.android.voicesearch.UNSUPPORTED_PARTIAL_RESULTS"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 392
    .local v4, results:[Ljava/lang/String;
    if-eqz v4, :cond_2e

    array-length v6, v4

    if-lez v6, :cond_2e

    .line 393
    iget-object v6, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->this$0:Lcom/google/android/apps/translate/VoiceInput;

    #setter for: Lcom/google/android/apps/translate/VoiceInput;->mState:I
    invoke-static {v6, v8}, Lcom/google/android/apps/translate/VoiceInput;->access$002(Lcom/google/android/apps/translate/VoiceInput;I)I

    .line 394
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v5, styledResults:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_19
    if-ge v1, v2, :cond_23

    aget-object v3, v0, v1

    .line 397
    .local v3, r:Ljava/lang/String;
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 399
    .end local v3           #r:Ljava/lang/String;
    :cond_23
    iget-object v6, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->this$0:Lcom/google/android/apps/translate/VoiceInput;

    iget-object v7, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->this$0:Lcom/google/android/apps/translate/VoiceInput;

    #getter for: Lcom/google/android/apps/translate/VoiceInput;->mVoiceCanceled:Z
    invoke-static {v7}, Lcom/google/android/apps/translate/VoiceInput;->access$600(Lcom/google/android/apps/translate/VoiceInput;)Z

    move-result v7

    #calls: Lcom/google/android/apps/translate/VoiceInput;->onVoiceResults(Ljava/util/List;ZZ)V
    invoke-static {v6, v5, v7, v8}, Lcom/google/android/apps/translate/VoiceInput;->access$700(Lcom/google/android/apps/translate/VoiceInput;Ljava/util/List;ZZ)V

    .line 402
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v5           #styledResults:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_2e
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->onResults(Landroid/os/Bundle;)V

    .line 403
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .registers 3
    .parameter "noiseParams"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->this$0:Lcom/google/android/apps/translate/VoiceInput;

    #getter for: Lcom/google/android/apps/translate/VoiceInput;->mRecognitionView:Lcom/google/android/apps/translate/RecognitionView;
    invoke-static {v0}, Lcom/google/android/apps/translate/VoiceInput;->access$100(Lcom/google/android/apps/translate/VoiceInput;)Lcom/google/android/apps/translate/RecognitionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/RecognitionView;->showListening()V

    .line 332
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .registers 9
    .parameter "resultsBundle"

    .prologue
    .line 371
    const-string v4, "results_recognition"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 373
    .local v2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v3, styledResults:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz v2, :cond_47

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_47

    .line 375
    iget-object v4, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->this$0:Lcom/google/android/apps/translate/VoiceInput;

    const/4 v5, 0x0

    #setter for: Lcom/google/android/apps/translate/VoiceInput;->mState:I
    invoke-static {v4, v5}, Lcom/google/android/apps/translate/VoiceInput;->access$002(Lcom/google/android/apps/translate/VoiceInput;I)I

    .line 376
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 377
    .local v1, r:Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    const-string v4, "VoiceInput"

    invoke-static {v4, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 384
    .end local v1           #r:Ljava/lang/String;
    :cond_32
    iget-object v4, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->this$0:Lcom/google/android/apps/translate/VoiceInput;

    iget-object v5, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->this$0:Lcom/google/android/apps/translate/VoiceInput;

    #getter for: Lcom/google/android/apps/translate/VoiceInput;->mVoiceCanceled:Z
    invoke-static {v5}, Lcom/google/android/apps/translate/VoiceInput;->access$600(Lcom/google/android/apps/translate/VoiceInput;)Z

    move-result v5

    const/4 v6, 0x1

    #calls: Lcom/google/android/apps/translate/VoiceInput;->onVoiceResults(Ljava/util/List;ZZ)V
    invoke-static {v4, v3, v5, v6}, Lcom/google/android/apps/translate/VoiceInput;->access$700(Lcom/google/android/apps/translate/VoiceInput;Ljava/util/List;ZZ)V

    .line 385
    iget-object v4, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->this$0:Lcom/google/android/apps/translate/VoiceInput;

    #getter for: Lcom/google/android/apps/translate/VoiceInput;->mRecognitionView:Lcom/google/android/apps/translate/RecognitionView;
    invoke-static {v4}, Lcom/google/android/apps/translate/VoiceInput;->access$100(Lcom/google/android/apps/translate/VoiceInput;)Lcom/google/android/apps/translate/RecognitionView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/translate/RecognitionView;->finish()V

    .line 386
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_47
    return-void
.end method

.method public onRmsChanged(F)V
    .registers 3
    .parameter "rmsdB"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;->this$0:Lcom/google/android/apps/translate/VoiceInput;

    #getter for: Lcom/google/android/apps/translate/VoiceInput;->mRecognitionView:Lcom/google/android/apps/translate/RecognitionView;
    invoke-static {v0}, Lcom/google/android/apps/translate/VoiceInput;->access$100(Lcom/google/android/apps/translate/VoiceInput;)Lcom/google/android/apps/translate/RecognitionView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/RecognitionView;->updateVoiceMeter(F)V

    .line 344
    return-void
.end method
