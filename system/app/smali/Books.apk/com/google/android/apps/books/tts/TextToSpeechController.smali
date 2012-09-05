.class public Lcom/google/android/apps/books/tts/TextToSpeechController;
.super Ljava/lang/Object;
.source "TextToSpeechController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/tts/TextToSpeechController$1;,
        Lcom/google/android/apps/books/tts/TextToSpeechController$CompletionCallback;,
        Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;,
        Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;,
        Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;,
        Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;,
        Lcom/google/android/apps/books/tts/TextToSpeechController$VisualReader;,
        Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;,
        Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechSynthesizer;,
        Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechCompletionCallback;,
        Lcom/google/android/apps/books/tts/TextToSpeechController$DataSource;
    }
.end annotation


# instance fields
.field private mAutoAdvance:Z

.field private final mDataSource:Lcom/google/android/apps/books/tts/TextToSpeechController$DataSource;

.field private final mEnqueuedPhrases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;",
            ">;"
        }
    .end annotation
.end field

.field private mFillPhraseQueueStopReason:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

.field private mFindStartPositionRequestId:I

.field private mLastEnqueuedPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;

.field private mPassageCount:I

.field private final mPassageToText:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/apps/books/tts/SegmentedText;",
            ">;"
        }
    .end annotation
.end field

.field private final mPositionToPassage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/books/common/Position;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mReader:Lcom/google/android/apps/books/tts/TextToSpeechController$VisualReader;

.field private final mRequestedPassages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;",
            ">;"
        }
    .end annotation
.end field

.field private mSequenceNumber:I

.field private mSpeaking:Z

.field private mStartPassage:I

.field private mStartPhraseId:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

.field private mStartPosition:Lcom/google/android/apps/books/common/Position;

.field private final mSynthesizer:Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechSynthesizer;

