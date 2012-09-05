.class Lcom/google/android/apps/books/widget/PageTurnView$TtsReader;
.super Ljava/lang/Object;
.source "PageTurnView.java"

# interfaces
.implements Lcom/google/android/apps/books/tts/TextToSpeechController$VisualReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/PageTurnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TtsReader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/widget/PageTurnView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView;)V
    .registers 2
    .parameter

    .prologue
    .line 2245
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView$TtsReader;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/widget/PageTurnView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2245
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView$TtsReader;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;)V

    return-void
.end method


# virtual methods
.method public beganSpeakingPhrase(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;Lcom/google/android/apps/books/render/TextRange;)V
    .registers 6
    .parameter "phrase"
    .parameter "range"

    .prologue
    .line 2249
    const-string v0, "PageTurnView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2250
    const-string v0, "PageTurnView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTS is speaking phrase "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    :cond_2b
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$TtsReader;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #setter for: Lcom/google/android/apps/books/widget/PageTurnView;->mCurrentTtsPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;
    invoke-static {v0, p1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$5302(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;)Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    .line 2253
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$TtsReader;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->highlightSpokenText(Lcom/google/android/apps/books/render/TextRange;)V
    invoke-static {v0, p2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$5400(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/render/TextRange;)V

    .line 2254
    return-void
.end method

.method public finishedSpeaking(Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;)V
    .registers 9
    .parameter "reason"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2258
    const-string v2, "PageTurnView"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2259
    const-string v2, "PageTurnView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finished speaking due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    :cond_23
    sget-object v2, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;->COMPLETED_ITEM:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    if-ne p1, v2, :cond_28

    .line 2285
    :cond_27
    :goto_27
    return-void

    .line 2267
    :cond_28
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$TtsReader;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mReaderDelegate:Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;
    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$000(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 2268
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$TtsReader;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mReaderDelegate:Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;
    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$000(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;->onFinishedSpeaking()V

    .line 2271
    :cond_39
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$TtsReader;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->onStoppedSpeaking(Z)V
    invoke-static {v2, v5}, Lcom/google/android/apps/books/widget/PageTurnView;->access$5500(Lcom/google/android/apps/books/widget/PageTurnView;Z)V

    .line 2272
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$TtsReader;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    const/4 v3, 0x0

    #setter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTtsEnabled:Z
    invoke-static {v2, v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$5602(Lcom/google/android/apps/books/widget/PageTurnView;Z)Z

    .line 2274
    sget-object v2, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;->END_OF_BOOK:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    if-ne p1, v2, :cond_27

    .line 2275
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$TtsReader;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mCustomSlots:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1200(Lcom/google/android/apps/books/widget/PageTurnView;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$TtsReader;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPositionSlot:I
    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1000(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    .line 2276
    .local v0, customView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    if-eqz v0, :cond_68

    invoke-interface {v0}, Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;->isLastPage()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 2277
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$TtsReader;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->maybeReadSpecialView(Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;)V
    invoke-static {v2, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1400(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;)V

    goto :goto_27

    .line 2279
    :cond_68
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$TtsReader;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #setter for: Lcom/google/android/apps/books/widget/PageTurnView;->mShouldReadLastPage:Z
    invoke-static {v2, v5}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1302(Lcom/google/android/apps/books/widget/PageTurnView;Z)Z

    .line 2280
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$TtsReader;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v6}, Lcom/google/android/apps/books/model/VolumeMetadata;->buildEndOfVolume(Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v3

    #setter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTtsPosition:Lcom/google/android/apps/books/render/RenderPosition;
    invoke-static {v2, v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$3402(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/render/RenderPosition;)Lcom/google/android/apps/books/render/RenderPosition;

    .line 2281
    new-instance v1, Lcom/google/android/apps/books/widget/PageTurnView$TurnToPage;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$TtsReader;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-direct {v1, v2, v6}, Lcom/google/android/apps/books/widget/PageTurnView$TurnToPage;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/widget/PageTurnView$1;)V

    .line 2282
    .local v1, task:Lcom/google/android/apps/books/widget/PageTurnView$TurnToPage;
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$TtsReader;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->dispatchCommand(Lcom/google/android/apps/books/widget/PageTurnView$PageTurnTask;)V
    invoke-static {v2, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$3600(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/widget/PageTurnView$PageTurnTask;)V

    goto :goto_27
.end method
