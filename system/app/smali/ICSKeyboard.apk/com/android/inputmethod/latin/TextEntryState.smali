.class public Lcom/android/inputmethod/latin/TextEntryState;
.super Ljava/lang/Object;
.source "TextEntryState.java"


# static fields
.field private static final ACCEPTED_DEFAULT:I = 0x3

.field private static final DEBUG:Z = false

.field private static final IN_WORD:I = 0x2

.field private static final PICKED_RECORRECTION:I = 0xb

.field private static final PICKED_SUGGESTION:I = 0x4

.field private static final PUNCTUATION_AFTER_ACCEPTED:I = 0x6

.field private static final PUNCTUATION_AFTER_WORD:I = 0x5

.field private static final RECORRECTING:I = 0xa

.field private static final SPACE_AFTER_ACCEPTED:I = 0x7

.field private static final SPACE_AFTER_PICKED:I = 0x8

.field private static final START:I = 0x1

.field private static final TAG:Ljava/lang/String; = null

.field private static final UNDO_COMMIT:I = 0x9

.field private static final UNKNOWN:I

.field private static sPreviousState:I

.field private static sState:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 26
    const-class v0, Lcom/android/inputmethod/latin/TextEntryState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/TextEntryState;->TAG:Ljava/lang/String;

    .line 42
    sput v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    .line 43
    sput v1, Lcom/android/inputmethod/latin/TextEntryState;->sPreviousState:I

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acceptedDefault(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .registers 5
    .parameter "typedWord"
    .parameter "actualWord"
    .parameter "separatorCode"

    .prologue
    .line 52
    if-nez p0, :cond_3

    .line 58
    :goto_2
    return-void

    .line 53
    :cond_3
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    .line 55
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v0, v1, p2}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnAutoCorrection(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public static acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "typedWord"
    .parameter "actualWord"

    .prologue
    const/16 v2, 0xb

    .line 83
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_c

    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    if-ne v0, v2, :cond_10

    .line 84
    :cond_c
    invoke-static {v2}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    .line 90
    :goto_f
    return-void

    .line 86
    :cond_10
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_f
.end method

.method public static acceptedTyped(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "typedWord"

    .prologue
    .line 78
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    .line 80
    return-void
.end method

.method public static backToAcceptedDefault(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "typedWord"

    .prologue
    .line 64
    if-nez p0, :cond_3

    .line 75
    :goto_2
    return-void

    .line 65
    :cond_3
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    packed-switch v0, :pswitch_data_e

    :pswitch_8
    goto :goto_2

    .line 69
    :pswitch_9
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_2

    .line 65
    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public static backspace()V
    .registers 3

    .prologue
    const/16 v2, 0x9

    .line 168
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 169
    invoke-static {v2}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    .line 170
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnAutoCorrectionCancelled()V

    .line 175
    :cond_d
    :goto_d
    return-void

    .line 171
    :cond_e
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    if-ne v0, v2, :cond_d

    .line 172
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_d
.end method

.method private static varargs displayState(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .parameter "title"
    .parameter "args"

    .prologue
    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    array-length v2, p1

    if-lt v0, v2, :cond_34

    .line 232
    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    sget v2, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    invoke-static {v2}, Lcom/android/inputmethod/latin/TextEntryState;->stateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v2, " previous="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    sget v2, Lcom/android/inputmethod/latin/TextEntryState;->sPreviousState:I

    invoke-static {v2}, Lcom/android/inputmethod/latin/TextEntryState;->stateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    sget-object v2, Lcom/android/inputmethod/latin/TextEntryState;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void

    .line 227
    :cond_34
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    add-int/lit8 v0, v0, 0x2

    goto :goto_b
.end method

.method public static getState()Ljava/lang/String;
    .registers 1

    .prologue
    .line 203
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->stateName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAcceptedDefault()Z
    .registers 2

    .prologue
    .line 183
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isPunctuationAfterAccepted()Z
    .registers 2

    .prologue
    .line 195
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isRecorrecting()Z
    .registers 2

    .prologue
    .line 199
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_e

    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static isSpaceAfterPicked()Z
    .registers 2

    .prologue
    .line 187
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isUndoCommit()Z
    .registers 2

    .prologue
    .line 191
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static onAbortRecorrection()V
    .registers 2

    .prologue
    .line 98
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_c

    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_10

    .line 99
    :cond_c
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    .line 102
    :cond_10
    return-void
.end method

.method public static reset()V
    .registers 1

    .prologue
    .line 178
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    .line 180
    return-void
.end method

.method public static selectedForRecorrection()V
    .registers 1

    .prologue
    .line 93
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    .line 95
    return-void
.end method

.method private static setState(I)V
    .registers 2
    .parameter "newState"

    .prologue
    .line 46
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sPreviousState:I

    .line 47
    sput p0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    .line 48
    return-void
.end method

.method private static stateName(I)Ljava/lang/String;
    .registers 2
    .parameter "state"

    .prologue
    .line 207
    packed-switch p0, :pswitch_data_28

    .line 219
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 208
    :pswitch_6
    const-string v0, "START"

    goto :goto_5

    .line 209
    :pswitch_9
    const-string v0, "IN_WORD"

    goto :goto_5

    .line 210
    :pswitch_c
    const-string v0, "ACCEPTED_DEFAULT"

    goto :goto_5

    .line 211
    :pswitch_f
    const-string v0, "PICKED_SUGGESTION"

    goto :goto_5

    .line 212
    :pswitch_12
    const-string v0, "PUNCTUATION_AFTER_WORD"

    goto :goto_5

    .line 213
    :pswitch_15
    const-string v0, "PUNCTUATION_AFTER_ACCEPTED"

    goto :goto_5

    .line 214
    :pswitch_18
    const-string v0, "SPACE_AFTER_ACCEPTED"

    goto :goto_5

    .line 215
    :pswitch_1b
    const-string v0, "SPACE_AFTER_PICKED"

    goto :goto_5

    .line 216
    :pswitch_1e
    const-string v0, "UNDO_COMMIT"

    goto :goto_5

    .line 217
    :pswitch_21
    const-string v0, "RECORRECTING"

    goto :goto_5

    .line 218
    :pswitch_24
    const-string v0, "PICKED_RECORRECTION"

    goto :goto_5

    .line 207
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
    .end packed-switch
.end method

.method public static typedCharacter(CZII)V
    .registers 9
    .parameter "c"
    .parameter "isSeparator"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 105
    const/16 v2, 0x20

    if-ne p0, v2, :cond_1a

    move v0, v1

    .line 106
    .local v0, isSpace:Z
    :goto_8
    sget v2, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    packed-switch v2, :pswitch_data_68

    .line 158
    :cond_d
    :goto_d
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->getInstance()Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p3}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->push(CII)V

    .line 159
    if-eqz p1, :cond_63

    .line 160
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnInputSeparator()V

    .line 165
    :goto_19
    return-void

    .line 105
    .end local v0           #isSpace:Z
    :cond_1a
    const/4 v0, 0x0

    goto :goto_8

    .line 108
    .restart local v0       #isSpace:Z
    :pswitch_1c
    if-nez v0, :cond_20

    if-eqz p1, :cond_d

    .line 109
    :cond_20
    invoke-static {v1}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_d

    .line 117
    :pswitch_24
    if-eqz v0, :cond_2b

    .line 118
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_d

    .line 119
    :cond_2b
    if-eqz p1, :cond_31

    .line 121
    invoke-static {v4}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_d

    .line 123
    :cond_31
    invoke-static {v3}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_d

    .line 128
    :pswitch_35
    if-eqz v0, :cond_3d

    .line 129
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_d

    .line 130
    :cond_3d
    if-eqz p1, :cond_43

    .line 132
    invoke-static {v4}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_d

    .line 134
    :cond_43
    invoke-static {v3}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_d

    .line 141
    :pswitch_47
    if-nez v0, :cond_4f

    if-nez p1, :cond_4f

    .line 142
    invoke-static {v3}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_d

    .line 144
    :cond_4f
    invoke-static {v1}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_d

    .line 148
    :pswitch_53
    if-nez v0, :cond_57

    if-eqz p1, :cond_5b

    .line 149
    :cond_57
    invoke-static {v1}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_d

    .line 151
    :cond_5b
    invoke-static {v3}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_d

    .line 155
    :pswitch_5f
    invoke-static {v1}, Lcom/android/inputmethod/latin/TextEntryState;->setState(I)V

    goto :goto_d

    .line 162
    :cond_63
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnInputChar()V

    goto :goto_19

    .line 106
    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_47
        :pswitch_47
        :pswitch_1c
        :pswitch_24
        :pswitch_35
        :pswitch_47
        :pswitch_24
        :pswitch_47
        :pswitch_24
        :pswitch_53
        :pswitch_5f
        :pswitch_35
    .end packed-switch
.end method
