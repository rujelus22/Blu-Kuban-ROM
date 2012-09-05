.class public Lcom/infraware/office/baseframe/EvInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "EvInputConnection.java"


# static fields
.field public static final CAP_MODE_CHARACTERS:I = 0x1000

.field public static final CAP_MODE_SENTENCES:I = 0x4000

.field public static final CAP_MODE_WORDS:I = 0x2000

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "EvInputConnection"


# instance fields
.field private final mTextView:Lcom/infraware/office/baseframe/EvBaseView;


# direct methods
.method public constructor <init>(Lcom/infraware/office/baseframe/EvBaseView;)V
    .registers 3
    .parameter "targetView"

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 33
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvInputConnection;->mTextView:Lcom/infraware/office/baseframe/EvBaseView;

    .line 34
    return-void
.end method


# virtual methods
.method public calcComposingLen()I
    .registers 9

    .prologue
    const/4 v7, -0x1

    .line 367
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 368
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_9

    .line 369
    const/4 v4, 0x0

    .line 397
    :goto_8
    return v4

    .line 372
    :cond_9
    invoke-static {v2}, Lcom/infraware/office/baseframe/EvInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    .line 373
    .local v0, a:I
    invoke-static {v2}, Lcom/infraware/office/baseframe/EvInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 375
    .local v1, b:I
    const-string v4, "EvInputConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Composing span: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    if-ge v1, v0, :cond_34

    .line 378
    move v3, v0

    .line 379
    .local v3, tmp:I
    move v0, v1

    .line 380
    move v1, v3

    .line 383
    .end local v3           #tmp:I
    :cond_34
    if-eq v0, v7, :cond_38

    if-ne v1, v7, :cond_4b

    .line 386
    :cond_38
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 387
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 388
    if-gez v0, :cond_43

    const/4 v0, 0x0

    .line 389
    :cond_43
    if-gez v1, :cond_46

    const/4 v1, 0x0

    .line 390
    :cond_46
    if-ge v1, v0, :cond_4b

    .line 391
    move v3, v0

    .line 392
    .restart local v3       #tmp:I
    move v0, v1

    .line 393
    move v1, v3

    .line 397
    .end local v3           #tmp:I
    :cond_4b
    sub-int v4, v1, v0

    goto :goto_8
.end method

.method public clearMetaKeyStates(I)Z
    .registers 5
    .parameter "states"

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 427
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_8

    const/4 v2, 0x0

    .line 437
    :goto_7
    return v2

    .line 428
    :cond_8
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvInputConnection;->mTextView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v2}, Lcom/infraware/office/baseframe/EvBaseView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    .line 429
    .local v1, kl:Landroid/text/method/KeyListener;
    if-eqz v1, :cond_15

    .line 431
    :try_start_10
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvInputConnection;->mTextView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-interface {v1, v2, v0, p1}, Landroid/text/method/KeyListener;->clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    :try_end_15
    .catch Ljava/lang/AbstractMethodError; {:try_start_10 .. :try_end_15} :catch_17

    .line 437
    :cond_15
    :goto_15
    const/4 v2, 0x1

    goto :goto_7

    .line 432
    :catch_17
    move-exception v2

    goto :goto_15
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 4
    .parameter "text"

    .prologue
    .line 306
    const-string v0, "EvInputConnection"

    const-string v1, "commitCompletion"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 9
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvInputConnection;->calcComposingLen()I

    move-result v0

    .line 415
    .local v0, compLength:I
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvInputConnection;->mTextView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v3, p1, v0}, Lcom/infraware/office/baseframe/EvBaseView;->commitText(Ljava/lang/CharSequence;I)V

    .line 417
    const-string v3, "EvInputConnection"

    const-string v4, "============================================="

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvInputConnection;->mTextView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v3}, Lcom/infraware/office/baseframe/EvBaseView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 419
    .local v1, content:Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, str:Ljava/lang/String;
    const-string v3, "EvInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "commitText content: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " text: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/infraware/office/util/EvUtil;->stringToHexa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v3

    return v3
.end method