.field private mUnit:Lcom/google/android/apps/books/tts/TtsUnit;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/tts/TextToSpeechController$DataSource;Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechSynthesizer;Lcom/google/android/apps/books/tts/TextToSpeechController$VisualReader;)V
    .registers 7
    .parameter "dataSource"
    .parameter "synthesizer"
    .parameter "reader"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mPassageCount:I

    .line 135
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mPassageToText:Ljava/util/Map;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mRequestedPassages:Ljava/util/Map;

    .line 175
    iput v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mStartPassage:I

    .line 190
    sget-object v0, Lcom/google/android/apps/books/tts/TtsUnit;->SENTENCE:Lcom/google/android/apps/books/tts/TtsUnit;

    iput-object v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mUnit:Lcom/google/android/apps/books/tts/TtsUnit;

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mPositionToPassage:Ljava/util/Map;

    .line 332
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mEnqueuedPhrases:Ljava/util/Map;

    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mSpeaking:Z

    .line 339
    iput-object v2, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mFillPhraseQueueStopReason:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    .line 350
    iput-object p1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mDataSource:Lcom/google/android/apps/books/tts/TextToSpeechController$DataSource;

    .line 351
    iput-object p2, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mSynthesizer:Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechSynthesizer;

    .line 352
    iput-object p3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mReader:Lcom/google/android/apps/books/tts/TextToSpeechController$VisualReader;

    .line 354
    iget-object v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mSynthesizer:Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechSynthesizer;

    new-instance v1, Lcom/google/android/apps/books/tts/TextToSpeechController$CompletionCallback;

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/books/tts/TextToSpeechController$CompletionCallback;-><init>(Lcom/google/android/apps/books/tts/TextToSpeechController;Lcom/google/android/apps/books/tts/TextToSpeechController$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechSynthesizer;->setCompletionCallback(Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechCompletionCallback;)V

    .line 355
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/tts/TextToSpeechController;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mEnqueuedPhrases:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/tts/TextToSpeechController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mAutoAdvance:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/tts/TextToSpeechController;Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/tts/TextToSpeechController;->onStopReason(Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/tts/TextToSpeechController;Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/tts/TextToSpeechController;->focusOnPhrase(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/tts/TextToSpeechController;)Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mFillPhraseQueueStopReason:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/books/tts/TextToSpeechController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/apps/books/tts/TextToSpeechController;->fillPhraseQueue()V

    return-void
.end method

.method private clearInternalQueue()V
    .registers 3

    .prologue
    .line 515
    const-string v0, "BooksTTS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 516
    const-string v0, "BooksTTS"

    const-string v1, "Clearing TTS controller internal queue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mEnqueuedPhrases:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mLastEnqueuedPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;

    .line 520
    iget v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mSequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mSequenceNumber:I

    .line 521
    return-void
.end method

.method private clearSynthesizerQueue()V
    .registers 3

    .prologue
    .line 507
    const-string v0, "BooksTTS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 508
    const-string v0, "BooksTTS"

    const-string v1, "Clearing TTS synthesizer queue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mSynthesizer:Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechSynthesizer;

    invoke-interface {v0}, Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechSynthesizer;->clearQueue()V

    .line 511
    invoke-direct {p0}, Lcom/google/android/apps/books/tts/TextToSpeechController;->clearInternalQueue()V

    .line 512
    return-void
.end method

.method private enqueuePhrase(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;)Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;
    .registers 9
    .parameter "phrase"

    .prologue
    .line 666
    iget v4, p1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->passageIndex:I

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/google/android/apps/books/tts/TextToSpeechController;->getPassageSegments(ILjava/lang/String;)Lcom/google/android/apps/books/tts/SegmentedText;

    move-result-object v2

    .line 667
    .local v2, segments:Lcom/google/android/apps/books/tts/SegmentedText;
    iget-object v4, p1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->unit:Lcom/google/android/apps/books/tts/TtsUnit;

    iget v5, p1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->phraseIndex:I

    invoke-virtual {v2, v4, v5}, Lcom/google/android/apps/books/tts/SegmentedText;->getItemText(Lcom/google/android/apps/books/tts/TtsUnit;I)Ljava/lang/String;

    move-result-object v3

    .line 668
    .local v3, text:Ljava/lang/String;
    new-instance v1, Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;

    iget v4, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mSequenceNumber:I

    invoke-direct {v1, p1, v4}, Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;-><init>(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;I)V

    .line 672
    .local v1, key:Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;
    iget-object v4, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mEnqueuedPhrases:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_21

    .line 673
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/tts/TextToSpeechController;->focusOnPhrase(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;)V

    .line 676
    :cond_21
    const-string v4, "BooksTTS"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 677
    const-string v4, "BooksTTS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Speaking "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_4c
    invoke-virtual {v1}, Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;->getId()Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, id:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mSynthesizer:Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechSynthesizer;

    invoke-interface {v4, v3, v0}, Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechSynthesizer;->enqueuePhrase(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v4, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mEnqueuedPhrases:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    iput-object v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mLastEnqueuedPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;

    .line 684
    return-object v1
.end method

.method private enqueueStartPhrase()Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 593
    iget-object v3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mStartPosition:Lcom/google/android/apps/books/common/Position;

    if-eqz v3, :cond_1c

    .line 594
    invoke-direct {p0}, Lcom/google/android/apps/books/tts/TextToSpeechController;->getStartPassage()I

    move-result v1

    .line 595
    .local v1, startPassage:I
    iget-object v3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mUnit:Lcom/google/android/apps/books/tts/TtsUnit;

    iget-object v4, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mStartPosition:Lcom/google/android/apps/books/common/Position;

    invoke-direct {p0, v1, v3, v4}, Lcom/google/android/apps/books/tts/TextToSpeechController;->findPhrase(ILcom/google/android/apps/books/tts/TtsUnit;Lcom/google/android/apps/books/common/Position;)Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;

    move-result-object v0

    .line 602
    .end local v1           #startPassage:I
    .local v0, phraseSearchResult:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;
    :goto_11
    iget-object v3, v0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;->phrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    if-eqz v3, :cond_27

    .line 603
    iget-object v2, v0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;->phrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/tts/TextToSpeechController;->enqueuePhrase(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;)Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;

    move-result-object v2

    .line 608
    .end local v0           #phraseSearchResult:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;
    :cond_1b
    return-object v2

    .line 596
    :cond_1c
    iget-object v3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mStartPhraseId:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    if-eqz v3, :cond_1b

    .line 597
    iget-object v3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mStartPhraseId:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    invoke-direct {p0, v3}, Lcom/google/android/apps/books/tts/TextToSpeechController;->findPhraseStartingAtPhrase(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;)Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;

    move-result-object v0

    .restart local v0       #phraseSearchResult:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;
    goto :goto_11

    .line 604
    :cond_27
    iget-object v3, v0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;->reason:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    if-eqz v3, :cond_1b

    .line 605
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to find phrase"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private fillPhraseQueue()V
    .registers 2

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mSpeaking:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mFillPhraseQueueStopReason:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    if-eqz v0, :cond_9

    .line 658
    :cond_8
    :goto_8
    return-void

    .line 653
    :cond_9
    iget-boolean v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mAutoAdvance:Z

    if-eqz v0, :cond_11

    .line 654
    invoke-direct {p0}, Lcom/google/android/apps/books/tts/TextToSpeechController;->fillPhraseQueueForAutoAdvance()V

    goto :goto_8

    .line 656
    :cond_11
    invoke-direct {p0}, Lcom/google/android/apps/books/tts/TextToSpeechController;->enqueueStartPhrase()Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;

    goto :goto_8
.end method

.method private fillPhraseQueueForAutoAdvance()V
    .registers 5

    .prologue
    .line 620
    iget-object v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mLastEnqueuedPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;

    .line 622
    .local v0, lastExaminedPhrase:Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mEnqueuedPhrases:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_27

    .line 623
    if-eqz v0, :cond_28

    .line 624
    iget-object v2, v0, Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;->phrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/tts/TextToSpeechController;->findPhraseAfterPhrase(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;)Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;

    move-result-object v1

    .line 626
    .local v1, nextSentence:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;
    iget-object v2, v1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;->phrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    if-eqz v2, :cond_1e

    .line 627
    iget-object v2, v1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;->phrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/tts/TextToSpeechController;->enqueuePhrase(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;)Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;

    move-result-object v0

    goto :goto_2

    .line 628
    :cond_1e
    iget-object v2, v1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;->reason:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    if-eqz v2, :cond_27

    .line 629
    iget-object v2, v1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;->reason:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/tts/TextToSpeechController;->onStopReason(Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;)V

    .line 642
    .end local v1           #nextSentence:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;
    :cond_27
    :goto_27
    return-void

    .line 636
    :cond_28
    invoke-direct {p0}, Lcom/google/android/apps/books/tts/TextToSpeechController;->enqueueStartPhrase()Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;

    move-result-object v0

    .line 637
    if-nez v0, :cond_2

    goto :goto_27
.end method

.method private findPhrase(ILcom/google/android/apps/books/tts/TtsUnit;Lcom/google/android/apps/books/common/Position;)Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;
    .registers 12
    .parameter "passageIndex"
    .parameter "unit"
    .parameter "position"

    .prologue
    const/4 v7, -0x1

    .line 793
    iget v5, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mPassageCount:I

    if-ne v5, v7, :cond_b

    .line 795
    new-instance v5, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;

    invoke-direct {v5}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;-><init>()V

    .line 856
    :goto_a
    return-object v5

    .line 797
    :cond_b
    move-object v1, p3

    .line 798
    .local v1, originalPosition:Lcom/google/android/apps/books/common/Position;
    invoke-virtual {p3}, Lcom/google/android/apps/books/common/Position;->toString()Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, currentPositionString:Ljava/lang/String;
    :goto_10
    iget v5, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mPassageCount:I

    if-lt p1, v5, :cond_1c

    .line 802
    new-instance v5, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;

    sget-object v6, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;->END_OF_BOOK:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    invoke-direct {v5, v6}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;-><init>(Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;)V

    goto :goto_a

    .line 804
    :cond_1c
    iget-object v5, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mDataSource:Lcom/google/android/apps/books/tts/TextToSpeechController$DataSource;

    invoke-interface {v5, p1}, Lcom/google/android/apps/books/tts/TextToSpeechController$DataSource;->isPassageForbidden(I)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 806
    add-int/lit8 p1, p1, 0x1

    .line 811
    const/4 v0, 0x0

    goto :goto_10

    .line 813
    :cond_28
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/books/tts/TextToSpeechController;->getPassageSegments(ILjava/lang/String;)Lcom/google/android/apps/books/tts/SegmentedText;

    move-result-object v4

    .line 815
    .local v4, segments:Lcom/google/android/apps/books/tts/SegmentedText;
    if-eqz v4, :cond_8d

    .line 818
    iget-object v5, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mPositionToPassage:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 820
    .local v2, passageContainingPosition:Ljava/lang/Integer;
    if-eqz v2, :cond_54

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, p1, :cond_54

    .line 828
    invoke-virtual {v4, p2}, Lcom/google/android/apps/books/tts/SegmentedText;->getItemCount(Lcom/google/android/apps/books/tts/TtsUnit;)I

    move-result v5

    if-lez v5, :cond_50

    .line 829
    new-instance v5, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;

    new-instance v6, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    const/4 v7, 0x0

    invoke-direct {v6, p1, p2, v7}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;-><init>(ILcom/google/android/apps/books/tts/TtsUnit;I)V

    invoke-direct {v5, v6}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;-><init>(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;)V

    goto :goto_a

    .line 833
    :cond_50
    add-int/lit8 p1, p1, 0x1

    .line 834
    const/4 v0, 0x0

    goto :goto_10

    .line 837
    :cond_54
    invoke-virtual {v4, p2, v1}, Lcom/google/android/apps/books/tts/SegmentedText;->getNearestItemIndex(Lcom/google/android/apps/books/tts/TtsUnit;Lcom/google/android/apps/books/common/Position;)Landroid/util/Pair;

    move-result-object v3

    .line 839
    .local v3, positionSearchResult:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 842
    iget-object v5, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mPositionToPassage:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    :cond_6b
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v7, :cond_89

    .line 845
    new-instance v6, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;

    new-instance v7, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v7, p1, p2, v5}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;-><init>(ILcom/google/android/apps/books/tts/TtsUnit;I)V

    invoke-direct {v6, v7}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;-><init>(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;)V

    move-object v5, v6

    goto :goto_a

    .line 849
    :cond_89
    add-int/lit8 p1, p1, 0x1

    .line 850
    const/4 v0, 0x0

    goto :goto_10

    .line 856
    .end local v2           #passageContainingPosition:Ljava/lang/Integer;
    .end local v3           #positionSearchResult:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_8d
    new-instance v5, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;

    invoke-direct {v5}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;-><init>()V

    goto/16 :goto_a
.end method

.method private findPhraseAfterPhrase(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;)Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;
    .registers 6
    .parameter "phrase"

    .prologue
    .line 780
    new-instance v0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    iget v1, p1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->passageIndex:I

    iget-object v2, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mUnit:Lcom/google/android/apps/books/tts/TtsUnit;

    iget v3, p1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->phraseIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;-><init>(ILcom/google/android/apps/books/tts/TtsUnit;I)V

    .line 782
    .local v0, next:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/tts/TextToSpeechController;->findPhraseStartingAtPhrase(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;)Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;

    move-result-object v1

    return-object v1
.end method

.method private findPhraseStartingAtPhrase(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;)Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;
    .registers 11
    .parameter "phrase"

    .prologue
    .line 722
    iget v6, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mPassageCount:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_b

    .line 724
    new-instance v6, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;

    invoke-direct {v6}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;-><init>()V

    .line 761
    :goto_a
    return-object v6

    .line 726
    :cond_b
    new-instance v4, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;

    invoke-direct {v4}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;-><init>()V

    .line 727
    .local v4, result:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;
    iget v1, p1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->passageIndex:I

    .line 728
    .local v1, passageIndex:I
    iget v2, p1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->phraseIndex:I

    .line 730
    .local v2, phraseIndex:I
    :goto_14
    iget v6, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mPassageCount:I

    if-lt v1, v6, :cond_20

    .line 732
    new-instance v6, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;

    sget-object v7, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;->END_OF_BOOK:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    invoke-direct {v6, v7}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;-><init>(Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;)V

    goto :goto_a

    .line 733
    :cond_20
    iget-object v6, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mDataSource:Lcom/google/android/apps/books/tts/TextToSpeechController$DataSource;

    invoke-interface {v6, v1}, Lcom/google/android/apps/books/tts/TextToSpeechController$DataSource;->isPassageForbidden(I)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 735
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 737
    :cond_2b
    const/4 v6, 0x0

    invoke-direct {p0, v1, v6}, Lcom/google/android/apps/books/tts/TextToSpeechController;->getPassageSegments(ILjava/lang/String;)Lcom/google/android/apps/books/tts/SegmentedText;

    move-result-object v5

    .line 738
    .local v5, segments:Lcom/google/android/apps/books/tts/SegmentedText;
    if-eqz v5, :cond_68

    .line 739
    iget-object v6, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mUnit:Lcom/google/android/apps/books/tts/TtsUnit;

    invoke-virtual {v5, v6}, Lcom/google/android/apps/books/tts/SegmentedText;->getItemCount(Lcom/google/android/apps/books/tts/TtsUnit;)I

    move-result v6

    if-lt v2, v6, :cond_3e

    .line 741
    add-int/lit8 v1, v1, 0x1

    .line 742
    const/4 v2, 0x0

    goto :goto_14

    .line 743
    :cond_3e
    if-gez v2, :cond_5b

    .line 745
    iget-object v6, p1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->unit:Lcom/google/android/apps/books/tts/TtsUnit;

    invoke-virtual {v5, v6}, Lcom/google/android/apps/books/tts/SegmentedText;->getItemCount(Lcom/google/android/apps/books/tts/TtsUnit;)I

    move-result v3

    .line 746
    .local v3, phrasesInPassage:I
    add-int v0, v3, v2

    .line 747
    .local v0, newPhraseIndex:I
    if-gez v0, :cond_4e

    .line 749
    add-int/lit8 v1, v1, -0x1

    .line 750
    move v2, v0

    goto :goto_14

    .line 752
    :cond_4e
    new-instance v6, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;

    new-instance v7, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    iget-object v8, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mUnit:Lcom/google/android/apps/books/tts/TtsUnit;

    invoke-direct {v7, v1, v8, v0}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;-><init>(ILcom/google/android/apps/books/tts/TtsUnit;I)V

    invoke-direct {v6, v7}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;-><init>(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;)V

    goto :goto_a

    .line 756
    .end local v0           #newPhraseIndex:I
    .end local v3           #phrasesInPassage:I
    :cond_5b
    new-instance v6, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;

    new-instance v7, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    iget-object v8, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mUnit:Lcom/google/android/apps/books/tts/TtsUnit;

    invoke-direct {v7, v1, v8, v2}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;-><init>(ILcom/google/android/apps/books/tts/TtsUnit;I)V

    invoke-direct {v6, v7}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;-><init>(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;)V

    goto :goto_a

    .line 761
    :cond_68
    new-instance v6, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;

    invoke-direct {v6}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;-><init>()V

    goto :goto_a
.end method

.method private focusOnPhrase(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;)V
    .registers 14
    .parameter "phrase"

    .prologue
    .line 870
    iget-object v9, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mReader:Lcom/google/android/apps/books/tts/TextToSpeechController$VisualReader;

    if-nez v9, :cond_5

    .line 914
    :cond_4
    :goto_4
    return-void

    .line 874
    :cond_5
    iget-object v9, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mPassageToText:Ljava/util/Map;

    iget v10, p1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->passageIndex:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/books/tts/SegmentedText;

    .line 875
    .local v8, segments:Lcom/google/android/apps/books/tts/SegmentedText;
    if-nez v8, :cond_30

    .line 877
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "missing passage data for passage "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->passageIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 881
    :cond_30
    invoke-virtual {p1}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, id:Ljava/lang/String;
    iget-object v9, p1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->unit:Lcom/google/android/apps/books/tts/TtsUnit;

    iget v10, p1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->phraseIndex:I

    invoke-virtual {v8, v9, v10}, Lcom/google/android/apps/books/tts/SegmentedText;->getItemRange(Lcom/google/android/apps/books/tts/TtsUnit;I)Lcom/google/android/apps/books/util/Range;

    move-result-object v3

    .line 887
    .local v3, phraseRange:Lcom/google/android/apps/books/util/Range;
    invoke-virtual {v8}, Lcom/google/android/apps/books/tts/SegmentedText;->getNumberOfPositions()I

    move-result v2

    .line 889
    .local v2, numPositions:I
    if-nez v2, :cond_6c

    .line 890
    const-string v9, "BooksTTS"

    const/4 v10, 0x5

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 891
    const-string v9, "BooksTTS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No reading positions found in passage "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->passageIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?! Will not highlight text."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 897
    :cond_6c
    const/4 v5, 0x0

    .line 899
    .local v5, positionIndex:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_6e
    if-ge v1, v2, :cond_7c

    .line 900
    iget-object v9, p1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->unit:Lcom/google/android/apps/books/tts/TtsUnit;

    invoke-virtual {v8, v9, v1}, Lcom/google/android/apps/books/tts/SegmentedText;->getItemRange(Lcom/google/android/apps/books/tts/TtsUnit;I)Lcom/google/android/apps/books/util/Range;

    move-result-object v9

    iget v9, v9, Lcom/google/android/apps/books/util/Range;->start:I

    iget v10, v3, Lcom/google/android/apps/books/util/Range;->start:I

    if-lt v9, v10, :cond_9b

    .line 908
    :cond_7c
    invoke-virtual {v8, v5}, Lcom/google/android/apps/books/tts/SegmentedText;->getCharacterOffsetAtPosition(I)I

    move-result v6

    .line 909
    .local v6, positionOffsetInPassage:I
    new-instance v4, Lcom/google/android/apps/books/common/Position;

    invoke-virtual {v8, v5}, Lcom/google/android/apps/books/tts/SegmentedText;->getReadingPositionAtCharacter(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/google/android/apps/books/common/Position;-><init>(Ljava/lang/String;)V

    .line 911
    .local v4, position:Lcom/google/android/apps/books/common/Position;
    new-instance v7, Lcom/google/android/apps/books/render/TextRange;

    iget v9, p1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->passageIndex:I

    iget v10, v3, Lcom/google/android/apps/books/util/Range;->start:I

    iget v11, v3, Lcom/google/android/apps/books/util/Range;->end:I

    invoke-direct {v7, v9, v4, v10, v11}, Lcom/google/android/apps/books/render/TextRange;-><init>(ILcom/google/android/apps/books/common/Position;II)V

    .line 913
    .local v7, range:Lcom/google/android/apps/books/render/TextRange;
    iget-object v9, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mReader:Lcom/google/android/apps/books/tts/TextToSpeechController$VisualReader;

    invoke-interface {v9, p1, v7}, Lcom/google/android/apps/books/tts/TextToSpeechController$VisualReader;->beganSpeakingPhrase(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;Lcom/google/android/apps/books/render/TextRange;)V

    goto/16 :goto_4

    .line 904
    .end local v4           #position:Lcom/google/android/apps/books/common/Position;
    .end local v6           #positionOffsetInPassage:I
    .end local v7           #range:Lcom/google/android/apps/books/render/TextRange;
    :cond_9b
    move v5, v1

    .line 899
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e
.end method

.method private getPassageSegments(ILjava/lang/String;)Lcom/google/android/apps/books/tts/SegmentedText;
    .registers 9
    .parameter "passageIndex"
    .parameter "position"

    .prologue
    .line 541
    iget-object v3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mPassageToText:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/books/tts/SegmentedText;

    .line 542
    .local v2, result:Lcom/google/android/apps/books/tts/SegmentedText;
    new-instance v0, Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;

    invoke-direct {v0, p1, p2}, Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;-><init>(ILjava/lang/String;)V

    .line 543
    .local v0, params:Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;
    if-nez v2, :cond_53

    iget-object v3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mRequestedPassages:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 544
    const-string v3, "BooksTTS"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 545
    const-string v3, "BooksTTS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting text for passage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_40
    iget-object v3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mDataSource:Lcom/google/android/apps/books/tts/TextToSpeechController$DataSource;

    invoke-interface {v3, p1, p2}, Lcom/google/android/apps/books/tts/TextToSpeechController$DataSource;->requestPassageText(ILjava/lang/String;)I

    move-result v1

    .line 548
    .local v1, requestId:I
    if-eqz p2, :cond_4a

    .line 549
    iput v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mFindStartPositionRequestId:I

    .line 551
    :cond_4a
    iget-object v3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mRequestedPassages:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    .end local v1           #requestId:I
    :cond_53
    return-object v2
.end method

.method private getStartPassage()I
    .registers 4

    .prologue
    .line 562
    iget-object v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mStartPosition:Lcom/google/android/apps/books/common/Position;

    if-eqz v1, :cond_15

    .line 563
    iget-object v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mPositionToPassage:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mStartPosition:Lcom/google/android/apps/books/common/Position;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 564
    .local v0, precisePassage:Ljava/lang/Integer;
    if-eqz v0, :cond_15

    .line 565
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 571
    .end local v0           #precisePassage:Ljava/lang/Integer;
    :goto_14
    return v1

    .line 568
    :cond_15
    iget-object v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mStartPhraseId:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    if-eqz v1, :cond_1e

    .line 569
    iget-object v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mStartPhraseId:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    iget v1, v1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->passageIndex:I

    goto :goto_14

    .line 571
    :cond_1e
    iget v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mStartPassage:I

    goto :goto_14
.end method

.method private declared-synchronized onStopReason(Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;)V
    .registers 3
    .parameter "reason"

    .prologue
    .line 579
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mEnqueuedPhrases:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 580
    iput-object p1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mFillPhraseQueueStopReason:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_16

    .line 585
    :goto_b
    monitor-exit p0

    return-void

    .line 582
    :cond_d
    const/4 v0, 0x0

    :try_start_e
    iput-boolean v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mSpeaking:Z

    .line 583
    iget-object v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mReader:Lcom/google/android/apps/books/tts/TextToSpeechController$VisualReader;

    invoke-interface {v0, p1}, Lcom/google/android/apps/books/tts/TextToSpeechController$VisualReader;->finishedSpeaking(Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_b

    .line 579
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public isSpeaking()Z
    .registers 2

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mSpeaking:Z

    return v0
.end method

.method public nearestPhraseWithUnit(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;Lcom/google/android/apps/books/tts/TtsUnit;)Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;
    .registers 8
    .parameter "phrase"
    .parameter "unit"

    .prologue
    .line 437
    iget-object v3, p1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->unit:Lcom/google/android/apps/books/tts/TtsUnit;

    if-ne v3, p2, :cond_5

    .line 444
    .end local p1
    :goto_4
    return-object p1

    .line 441
    .restart local p1
    :cond_5
    iget-object v3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mPassageToText:Ljava/util/Map;

    iget v4, p1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->passageIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/tts/SegmentedText;

    .line 442
    .local v1, segments:Lcom/google/android/apps/books/tts/SegmentedText;
    iget-object v3, p1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->unit:Lcom/google/android/apps/books/tts/TtsUnit;

    iget v4, p1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->phraseIndex:I

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/books/tts/SegmentedText;->getItemRange(Lcom/google/android/apps/books/tts/TtsUnit;I)Lcom/google/android/apps/books/util/Range;

    move-result-object v3

    iget v2, v3, Lcom/google/android/apps/books/util/Range;->start:I

    .line 443
    .local v2, startOffset:I
    invoke-virtual {v1, p2, v2}, Lcom/google/android/apps/books/tts/SegmentedText;->getNearestItemIndex(Lcom/google/android/apps/books/tts/TtsUnit;I)I

    move-result v0

    .line 444
    .local v0, newItemIndex:I
    new-instance v3, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    iget v4, p1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->passageIndex:I

    invoke-direct {v3, v4, p2, v0}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;-><init>(ILcom/google/android/apps/books/tts/TtsUnit;I)V

    move-object p1, v3

    goto :goto_4
.end method

.method public onPendingRequestsCanceled()V
    .registers 9

    .prologue
    .line 926
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 929
    .local v2, newPassagesRequests:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/books/tts/TextToSpeechController;->isSpeaking()Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 930
    iget-object v5, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mRequestedPassages:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 932
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;

    .line 933
    .local v4, params:Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;
    iget-object v5, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mDataSource:Lcom/google/android/apps/books/tts/TextToSpeechController$DataSource;

    iget v6, v4, Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;->passage:I

    iget-object v7, v4, Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;->position:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/google/android/apps/books/tts/TextToSpeechController$DataSource;->requestPassageText(ILjava/lang/String;)I

    move-result v3

    .line 935
    .local v3, newRequestId:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    const-string v5, "BooksTTS"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 938
    const-string v6, "BooksTTS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPendingRequestsCanceled replacing #"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " by #"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " for passage "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v4, Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;->passage:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_79
    iget v6, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mFindStartPositionRequestId:I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v6, v5, :cond_15

    .line 944
    iput v3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mFindStartPositionRequestId:I

    goto :goto_15

    .line 949
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #newRequestId:I
    .end local v4           #params:Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;
    :cond_8a
    iget-object v5, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mRequestedPassages:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 951
    invoke-virtual {p0}, Lcom/google/android/apps/books/tts/TextToSpeechController;->isSpeaking()Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 952
    iget-object v5, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mRequestedPassages:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 954
    :cond_9a
    return-void
.end method

.method public setPassageCount(I)V
    .registers 4
    .parameter "count"

    .prologue
    .line 363
    iget v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mPassageCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 364
    iput p1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mPassageCount:I

    .line 365
    invoke-direct {p0}, Lcom/google/android/apps/books/tts/TextToSpeechController;->fillPhraseQueue()V

    .line 367
    :cond_a
    return-void
.end method

.method public setPassageText(IILjava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V
    .registers 11
    .parameter "requestId"
    .parameter "passageIndex"
    .parameter "text"
    .parameter "positionOffsets"

    .prologue
    const/4 v5, 0x3

    .line 474
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 475
    .local v1, requestKey:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mRequestedPassages:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 476
    iget-object v2, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mRequestedPassages:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :cond_13
    :goto_13
    if-eqz p3, :cond_17

    if-nez p4, :cond_49

    .line 483
    :cond_17
    sget-object v2, Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;->CONTENT_ERROR:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/tts/TextToSpeechController;->onStopReason(Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;)V

    .line 501
    :goto_1c
    return-void

    .line 477
    :cond_1d
    const-string v2, "BooksTTS"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 478
    const-string v2, "BooksTTS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPassageText: unexpected answer for passage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requestId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 487
    :cond_49
    iget v2, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mFindStartPositionRequestId:I

    if-ne p1, v2, :cond_8e

    iget-object v2, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mStartPosition:Lcom/google/android/apps/books/common/Position;

    if-eqz v2, :cond_8e

    .line 488
    const-string v2, "BooksTTS"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 489
    const-string v2, "BooksTTS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found start position in passage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_71
    iget-object v2, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mPositionToPassage:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mStartPosition:Lcom/google/android/apps/books/common/Position;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    :cond_7c
    :goto_7c
    new-instance v0, Lcom/google/android/apps/books/tts/SegmentedText;

    invoke-direct {v0, p3, p4}, Lcom/google/android/apps/books/tts/SegmentedText;-><init>(Ljava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V

    .line 499
    .local v0, passageText:Lcom/google/android/apps/books/tts/SegmentedText;
    iget-object v2, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mPassageToText:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    invoke-direct {p0}, Lcom/google/android/apps/books/tts/TextToSpeechController;->fillPhraseQueue()V

    goto :goto_1c

    .line 493
    .end local v0           #passageText:Lcom/google/android/apps/books/tts/SegmentedText;
    :cond_8e
    const-string v2, "BooksTTS"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 494
    const-string v2, "BooksTTS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received text for passage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c
.end method

.method public startSpeakingAtPhrase(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;Z)V
    .registers 7
    .parameter "phraseIdentifier"
    .parameter "autoAdvance"

    .prologue
    const/4 v3, 0x0

    .line 414
    const-string v0, "BooksTTS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 415
    const-string v0, "BooksTTS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting TTS at phrase "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_22
    invoke-direct {p0}, Lcom/google/android/apps/books/tts/TextToSpeechController;->clearInternalQueue()V

    .line 420
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mStartPassage:I

    .line 421
    iput-object v3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mStartPosition:Lcom/google/android/apps/books/common/Position;

    .line 422
    iput-object p1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mStartPhraseId:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    .line 423
    iget-object v0, p1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->unit:Lcom/google/android/apps/books/tts/TtsUnit;

    iput-object v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mUnit:Lcom/google/android/apps/books/tts/TtsUnit;

    .line 424
    iput-boolean p2, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mAutoAdvance:Z

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mSpeaking:Z

    .line 427
    iput-object v3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mFillPhraseQueueStopReason:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    .line 429
    invoke-direct {p0}, Lcom/google/android/apps/books/tts/TextToSpeechController;->fillPhraseQueue()V

    .line 430
    return-void
.end method

.method public startSpeakingAtPosition(ILcom/google/android/apps/books/common/Position;Lcom/google/android/apps/books/tts/TtsUnit;Z)V
    .registers 9
    .parameter "passageIndex"
    .parameter "position"
    .parameter "unit"
    .parameter "autoAdvance"

    .prologue
    const/4 v3, 0x0

    .line 378
    const-string v0, "BooksTTS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 379
    const-string v0, "BooksTTS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting TTS at passage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", unit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_36
    invoke-direct {p0}, Lcom/google/android/apps/books/tts/TextToSpeechController;->clearInternalQueue()V

    .line 390
    iget-object v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mDataSource:Lcom/google/android/apps/books/tts/TextToSpeechController$DataSource;

    invoke-interface {v0, p1}, Lcom/google/android/apps/books/tts/TextToSpeechController$DataSource;->isPassageForbidden(I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 404
    :goto_41
    return-void

    .line 394
    :cond_42
    iput p1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mStartPassage:I

    .line 395
    iput-object p2, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mStartPosition:Lcom/google/android/apps/books/common/Position;

    .line 396
    iput-object v3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mStartPhraseId:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    .line 397
    iput-object p3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mUnit:Lcom/google/android/apps/books/tts/TtsUnit;

    .line 398
    iput-boolean p4, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mAutoAdvance:Z

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mSpeaking:Z

    .line 401
    iput-object v3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mFillPhraseQueueStopReason:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    .line 403
    invoke-direct {p0}, Lcom/google/android/apps/books/tts/TextToSpeechController;->fillPhraseQueue()V

    goto :goto_41
.end method

.method public stopSpeaking()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 451
    invoke-direct {p0}, Lcom/google/android/apps/books/tts/TextToSpeechController;->clearSynthesizerQueue()V

    .line 452
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mStartPassage:I

    .line 453
    iput-object v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mStartPosition:Lcom/google/android/apps/books/common/Position;

    .line 454
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mSpeaking:Z

    .line 455
    iput-object v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController;->mFillPhraseQueueStopReason:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    .line 456
    return-void
.end method
