.class public Lcom/google/research/handwriting/gui/UIHandler;
.super Landroid/os/Handler;
.source "UIHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/research/handwriting/gui/UIHandler$ResultsAndCompletions;
    }
.end annotation


# static fields
.field private static final FEEDBACK_AUTO:Ljava/lang/String; = "auto"

.field private static final FEEDBACK_COMPLETION:Ljava/lang/String; = "completion"

.field private static final FEEDBACK_CONFIRMED:Ljava/lang/String; = "confirmed"

.field private static final FEEDBACK_DELETED:Ljava/lang/String; = "deleted"

.field private static final FEEDBACK_FINISHED:Ljava/lang/String; = "finish"

.field private static final FEEDBACK_ONKEY:Ljava/lang/String; = "onkey"

.field private static final FEEDBACK_SELECTED:Ljava/lang/String; = "selected"

.field private static final FEEDBACK_SELECTED_EDITING:Ljava/lang/String; = "selected-editing"

.field private static final MSG_AUTO_SELECT_SUGGESTION:I = 0x2

.field private static final MSG_SET_RESULTS:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoSpace:Z

.field private final mBookKeeper:Lcom/google/research/handwriting/gui/BookKeeper;

.field private final mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

.field private mCandidateViewHandler:Lcom/google/research/handwriting/gui/CandidateViewHandler;

.field private final mContinuousWritingHandler:Lcom/google/research/handwriting/gui/ContinuousWritingHandler;

.field private final mContinuousWritingManager:Lcom/google/research/handwriting/gui/ContinuousWritingManager;

.field private mEditingPreviouslyEnteredText:Z

.field private mHandwritingImeView:Landroid/view/View;

.field private mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

.field private final mIcLock:Ljava/lang/Object;

.field private mJustAfterSuggestionSelected:Z

.field private mJustAfterTextDeleted:Z

.field private mJustModifiedComposingRegion:Z

.field private final mLastCommittedText:Landroid/text/SpannableStringBuilder;

.field private mLengthOfTextInLimboState:I

.field private mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

.field private mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

.field private mRecognizerHasResult:Z

.field private mRecognizerSettings:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;

.field private mSuggestions:Lcom/google/research/handwriting/gui/SuggestedWords;

.field private mTranslatedText:Ljava/lang/String;

.field private mUseBookkeeper:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/research/handwriting/gui/UIHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/research/handwriting/gui/UIHandlerCallback;Lcom/google/research/handwriting/gui/ContinuousWritingHandler;Lcom/google/research/handwriting/gui/ContinuousWritingManager;Ljava/lang/Object;)V
    .registers 7
    .parameter "callback"
    .parameter "continuousWritingHandler"
    .parameter "continuousWritingManager"
    .parameter "icLock"

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 48
    sget-object v0, Lcom/google/research/handwriting/gui/SuggestedWords;->EMPTY:Lcom/google/research/handwriting/gui/SuggestedWords;

    iput-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mSuggestions:Lcom/google/research/handwriting/gui/SuggestedWords;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mTranslatedText:Ljava/lang/String;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mUseBookkeeper:Z

    .line 58
    new-instance v0, Lcom/google/research/handwriting/gui/BookKeeper;

    invoke-direct {v0}, Lcom/google/research/handwriting/gui/BookKeeper;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mBookKeeper:Lcom/google/research/handwriting/gui/BookKeeper;

    .line 64
    iput-boolean v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mJustModifiedComposingRegion:Z

    .line 68
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mLastCommittedText:Landroid/text/SpannableStringBuilder;

    .line 70
    iput v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mLengthOfTextInLimboState:I

    .line 82
    iput-object p1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    .line 83
    iput-object p2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mContinuousWritingHandler:Lcom/google/research/handwriting/gui/ContinuousWritingHandler;

    .line 84
    iput-object p3, p0, Lcom/google/research/handwriting/gui/UIHandler;->mContinuousWritingManager:Lcom/google/research/handwriting/gui/ContinuousWritingManager;

    .line 85
    iput-object p4, p0, Lcom/google/research/handwriting/gui/UIHandler;->mIcLock:Ljava/lang/Object;

    .line 86
    return-void
.end method


# virtual methods
.method public autoSelectSuggestion(Lcom/google/research/handwriting/gui/SuggestedWords;I)V
    .registers 8
    .parameter "suggestions"
    .parameter "millis"

    .prologue
    const/4 v4, 0x2

    .line 229
    sget-object v1, Lcom/google/research/handwriting/gui/UIHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Triggering auto select of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/google/research/handwriting/gui/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0, v4, p1}, Lcom/google/research/handwriting/gui/UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 231
    .local v0, msg:Landroid/os/Message;
    int-to-long v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/research/handwriting/gui/UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 232
    return-void
.end method

.method public cancelAutoSelect()V
    .registers 2

    .prologue
    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mJustAfterSuggestionSelected:Z

    .line 240
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/research/handwriting/gui/UIHandler;->removeMessages(I)V

    .line 241
    return-void
.end method

.method public cancelStroke()V
    .registers 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->cancelStroke()V

    .line 492
    return-void
.end method

.method public clearRecognizer()V
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

    if-eqz v0, :cond_9

    .line 367
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->clear()V

    .line 369
    :cond_9
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->updateTranslatedText()V

    .line 370
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->clear()V

    .line 371
    sget-object v0, Lcom/google/research/handwriting/gui/SuggestedWords;->EMPTY:Lcom/google/research/handwriting/gui/SuggestedWords;

    invoke-virtual {p0, v0}, Lcom/google/research/handwriting/gui/UIHandler;->setSuggestions(Lcom/google/research/handwriting/gui/SuggestedWords;)V

    .line 372
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mContinuousWritingHandler:Lcom/google/research/handwriting/gui/ContinuousWritingHandler;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->drawRecoQueue()V

    .line 373
    return-void
.end method

