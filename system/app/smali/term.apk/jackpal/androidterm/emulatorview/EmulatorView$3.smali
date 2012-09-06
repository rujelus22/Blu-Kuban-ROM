.class Ljackpal/androidterm/emulatorview/EmulatorView$3;
.super Ljava/lang/Object;
.source "EmulatorView.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljackpal/androidterm/emulatorview/EmulatorView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mComposingTextEnd:I

.field private mComposingTextStart:I

.field private mCursor:I

.field private mInBatchEdit:Z

.field private mSelectedTextEnd:I

.field private mSelectedTextStart:I

.field final synthetic this$0:Ljackpal/androidterm/emulatorview/EmulatorView;


# direct methods
.method constructor <init>(Ljackpal/androidterm/emulatorview/EmulatorView;)V
    .registers 2
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clearComposingText()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 532
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    #getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1300(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 533
    .local v0, len:I
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    if-gt v1, v0, :cond_13

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    if-le v1, v0, :cond_18

    .line 534
    :cond_13
    iput v5, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    iput v5, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    .line 547
    :goto_17
    return-void

    .line 537
    :cond_18
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    #getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v3}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1300(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    #getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v3}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1300(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Ljackpal/androidterm/emulatorview/EmulatorView;->setImeBuffer(Ljava/lang/String;)V
    invoke-static {v1, v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1200(Ljackpal/androidterm/emulatorview/EmulatorView;Ljava/lang/String;)V

    .line 539
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mCursor:I

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    if-ge v1, v2, :cond_51

    .line 546
    :goto_4c
    iput v5, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    iput v5, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    goto :goto_17

    .line 541
    :cond_51
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mCursor:I

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    if-ge v1, v2, :cond_5c

    .line 542
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mCursor:I

    goto :goto_4c

    .line 544
    :cond_5c
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mCursor:I

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    iget v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mCursor:I

    goto :goto_4c
.end method

.method private mapAndSend(I)V
    .registers 6
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v2, 0xa0

    .line 400
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    #getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$900(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljackpal/androidterm/emulatorview/TermKeyListener;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljackpal/androidterm/emulatorview/TermKeyListener;->mapControlChar(I)I

    move-result v0

    .line 401
    .local v0, result:I
    if-ge v0, v2, :cond_1d

    .line 402
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    #getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mTermSession:Ljackpal/androidterm/emulatorview/TermSession;
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1000(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljackpal/androidterm/emulatorview/TermSession;->write(I)V

    .line 406
    :goto_17
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    #calls: Ljackpal/androidterm/emulatorview/EmulatorView;->clearSpecialKeyStatus()V
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1100(Ljackpal/androidterm/emulatorview/EmulatorView;)V

    .line 407
    return-void

    .line 404
    :cond_1d
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    #getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$900(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljackpal/androidterm/emulatorview/TermKeyListener;

    move-result-object v1

    sub-int v2, v0, v2

    iget-object v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-virtual {v3}, Ljackpal/androidterm/emulatorview/EmulatorView;->getKeypadApplicationMode()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljackpal/androidterm/emulatorview/TermKeyListener;->handleKeyCode(IZ)Z

    goto :goto_17
.end method

.method private sendChar(I)V
    .registers 3
    .parameter "c"

    .prologue
    .line 369
    :try_start_0
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mapAndSend(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 373
    :goto_3
    return-void

    .line 370
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method private sendText(Ljava/lang/CharSequence;)V
    .registers 9
    .parameter "text"

    .prologue
    .line 376
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 379
    .local v4, n:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5
    if-ge v3, v4, :cond_33

    .line 380
    :try_start_7
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 381
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 383
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v4, :cond_23

    .line 384
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 389
    .local v1, codePoint:I
    :goto_1d
    invoke-direct {p0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mapAndSend(I)V

    .line 379
    .end local v1           #codePoint:I
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 387
    :cond_23
    const v1, 0xfffd

    .restart local v1       #codePoint:I
    goto :goto_1d

    .line 391
    .end local v1           #codePoint:I
    :cond_27
    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mapAndSend(I)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_2a} :catch_2b

    goto :goto_20

    .line 394
    .end local v0           #c:C
    :catch_2b
    move-exception v2

    .line 395
    .local v2, e:Ljava/io/IOException;
    const-string v5, "EmulatorView"

    const-string v6, "error writing "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    .end local v2           #e:Ljava/io/IOException;
    :cond_33
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 413
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    const-string v1, ""

    #calls: Ljackpal/androidterm/emulatorview/EmulatorView;->setImeBuffer(Ljava/lang/String;)V
    invoke-static {v0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1200(Ljackpal/androidterm/emulatorview/EmulatorView;Ljava/lang/String;)V

    .line 414
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mCursor:I

    .line 415
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    .line 416
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    .line 417
    iput-boolean v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mInBatchEdit:Z

    .line 418
    return v3
.end method

.method public clearMetaKeyStates(I)Z
    .registers 3
    .parameter "arg0"

    .prologue
    .line 425
    const/4 v0, 0x0

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 3
    .parameter "arg0"

    .prologue
    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .registers 3
    .parameter "correctionInfo"

    .prologue
    .line 517
    const/4 v0, 0x1

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 5
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 524
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/EmulatorView$3;->clearComposingText()V

    .line 525
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/EmulatorView$3;->sendText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    const-string v1, ""

    #calls: Ljackpal/androidterm/emulatorview/EmulatorView;->setImeBuffer(Ljava/lang/String;)V
    invoke-static {v0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1200(Ljackpal/androidterm/emulatorview/EmulatorView;Ljava/lang/String;)V

    .line 527
    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mCursor:I

    .line 528
    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .registers 7
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    const/16 v3, 0x43

    const/4 v2, 0x0

    .line 554
    if-lez p1, :cond_13

    .line 555
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-ge v0, p1, :cond_1f

    .line 556
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView$3;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 559
    .end local v0           #i:I
    :cond_13
    if-nez p1, :cond_1f

    if-nez p2, :cond_1f

    .line 561
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView$3;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 565
    :cond_1f
    const/4 v1, 0x1

    return v1
.end method

.method public endBatchEdit()Z
    .registers 2

    .prologue
    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mInBatchEdit:Z

    .line 440
    const/4 v0, 0x1

    return v0
.end method

.method public finishComposingText()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 447
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    #getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1300(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/EmulatorView$3;->sendText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    const-string v1, ""

    #calls: Ljackpal/androidterm/emulatorview/EmulatorView;->setImeBuffer(Ljava/lang/String;)V
    invoke-static {v0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1200(Ljackpal/androidterm/emulatorview/EmulatorView;Ljava/lang/String;)V

    .line 449
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    .line 450
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    .line 451
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mCursor:I

    .line 452
    const/4 v0, 0x1

    return v0
.end method

.method public getCursorCapsMode(I)I
    .registers 3
    .parameter "arg0"

    .prologue
    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 467
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .registers 6
    .parameter "flags"

    .prologue
    .line 639
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    #getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1300(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 640
    .local v0, len:I
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mSelectedTextEnd:I

    if-ge v1, v0, :cond_14

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mSelectedTextStart:I

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mSelectedTextEnd:I

    if-le v1, v2, :cond_17

    .line 641
    :cond_14
    const-string v1, ""

    .line 643
    :goto_16
    return-object v1

    :cond_17
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    #getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1300(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mSelectedTextStart:I

    iget v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mSelectedTextEnd:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_16
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .registers 7
    .parameter "n"
    .parameter "flags"

    .prologue
    .line 474
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    #getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1300(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mCursor:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 475
    .local v0, len:I
    if-lez v0, :cond_25

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mCursor:I

    if-ltz v1, :cond_25

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mCursor:I

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    #getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1300(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_28

    .line 476
    :cond_25
    const-string v1, ""

    .line 478
    :goto_27
    return-object v1

    :cond_28
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    #getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1300(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mCursor:I

    iget v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mCursor:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_27
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .registers 7
    .parameter "n"
    .parameter "flags"

    .prologue
    .line 485
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mCursor:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 486
    .local v0, len:I
    if-lez v0, :cond_1a

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mCursor:I

    if-ltz v1, :cond_1a

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mCursor:I

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    #getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1300(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1d

    .line 487
    :cond_1a
    const-string v1, ""

    .line 489
    :goto_1c
    return-object v1

    :cond_1d
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    #getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1300(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mCursor:I

    sub-int/2addr v2, v0

    iget v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mCursor:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c
.end method

.method public performContextMenuAction(I)Z
    .registers 3
    .parameter "arg0"

    .prologue
    .line 496
    const/4 v0, 0x1

    return v0
.end method

.method public performEditorAction(I)Z
    .registers 3
    .parameter "actionCode"

    .prologue
    .line 572
    if-nez p1, :cond_7

    .line 574
    const-string v0, "\r"

    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/EmulatorView$3;->sendText(Ljava/lang/CharSequence;)V

    .line 576
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 503
    const/4 v0, 0x1

    return v0
.end method

.method public reportFullscreenMode(Z)Z
    .registers 3
    .parameter "arg0"

    .prologue
    .line 510
    const/4 v0, 0x1

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 587
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/emulatorview/EmulatorView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 588
    const/4 v0, 0x1

    return v0
.end method

.method public setComposingRegion(II)Z
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 627
    if-ge p1, p2, :cond_17

    if-lez p1, :cond_17

    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    #getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1300(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_17

    .line 628
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/EmulatorView$3;->clearComposingText()V

    .line 629
    iput p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    .line 630
    iput p2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    .line 632
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 9
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v1, 0x0

    .line 595
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    #getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1300(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 596
    .local v0, len:I
    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    if-gt v2, v0, :cond_13

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    if-le v2, v0, :cond_14

    .line 604
    :cond_13
    :goto_13
    return v1

    .line 599
    :cond_14
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    #getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v4}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1300(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    #getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v3}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1300(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Ljackpal/androidterm/emulatorview/EmulatorView;->setImeBuffer(Ljava/lang/String;)V
    invoke-static {v2, v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1200(Ljackpal/androidterm/emulatorview/EmulatorView;Ljava/lang/String;)V

    .line 601
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    .line 602
    if-lez p2, :cond_5a

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextEnd:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    :goto_56
    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mCursor:I

    .line 604
    const/4 v1, 0x1

    goto :goto_13

    .line 602
    :cond_5a
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mComposingTextStart:I

    sub-int/2addr v1, p2

    goto :goto_56
.end method

.method public setSelection(II)Z
    .registers 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 611
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    #getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1300(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 612
    .local v0, length:I
    if-ne p1, p2, :cond_19

    if-lez p1, :cond_19

    if-ge p1, v0, :cond_19

    .line 613
    const/4 v1, 0x0

    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mSelectedTextEnd:I

    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mSelectedTextStart:I

    .line 614
    iput p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mCursor:I

    .line 620
    :cond_17
    :goto_17
    const/4 v1, 0x1

    return v1

    .line 615
    :cond_19
    if-ge p1, p2, :cond_17

    if-lez p1, :cond_17

    if-ge p2, v0, :cond_17

    .line 616
    iput p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mSelectedTextStart:I

    .line 617
    iput p2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mSelectedTextEnd:I

    .line 618
    iput p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->mCursor:I

    goto :goto_17
.end method
