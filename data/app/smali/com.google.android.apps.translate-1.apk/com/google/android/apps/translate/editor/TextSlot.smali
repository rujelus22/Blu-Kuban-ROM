.class public Lcom/google/android/apps/translate/editor/TextSlot;
.super Lcom/google/android/apps/translate/editor/SlotView;
.source "TextSlot.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextSlot"

.field private static final TOKENIZE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mInstantTranslateHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-string v0, "([\\p{InHangulJamo}\\p{InHangulCompatibilityJamo}\\p{InHangulSyllables}\\p{InCjkRadicalsSupplement}\\p{InKangxiRadicals}\\p{InIdeographicDescriptionCharacters}\\p{InCjkSymbolsAndPunctuation}\\p{InEnclosedCjkLettersAndMonths}\\p{InCjkUnifiedIdeographs}\\p{InCjkUnifiedIdeographsExtensionA}\\p{InCjkUnifiedIdeographsExtensionB}\\p{InHiragana}\\p{InKatakana}])|(^|\\s+|\\b)([\\S&&[^\\p{InHangulJamo}\\p{InHangulCompatibilityJamo}\\p{InHangulSyllables}\\p{InCjkRadicalsSupplement}\\p{InKangxiRadicals}\\p{InIdeographicDescriptionCharacters}\\p{InCjkSymbolsAndPunctuation}\\p{InEnclosedCjkLettersAndMonths}\\p{InCjkUnifiedIdeographs}\\p{InCjkUnifiedIdeographsExtensionA}\\p{InCjkUnifiedIdeographsExtensionB}\\p{InHiragana}\\p{InKatakana}]]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translate/editor/TextSlot;->TOKENIZE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attributes"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/translate/editor/SlotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/TextSlot;->setMinLines(I)V

    .line 38
    return-void
.end method