.method public clearResults()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 216
    sget-object v0, Lcom/google/research/handwriting/gui/SuggestedWords;->EMPTY:Lcom/google/research/handwriting/gui/SuggestedWords;

    sget-object v1, Lcom/google/research/handwriting/gui/SuggestedWords;->EMPTY:Lcom/google/research/handwriting/gui/SuggestedWords;

    invoke-virtual {p0, v0, v1}, Lcom/google/research/handwriting/gui/UIHandler;->setResults(Lcom/google/research/handwriting/gui/SuggestedWords;Lcom/google/research/handwriting/gui/SuggestedWords;)V

    .line 217
    iput-boolean v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mJustAfterSuggestionSelected:Z

    .line 218
    iput-boolean v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizerHasResult:Z

    .line 219
    return-void
.end method

.method public clearTranslatedText()V
    .registers 4

    .prologue
    .line 628
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->usesTranslateApi()Z

    move-result v0

    if-nez v0, :cond_9

    .line 633
    :goto_8
    return-void

    .line 631
    :cond_9
    const/4 v0, 0x2

    sget-object v1, Lcom/google/research/handwriting/gui/UIHandler;->TAG:Ljava/lang/String;

    const-string v2, "mTranslatedText cleared"

    invoke-static {v0, v1, v2}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v0, ""

    iput-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mTranslatedText:Ljava/lang/String;

    goto :goto_8
.end method

.method public commitDeleteLeft(I)V
    .registers 5
    .parameter "length"

    .prologue
    .line 434
    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mIcLock:Ljava/lang/Object;

    monitor-enter v2

    .line 435
    :try_start_3
    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    invoke-interface {v1}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->getImeCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 436
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 437
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mJustAfterTextDeleted:Z

    .line 438
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_24

    .line 439
    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->getPreContext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->setPreContext(Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->getPostContext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->setPostContext(Ljava/lang/String;)V

    .line 441
    return-void

    .line 438
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public commitSuggestion(Ljava/lang/CharSequence;ZC)V
    .registers 11
    .parameter "suggestion"
    .parameter "hasAppendChar"
    .parameter "appendChar"

    .prologue
    .line 328
    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mLastCommittedText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 329
    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mLastCommittedText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 330
    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    invoke-interface {v2}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->getCursorSelectionStart()I

    move-result v1

    .line 331
    .local v1, cursorSelectionStart:I
    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    invoke-interface {v2}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->getCursorSelectionEnd()I

    move-result v0

    .line 332
    .local v0, cursorSelectionEnd:I
    const-string v2, "\u2205[incorrect]"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b9

    const-string v2, "\u2205[no recognition results]"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b9

    .line 334
    iget-boolean v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mUseBookkeeper:Z

    if-eqz v2, :cond_b1

    .line 335
    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mBookKeeper:Lcom/google/research/handwriting/gui/BookKeeper;

    iget-object v3, p0, Lcom/google/research/handwriting/gui/UIHandler;->mLastCommittedText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    invoke-virtual {v4}, Lcom/google/research/handwriting/gui/RecognizerHandler;->getRecognitionResult()Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    move-result-object v4

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/google/research/handwriting/gui/BookKeeper;->update(IILjava/lang/String;Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;)V

    .line 337
    if-eqz p2, :cond_72

    .line 338
    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mBookKeeper:Lcom/google/research/handwriting/gui/BookKeeper;

    iget-object v3, p0, Lcom/google/research/handwriting/gui/UIHandler;->mLastCommittedText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/google/research/handwriting/gui/UIHandler;->mLastCommittedText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/2addr v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->EMPTY:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/research/handwriting/gui/BookKeeper;->update(IILjava/lang/String;Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;)V

    .line 341
    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mLastCommittedText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, p3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 348
    :cond_72
    :goto_72
    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mLastCommittedText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v2}, Lcom/google/research/handwriting/gui/UIHandler;->commitText(Ljava/lang/CharSequence;)V

    .line 349
    const/4 v2, 0x2

    sget-object v3, Lcom/google/research/handwriting/gui/UIHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "commitSuggestion: text=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/research/handwriting/gui/UIHandler;->mLastCommittedText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_98
    :goto_98
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->clearResults()V

    .line 360
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->clearRecognizer()V

    .line 361
    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->getPreContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->setPreContext(Ljava/lang/String;)V

    .line 362
    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->getPostContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->setPostContext(Ljava/lang/String;)V

    .line 363
    return-void

    .line 344
    :cond_b1
    if-eqz p2, :cond_72

    .line 345
    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mLastCommittedText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, p3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_72

    .line 352
    :cond_b9
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/google/research/handwriting/gui/UIHandler;->commitText(Ljava/lang/CharSequence;)V

    .line 353
    iget-boolean v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mUseBookkeeper:Z

    if-eqz v2, :cond_98

    .line 354
    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mBookKeeper:Lcom/google/research/handwriting/gui/BookKeeper;

    const-string v3, ""

    sget-object v4, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->EMPTY:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/google/research/handwriting/gui/BookKeeper;->update(IILjava/lang/String;Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;)V

    goto :goto_98
.end method

