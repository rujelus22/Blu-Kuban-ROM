.class public Lcom/android/inputmethod/latin/TextEntryState;
.super Ljava/lang/Object;
.source "TextEntryState.java"


# static fields
.field private static LOGGING:Z = false

.field private static final STATES:[Ljava/lang/String; = null

.field public static final STATE_ACCEPTED_DEFAULT:I = 0x3

.field public static final STATE_IN_WORD:I = 0x2

.field public static final STATE_PICKED_SUGGESTION:I = 0x4

.field public static final STATE_PUNCTUATION_AFTER_ACCEPTED:I = 0x6

.field public static final STATE_PUNCTUATION_AFTER_WORD:I = 0x5

.field public static final STATE_SPACE_AFTER_ACCEPTED:I = 0x7

.field public static final STATE_SPACE_AFTER_PICKED:I = 0x8

.field public static final STATE_START:I = 0x1

.field public static final STATE_UNDO_COMMIT:I = 0x9

.field public static final STATE_UNKNOWN:I

.field private static sActualChars:I

.field private static sAutoSuggestCount:I

.field private static sAutoSuggestUndoneCount:I

.field private static sBackspaceCount:I

.field private static sKeyLocationFile:Ljava/io/FileOutputStream;

.field private static sManualSuggestCount:I

.field private static sSessionCount:I

.field private static sState:I

.field private static sTypedChars:I

.field private static sUserActionFile:Ljava/io/FileOutputStream;

.field private static sWordNotInDictionaryCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 31
    sput-boolean v3, Lcom/android/inputmethod/latin/TextEntryState;->LOGGING:Z

    .line 33
    sput v3, Lcom/android/inputmethod/latin/TextEntryState;->sBackspaceCount:I

    .line 35
    sput v3, Lcom/android/inputmethod/latin/TextEntryState;->sAutoSuggestCount:I

    .line 37
    sput v3, Lcom/android/inputmethod/latin/TextEntryState;->sAutoSuggestUndoneCount:I

    .line 39
    sput v3, Lcom/android/inputmethod/latin/TextEntryState;->sManualSuggestCount:I

    .line 41
    sput v3, Lcom/android/inputmethod/latin/TextEntryState;->sWordNotInDictionaryCount:I

    .line 43
    sput v3, Lcom/android/inputmethod/latin/TextEntryState;->sSessionCount:I

    .line 49
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Unknown"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "Start"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "In word"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Accepted default"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Picked suggestion"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Punc. after word"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Punc. after accepted"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Space after accepted"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Space after picked"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Undo commit"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/inputmethod/latin/TextEntryState;->STATES:[Ljava/lang/String;

    .line 73
    sput v3, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acceptedDefault(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "typedWord"
    .parameter "actualWord"

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 127
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sAutoSuggestCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sAutoSuggestCount:I

    .line 129
    :cond_c
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sTypedChars:I

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sTypedChars:I

    .line 130
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sActualChars:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sActualChars:I

    .line 131
    const/4 v0, 0x3

    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    .line 132
    return-void
.end method

.method public static acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "typedWord"
    .parameter "actualWord"

    .prologue
    .line 140
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sManualSuggestCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sManualSuggestCount:I

    .line 141
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 142
    invoke-static {p0}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedTyped(Ljava/lang/CharSequence;)V

    .line 144
    :cond_f
    const/4 v0, 0x4

    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    .line 145
    return-void
.end method

.method public static acceptedTyped(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "typedWord"

    .prologue
    .line 135
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sWordNotInDictionaryCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sWordNotInDictionaryCount:I

    .line 136
    const/4 v0, 0x4

    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    .line 137
    return-void
.end method

.method public static backspace()V
    .registers 3

    .prologue
    const/16 v2, 0x9

    .line 198
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    .line 199
    sput v2, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    .line 200
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sAutoSuggestUndoneCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sAutoSuggestUndoneCount:I

    .line 204
    :cond_f
    :goto_f
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sBackspaceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sBackspaceCount:I

    .line 205
    return-void

    .line 201
    :cond_16
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    if-ne v0, v2, :cond_f

    .line 202
    const/4 v0, 0x2

    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    goto :goto_f
.end method

.method public static currentState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 217
    sget-object v0, Lcom/android/inputmethod/latin/TextEntryState;->STATES:[Ljava/lang/String;

    sget v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static endSession()V
    .registers 5

    .prologue
    .line 100
    sget-object v2, Lcom/android/inputmethod/latin/TextEntryState;->sKeyLocationFile:Ljava/io/FileOutputStream;

    if-nez v2, :cond_5

    .line 123
    .local v1, out:Ljava/lang/String;
    :goto_4
    return-void

    .line 104
    .end local v1           #out:Ljava/lang/String;
    :cond_5
    :try_start_5
    sget-object v2, Lcom/android/inputmethod/latin/TextEntryState;->sKeyLocationFile:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MM:dd hh:mm:ss"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " BS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/inputmethod/latin/TextEntryState;->sBackspaceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " auto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/inputmethod/latin/TextEntryState;->sAutoSuggestCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " manual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/inputmethod/latin/TextEntryState;->sManualSuggestCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " typed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/inputmethod/latin/TextEntryState;->sWordNotInDictionaryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " undone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/inputmethod/latin/TextEntryState;->sAutoSuggestUndoneCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " saved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/inputmethod/latin/TextEntryState;->sActualChars:I

    sget v4, Lcom/android/inputmethod/latin/TextEntryState;->sTypedChars:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/inputmethod/latin/TextEntryState;->sActualChars:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    .restart local v1       #out:Ljava/lang/String;
    sget-object v2, Lcom/android/inputmethod/latin/TextEntryState;->sUserActionFile:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 117
    sget-object v2, Lcom/android/inputmethod/latin/TextEntryState;->sUserActionFile:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 118
    const/4 v2, 0x0

    sput-object v2, Lcom/android/inputmethod/latin/TextEntryState;->sKeyLocationFile:Ljava/io/FileOutputStream;

    .line 119
    const/4 v2, 0x0

    sput-object v2, Lcom/android/inputmethod/latin/TextEntryState;->sUserActionFile:Ljava/io/FileOutputStream;
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_93} :catch_95

    goto/16 :goto_4

    .line 120
    :catch_95
    move-exception v0

    .line 121
    .local v0, ioe:Ljava/io/IOException;
    const-string v2, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public static getState()I
    .registers 1

    .prologue
    .line 212
    sget v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    return v0
.end method

.method public static keyPressedAt(Landroid/inputmethodservice/Keyboard$Key;II)V
    .registers 7
    .parameter "key"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 221
    sget-boolean v1, Lcom/android/inputmethod/latin/TextEntryState;->LOGGING:Z

    if-eqz v1, :cond_6e

    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sKeyLocationFile:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_6e

    iget-object v1, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, 0x20

    if-lt v1, v2, :cond_6e

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " X: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v3, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, out:Ljava/lang/String;
    :try_start_65
    sget-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sKeyLocationFile:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6e} :catch_6f

    .line 235
    .end local v0           #out:Ljava/lang/String;
    :cond_6e
    :goto_6e
    return-void

    .line 231
    .restart local v0       #out:Ljava/lang/String;
    :catch_6f
    move-exception v1

    goto :goto_6e
.end method

.method public static newSession(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 79
    sget v1, Lcom/android/inputmethod/latin/TextEntryState;->sSessionCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/inputmethod/latin/TextEntryState;->sSessionCount:I

    .line 80
    sput v2, Lcom/android/inputmethod/latin/TextEntryState;->sAutoSuggestCount:I

    .line 81
    sput v2, Lcom/android/inputmethod/latin/TextEntryState;->sBackspaceCount:I

    .line 82
    sput v2, Lcom/android/inputmethod/latin/TextEntryState;->sAutoSuggestUndoneCount:I

    .line 83
    sput v2, Lcom/android/inputmethod/latin/TextEntryState;->sManualSuggestCount:I

    .line 84
    sput v2, Lcom/android/inputmethod/latin/TextEntryState;->sWordNotInDictionaryCount:I

    .line 85
    sput v2, Lcom/android/inputmethod/latin/TextEntryState;->sTypedChars:I

    .line 86
    sput v2, Lcom/android/inputmethod/latin/TextEntryState;->sActualChars:I

    .line 87
    const/4 v1, 0x1

    sput v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    .line 89
    sget-boolean v1, Lcom/android/inputmethod/latin/TextEntryState;->LOGGING:Z

    if-eqz v1, :cond_32

    .line 91
    :try_start_1c
    const-string v1, "key.txt"

    const v2, 0x8000

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    sput-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sKeyLocationFile:Ljava/io/FileOutputStream;

    .line 92
    const-string v1, "action.txt"

    const v2, 0x8000

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    sput-object v1, Lcom/android/inputmethod/latin/TextEntryState;->sUserActionFile:Ljava/io/FileOutputStream;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_32} :catch_33

    .line 97
    :cond_32
    :goto_32
    return-void

    .line 93
    :catch_33
    move-exception v0

    .line 94
    .local v0, ioe:Ljava/io/IOException;
    const-string v1, "TextEntryState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t open file for output: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method public static reset()V
    .registers 1

    .prologue
    .line 208
    const/4 v0, 0x1

    sput v0, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    .line 209
    return-void
.end method

.method public static typedCharacter(CZ)V
    .registers 7
    .parameter "c"
    .parameter "isSeparator"

    .prologue
    const/4 v4, 0x6

    const/4 v1, 0x1

    const/4 v3, 0x2

    .line 148
    const/16 v2, 0x20

    if-ne p0, v2, :cond_e

    move v0, v1

    .line 149
    .local v0, isSpace:Z
    :goto_8
    sget v2, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    packed-switch v2, :pswitch_data_4a

    .line 195
    :cond_d
    :goto_d
    return-void

    .line 148
    .end local v0           #isSpace:Z
    :cond_e
    const/4 v0, 0x0

    goto :goto_8

    .line 151
    .restart local v0       #isSpace:Z
    :pswitch_10
    if-nez v0, :cond_14

    if-eqz p1, :cond_d

    .line 152
    :cond_14
    sput v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    goto :goto_d

    .line 159
    :pswitch_17
    if-eqz v0, :cond_1d

    .line 160
    const/4 v1, 0x7

    sput v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    goto :goto_d

    .line 161
    :cond_1d
    if-eqz p1, :cond_22

    .line 162
    sput v4, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    goto :goto_d

    .line 164
    :cond_22
    sput v3, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    goto :goto_d

    .line 168
    :pswitch_25
    if-eqz v0, :cond_2c

    .line 169
    const/16 v1, 0x8

    sput v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    goto :goto_d

    .line 170
    :cond_2c
    if-eqz p1, :cond_31

    .line 172
    sput v4, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    goto :goto_d

    .line 174
    :cond_31
    sput v3, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    goto :goto_d

    .line 182
    :pswitch_34
    if-nez v0, :cond_3b

    if-nez p1, :cond_3b

    .line 183
    sput v3, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    goto :goto_d

    .line 185
    :cond_3b
    sput v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    goto :goto_d

    .line 189
    :pswitch_3e
    if-nez v0, :cond_42

    if-eqz p1, :cond_46

    .line 190
    :cond_42
    const/4 v1, 0x3

    sput v1, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    goto :goto_d

    .line 192
    :cond_46
    sput v3, Lcom/android/inputmethod/latin/TextEntryState;->sState:I

    goto :goto_d

    .line 149
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_34
        :pswitch_34
        :pswitch_10
        :pswitch_17
        :pswitch_25
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_17
        :pswitch_3e
    .end packed-switch
.end method