.method private addHighlightsForSpan(Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;)V
    .registers 15
    .parameter "span"

    .prologue
    .line 143
    const-string v10, "TextSlot"

    const-string v11, "addHighlightsForSpan"

    invoke-static {v10, v11}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v9

    .line 146
    .local v9, text:Landroid/text/Editable;
    invoke-interface {v9, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 147
    .local v6, spanStart:I
    invoke-interface {v9, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 149
    .local v5, spanEnd:I
    invoke-interface {v9, v6, v5}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, spanString:Ljava/lang/String;
    sget-object v10, Lcom/google/android/apps/translate/editor/TextSlot;->TOKENIZE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 152
    .local v4, matcher:Ljava/util/regex/Matcher;
    :cond_21
    :goto_21
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_68

    .line 153
    const/4 v8, -0x1

    .line 154
    .local v8, start:I
    const/4 v2, -0x1

    .line 156
    .local v2, end:I
    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5d

    .line 157
    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->start(I)I

    move-result v8

    .line 158
    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->end(I)I

    move-result v2

    .line 163
    :goto_3a
    add-int v10, v6, v8

    invoke-direct {p0, v10}, Lcom/google/android/apps/translate/editor/TextSlot;->isIndexAtStartOfSentence(I)Z

    move-result v1

    .line 164
    .local v1, capitalize:Z
    invoke-virtual {p1, v7, v8, v2, v1}, Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;->getAlternates(Ljava/lang/CharSequence;IIZ)Ljava/util/List;

    move-result-object v0

    .line 165
    .local v0, alt:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_21

    .line 166
    new-instance v3, Lcom/google/android/apps/translate/editor/HighlightSpan;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v3, v10}, Lcom/google/android/apps/translate/editor/HighlightSpan;-><init>(Landroid/content/Context;)V

    .line 167
    .local v3, highlightSpan:Lcom/google/android/apps/translate/editor/HighlightSpan;
    add-int v10, v6, v8

    add-int v11, v6, v2

    const/16 v12, 0x21

    invoke-interface {v9, v3, v10, v11, v12}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_21

    .line 160
    .end local v0           #alt:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #capitalize:Z
    .end local v3           #highlightSpan:Lcom/google/android/apps/translate/editor/HighlightSpan;
    :cond_5d
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->start(I)I

    move-result v8

    .line 161
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->end(I)I

    move-result v2

    goto :goto_3a

    .line 171
    .end local v2           #end:I
    .end local v8           #start:I
    :cond_68
    return-void
.end method

.method private capitalizeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "string"

    .prologue
    const/4 v2, 0x1

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_8

    .line 87
    .end local p1
    :goto_7
    return-object p1

    .restart local p1
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7
.end method

.method private getPhraseSpans()[Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;
    .registers 6

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 137
    .local v1, text:Landroid/text/Editable;
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->length()I

    move-result v3

    const-class v4, Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;

    .line 139
    .local v0, spans:[Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;
    return-object v0
.end method

.method private isIndexAtStartOfSentence(I)Z
    .registers 4
    .parameter "index"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->getStringValue()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private refreshHighlights()V
    .registers 9

    .prologue
    .line 174
    const-string v5, "TextSlot"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshHighlights this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->removeAllHighlights()V

    .line 177
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->getPhraseSpans()[Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;

    move-result-object v4

    .line 178
    .local v4, spans:[Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;
    move-object v0, v4

    .local v0, arr$:[Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_26
    if-ge v1, v2, :cond_30

    aget-object v3, v0, v1

    .line 179
    .local v3, span:Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;
    invoke-direct {p0, v3}, Lcom/google/android/apps/translate/editor/TextSlot;->addHighlightsForSpan(Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;)V

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 181
    .end local v3           #span:Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;
    :cond_30
    return-void
.end method

.method private removeAllHighlights()V
    .registers 10

    .prologue
    .line 125
    const-string v6, "TextSlot"

    const-string v7, "removeAllHighlights"

    invoke-static {v6, v7}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v5

    .line 128
    .local v5, text:Landroid/text/Editable;
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->length()I

    move-result v7

    const-class v8, Lcom/google/android/apps/translate/editor/HighlightSpan;

    invoke-interface {v5, v6, v7, v8}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/apps/translate/editor/HighlightSpan;

    .line 130
    .local v1, highlightSpans:[Lcom/google/android/apps/translate/editor/HighlightSpan;
    move-object v0, v1

    .local v0, arr$:[Lcom/google/android/apps/translate/editor/HighlightSpan;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1b
    if-ge v2, v3, :cond_25

    aget-object v4, v0, v2

    .line 131
    .local v4, span:Lcom/google/android/apps/translate/editor/HighlightSpan;
    invoke-interface {v5, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 133
    .end local v4           #span:Lcom/google/android/apps/translate/editor/HighlightSpan;
    :cond_25
    return-void
.end method


# virtual methods
.method public deleteBetween(II)V
    .registers 11
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v7, 0x20

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 95
    if-ge p2, p1, :cond_9

    .line 96
    move v3, p1

    .line 97
    .local v3, temp:I
    move p1, p2

    .line 98
    move p2, v3

    .line 101
    .end local v3           #temp:I
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    .line 102
    .local v4, text:Landroid/text/Editable;
    const-string v6, ""

    invoke-interface {v4, p1, p2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 105
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->length()I

    move-result v6

    if-ge p1, v6, :cond_39

    move v1, v5

    .line 106
    .local v1, selectionIsReasonable:Z
    :goto_19
    if-eqz v1, :cond_38

    .line 107
    invoke-interface {v4, p1}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_3b

    move v2, v5

    .line 108
    .local v2, startsWithSpace:Z
    :goto_22
    if-eqz p1, :cond_2c

    add-int/lit8 v6, p1, -0x1

    invoke-interface {v4, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_2d

    :cond_2c
    move v0, v5

    .line 109
    .local v0, charBeforeIsSpace:Z
    :cond_2d
    if-eqz v2, :cond_38

    if-eqz v0, :cond_38

    .line 110
    add-int/lit8 v5, p1, 0x1

    const-string v6, ""

    invoke-interface {v4, p1, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 113
    .end local v0           #charBeforeIsSpace:Z
    .end local v2           #startsWithSpace:Z
    :cond_38
    return-void

    .end local v1           #selectionIsReasonable:Z
    :cond_39
    move v1, v0

    .line 105
    goto :goto_19

    .restart local v1       #selectionIsReasonable:Z
    :cond_3b
    move v2, v0

    .line 107
    goto :goto_22
.end method

.method protected enterKeyboardMode()V
    .registers 4

    .prologue
    .line 185
    const-string v0, "TextSlot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterKeyboardMode this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-super {p0}, Lcom/google/android/apps/translate/editor/SlotView;->enterKeyboardMode()V

    .line 188
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->isInCorrectionMode()Z

    move-result v0

    if-nez v0, :cond_28

    .line 189
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->removeAllHighlights()V

    .line 191
    :cond_28
    return-void
.end method

.method protected exitKeyboardMode()V
    .registers 4

    .prologue
    .line 195
    const-string v0, "TextSlot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitKeyboardMode this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-super {p0}, Lcom/google/android/apps/translate/editor/SlotView;->exitKeyboardMode()V

    .line 198
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->refreshHighlights()V

    .line 199
    return-void
.end method

.method public forceInstantTranslation()V
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/TextSlot;->mInstantTranslateHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    if-eqz v0, :cond_d

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/TextSlot;->mInstantTranslateHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->updateSourceText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_d
    return-void
.end method

.method public bridge synthetic getSlotValue()Lcom/google/android/apps/translate/editor/SlotValue;
    .registers 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->getSlotValue()Lcom/google/android/apps/translate/editor/TextValue;

    move-result-object v0

    return-object v0
.end method

.method public getSlotValue()Lcom/google/android/apps/translate/editor/TextValue;
    .registers 3

    .prologue
    .line 203
    new-instance v0, Lcom/google/android/apps/translate/editor/TextValue;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/translate/editor/TextValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/google/android/apps/translate/asreditor/PopupManager;Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;Lcom/google/android/apps/translate/editor/SlotContainer;)V
    .registers 5
    .parameter "context"
    .parameter "popupManager"
    .parameter "keyboardStateTracker"
    .parameter "slotContainer"

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/translate/editor/SlotView;->init(Landroid/content/Context;Lcom/google/android/apps/translate/asreditor/PopupManager;Lcom/google/android/apps/translate/asreditor/KeyboardStateTracker;Lcom/google/android/apps/translate/editor/SlotContainer;)V

    .line 44
    return-void
.end method

.method public inputSlotValue(Lcom/google/android/apps/translate/editor/SlotValue;)Z
    .registers 11
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 217
    const-string v6, "TextSlot"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inputSlotValue this="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    if-nez p1, :cond_28

    .line 219
    const-string v5, "TextSlot"

    const-string v6, "Tried to input null value"

    invoke-static {v5, v6}, Lcom/google/android/apps/translate/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :goto_27
    return v4

    .line 224
    :cond_28
    instance-of v6, p1, Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;

    if-eqz v6, :cond_55

    move-object v3, p1

    .line 225
    check-cast v3, Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;

    .line 227
    .local v3, textValue:Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;
    invoke-virtual {v3}, Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;->getText()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, phrase:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->isSelectionAtStartOfSentence()Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 229
    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/editor/TextSlot;->capitalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    :cond_3d
    const/4 v6, 0x2

    new-array v1, v6, [I

    .line 233
    .local v1, range:[I
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/translate/editor/TextSlot;->inputString(Ljava/lang/CharSequence;[I)V

    .line 235
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    .line 236
    .local v2, text:Landroid/text/Editable;
    aget v4, v1, v4

    aget v6, v1, v5

    const/16 v7, 0x21

    invoke-interface {v2, v3, v4, v6, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 238
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->refreshHighlights()V

    move v4, v5

    .line 239
    goto :goto_27

    .line 241
    .end local v0           #phrase:Ljava/lang/String;
    .end local v1           #range:[I
    .end local v2           #text:Landroid/text/Editable;
    .end local v3           #textValue:Lcom/google/android/apps/translate/asreditor/CorrectionTextValue;
    :cond_55
    const-string v5, "TextSlot"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inputed SlotValue of unexpected type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/apps/translate/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method

.method public isInCorrectionMode()Z
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->isInKeyboardMode()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->isHardKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isSelectionAtStartOfSentence()Z
    .registers 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->getSelectionStart()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/editor/TextSlot;->isIndexAtStartOfSentence(I)Z

    move-result v0

    return v0
.end method

.method protected onValueChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "newText"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/TextSlot;->mInstantTranslateHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    if-eqz v0, :cond_9

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/TextSlot;->mInstantTranslateHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->updateSourceText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->isInCorrectionMode()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 74
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->refreshHighlights()V

    .line 77
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->getPopupManager()Lcom/google/android/apps/translate/asreditor/PopupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/asreditor/PopupManager;->dismissCurrentPopup()V

    .line 78
    return-void
.end method

.method public setInstantTranslateHandler(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/TextSlot;->mInstantTranslateHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    .line 54
    return-void
.end method

.method public setSlotValue(Lcom/google/android/apps/translate/editor/SlotValue;)V
    .registers 6
    .parameter "value"

    .prologue
    .line 208
    const-string v0, "TextSlot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlotValue this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/TextSlot;->length()I

    move-result v2

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 210
    if-eqz p1, :cond_2f

    .line 211
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/editor/TextSlot;->inputSlotValue(Lcom/google/android/apps/translate/editor/SlotValue;)Z

    .line 213
    :cond_2f
    return-void
.end method