.method public commitText(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "text"

    .prologue
    .line 381
    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mIcLock:Ljava/lang/Object;

    monitor-enter v2

    .line 382
    :try_start_3
    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    invoke-interface {v1}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->getImeCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 383
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 384
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_26

    .line 385
    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->getPreContext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->setPreContext(Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->getPostContext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->setPostContext(Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    invoke-interface {v1, p1}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->onCommitText(Ljava/lang/CharSequence;)V

    .line 388
    return-void

    .line 384
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public finishInput(Z)V
    .registers 9
    .parameter "confirmed"

    .prologue
    const/4 v4, 0x0

    .line 701
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mSuggestions:Lcom/google/research/handwriting/gui/SuggestedWords;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/SuggestedWords;->size()I

    move-result v0

    if-lez v0, :cond_34

    .line 702
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/RecognizerHandler;->getRecognitionResult()Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->getWords()Lcom/google/research/handwriting/gui/SuggestedWords;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/research/handwriting/gui/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 704
    .local v1, recognition:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mSuggestions:Lcom/google/research/handwriting/gui/SuggestedWords;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/SuggestedWords;->clickable()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 707
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    if-eqz p1, :cond_35

    const-string v2, "confirmed"

    :goto_29
    iget-object v3, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    invoke-virtual {v3}, Lcom/google/research/handwriting/gui/RecognizerHandler;->getRecognitionResult()Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    move-result-object v3

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logFeedback(Ljava/lang/String;Ljava/lang/String;Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;ZLjava/lang/String;)V

    .line 721
    .end local v1           #recognition:Ljava/lang/String;
    :cond_34
    :goto_34
    return-void

    .line 707
    .restart local v1       #recognition:Ljava/lang/String;
    :cond_35
    const-string v2, "finish"

    goto :goto_29

    .line 715
    :cond_38
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/RecognizerHandler;->getRecognitionResult()Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    move-result-object v6

    .line 716
    .local v6, rr:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->strokes()Lcom/google/research/handwriting/base/StrokeList;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->setStrokes(Lcom/google/research/handwriting/base/StrokeList;)V

    .line 717
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    const-string v2, "finish"

    iget-object v3, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    invoke-virtual {v3}, Lcom/google/research/handwriting/gui/RecognizerHandler;->getRecognitionResult()Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    move-result-object v3

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logFeedback(Ljava/lang/String;Ljava/lang/String;Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;ZLjava/lang/String;)V

    goto :goto_34
.end method

.method public getBookKeeper()Lcom/google/research/handwriting/gui/BookKeeper;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mBookKeeper:Lcom/google/research/handwriting/gui/BookKeeper;

    return-object v0
.end method

.method public getEditingPreviouslyEnteredText()Z
    .registers 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mEditingPreviouslyEnteredText:Z

    return v0
.end method

.method public getJustAfterTextDeleted()Z
    .registers 2

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mJustAfterTextDeleted:Z

    return v0
.end method

.method public getJustModifiedComposingRegion()Z
    .registers 2

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mJustModifiedComposingRegion:Z

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostContext()Ljava/lang/String;
    .registers 5

    .prologue
    .line 410
    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    invoke-interface {v2}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->getImeCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 411
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_10

    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizerSettings:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    if-nez v2, :cond_13

    .line 412
    :cond_10
    const-string v2, ""

    .line 418
    :goto_12
    return-object v2

    .line 414
    :cond_13
    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 415
    .local v1, s:Ljava/lang/CharSequence;
    if-nez v1, :cond_1f

    .line 416
    const-string v2, ""

    goto :goto_12

    .line 418
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_12
.end method

.method public getPreContext()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 391
    iget-object v4, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    invoke-interface {v4}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->getImeCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 392
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_11

    iget-object v4, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizerSettings:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    if-nez v4, :cond_14

    .line 393
    :cond_11
    const-string v2, ""

    .line 406
    :goto_13
    return-object v2

    .line 396
    :cond_14
    iget v4, p0, Lcom/google/research/handwriting/gui/UIHandler;->mLengthOfTextInLimboState:I

    add-int/lit8 v4, v4, 0x14

    invoke-interface {v1, v4, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 397
    .local v3, s:Ljava/lang/CharSequence;
    if-nez v3, :cond_21

    .line 398
    const-string v2, ""

    goto :goto_13

    .line 401
    :cond_21
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget v5, p0, Lcom/google/research/handwriting/gui/UIHandler;->mLengthOfTextInLimboState:I

    sub-int v0, v4, v5

    .line 402
    .local v0, end:I
    if-gez v0, :cond_2c

    .line 403
    const/4 v0, 0x0

    .line 405
    :cond_2c
    invoke-interface {v3, v6, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, preContext:Ljava/lang/String;
    goto :goto_13
.end method

.method public declared-synchronized getSuggestion(I)Ljava/lang/CharSequence;
    .registers 3
    .parameter "index"

    .prologue
    .line 422
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mSuggestions:Lcom/google/research/handwriting/gui/SuggestedWords;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/SuggestedWords;->size()I

    move-result v0

    if-ge p1, v0, :cond_11

    .line 423
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mSuggestions:Lcom/google/research/handwriting/gui/SuggestedWords;

    invoke-virtual {v0, p1}, Lcom/google/research/handwriting/gui/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_14

    move-result-object v0

    .line 425
    :goto_f
    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    const-string v0, ""
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_14

    goto :goto_f

    .line 422
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTranslatedText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mTranslatedText:Ljava/lang/String;

    return-object v0
.end method

.method public getUIHandlerCallback()Lcom/google/research/handwriting/gui/UIHandlerCallback;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 168
    sget-object v2, Lcom/google/research/handwriting/gui/UIHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_a2

    .line 196
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 199
    :goto_22
    return-void

    .line 172
    :pswitch_23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/research/handwriting/gui/UIHandler$ResultsAndCompletions;

    .line 173
    .local v0, res:Lcom/google/research/handwriting/gui/UIHandler$ResultsAndCompletions;
    monitor-enter p0

    .line 174
    const/4 v2, 0x3

    :try_start_29
    sget-object v3, Lcom/google/research/handwriting/gui/UIHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage: results="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/google/research/handwriting/gui/UIHandler$ResultsAndCompletions;->results:Lcom/google/research/handwriting/gui/SuggestedWords;

    invoke-virtual {v5}, Lcom/google/research/handwriting/gui/SuggestedWords;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v2, 0x3

    sget-object v3, Lcom/google/research/handwriting/gui/UIHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage: completions="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/google/research/handwriting/gui/UIHandler$ResultsAndCompletions;->completions:Lcom/google/research/handwriting/gui/SuggestedWords;

    invoke-virtual {v5}, Lcom/google/research/handwriting/gui/SuggestedWords;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v2, v0, Lcom/google/research/handwriting/gui/UIHandler$ResultsAndCompletions;->results:Lcom/google/research/handwriting/gui/SuggestedWords;

    invoke-virtual {p0, v2}, Lcom/google/research/handwriting/gui/UIHandler;->setSuggestions(Lcom/google/research/handwriting/gui/SuggestedWords;)V

    .line 177
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->updateTranslatedText()V

    .line 178
    iget-object v2, v0, Lcom/google/research/handwriting/gui/UIHandler$ResultsAndCompletions;->results:Lcom/google/research/handwriting/gui/SuggestedWords;

    iget-object v3, v0, Lcom/google/research/handwriting/gui/UIHandler$ResultsAndCompletions;->completions:Lcom/google/research/handwriting/gui/SuggestedWords;

    invoke-virtual {p0, v2, v3}, Lcom/google/research/handwriting/gui/UIHandler;->updateResultsInCandidateView(Lcom/google/research/handwriting/gui/SuggestedWords;Lcom/google/research/handwriting/gui/SuggestedWords;)V

    .line 181
    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mContinuousWritingHandler:Lcom/google/research/handwriting/gui/ContinuousWritingHandler;

    invoke-virtual {v2}, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->numRecognitionsInBackground()I

    move-result v2

    if-nez v2, :cond_91

    iget-boolean v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizerHasResult:Z

    if-eqz v2, :cond_91

    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->selectionIsEmpty()Z

    move-result v2

    if-eqz v2, :cond_91

    .line 183
    iget-object v2, v0, Lcom/google/research/handwriting/gui/UIHandler$ResultsAndCompletions;->results:Lcom/google/research/handwriting/gui/SuggestedWords;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/research/handwriting/gui/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/research/handwriting/gui/UIHandler;->makeTopCandidateLimboState(Ljava/lang/CharSequence;)V

    .line 185
    :cond_91
    monitor-exit p0

    goto :goto_22

    :catchall_93
    move-exception v2

    monitor-exit p0
    :try_end_95
    .catchall {:try_start_29 .. :try_end_95} :catchall_93

    throw v2

    .line 190
    .end local v0           #res:Lcom/google/research/handwriting/gui/UIHandler$ResultsAndCompletions;
    :pswitch_96
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/research/handwriting/gui/SuggestedWords;

    .line 191
    .local v1, suggestions:Lcom/google/research/handwriting/gui/SuggestedWords;
    invoke-virtual {v1, v6}, Lcom/google/research/handwriting/gui/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/research/handwriting/gui/UIHandler;->makeAutoSelectTopCandidate(Ljava/lang/CharSequence;)V

    goto :goto_22

    .line 170
    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_23
        :pswitch_96
    .end packed-switch
.end method

.method public imeVisible()Z
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mHandwritingImeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isAutoSpace()Z
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    invoke-interface {v0}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->getRecognizerLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/research/handwriting/gui/ImeUtils;->isLanguageWithSpaces(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 315
    const/4 v0, 0x0

    .line 317
    :goto_d
    return v0

    :cond_e
    iget-boolean v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mAutoSpace:Z

    goto :goto_d
.end method

.method public makeAutoSelectTopCandidate(Ljava/lang/CharSequence;)V
    .registers 8
    .parameter "topCandidate"

    .prologue
    const/4 v3, 0x2

    .line 256
    sget-object v0, Lcom/google/research/handwriting/gui/UIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto select received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-boolean v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mJustAfterSuggestionSelected:Z

    if-nez v0, :cond_45

    .line 260
    sget-object v0, Lcom/google/research/handwriting/gui/UIHandler;->TAG:Ljava/lang/String;

    const-string v1, "!mJustAfterSuggestionSelected doing it"

    invoke-static {v3, v0, v1}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->isAutoSpace()Z

    move-result v0

    const/16 v1, 0x20

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/research/handwriting/gui/UIHandler;->commitSuggestion(Ljava/lang/CharSequence;ZC)V

    .line 262
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    iget-object v3, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    invoke-virtual {v3}, Lcom/google/research/handwriting/gui/RecognizerHandler;->getRecognitionResult()Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logFeedback(Ljava/lang/String;Ljava/lang/String;Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;ZLjava/lang/String;)V

    .line 267
    :goto_41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mJustAfterSuggestionSelected:Z

    .line 268
    return-void

    .line 265
    :cond_45
    sget-object v0, Lcom/google/research/handwriting/gui/UIHandler;->TAG:Ljava/lang/String;

    const-string v1, "mJustAfterSuggestionSelected -> cancelling auto select"

    invoke-static {v3, v0, v1}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method

.method public makeTopCandidateLimboState(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "topCandidate"

    .prologue
    .line 248
    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mIcLock:Ljava/lang/Object;

    monitor-enter v2

    .line 249
    :try_start_3
    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    invoke-interface {v1}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->getImeCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 250
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 251
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mJustModifiedComposingRegion:Z

    .line 252
    monitor-exit v2

    .line 253
    return-void

    .line 252
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public onKeyDelete()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 549
    iget-boolean v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizerHasResult:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mEditingPreviouslyEnteredText:Z

    if-eqz v0, :cond_58

    .line 550
    :cond_9
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    invoke-interface {v0}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->deleteText()V

    .line 551
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    invoke-interface {v0}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->getCursorSelectionStart()I

    move-result v7

    .line 552
    .local v7, updateStart:I
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->selectionIsEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 557
    add-int/lit8 v7, v7, -0x1

    .line 559
    :cond_1c
    const/4 v0, 0x2

    sget-object v1, Lcom/google/research/handwriting/gui/UIHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Now going to delete from bookkeeper: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    invoke-interface {v3}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->getCursorSelectionEnd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-boolean v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mUseBookkeeper:Z

    if-eqz v0, :cond_58

    .line 562
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mBookKeeper:Lcom/google/research/handwriting/gui/BookKeeper;

    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    invoke-interface {v1}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->getCursorSelectionEnd()I

    move-result v1

    const-string v2, ""

    sget-object v3, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->EMPTY:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/google/research/handwriting/gui/BookKeeper;->update(IILjava/lang/String;Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;)V

    .line 566
    .end local v7           #updateStart:I
    :cond_58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mJustAfterTextDeleted:Z

    .line 567
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->strokes()Lcom/google/research/handwriting/base/StrokeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/research/handwriting/base/StrokeList;->size()I

    move-result v0

    if-lez v0, :cond_80

    .line 570
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mSuggestions:Lcom/google/research/handwriting/gui/SuggestedWords;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/SuggestedWords;->clickable()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 573
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    const-string v1, "\u2205[deleted]"

    const-string v2, "deleted"

    iget-object v3, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    invoke-virtual {v3}, Lcom/google/research/handwriting/gui/RecognizerHandler;->getRecognitionResult()Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    move-result-object v3

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logFeedback(Ljava/lang/String;Ljava/lang/String;Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;ZLjava/lang/String;)V

    .line 585
    :cond_80
    :goto_80
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->clearRecognizer()V

    .line 586
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->clearResults()V

    .line 589
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/research/handwriting/gui/UIHandler;->commitText(Ljava/lang/CharSequence;)V

    .line 590
    iput-boolean v4, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizerHasResult:Z

    .line 592
    return-void

    .line 579
    :cond_8e
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/RecognizerHandler;->getRecognitionResult()Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    move-result-object v6

    .line 580
    .local v6, rr:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->strokes()Lcom/google/research/handwriting/base/StrokeList;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->setStrokes(Lcom/google/research/handwriting/base/StrokeList;)V

    .line 581
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    const-string v1, "\u2205[deleted]"

    const-string v2, "deleted"

    iget-object v3, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    invoke-virtual {v3}, Lcom/google/research/handwriting/gui/RecognizerHandler;->getRecognitionResult()Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    move-result-object v3

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logFeedback(Ljava/lang/String;Ljava/lang/String;Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;ZLjava/lang/String;)V

    goto :goto_80
.end method

.method public onKeyNormal(I)V
    .registers 11
    .parameter "primaryCode"

    .prologue
    const/16 v2, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 503
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mSuggestions:Lcom/google/research/handwriting/gui/SuggestedWords;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/SuggestedWords;->clickable()Z

    move-result v0

    if-nez v0, :cond_77

    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->strokes()Lcom/google/research/handwriting/base/StrokeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/research/handwriting/base/StrokeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_77

    .line 505
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->strokes()Lcom/google/research/handwriting/base/StrokeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/research/handwriting/base/StrokeList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/research/handwriting/base/StrokeList;

    .line 506
    .local v7, strokes:Lcom/google/research/handwriting/base/StrokeList;
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->getPreContext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->getPostContext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/google/research/handwriting/base/StrokeList;->setContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mContinuousWritingManager:Lcom/google/research/handwriting/gui/ContinuousWritingManager;

    invoke-virtual {v0, v7}, Lcom/google/research/handwriting/gui/ContinuousWritingManager;->startRecognition(Lcom/google/research/handwriting/base/StrokeList;)I

    move-result v6

    .line 509
    .local v6, id:I
    if-ne p1, v2, :cond_70

    .line 511
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mContinuousWritingHandler:Lcom/google/research/handwriting/gui/ContinuousWritingHandler;

    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    invoke-interface {v1}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->getRecognizerLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/research/handwriting/gui/ImeUtils;->isLanguageWithSpaces(Ljava/lang/String;)Z

    move-result v1

    int-to-char v2, p1

    invoke-virtual {v0, v6, v7, v1, v2}, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->addToQueue(ILcom/google/research/handwriting/base/StrokeList;ZC)V

    .line 516
    :goto_47
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mContinuousWritingHandler:Lcom/google/research/handwriting/gui/ContinuousWritingHandler;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->numRecognitionsInBackground()I

    move-result v0

    if-ne v0, v3, :cond_5d

    .line 517
    const/4 v0, 0x3

    sget-object v1, Lcom/google/research/handwriting/gui/UIHandler;->TAG:Ljava/lang/String;

    const-string v2, "Inserting placeholder"

    invoke-static {v0, v1, v2}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v0, "\u2026"

    int-to-char v1, p1

    invoke-virtual {p0, v0, v4, v1}, Lcom/google/research/handwriting/gui/UIHandler;->commitSuggestion(Ljava/lang/CharSequence;ZC)V

    .line 520
    :cond_5d
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->clear()V

    .line 521
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->clear()V

    .line 542
    .end local v6           #id:I
    .end local v7           #strokes:Lcom/google/research/handwriting/base/StrokeList;
    :goto_67
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->updateTranslatedText()V

    .line 544
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mContinuousWritingHandler:Lcom/google/research/handwriting/gui/ContinuousWritingHandler;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->drawRecoQueue()V

    .line 545
    return-void

    .line 514
    .restart local v6       #id:I
    .restart local v7       #strokes:Lcom/google/research/handwriting/base/StrokeList;
    :cond_70
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mContinuousWritingHandler:Lcom/google/research/handwriting/gui/ContinuousWritingHandler;

    int-to-char v1, p1

    invoke-virtual {v0, v6, v7, v3, v1}, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->addToQueue(ILcom/google/research/handwriting/base/StrokeList;ZC)V

    goto :goto_47

    .line 523
    .end local v6           #id:I
    .end local v7           #strokes:Lcom/google/research/handwriting/base/StrokeList;
    :cond_77
    invoke-virtual {p0, v4}, Lcom/google/research/handwriting/gui/UIHandler;->getSuggestion(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 524
    .local v8, suggestion:Ljava/lang/CharSequence;
    const-string v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    iget-boolean v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mJustAfterSuggestionSelected:Z

    if-nez v0, :cond_b0

    .line 525
    if-ne p1, v2, :cond_ab

    .line 526
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    invoke-interface {v0}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->getRecognizerLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/research/handwriting/gui/ImeUtils;->isLanguageWithSpaces(Ljava/lang/String;)Z

    move-result v0

    int-to-char v1, p1

    invoke-virtual {p0, v8, v0, v1}, Lcom/google/research/handwriting/gui/UIHandler;->commitSuggestion(Ljava/lang/CharSequence;ZC)V

    .line 531
    :goto_97
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onkey"

    iget-object v3, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    invoke-virtual {v3}, Lcom/google/research/handwriting/gui/RecognizerHandler;->getRecognitionResult()Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    move-result-object v3

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logFeedback(Ljava/lang/String;Ljava/lang/String;Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;ZLjava/lang/String;)V

    goto :goto_67

    .line 529
    :cond_ab
    int-to-char v0, p1

    invoke-virtual {p0, v8, v3, v0}, Lcom/google/research/handwriting/gui/UIHandler;->commitSuggestion(Ljava/lang/CharSequence;ZC)V

    goto :goto_97

    .line 534
    :cond_b0
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->sendKeyChar(C)V

    .line 535
    iget-boolean v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mUseBookkeeper:Z

    if-eqz v0, :cond_d7

    .line 536
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mBookKeeper:Lcom/google/research/handwriting/gui/BookKeeper;

    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    invoke-interface {v1}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->getCursorSelectionStart()I

    move-result v1

    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    invoke-interface {v2}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->getCursorSelectionEnd()I

    move-result v2

    new-instance v3, Ljava/lang/Character;

    int-to-char v4, p1

    invoke-direct {v3, v4}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v3}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->EMPTY:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/research/handwriting/gui/BookKeeper;->update(IILjava/lang/String;Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;)V

    .line 539
    :cond_d7
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mLastCommittedText:Landroid/text/SpannableStringBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_67
.end method

.method public onPenDown(FFJF)V
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "time"
    .parameter "pressure"

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->cancelAutoSelect()V

    .line 481
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mLastCommittedText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 482
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->onPenDown(FFJF)V

    .line 483
    return-void
.end method

.method public onPenMove(FFJF)V
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "time"
    .parameter "pressure"

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->cancelAutoSelect()V

    .line 487
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->onPenMove(FFJF)V

    .line 488
    return-void
.end method

.method public onPenUp(FFJF)V
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "time"
    .parameter "pressure"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->onPenUp(FFJF)V

    .line 496
    return-void
.end method

.method public onPickSuggestion(ILjava/lang/CharSequence;Z)V
    .registers 13
    .parameter "index"
    .parameter "selectedString"
    .parameter "completion"

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->cancelAutoSelect()V

    .line 445
    iget-object v8, p0, Lcom/google/research/handwriting/gui/UIHandler;->mIcLock:Ljava/lang/Object;

    monitor-enter v8

    .line 446
    :try_start_6
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    invoke-interface {v0}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->getImeCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 447
    .local v6, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_11

    .line 448
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 450
    :cond_11
    move-object v7, p2

    .line 452
    .local v7, suggestion:Ljava/lang/CharSequence;
    iget-boolean v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mJustAfterSuggestionSelected:Z

    if-eqz v0, :cond_37

    const-string v0, "\u2205[incorrect]"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "\u2205[no recognition results]"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 455
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mLastCommittedText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/research/handwriting/gui/UIHandler;->commitDeleteLeft(I)V

    .line 457
    :cond_37
    iget-boolean v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mEditingPreviouslyEnteredText:Z

    if-eqz v0, :cond_68

    .line 458
    const/4 v0, 0x0

    const/16 v1, 0x20

    invoke-virtual {p0, v7, v0, v1}, Lcom/google/research/handwriting/gui/UIHandler;->commitSuggestion(Ljava/lang/CharSequence;ZC)V

    .line 459
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "selected-editing"

    iget-object v3, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    invoke-virtual {v3}, Lcom/google/research/handwriting/gui/RecognizerHandler;->getRecognitionResult()Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logFeedback(Ljava/lang/String;Ljava/lang/String;Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;ZLjava/lang/String;)V

    .line 468
    :goto_55
    if-eqz v6, :cond_5a

    .line 469
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 471
    :cond_5a
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->updateTranslatedText()V

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mJustAfterSuggestionSelected:Z

    .line 473
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->clearResults()V

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mEditingPreviouslyEnteredText:Z

    .line 475
    monitor-exit v8

    .line 476
    return-void

    .line 462
    :cond_68
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->isAutoSpace()Z

    move-result v0

    const/16 v1, 0x20

    invoke-virtual {p0, v7, v0, v1}, Lcom/google/research/handwriting/gui/UIHandler;->commitSuggestion(Ljava/lang/CharSequence;ZC)V

    .line 463
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_8b

    const-string v2, "completion"

    :goto_7b
    iget-object v3, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    invoke-virtual {v3}, Lcom/google/research/handwriting/gui/RecognizerHandler;->getRecognitionResult()Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    move-result-object v3

    const-string v5, ""

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logFeedback(Ljava/lang/String;Ljava/lang/String;Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;ZLjava/lang/String;)V

    goto :goto_55

    .line 475
    .end local v6           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v7           #suggestion:Ljava/lang/CharSequence;
    :catchall_88
    move-exception v0

    monitor-exit v8
    :try_end_8a
    .catchall {:try_start_6 .. :try_end_8a} :catchall_88

    throw v0

    .line 463
    .restart local v6       #ic:Landroid/view/inputmethod/InputConnection;
    .restart local v7       #suggestion:Ljava/lang/CharSequence;
    :cond_8b
    :try_start_8b
    const-string v2, "selected"
    :try_end_8d
    .catchall {:try_start_8b .. :try_end_8d} :catchall_88

    goto :goto_7b
.end method

.method public onSizeChanged(II)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {v0, p1, p2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->setWritingGuide(II)V

    .line 500
    return-void
.end method

.method public onUpdateSelection(II)V
    .registers 10
    .parameter "newSelStart"
    .parameter "newSelEnd"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 645
    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mContinuousWritingHandler:Lcom/google/research/handwriting/gui/ContinuousWritingHandler;

    invoke-virtual {v1}, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->isInternalContinuousWritingEditing()Z

    move-result v1

    if-nez v1, :cond_91

    .line 646
    sget-object v1, Lcom/google/research/handwriting/gui/UIHandler;->TAG:Ljava/lang/String;

    const-string v2, "!mContinuousWritingInternalEditing"

    invoke-static {v6, v1, v2}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->clearRecognizer()V

    .line 648
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->clearResults()V

    .line 653
    :goto_18
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->getJustAfterTextDeleted()Z

    move-result v1

    if-nez v1, :cond_8d

    .line 654
    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mLastCommittedText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 655
    iget-boolean v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mUseBookkeeper:Z

    if-eqz v1, :cond_97

    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCandidateViewHandler:Lcom/google/research/handwriting/gui/CandidateViewHandler;

    if-eqz v1, :cond_97

    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->selectionIsEmpty()Z

    move-result v1

    if-nez v1, :cond_97

    .line 656
    sget-object v1, Lcom/google/research/handwriting/gui/UIHandler;->TAG:Ljava/lang/String;

    const-string v2, "searching in the bookkeeper"

    invoke-static {v4, v1, v2}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->clearRecognizer()V

    .line 664
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->clearResults()V

    .line 665
    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mBookKeeper:Lcom/google/research/handwriting/gui/BookKeeper;

    add-int v2, p1, p2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/BookKeeper;->getBookkeepingEntry(I)Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;

    move-result-object v0

    .line 667
    .local v0, fromBookKeeping:Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;
    sget-object v1, Lcom/google/research/handwriting/gui/UIHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fromBookkeeper: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-virtual {p0, v4}, Lcom/google/research/handwriting/gui/UIHandler;->setEditingPreviouslyEnteredText(Z)V

    .line 669
    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCandidateViewHandler:Lcom/google/research/handwriting/gui/CandidateViewHandler;

    iget-object v2, v0, Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;->selectedWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/CandidateViewHandler;->setSelectedWord(Ljava/lang/String;)V

    .line 670
    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    iget-object v2, v0, Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;->recognitionResult:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    iget-object v3, v0, Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;->recognitionResult:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    invoke-virtual {v3}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->getStrokes()Lcom/google/research/handwriting/base/StrokeList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/research/handwriting/gui/RecognizerHandler;->onRecognitionEnd(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;Lcom/google/research/handwriting/base/StrokeList;)V

    .line 676
    .end local v0           #fromBookKeeping:Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;
    :goto_77
    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    if-eqz v1, :cond_8d

    .line 677
    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->getPreContext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->setPreContext(Ljava/lang/String;)V

    .line 678
    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->getPostContext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->setPostContext(Ljava/lang/String;)V

    .line 684
    :cond_8d
    invoke-virtual {p0, v5}, Lcom/google/research/handwriting/gui/UIHandler;->setJustAfterTextDeleted(Z)V

    .line 685
    return-void

    .line 650
    :cond_91
    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mContinuousWritingHandler:Lcom/google/research/handwriting/gui/ContinuousWritingHandler;

    invoke-virtual {v1, v5}, Lcom/google/research/handwriting/gui/ContinuousWritingHandler;->setContinuousWritingInternalEditing(Z)V

    goto :goto_18

    .line 673
    :cond_97
    sget-object v1, Lcom/google/research/handwriting/gui/UIHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOT searching in the bookkeeper. selectionIsEmpty "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->selectionIsEmpty()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_77
.end method

.method public selectionIsEmpty()Z
    .registers 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    invoke-interface {v0}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->getCursorSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    invoke-interface {v1}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->getCursorSelectionEnd()I

    move-result v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setAutoSpace(Z)V
    .registers 2
    .parameter "autoSpace"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mAutoSpace:Z

    .line 124
    return-void
.end method

.method public setCandidateViewHandler(Lcom/google/research/handwriting/gui/CandidateViewHandler;)V
    .registers 2
    .parameter "candidateViewHandler"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCandidateViewHandler:Lcom/google/research/handwriting/gui/CandidateViewHandler;

    .line 102
    return-void
.end method

.method public setEditingPreviouslyEnteredText(Z)V
    .registers 2
    .parameter "editingPreviouslyEnteredText"

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mEditingPreviouslyEnteredText:Z

    .line 160
    return-void
.end method

.method public setHandwritingImeView(Landroid/view/View;)V
    .registers 2
    .parameter "handwritingImeView"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mHandwritingImeView:Landroid/view/View;

    .line 132
    return-void
.end method

.method public setHandwritingOverlayView(Lcom/google/research/handwriting/gui/HandwritingOverlayView;)V
    .registers 2
    .parameter "handwritingOverlayView"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

    .line 106
    return-void
.end method

.method public setHandwritingRecognizer(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;)V
    .registers 2
    .parameter "recognizer"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    .line 98
    return-void
.end method

.method public setJustAfterTextDeleted(Z)V
    .registers 2
    .parameter "justAfterTextDeleted"

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mJustAfterTextDeleted:Z

    .line 156
    return-void
.end method

.method public setJustModifiedComposingRegion(Z)V
    .registers 2
    .parameter "justModifiedComposingRegion"

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mJustModifiedComposingRegion:Z

    .line 148
    return-void
.end method

.method public setLengthOfTextInLimboState(I)V
    .registers 5
    .parameter "textInLimboState"

    .prologue
    .line 640
    sget-object v0, Lcom/google/research/handwriting/gui/UIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length of text in limbo state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iput p1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mLengthOfTextInLimboState:I

    .line 642
    return-void
.end method

.method public setRecognizerHandler(Lcom/google/research/handwriting/gui/RecognizerHandler;)V
    .registers 2
    .parameter "recognizerHandler"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizerHandler:Lcom/google/research/handwriting/gui/RecognizerHandler;

    .line 94
    return-void
.end method

.method public setRecognizerSettings(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;)V
    .registers 2
    .parameter "recognizerSettings"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizerSettings:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;

    .line 128
    return-void
.end method

.method public setResults(Lcom/google/research/handwriting/gui/SuggestedWords;Lcom/google/research/handwriting/gui/SuggestedWords;)V
    .registers 7
    .parameter "suggestions"
    .parameter "completions"

    .prologue
    .line 207
    const/4 v0, 0x2

    sget-object v1, Lcom/google/research/handwriting/gui/UIHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting suggestions in UI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/research/handwriting/gui/SuggestedWords;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x1

    new-instance v1, Lcom/google/research/handwriting/gui/UIHandler$ResultsAndCompletions;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/research/handwriting/gui/UIHandler$ResultsAndCompletions;-><init>(Lcom/google/research/handwriting/gui/UIHandler;Lcom/google/research/handwriting/gui/SuggestedWords;Lcom/google/research/handwriting/gui/SuggestedWords;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/research/handwriting/gui/UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 210
    return-void
.end method

.method public setSuggestions(Lcom/google/research/handwriting/gui/SuggestedWords;)V
    .registers 2
    .parameter "suggestions"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mSuggestions:Lcom/google/research/handwriting/gui/SuggestedWords;

    .line 90
    return-void
.end method

.method public setUseBookkeeper(Z)V
    .registers 2
    .parameter "use"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mUseBookkeeper:Z

    .line 136
    return-void
.end method

.method public showAskTheCloudButton(Z)V
    .registers 4
    .parameter "b"

    .prologue
    .line 727
    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCandidateViewHandler:Lcom/google/research/handwriting/gui/CandidateViewHandler;

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer()Lcom/google/research/handwriting/base/HandwritingRecognizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->hasSecondaryRecognizer()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {v1, v0}, Lcom/google/research/handwriting/gui/CandidateViewHandler;->showAskTheCloudButton(Z)V

    .line 729
    return-void

    .line 727
    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public updateResultsInCandidateView(Lcom/google/research/handwriting/gui/SuggestedWords;Lcom/google/research/handwriting/gui/SuggestedWords;)V
    .registers 7
    .parameter "suggestions"
    .parameter "completions"

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 277
    sget-object v1, Lcom/google/research/handwriting/gui/UIHandler;->TAG:Ljava/lang/String;

    const-string v2, "updateResultsInCandidateView"

    invoke-static {v3, v1, v2}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCandidateViewHandler:Lcom/google/research/handwriting/gui/CandidateViewHandler;

    if-eqz v1, :cond_7e

    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->imeVisible()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 280
    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCandidateViewHandler:Lcom/google/research/handwriting/gui/CandidateViewHandler;

    invoke-virtual {v1, p1, p2}, Lcom/google/research/handwriting/gui/CandidateViewHandler;->setCandidateSuggestions(Lcom/google/research/handwriting/gui/SuggestedWords;Lcom/google/research/handwriting/gui/SuggestedWords;)V

    .line 281
    invoke-virtual {p1}, Lcom/google/research/handwriting/gui/SuggestedWords;->size()I

    move-result v1

    if-lez v1, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    iput-boolean v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizerHasResult:Z

    .line 283
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    invoke-interface {v0, p1}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->setSuggestedWords(Lcom/google/research/handwriting/gui/SuggestedWords;)V

    .line 284
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    iget-boolean v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizerHasResult:Z

    invoke-interface {v0, v1}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->setImeCandidatesViewShown(Z)V

    .line 286
    sget-object v0, Lcom/google/research/handwriting/gui/UIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CandidateViewShown = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizerHasResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " suggestions.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/research/handwriting/gui/SuggestedWords;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHandwritingView.getVisibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mHandwritingImeView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHandwritingView.getWindowVisibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mHandwritingImeView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCandidateViewHandler:Lcom/google/research/handwriting/gui/CandidateViewHandler;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/CandidateViewHandler;->scrollCandidatesToBeginning()V

    .line 291
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->updateTranslatedText()V

    .line 297
    :goto_7d
    return-void

    .line 293
    :cond_7e
    iput-boolean v0, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizerHasResult:Z

    .line 294
    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->setSuggestedWords(Lcom/google/research/handwriting/gui/SuggestedWords;)V

    .line 295
    iget-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    invoke-interface {v1, v0}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->setImeCandidatesViewShown(Z)V

    goto :goto_7d
.end method

.method public updateTranslatedText()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 595
    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->usesTranslateApi()Z

    move-result v2

    if-nez v2, :cond_a

    .line 606
    :cond_9
    :goto_9
    return-void

    .line 598
    :cond_a
    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->usesTranslateApi()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mSuggestions:Lcom/google/research/handwriting/gui/SuggestedWords;

    invoke-virtual {v2}, Lcom/google/research/handwriting/gui/SuggestedWords;->getExtrasSize()I

    move-result v2

    if-lez v2, :cond_9

    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mSuggestions:Lcom/google/research/handwriting/gui/SuggestedWords;

    invoke-virtual {v2, v3}, Lcom/google/research/handwriting/gui/SuggestedWords;->getExtra(I)Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 601
    new-instance v0, Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;

    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mSuggestions:Lcom/google/research/handwriting/gui/SuggestedWords;

    invoke-virtual {v2, v3}, Lcom/google/research/handwriting/gui/SuggestedWords;->getExtra(I)Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;->getInfo()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;-><init>(Ljava/lang/CharSequence;)V

    .line 603
    .local v0, extraInfo:Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;
    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mCallback:Lcom/google/research/handwriting/gui/UIHandlerCallback;

    invoke-interface {v2}, Lcom/google/research/handwriting/gui/UIHandlerCallback;->getSourceTextToTranslate()Ljava/lang/String;

    move-result-object v1

    .line 604
    .local v1, recognizedText:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/google/research/handwriting/gui/UIHandler;->updateTranslatedText(Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public updateTranslatedText(Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;Ljava/lang/String;)V
    .registers 9
    .parameter "extraInfo"
    .parameter "recognizedText"

    .prologue
    const/4 v5, 0x2

    .line 610
    iget-object v2, p0, Lcom/google/research/handwriting/gui/UIHandler;->mRecognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->usesTranslateApi()Z

    move-result v2

    if-nez v2, :cond_a

    .line 625
    :goto_9
    return-void

    .line 614
    :cond_a
    invoke-virtual {p1}, Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;->getSourceText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u2026"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, sourceText:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;->getTargetText()Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, translatedText:Ljava/lang/String;
    sget-object v2, Lcom/google/research/handwriting/gui/UIHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTranslatedText update: sourceText="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 617
    sget-object v2, Lcom/google/research/handwriting/gui/UIHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTranslatedText update: translatedText="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 618
    sget-object v2, Lcom/google/research/handwriting/gui/UIHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTranslatedText update: recognizedText="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 620
    iput-object v1, p0, Lcom/google/research/handwriting/gui/UIHandler;->mTranslatedText:Ljava/lang/String;

    .line 621
    sget-object v2, Lcom/google/research/handwriting/gui/UIHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTranslatedText="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/research/handwriting/gui/UIHandler;->mTranslatedText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 623
    :cond_85
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/UIHandler;->clearTranslatedText()V

    goto :goto_9
.end method
