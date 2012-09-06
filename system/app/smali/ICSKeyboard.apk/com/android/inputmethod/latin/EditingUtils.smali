.class public Lcom/android/inputmethod/latin/EditingUtils;
.super Ljava/lang/Object;
.source "EditingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/EditingUtils$Range;,
        Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;
    }
.end annotation


# static fields
.field private static final INVALID_CURSOR_POSITION:I = -0x1

.field private static final LOOKBACK_CHARACTER_NUM:I = 0xf

.field private static final spaceRegex:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 216
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/EditingUtils;->spaceRegex:Ljava/util/regex/Pattern;

    .line 32
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static appendText(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V
    .registers 7
    .parameter "connection"
    .parameter "newText"

    .prologue
    const/4 v4, 0x1

    .line 48
    if-nez p0, :cond_4

    .line 65
    :goto_3
    return-void

    .line 53
    :cond_4
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 56
    move-object v1, p1

    .line 57
    .local v1, text:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {p0, v4, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 58
    .local v0, charBeforeCursor:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2c

    .line 59
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 60
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2c

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    :cond_2c
    invoke-interface {p0, v1, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_3
.end method

.method public static deleteWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V
    .registers 7
    .parameter "connection"
    .parameter "separators"

    .prologue
    .line 96
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/EditingUtils;->getWordRangeAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Lcom/android/inputmethod/latin/EditingUtils$Range;

    move-result-object v1

    .line 97
    .local v1, range:Lcom/android/inputmethod/latin/EditingUtils$Range;
    if-nez v1, :cond_7

    .line 105
    :goto_6
    return-void

    .line 99
    :cond_7
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 102
    invoke-static {p0}, Lcom/android/inputmethod/latin/EditingUtils;->getCursorPosition(Landroid/view/inputmethod/InputConnection;)I

    move-result v2

    iget v3, v1, Lcom/android/inputmethod/latin/EditingUtils$Range;->mCharsBefore:I

    sub-int v0, v2, v3

    .line 103
    .local v0, newCursor:I
    invoke-interface {p0, v0, v0}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 104
    const/4 v2, 0x0

    iget v3, v1, Lcom/android/inputmethod/latin/EditingUtils$Range;->mCharsBefore:I

    iget v4, v1, Lcom/android/inputmethod/latin/EditingUtils$Range;->mCharsAfter:I

    add-int/2addr v3, v4

    invoke-interface {p0, v2, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_6
.end method

.method public static deleteWordBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V
    .registers 7
    .parameter "connection"
    .parameter "separators"

    .prologue
    .line 136
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lcom/android/inputmethod/latin/EditingUtils;->getWordRangeBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Lcom/android/inputmethod/latin/EditingUtils$Range;)Lcom/android/inputmethod/latin/EditingUtils$Range;

    move-result-object v1

    .line 137
    .local v1, range:Lcom/android/inputmethod/latin/EditingUtils$Range;
    if-nez v1, :cond_8

    .line 147
    :goto_7
    return-void

    .line 139
    :cond_8
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 144
    invoke-static {p0}, Lcom/android/inputmethod/latin/EditingUtils;->getCursorPosition(Landroid/view/inputmethod/InputConnection;)I

    move-result v2

    iget v3, v1, Lcom/android/inputmethod/latin/EditingUtils$Range;->mCharsAfter:I

    sub-int/2addr v2, v3

    iget v3, v1, Lcom/android/inputmethod/latin/EditingUtils$Range;->mCharsBefore:I

    add-int v0, v2, v3

    .line 145
    .local v0, newCursor:I
    invoke-interface {p0, v0, v0}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 146
    const/4 v2, 0x0

    iget v3, v1, Lcom/android/inputmethod/latin/EditingUtils$Range;->mCharsAfter:I

    iget v4, v1, Lcom/android/inputmethod/latin/EditingUtils$Range;->mCharsBefore:I

    sub-int/2addr v3, v4

    invoke-interface {p0, v2, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_7
.end method

.method private static getCursorPosition(Landroid/view/inputmethod/InputConnection;)I
    .registers 5
    .parameter "connection"

    .prologue
    const/4 v1, -0x1

    .line 68
    if-nez p0, :cond_4

    .line 74
    :cond_3
    :goto_3
    return v1

    .line 70
    :cond_4
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v3, 0x0

    .line 69
    invoke-interface {p0, v2, v3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 71
    .local v0, extracted:Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_3

    .line 74
    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/2addr v1, v2

    goto :goto_3
.end method

.method public static getPreviousWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "connection"
    .parameter "sentenceSeperators"

    .prologue
    .line 222
    if-nez p0, :cond_4

    const/4 v1, 0x0

    .line 224
    :goto_3
    return-object v1

    .line 223
    :cond_4
    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 224
    .local v0, prev:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/android/inputmethod/latin/EditingUtils;->getPreviousWord(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_3
.end method

.method public static getPreviousWord(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 7
    .parameter "prev"
    .parameter "sentenceSeperators"

    .prologue
    const/4 v2, 0x0

    .line 238
    if-nez p0, :cond_4

    .line 248
    :cond_3
    :goto_3
    return-object v2

    .line 239
    :cond_4
    sget-object v3, Lcom/android/inputmethod/latin/EditingUtils;->spaceRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, w:[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 245
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    aget-object v3, v1, v3

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 246
    .local v0, lastChar:C
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 248
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    aget-object v2, v1, v2

    goto :goto_3
.end method

.method public static getThisWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "connection"
    .parameter "sentenceSeperators"

    .prologue
    .line 252
    if-nez p0, :cond_4

    const/4 v1, 0x0

    .line 254
    :goto_3
    return-object v1

    .line 253
    :cond_4
    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 254
    .local v0, prev:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lcom/android/inputmethod/latin/EditingUtils;->getThisWord(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_3
.end method

.method public static getThisWord(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 7
    .parameter "prev"
    .parameter "sentenceSeperators"

    .prologue
    const/4 v2, 0x0

    .line 265
    if-nez p0, :cond_4

    .line 275
    :cond_3
    :goto_3
    return-object v2

    .line 266
    :cond_4
    sget-object v3, Lcom/android/inputmethod/latin/EditingUtils;->spaceRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, w:[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x1

    if-lt v3, v4, :cond_3

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 272
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 273
    .local v0, lastChar:C
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 275
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    goto :goto_3
.end method

.method public static getWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "connection"
    .parameter "separators"

    .prologue
    .line 86
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/EditingUtils;->getWordRangeAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Lcom/android/inputmethod/latin/EditingUtils$Range;

    move-result-object v0

    .line 87
    .local v0, r:Lcom/android/inputmethod/latin/EditingUtils$Range;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    iget-object v1, v0, Lcom/android/inputmethod/latin/EditingUtils$Range;->mWord:Ljava/lang/String;

    goto :goto_7
.end method

.method public static getWordAtCursorOrSelection(Landroid/view/inputmethod/InputConnection;IILjava/lang/String;)Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;
    .registers 14
    .parameter "ic"
    .parameter "selStart"
    .parameter "selEnd"
    .parameter "wordSeparators"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 313
    if-ne p1, p2, :cond_22

    .line 316
    invoke-static {p0, p3}, Lcom/android/inputmethod/latin/EditingUtils;->getWordRangeAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Lcom/android/inputmethod/latin/EditingUtils$Range;

    move-result-object v4

    .line 317
    .local v4, range:Lcom/android/inputmethod/latin/EditingUtils$Range;
    if-eqz v4, :cond_21

    iget-object v7, v4, Lcom/android/inputmethod/latin/EditingUtils$Range;->mWord:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_21

    .line 318
    new-instance v6, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;

    iget v7, v4, Lcom/android/inputmethod/latin/EditingUtils$Range;->mCharsBefore:I

    sub-int v7, p1, v7

    iget v8, v4, Lcom/android/inputmethod/latin/EditingUtils$Range;->mCharsAfter:I

    add-int/2addr v8, p2

    .line 319
    iget-object v9, v4, Lcom/android/inputmethod/latin/EditingUtils$Range;->mWord:Ljava/lang/String;

    .line 318
    invoke-direct {v6, v7, v8, v9}, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;-><init>(IILjava/lang/CharSequence;)V

    .line 349
    .end local v4           #range:Lcom/android/inputmethod/latin/EditingUtils$Range;
    :cond_21
    :goto_21
    return-object v6

    .line 322
    :cond_22
    if-eqz p0, :cond_21

    .line 324
    invoke-interface {p0, v9, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 325
    .local v1, charsBefore:Ljava/lang/CharSequence;
    invoke-static {v1, p3}, Lcom/android/inputmethod/latin/EditingUtils;->isWordBoundary(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 330
    invoke-interface {p0, v9, v8}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 331
    .local v0, charsAfter:Ljava/lang/CharSequence;
    invoke-static {v0, p3}, Lcom/android/inputmethod/latin/EditingUtils;->isWordBoundary(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 336
    invoke-static {p0, p1, p2}, Lcom/android/inputmethod/compat/InputConnectionCompatUtils;->getSelectedText(Landroid/view/inputmethod/InputConnection;II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 338
    .local v5, touching:Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_21

    .line 340
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 341
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_47
    if-lt v2, v3, :cond_4f

    .line 347
    new-instance v6, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;

    invoke-direct {v6, p1, p2, v5}, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;-><init>(IILjava/lang/CharSequence;)V

    goto :goto_21

    .line 342
    :cond_4f
    add-int/lit8 v7, v2, 0x1

    invoke-interface {v5, v2, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_21

    .line 341
    add-int/lit8 v2, v2, 0x1

    goto :goto_47
.end method

.method private static getWordRangeAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Lcom/android/inputmethod/latin/EditingUtils$Range;
    .registers 13
    .parameter "connection"
    .parameter "sep"

    .prologue
    const/16 v7, 0x3e8

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 183
    if-eqz p0, :cond_8

    if-nez p1, :cond_9

    .line 209
    :cond_8
    :goto_8
    return-object v6

    .line 186
    :cond_9
    invoke-interface {p0, v7, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 187
    .local v1, before:Ljava/lang/CharSequence;
    invoke-interface {p0, v7, v10}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 188
    .local v0, after:Ljava/lang/CharSequence;
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    .line 193
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 194
    .local v4, start:I
    :goto_19
    if-lez v4, :cond_27

    add-int/lit8 v7, v4, -0x1

    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lcom/android/inputmethod/latin/EditingUtils;->isWhitespace(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 197
    :cond_27
    const/4 v3, -0x1

    .line 198
    .local v3, end:I
    :cond_28
    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_3a

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lcom/android/inputmethod/latin/EditingUtils;->isWhitespace(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 202
    :cond_3a
    invoke-static {p0}, Lcom/android/inputmethod/latin/EditingUtils;->getCursorPosition(Landroid/view/inputmethod/InputConnection;)I

    move-result v2

    .line 203
    .local v2, cursor:I
    if-ltz v4, :cond_8

    add-int v7, v2, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    add-int/2addr v8, v9

    if-gt v7, v8, :cond_8

    .line 204
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 204
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, word:Ljava/lang/String;
    new-instance v6, Lcom/android/inputmethod/latin/EditingUtils$Range;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-direct {v6, v7, v3, v5}, Lcom/android/inputmethod/latin/EditingUtils$Range;-><init>(IILjava/lang/String;)V

    goto :goto_8

    .line 194
    .end local v2           #cursor:I
    .end local v3           #end:I
    .end local v5           #word:Ljava/lang/String;
    :cond_7d
    add-int/lit8 v4, v4, -0x1

    goto :goto_19
.end method

.method private static getWordRangeBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Lcom/android/inputmethod/latin/EditingUtils$Range;)Lcom/android/inputmethod/latin/EditingUtils$Range;
    .registers 10
    .parameter "connection"
    .parameter "sep"
    .parameter "range"

    .prologue
    const/4 v3, 0x0

    .line 151
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 175
    :cond_5
    :goto_5
    return-object v3

    .line 154
    :cond_6
    const/16 v5, 0x3e8

    const/4 v6, 0x0

    invoke-interface {p0, v5, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 155
    .local v2, before:Ljava/lang/CharSequence;
    if-eqz v2, :cond_5

    .line 160
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 161
    .local v0, WordEnd:I
    :goto_13
    if-lez v0, :cond_21

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5, p1}, Lcom/android/inputmethod/latin/EditingUtils;->isWhitespace(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_42

    .line 163
    :cond_21
    move v1, v0

    .line 164
    .local v1, WordStart:I
    :goto_22
    if-lez v1, :cond_30

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5, p1}, Lcom/android/inputmethod/latin/EditingUtils;->isWhitespace(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 166
    :cond_30
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 167
    if-ltz v1, :cond_5

    .line 168
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, word:Ljava/lang/String;
    if-eqz p2, :cond_48

    move-object v3, p2

    .line 172
    .local v3, returnRange:Lcom/android/inputmethod/latin/EditingUtils$Range;
    :goto_41
    goto :goto_5

    .line 161
    .end local v1           #WordStart:I
    .end local v3           #returnRange:Lcom/android/inputmethod/latin/EditingUtils$Range;
    .end local v4           #word:Ljava/lang/String;
    :cond_42
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 164
    .restart local v1       #WordStart:I
    :cond_45
    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    .line 171
    .restart local v4       #word:Ljava/lang/String;
    :cond_48
    new-instance v3, Lcom/android/inputmethod/latin/EditingUtils$Range;

    invoke-direct {v3, v1, v0, v4}, Lcom/android/inputmethod/latin/EditingUtils$Range;-><init>(IILjava/lang/String;)V

    goto :goto_41
.end method

.method private static isWhitespace(ILjava/lang/String;)Z
    .registers 3
    .parameter "code"
    .parameter "whitespace"

    .prologue
    .line 213
    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isWordBoundary(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 3
    .parameter "singleChar"
    .parameter "wordSeparators"

    .prologue
    .line 298
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method