.method public deleteSurroundingText(II)Z
    .registers 18
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    .line 47
    const-string v12, "EvInputConnection"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "deleteSurroundingText "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 48
    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 47
    invoke-static {v12, v13}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v5

    .line 50
    .local v5, content:Landroid/text/Editable;
    if-nez v5, :cond_2a

    const/4 v12, 0x0

    .line 112
    :goto_29
    return v12

    .line 52
    :cond_2a
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvInputConnection;->beginBatchEdit()Z

    .line 53
    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v6

    .line 54
    .local v6, contentLen:I
    invoke-static {v5}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 55
    .local v1, a:I
    invoke-static {v5}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 57
    .local v2, b:I
    if-le v1, v2, :cond_3e

    .line 58
    move v11, v1

    .line 59
    .local v11, tmp:I
    move v1, v2

    .line 60
    move v2, v11

    .line 64
    .end local v11           #tmp:I
    :cond_3e
    invoke-static {v5}, Lcom/infraware/office/baseframe/EvInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v3

    .line 65
    .local v3, ca:I
    invoke-static {v5}, Lcom/infraware/office/baseframe/EvInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v4

    .line 66
    .local v4, cb:I
    if-ge v4, v3, :cond_4b

    .line 67
    move v11, v3

    .line 68
    .restart local v11       #tmp:I
    move v3, v4

    .line 69
    move v4, v11

    .line 71
    .end local v11           #tmp:I
    :cond_4b
    const/4 v12, -0x1

    if-eq v3, v12, :cond_57

    const/4 v12, -0x1

    if-eq v4, v12, :cond_57

    .line 72
    if-ge v3, v1, :cond_54

    move v1, v3

    .line 73
    :cond_54
    if-le v4, v2, :cond_57

    move v2, v4

    .line 76
    :cond_57
    if-lez p1, :cond_5d

    move/from16 v0, p1

    if-ge v6, v0, :cond_63

    .line 77
    :cond_5d
    if-lez p2, :cond_87

    move/from16 v0, p2

    if-lt v6, v0, :cond_87

    .line 79
    :cond_63
    const/4 v7, 0x0

    .line 81
    .local v7, deleted:I
    if-lez p1, :cond_70

    .line 82
    sub-int v10, v1, p1

    .line 83
    .local v10, start:I
    if-gez v10, :cond_6b

    const/4 v10, 0x0

    .line 84
    :cond_6b
    invoke-interface {v5, v10, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 85
    sub-int v7, v1, v10

    .line 88
    .end local v10           #start:I
    :cond_70
    if-lez p2, :cond_82

    .line 89
    sub-int/2addr v2, v7

    .line 91
    add-int v8, v2, p2

    .line 92
    .local v8, end:I
    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v12

    if-le v8, v12, :cond_7f

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v8

    .line 94
    :cond_7f
    invoke-interface {v5, v2, v8}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 110
    .end local v7           #deleted:I
    .end local v8           #end:I
    :cond_82
    :goto_82
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvInputConnection;->endBatchEdit()Z

    .line 112
    const/4 v12, 0x1

    goto :goto_29

    .line 107
    :cond_87
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v9

    .line 108
    .local v9, evInterface:Lcom/infraware/office/evengine/EvInterface;
    const/4 v12, 0x2

    const/16 v13, 0x8

    move/from16 v0, p1

    invoke-virtual {v9, v12, v13, v0}, Lcom/infraware/office/evengine/EvInterface;->ICharInsert(III)V

    goto :goto_82
.end method

.method public finishComposingText()Z
    .registers 4

    .prologue
    .line 298
    const-string v1, "EvInputConnection"

    const-string v2, "finishComposingText"

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    move-result v0

    .line 300
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvInputConnection;->mTextView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseView;->finishComposingText()Z

    .line 301
    return v0
.end method

.method public getCursorCapsMode(I)I
    .registers 8
    .parameter "reqModes"

    .prologue
    .line 274
    const-string v3, "EvInputConnection"

    const-string v4, "getCursorCapsMode"

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const/4 v1, 0x0

    .line 276
    .local v1, mode:I
    and-int/lit16 v3, p1, 0x1000

    if-eqz v3, :cond_22

    .line 277
    or-int/lit16 v1, v1, 0x1000

    .line 278
    const-string v3, "EvInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCursorCapsMode set mode "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_22
    and-int/lit16 v3, p1, 0x6000

    if-nez v3, :cond_3b

    .line 281
    const-string v3, "EvInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCursorCapsMode reutn mode "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .end local v1           #mode:I
    :goto_3a
    return v1

    .line 285
    .restart local v1       #mode:I
    :cond_3b
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    .line 286
    .local v0, evInterface:Lcom/infraware/office/evengine/EvInterface;
    const-string v3, "EvInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCursorCapsMode "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IsStartOfSentence_Editor()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IsStartOfSentence_Editor()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_77

    .line 288
    or-int/lit16 v2, v1, 0x2000

    .line 289
    .local v2, test:I
    const-string v3, "EvInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCursorCapsMode return mode "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    or-int/lit16 v1, v1, 0x2000

    goto :goto_3a

    .line 292
    .end local v2           #test:I
    :cond_77
    const-string v3, "EvInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCursorCapsMode reutn mode "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a
.end method

.method public getEditable()Landroid/text/Editable;
    .registers 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvInputConnection;->mTextView:Lcom/infraware/office/baseframe/EvBaseView;

    .line 39
    .local v0, ev:Lcom/infraware/office/baseframe/EvBaseView;
    if-eqz v0, :cond_9

    .line 40
    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 42
    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 16
    .parameter "request"
    .parameter "flags"

    .prologue
    const/4 v10, -0x1

    const/4 v12, 0x0

    .line 190
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvInputConnection;->mTextView:Lcom/infraware/office/baseframe/EvBaseView;

    if-eqz v9, :cond_e9

    .line 191
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v3

    .line 192
    .local v3, evInterface:Lcom/infraware/office/evengine/EvInterface;
    const/16 v9, 0x32

    invoke-virtual {v3, v9}, Lcom/infraware/office/evengine/EvInterface;->IGetCaretBeforeString(I)Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, strBefore:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetBWPOpInfo_Editor()Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    move-result-object v0

    .line 196
    .local v0, aInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;
    new-instance v2, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 197
    .local v2, et:Landroid/view/inputmethod/ExtractedText;
    iput v12, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 198
    iput v10, v2, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 199
    iput v10, v2, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 200
    iput v12, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 201
    const-string v9, ""

    iput-object v9, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 202
    iput v12, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 203
    iput v12, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 204
    if-eqz v6, :cond_e1

    .line 205
    const-string v4, ""

    .line 206
    .local v4, str:Ljava/lang/String;
    const/4 v5, 0x0

    .line 208
    .local v5, strAfterLength:I
    move-object v4, v6

    .line 212
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvInputConnection;->mTextView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v9}, Lcom/infraware/office/baseframe/EvBaseView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 213
    .local v1, content:Landroid/text/Editable;
    const-string v9, "EvInputConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getExtractedText content "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    if-eqz v1, :cond_e2

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v9

    if-nez v9, :cond_e2

    .line 215
    move-object v8, v4

    .line 224
    .local v8, tstr:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7c

    .line 225
    const-string v9, "EvInputConnection"

    const-string v10, "============================================="

    invoke-static {v9, v10}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v9, "EvInputConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getExtractedText setText "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/infraware/office/util/EvUtil;->stringToHexa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvInputConnection;->mTextView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v9, v8}, Lcom/infraware/office/baseframe/EvBaseView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    .end local v8           #tstr:Ljava/lang/String;
    :cond_7c
    :goto_7c
    iget v9, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->bCutCopy:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e7

    .line 234
    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetSeparateMarkString_Editor()Ljava/lang/String;

    move-result-object v7

    .line 235
    .local v7, strSeparateMarkString:Ljava/lang/String;
    if-eqz v7, :cond_ac

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_ac

    .line 237
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 238
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    .line 243
    .end local v7           #strSeparateMarkString:Ljava/lang/String;
    :cond_ac
    :goto_ac
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_bf

    .line 244
    iput-object v4, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 249
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    iput v9, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 250
    iget v9, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/2addr v9, v5

    iput v9, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 253
    :cond_bf
    const-string v9, "EvInputConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getExtractedText length = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " text = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .end local v0           #aInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;
    .end local v1           #content:Landroid/text/Editable;
    .end local v2           #et:Landroid/view/inputmethod/ExtractedText;
    .end local v3           #evInterface:Lcom/infraware/office/evengine/EvInterface;
    .end local v4           #str:Ljava/lang/String;
    .end local v5           #strAfterLength:I
    .end local v6           #strBefore:Ljava/lang/String;
    :cond_e1
    :goto_e1
    return-object v2

    .line 231
    .restart local v0       #aInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;
    .restart local v1       #content:Landroid/text/Editable;
    .restart local v2       #et:Landroid/view/inputmethod/ExtractedText;
    .restart local v3       #evInterface:Lcom/infraware/office/evengine/EvInterface;
    .restart local v4       #str:Ljava/lang/String;
    .restart local v5       #strAfterLength:I
    .restart local v6       #strBefore:Ljava/lang/String;
    :cond_e2
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7c

    .line 241
    :cond_e7
    const/4 v5, 0x0

    goto :goto_ac

    .line 258
    .end local v0           #aInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;
    .end local v1           #content:Landroid/text/Editable;
    .end local v2           #et:Landroid/view/inputmethod/ExtractedText;
    .end local v3           #evInterface:Lcom/infraware/office/evengine/EvInterface;
    .end local v4           #str:Ljava/lang/String;
    .end local v5           #strAfterLength:I
    .end local v6           #strBefore:Ljava/lang/String;
    :cond_e9
    const/4 v2, 0x0

    goto :goto_e1
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .registers 11
    .parameter "length"
    .parameter "flags"

    .prologue
    const/4 v5, 0x0

    .line 340
    const-string v4, "EvInputConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getTextAfterCursor "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 343
    .local v0, content:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v4

    if-lt v4, p1, :cond_24

    .line 344
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 362
    :goto_23
    return-object v4

    .line 346
    :cond_24
    const/4 v4, 0x3

    if-le p1, v4, :cond_28

    .line 347
    const/4 p1, 0x3

    .line 349
    :cond_28
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v1

    .line 350
    .local v1, evInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-virtual {v1, p1}, Lcom/infraware/office/evengine/EvInterface;->IGetCaretAfterString(I)Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, str:Ljava/lang/String;
    if-eqz v2, :cond_9d

    .line 353
    const-string v4, "EvInputConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "length = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "getTextAfterCursor = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v4, "EvInputConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "String length = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v3

    .line 356
    .local v3, text:Landroid/text/Editable;
    invoke-static {v3, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 357
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_8a

    .line 358
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_88

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_83
    invoke-interface {v3, v5, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_23

    :cond_88
    move v4, v5

    goto :goto_83

    .line 360
    :cond_8a
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_9b

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_96
    invoke-static {v3, v5, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_23

    :cond_9b
    move v4, v5

    goto :goto_96

    .line 362
    .end local v3           #text:Landroid/text/Editable;
    :cond_9d
    const-string v4, ""

    goto :goto_23
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .registers 11
    .parameter "length"
    .parameter "flags"

    .prologue
    const/4 v7, 0x0

    .line 312
    const-string v4, "EvInputConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getTextBeforeCursor "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 315
    .local v0, content:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v4

    if-lt v4, p1, :cond_24

    .line 316
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 334
    :goto_23
    return-object v4

    .line 318
    :cond_24
    const/4 v4, 0x3

    if-le p1, v4, :cond_28

    .line 319
    const/4 p1, 0x3

    .line 321
    :cond_28
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v1

    .line 322
    .local v1, evInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-virtual {v1, p1}, Lcom/infraware/office/evengine/EvInterface;->IGetCaretBeforeString(I)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, str:Ljava/lang/String;
    if-eqz v2, :cond_89

    .line 325
    const-string v4, "EvInputConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "length = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "getTextBeforeCursor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v4, "EvInputConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "String length = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v3

    .line 328
    .local v3, text:Landroid/text/Editable;
    invoke-static {v3, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 329
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_80

    .line 330
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v3, v7, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_23

    .line 332
    :cond_80
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-static {v3, v7, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_23

    .line 334
    .end local v3           #text:Landroid/text/Editable;
    :cond_89
    const-string v4, ""

    goto :goto_23
.end method

.method public performContextMenuAction(I)Z
    .registers 5
    .parameter "id"

    .prologue
    .line 442
    const-string v0, "EvInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "performContextMenuAction "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvInputConnection;->mTextView:Lcom/infraware/office/baseframe/EvBaseView;

    if-eqz v0, :cond_1d

    .line 444
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvInputConnection;->mTextView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, p1}, Lcom/infraware/office/baseframe/EvBaseView;->onTextContextMenuItem(I)Z

    .line 445
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 9
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvInputConnection;->calcComposingLen()I

    move-result v0

    .line 403
    .local v0, compLength:I
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvInputConnection;->mTextView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v3, p1, v0}, Lcom/infraware/office/baseframe/EvBaseView;->setComposingText(Ljava/lang/CharSequence;I)V

    .line 405
    const-string v3, "EvInputConnection"

    const-string v4, "============================================="

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvInputConnection;->mTextView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v3}, Lcom/infraware/office/baseframe/EvBaseView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 407
    .local v1, content:Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, str:Ljava/lang/String;
    const-string v3, "EvInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setComposingText newCursorPosition "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " content: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " text: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/infraware/office/util/EvUtil;->stringToHexa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v3

    return v3
.end method

.method public setSelection(II)Z
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 262
    const-string v0, "EvInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSelection "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x1

    return v0
.end method
