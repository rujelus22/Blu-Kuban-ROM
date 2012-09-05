.class Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;
.super Ljava/lang/Object;
.source "VoiceInput.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/voice/VoiceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImeRecognitionListener"
.end annotation


# instance fields
.field private mEndpointed:Z

.field mSpeechStart:I

.field final mWaveBuffer:Ljava/io/ByteArrayOutputStream;

.field final synthetic this$0:Lcom/android/inputmethod/voice/VoiceInput;


# direct methods
.method private constructor <init>(Lcom/android/inputmethod/voice/VoiceInput;)V
    .registers 3
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 529
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mEndpointed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/voice/VoiceInput;Lcom/android/inputmethod/voice/VoiceInput$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 527
    invoke-direct {p0, p1}, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;-><init>(Lcom/android/inputmethod/voice/VoiceInput;)V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .registers 2

    .prologue
    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mEndpointed:Z

    .line 539
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mSpeechStart:I

    .line 540
    return-void
.end method

.method public onBufferReceived([B)V
    .registers 3
    .parameter "buf"

    .prologue
    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 550
    :goto_5
    return-void

    .line 549
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public onEndOfSpeech()V
    .registers 5

    .prologue
    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mEndpointed:Z

    .line 554
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    const/4 v1, 0x2

    #setter for: Lcom/android/inputmethod/voice/VoiceInput;->mState:I
    invoke-static {v0, v1}, Lcom/android/inputmethod/voice/VoiceInput;->access$002(Lcom/android/inputmethod/voice/VoiceInput;I)I

    .line 555
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    #getter for: Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;
    invoke-static {v0}, Lcom/android/inputmethod/voice/VoiceInput;->access$100(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/RecognitionView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    iget v2, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mSpeechStart:I

    iget-object v3, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mWaveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/voice/RecognitionView;->showWorking(Ljava/io/ByteArrayOutputStream;II)V

    .line 556
    return-void
.end method

.method public onError(I)V
    .registers 4
    .parameter "errorType"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    const/4 v1, 0x3

    #setter for: Lcom/android/inputmethod/voice/VoiceInput;->mState:I
    invoke-static {v0, v1}, Lcom/android/inputmethod/voice/VoiceInput;->access$002(Lcom/android/inputmethod/voice/VoiceInput;I)I

    .line 560
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    iget-boolean v1, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->mEndpointed:Z

    #calls: Lcom/android/inputmethod/voice/VoiceInput;->onError(IZ)V
    invoke-static {v0, p1, v1}, Lcom/android/inputmethod/voice/VoiceInput;->access$400(Lcom/android/inputmethod/voice/VoiceInput;IZ)V

    .line 561
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .registers 3
    .parameter "eventType"
    .parameter "params"

    .prologue
    .line 605
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .registers 2
    .parameter "partialResults"

    .prologue
    .line 601
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .registers 3
    .parameter "noiseParams"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    #getter for: Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;
    invoke-static {v0}, Lcom/android/inputmethod/voice/VoiceInput;->access$100(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/RecognitionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/RecognitionView;->showListening()V

    .line 535
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .registers 15
    .parameter "resultsBundle"

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x0

    .line 564
    const-string v9, "results_recognition"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 566
    .local v7, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    #setter for: Lcom/android/inputmethod/voice/VoiceInput;->mState:I
    invoke-static {v9, v11}, Lcom/android/inputmethod/voice/VoiceInput;->access$002(Lcom/android/inputmethod/voice/VoiceInput;I)I

    .line 568
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 570
    .local v2, alternatives:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/CharSequence;>;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_97

    sget-boolean v9, Lcom/android/inputmethod/voice/VoiceInput;->ENABLE_WORD_CORRECTIONS:Z

    if-eqz v9, :cond_97

    .line 571
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    new-array v8, v9, [[Ljava/lang/String;

    .line 572
    .local v8, words:[[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_24
    array-length v9, v8

    if-ge v3, v9, :cond_38

    .line 573
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 572
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 576
    :cond_38
    const/4 v4, 0x0

    .local v4, key:I
    :goto_39
    aget-object v9, v8, v11

    array-length v9, v9

    if-ge v4, v9, :cond_97

    .line 577
    aget-object v9, v8, v11

    aget-object v9, v9, v4

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const/4 v0, 0x1

    .local v0, alt:I
    :goto_4b
    array-length v9, v8

    if-ge v0, v9, :cond_94

    .line 579
    aget-object v9, v8, v0

    array-length v9, v9

    mul-int/2addr v9, v4

    aget-object v10, v8, v11

    array-length v10, v10

    div-int v5, v9, v10

    .line 580
    .local v5, keyBegin:I
    add-int/lit8 v9, v4, 0x1

    aget-object v10, v8, v0

    array-length v10, v10

    mul-int/2addr v9, v10

    aget-object v10, v8, v11

    array-length v10, v10

    div-int v6, v9, v10

    .line 582
    .local v6, keyEnd:I
    move v3, v5

    :goto_63
    aget-object v9, v8, v0

    array-length v9, v9

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-ge v3, v9, :cond_91

    .line 583
    aget-object v9, v8, v11

    aget-object v9, v9, v4

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 584
    .local v1, altList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    aget-object v9, v8, v0

    aget-object v9, v9, v3

    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x6

    if-ge v9, v10, :cond_8e

    .line 585
    aget-object v9, v8, v0

    aget-object v9, v9, v3

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    :cond_8e
    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    .line 578
    .end local v1           #altList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_91
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 576
    .end local v5           #keyBegin:I
    .end local v6           #keyEnd:I
    :cond_94
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 592
    .end local v0           #alt:I
    .end local v3           #i:I
    .end local v4           #key:I
    .end local v8           #words:[[Ljava/lang/String;
    :cond_97
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v12, :cond_a1

    .line 593
    invoke-interface {v7, v11, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    .line 595
    :cond_a1
    iget-object v9, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    #getter for: Lcom/android/inputmethod/voice/VoiceInput;->mUiListener:Lcom/android/inputmethod/voice/VoiceInput$UiListener;
    invoke-static {v9}, Lcom/android/inputmethod/voice/VoiceInput;->access$200(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/VoiceInput$UiListener;

    move-result-object v9

    invoke-interface {v9, v7, v2}, Lcom/android/inputmethod/voice/VoiceInput$UiListener;->onVoiceResults(Ljava/util/List;Ljava/util/Map;)V

    .line 596
    iget-object v9, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    #getter for: Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;
    invoke-static {v9}, Lcom/android/inputmethod/voice/VoiceInput;->access$100(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/RecognitionView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/inputmethod/voice/RecognitionView;->finish()V

    .line 597
    return-void
.end method

.method public onRmsChanged(F)V
    .registers 3
    .parameter "rmsdB"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    #getter for: Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;
    invoke-static {v0}, Lcom/android/inputmethod/voice/VoiceInput;->access$100(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/RecognitionView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/RecognitionView;->updateVoiceMeter(F)V

    .line 544
    return-void
.end method
