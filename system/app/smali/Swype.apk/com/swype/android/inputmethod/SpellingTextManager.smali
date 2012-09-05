.class public Lcom/swype/android/inputmethod/SpellingTextManager;
.super Ljava/lang/Object;
.source "SpellingTextManager.java"


# static fields
.field private static final INITIAL_SEGMENT_LENGTH:I = 0x14

.field private static final SPELLING_TEXT_DISPLAY_BOLD:I = 0x2

.field private static final SPELLING_TEXT_DISPLAY_HIGHLIGHT:I = 0x4

.field private static final SPELLING_TEXT_DISPLAY_LOWLIGHT:I = 0x8

.field private static final SPELLING_TEXT_DISPLAY_UNDERLINE:I = 0x1


# instance fields
.field final DEBUG:Z

.field private composingStart:I

.field private isComposingTextEnabled:Z

.field private numberOfSegments:I

.field private spellingSegmentEndPosition:[I

.field private spellingSegmentStartPosition:[I

.field private ssb:Landroid/text/SpannableStringBuilder;

.field private tappedSegmentIndex:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v2, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->DEBUG:Z

    .line 37
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->ssb:Landroid/text/SpannableStringBuilder;

    .line 42
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->spellingSegmentStartPosition:[I

    .line 43
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->spellingSegmentEndPosition:[I

    .line 53
    iput v1, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->tappedSegmentIndex:I

    .line 58
    iput v1, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->composingStart:I

    .line 60
    iput-boolean v2, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->isComposingTextEnabled:Z

    return-void
.end method

.method private mapSpellingFormatToUIStyle(B)B
    .registers 3
    .parameter "spellingFormat"

    .prologue
    .line 255
    packed-switch p1, :pswitch_data_e

    .line 267
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 257
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_4

    .line 259
    :pswitch_7
    const/4 v0, 0x3

    goto :goto_4

    .line 261
    :pswitch_9
    const/4 v0, 0x1

    goto :goto_4

    .line 263
    :pswitch_b
    const/16 v0, 0x9

    goto :goto_4

    .line 255
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized clearComposingRegion()V
    .registers 2

    .prologue
    .line 245
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_2
    iput v0, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->composingStart:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 246
    monitor-exit p0

    return-void

    .line 245
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearSpellingText(Landroid/view/inputmethod/InputConnection;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 161
    monitor-enter p0

    if-nez p1, :cond_5

    .line 185
    :goto_3
    monitor-exit p0

    return-void

    .line 166
    :cond_5
    :try_start_5
    new-instance v0, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 167
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_33

    .line 169
    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v1, v2

    .line 170
    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v0, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v0, v2

    .line 171
    if-ltz v0, :cond_23

    .line 173
    invoke-static {p1, v0, v0}, Lcom/swype/android/inputmethod/InputConnectionAdaptor;->setSelection(Landroid/view/inputmethod/InputConnection;II)Z

    .line 174
    const/4 v2, -0x1

    iput v2, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->composingStart:I

    .line 176
    :cond_23
    const-string v2, ""

    invoke-virtual {p0, p1, v2}, Lcom/swype/android/inputmethod/SpellingTextManager;->setComposingTextHelper(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 177
    if-eq v1, v0, :cond_33

    if-ltz v1, :cond_33

    if-ltz v0, :cond_33

    .line 178
    invoke-static {p1, v1, v0}, Lcom/swype/android/inputmethod/InputConnectionAdaptor;->setSelection(Landroid/view/inputmethod/InputConnection;II)Z

    .line 179
    iput v1, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->composingStart:I

    .line 183
    :cond_33
    const/4 v0, 0x0

    iput v0, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->numberOfSegments:I

    .line 184
    const/4 v0, -0x1

    iput v0, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->tappedSegmentIndex:I
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_3a

    goto :goto_3

    .line 161
    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearTappedSegmentIndex()V
    .registers 2

    .prologue
    .line 220
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_2
    iput v0, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->tappedSegmentIndex:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 221
    monitor-exit p0

    return-void

    .line 220
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method enableComposingText(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->isComposingTextEnabled:Z

    .line 144
    return-void
.end method

.method public declared-synchronized getTappedSegmentIndex()I
    .registers 2

    .prologue
    .line 213
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->tappedSegmentIndex:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onUserTap(I)V
    .registers 4
    .parameter

    .prologue
    .line 194
    monitor-enter p0

    if-ltz p1, :cond_1b

    .line 199
    const/4 v0, 0x0

    :goto_4
    :try_start_4
    iget v1, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->numberOfSegments:I

    if-ge v0, v1, :cond_1b

    .line 200
    iget-object v1, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->spellingSegmentStartPosition:[I

    aget v1, v1, v0

    if-lt p1, v1, :cond_18

    iget-object v1, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->spellingSegmentEndPosition:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_18

    .line 201
    iput v0, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->tappedSegmentIndex:I
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1f

    .line 207
    :goto_16
    monitor-exit p0

    return-void

    .line 199
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 206
    :cond_1b
    const/4 v0, -0x1

    :try_start_1c
    iput v0, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->tappedSegmentIndex:I
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_1f

    goto :goto_16

    .line 194
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setComposingRegion(Landroid/view/inputmethod/InputConnection;II)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 225
    monitor-enter p0

    if-nez p1, :cond_7

    move v0, v1

    .line 240
    :goto_5
    monitor-exit p0

    return v0

    .line 231
    :cond_7
    if-ltz p2, :cond_15

    if-lt p3, p2, :cond_15

    .line 233
    :try_start_b
    invoke-static {p1, p2, p3}, Lcom/swype/android/compat/SetComposingRegionHandler;->setComposingRegion(Landroid/view/inputmethod/InputConnection;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 236
    iput p2, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->composingStart:I
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_17

    .line 237
    const/4 v0, 0x1

    goto :goto_5

    :cond_15
    move v0, v1

    .line 240
    goto :goto_5

    .line 225
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setComposingTextHelper(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->isComposingTextEnabled:Z

    if-nez v0, :cond_5

    .line 153
    :goto_4
    return-void

    .line 151
    :cond_5
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_4
.end method

.method public declared-synchronized updateSpelling(Landroid/view/inputmethod/InputConnection;[Ljava/lang/String;[B)Z
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 70
    monitor-enter p0

    :try_start_3
    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->isComposingTextEnabled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_110

    if-nez v0, :cond_a

    move v0, v3

    .line 139
    :goto_8
    monitor-exit p0

    return v0

    .line 76
    :cond_a
    if-nez p1, :cond_e

    move v0, v7

    .line 77
    goto :goto_8

    .line 80
    :cond_e
    :try_start_e
    array-length v0, p3

    array-length v1, p2

    if-ge v0, v1, :cond_14

    move v0, v7

    .line 81
    goto :goto_8

    .line 85
    :cond_14
    iget-object v0, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->ssb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 87
    array-length v0, p2

    iput v0, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->numberOfSegments:I

    move v0, v7

    .line 89
    :goto_1d
    iget v1, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->numberOfSegments:I

    if-ge v0, v1, :cond_37

    .line 90
    iget-object v1, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->ssb:Landroid/text/SpannableStringBuilder;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 91
    iget v1, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->numberOfSegments:I

    sub-int/2addr v1, v3

    if-eq v0, v1, :cond_34

    .line 92
    iget-object v1, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->ssb:Landroid/text/SpannableStringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 89
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 97
    :cond_37
    array-length v0, p2

    iget-object v1, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->spellingSegmentStartPosition:[I

    array-length v1, v1

    if-le v0, v1, :cond_4b

    .line 98
    array-length v0, p2

    add-int/lit8 v0, v0, 0x14

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->spellingSegmentStartPosition:[I

    .line 99
    array-length v0, p2

    add-int/lit8 v0, v0, 0x14

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->spellingSegmentEndPosition:[I

    :cond_4b
    move v0, v7

    move v1, v7

    .line 102
    :goto_4d
    iget v2, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->numberOfSegments:I

    if-ge v0, v2, :cond_d7

    .line 103
    iget-object v2, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->spellingSegmentStartPosition:[I

    aput v1, v2, v0

    .line 104
    iget-object v2, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->spellingSegmentEndPosition:[I

    aget-object v3, p2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    aput v3, v2, v0

    .line 106
    aget-byte v2, p3, v0

    invoke-direct {p0, v2}, Lcom/swype/android/inputmethod/SpellingTextManager;->mapSpellingFormatToUIStyle(B)B

    move-result v2

    .line 108
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_7d

    .line 109
    iget-object v3, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->ssb:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    aget-object v5, p2, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 111
    :cond_7d
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_96

    .line 113
    iget-object v3, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->ssb:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    const/high16 v5, 0x3fc0

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    aget-object v5, p2, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 115
    :cond_96
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_b0

    .line 116
    iget-object v3, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->ssb:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    const v5, -0x555556

    invoke-direct {v4, v5}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    aget-object v5, p2, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 118
    :cond_b0
    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_ca

    .line 119
    iget-object v2, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->ssb:Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, -0x555556

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aget-object v4, p2, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    const/16 v5, 0x21

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 122
    :cond_ca
    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4d

    .line 124
    :cond_d7
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 127
    iget v0, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->composingStart:I

    if-ltz v0, :cond_e8

    .line 128
    iget v0, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->composingStart:I

    iget v1, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->composingStart:I

    invoke-static {p1, v0, v1}, Lcom/swype/android/inputmethod/InputConnectionAdaptor;->setSelection(Landroid/view/inputmethod/InputConnection;II)Z

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->composingStart:I

    .line 131
    :cond_e8
    iget-object v0, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->ssb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, p1, v0}, Lcom/swype/android/inputmethod/SpellingTextManager;->setComposingTextHelper(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 133
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 134
    iget-object v0, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->ssb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_10d

    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/swype/android/inputmethod/SpellingTextManager;->ssb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_10a
    .catchall {:try_start_e .. :try_end_10a} :catchall_110

    move-result v0

    goto/16 :goto_8

    :cond_10d
    move v0, v7

    .line 139
    goto/16 :goto_8

    .line 70
    :catchall_110
    move-exception v0

    monitor-exit p0

    throw v0
.end method
