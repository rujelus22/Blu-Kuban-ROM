.class public Lcom/android/inputmethod/latin/KeyboardSwitcher;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;
    }
.end annotation


# static fields
.field public static final KEYBOARDMODE_EMAIL:I = 0x7f0f0186

.field public static final KEYBOARDMODE_IM:I = 0x7f0f0187

.field public static final KEYBOARDMODE_NORMAL:I = 0x7f0f0184

.field public static final KEYBOARDMODE_URL:I = 0x7f0f0185

.field public static final MODE_EMAIL:I = 0x5

.field public static final MODE_IM:I = 0x6

.field public static final MODE_PHONE:I = 0x3

.field public static final MODE_SYMBOLS:I = 0x2

.field public static final MODE_TEXT:I = 0x1

.field public static final MODE_TEXT_ALPHA:I = 0x1

.field public static final MODE_TEXT_COUNT:I = 0x2

.field public static final MODE_TEXT_QWERTY:I = 0x0

.field public static final MODE_URL:I = 0x4

.field private static final SYMBOLS_MODE_STATE_BEGIN:I = 0x1

.field private static final SYMBOLS_MODE_STATE_NONE:I = 0x0

.field private static final SYMBOLS_MODE_STATE_SYMBOL:I = 0x2


# instance fields
.field mContext:Lcom/android/inputmethod/latin/LatinIME;

.field private mCurrentId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

.field private mImeOptions:I

.field mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

.field private mIsSymbols:Z

.field private mKeyboards:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;",
            "Lcom/android/inputmethod/latin/LatinKeyboard;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDisplayWidth:I

.field private mMode:I

.field private mPreferSymbols:Z

.field private mSymbolsId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

.field private mSymbolsModeState:I

.field private mSymbolsShiftedId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

.field private mTextMode:I


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/LatinIME;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mTextMode:I

    .line 60
    iput v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsModeState:I

    .line 65
    iput-object p1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mContext:Lcom/android/inputmethod/latin/LatinIME;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mKeyboards:Ljava/util/Map;

    .line 67
    new-instance v0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    const v1, 0x7f050007

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    .line 68
    new-instance v0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    const v1, 0x7f050008

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsShiftedId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    .line 69
    return-void
.end method

.method private getKeyboard(Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;)Lcom/android/inputmethod/latin/LatinKeyboard;
    .registers 6
    .parameter "id"

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mKeyboards:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 152
    new-instance v0, Lcom/android/inputmethod/latin/LatinKeyboard;

    iget-object v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mContext:Lcom/android/inputmethod/latin/LatinIME;

    iget v2, p1, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mXml:I

    iget v3, p1, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mMode:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/LatinKeyboard;-><init>(Landroid/content/Context;II)V

    .line 153
    .local v0, keyboard:Lcom/android/inputmethod/latin/LatinKeyboard;
    iget-boolean v1, p1, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mEnableShiftLock:Z

    if-eqz v1, :cond_1a

    .line 154
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboard;->enableShiftLock()V

    .line 156
    :cond_1a
    iget-object v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mKeyboards:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .end local v0           #keyboard:Lcom/android/inputmethod/latin/LatinKeyboard;
    :cond_1f
    iget-object v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mKeyboards:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/LatinKeyboard;

    return-object v1
.end method

.method private getKeyboardId(IIZ)Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;
    .registers 9
    .parameter "mode"
    .parameter "imeOptions"
    .parameter "isSymbols"

    .prologue
    const v4, 0x7f0f0184

    const v1, 0x7f050007

    const v3, 0x7f050006

    const/4 v2, 0x1

    .line 162
    if-eqz p3, :cond_1e

    .line 163
    const/4 v0, 0x3

    if-ne p1, v0, :cond_18

    new-instance v0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    const v1, 0x7f050004

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(I)V

    .line 187
    :goto_17
    return-object v0

    .line 163
    :cond_18
    new-instance v0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(I)V

    goto :goto_17

    .line 167
    :cond_1e
    packed-switch p1, :pswitch_data_64

    .line 187
    :cond_21
    const/4 v0, 0x0

    goto :goto_17

    .line 169
    :pswitch_23
    iget v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mTextMode:I

    if-nez v0, :cond_2d

    .line 170
    new-instance v0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    invoke-direct {v0, v3, v4, v2}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(IIZ)V

    goto :goto_17

    .line 172
    :cond_2d
    iget v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mTextMode:I

    if-ne v0, v2, :cond_21

    .line 173
    new-instance v0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    const v1, 0x7f050002

    invoke-direct {v0, v1, v4, v2}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(IIZ)V

    goto :goto_17

    .line 177
    :pswitch_3a
    new-instance v0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(I)V

    goto :goto_17

    .line 179
    :pswitch_40
    new-instance v0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    const v1, 0x7f050003

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(I)V

    goto :goto_17

    .line 181
    :pswitch_49
    new-instance v0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    const v1, 0x7f0f0185

    invoke-direct {v0, v3, v1, v2}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(IIZ)V

    goto :goto_17

    .line 183
    :pswitch_52
    new-instance v0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    const v1, 0x7f0f0186

    invoke-direct {v0, v3, v1, v2}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(IIZ)V

    goto :goto_17

    .line 185
    :pswitch_5b
    new-instance v0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    const v1, 0x7f0f0187

    invoke-direct {v0, v3, v1, v2}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(IIZ)V

    goto :goto_17

    .line 167
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_23
        :pswitch_3a
        :pswitch_40
        :pswitch_49
        :pswitch_52
        :pswitch_5b
    .end packed-switch
.end method


# virtual methods
.method getKeyboardMode()I
    .registers 2

    .prologue
    .line 191
    iget v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mMode:I

    return v0
.end method

.method getTextMode()I
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mTextMode:I

    return v0
.end method

.method getTextModeCount()I
    .registers 2

    .prologue
    .line 212
    const/4 v0, 0x2

    return v0
.end method

.method isAlphabetMode()Z
    .registers 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    .line 217
    .local v0, current:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;
    iget v1, v0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mMode:I

    const v2, 0x7f0f0184

    if-eq v1, v2, :cond_1e

    iget v1, v0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mMode:I

    const v2, 0x7f0f0185

    if-eq v1, v2, :cond_1e

    iget v1, v0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mMode:I

    const v2, 0x7f0f0186

    if-eq v1, v2, :cond_1e

    iget v1, v0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mMode:I

    const v2, 0x7f0f0187

    if-ne v1, v2, :cond_20

    :cond_1e
    const/4 v1, 0x1

    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method isTextMode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 195
    iget v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mMode:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method makeKeyboards(Z)V
    .registers 5
    .parameter "forceCreate"

    .prologue
    .line 76
    if-eqz p1, :cond_7

    .line 77
    iget-object v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mKeyboards:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 81
    :cond_7
    iget-object v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mContext:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getMaxWidth()I

    move-result v0

    .line 82
    .local v0, displayWidth:I
    iget v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mLastDisplayWidth:I

    if-ne v0, v1, :cond_12

    .line 89
    :goto_11
    return-void

    .line 84
    :cond_12
    iput v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mLastDisplayWidth:I

    .line 85
    if-nez p1, :cond_1b

    .line 86
    iget-object v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mKeyboards:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 87
    :cond_1b
    new-instance v1, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    const v2, 0x7f050007

    invoke-direct {v1, v2}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(I)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    .line 88
    new-instance v1, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    const v2, 0x7f050008

    invoke-direct {v1, v2}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(I)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsShiftedId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    goto :goto_11
.end method

.method onKey(I)Z
    .registers 5
    .parameter "key"

    .prologue
    const/16 v2, 0x20

    const/16 v1, 0xa

    .line 259
    iget v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsModeState:I

    packed-switch v0, :pswitch_data_1c

    .line 270
    :cond_9
    :goto_9
    const/4 v0, 0x0

    :goto_a
    return v0

    .line 261
    :pswitch_b
    if-eq p1, v2, :cond_9

    if-eq p1, v1, :cond_9

    if-lez p1, :cond_9

    .line 262
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsModeState:I

    goto :goto_9

    .line 266
    :pswitch_15
    if-eq p1, v1, :cond_19

    if-ne p1, v2, :cond_9

    .line 267
    :cond_19
    const/4 v0, 0x1

    goto :goto_a

    .line 259
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_b
        :pswitch_15
    .end packed-switch
.end method

.method setInputView(Lcom/android/inputmethod/latin/LatinKeyboardView;)V
    .registers 2
    .parameter "inputView"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    .line 73
    return-void
.end method

.method setKeyboardMode(II)V
    .registers 6
    .parameter "mode"
    .parameter "imeOptions"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsModeState:I

    .line 125
    if-ne p1, v2, :cond_8

    move v0, v1

    :cond_8
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mPreferSymbols:Z

    .line 126
    if-ne p1, v2, :cond_12

    :goto_c
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mPreferSymbols:Z

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 127
    return-void

    :cond_12
    move v1, p1

    .line 126
    goto :goto_c
.end method

.method setKeyboardMode(IIZ)V
    .registers 9
    .parameter "mode"
    .parameter "imeOptions"
    .parameter "isSymbols"

    .prologue
    const/4 v4, 0x0

    .line 130
    iput p1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mMode:I

    .line 131
    iput p2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mImeOptions:I

    .line 132
    iput-boolean p3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mIsSymbols:Z

    .line 133
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setPreviewEnabled(Z)V

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getKeyboardId(IIZ)Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    move-result-object v0

    .line 135
    .local v0, id:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getKeyboard(Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;)Lcom/android/inputmethod/latin/LatinKeyboard;

    move-result-object v1

    .line 137
    .local v1, keyboard:Lcom/android/inputmethod/latin/LatinKeyboard;
    const/4 v2, 0x3

    if-ne p1, v2, :cond_22

    .line 138
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v2, v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setPhoneKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 139
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v2, v4}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setPreviewEnabled(Z)V

    .line 142
    :cond_22
    iput-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    .line 143
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v2, v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 144
    invoke-virtual {v1, v4}, Lcom/android/inputmethod/latin/LatinKeyboard;->setShifted(Z)Z

    .line 145
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->isShiftLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->setShiftLocked(Z)V

    .line 146
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mContext:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mMode:I

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/inputmethod/latin/LatinKeyboard;->setImeOptions(Landroid/content/res/Resources;II)V

    .line 148
    return-void
.end method

.method setTextMode(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 203
    const/4 v0, 0x2

    if-ge p1, v0, :cond_7

    if-ltz p1, :cond_7

    .line 204
    iput p1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mTextMode:I

    .line 206
    :cond_7
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 207
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mImeOptions:I

    invoke-virtual {p0, v0, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setKeyboardMode(II)V

    .line 209
    :cond_13
    return-void
.end method

.method toggleShift()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 222
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    iget-object v3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->equals(Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 223
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getKeyboard(Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;)Lcom/android/inputmethod/latin/LatinKeyboard;

    move-result-object v0

    .line 224
    .local v0, symbolsKeyboard:Lcom/android/inputmethod/latin/LatinKeyboard;
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsShiftedId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getKeyboard(Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;)Lcom/android/inputmethod/latin/LatinKeyboard;

    move-result-object v1

    .line 225
    .local v1, symbolsShiftedKeyboard:Lcom/android/inputmethod/latin/LatinKeyboard;
    invoke-virtual {v0, v5}, Lcom/android/inputmethod/latin/LatinKeyboard;->setShifted(Z)Z

    .line 226
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsShiftedId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    iput-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    .line 227
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v2, v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 228
    invoke-virtual {v1, v5}, Lcom/android/inputmethod/latin/LatinKeyboard;->setShifted(Z)Z

    .line 229
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mContext:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mMode:I

    iget v4, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/inputmethod/latin/LatinKeyboard;->setImeOptions(Landroid/content/res/Resources;II)V

    .line 240
    .end local v0           #symbolsKeyboard:Lcom/android/inputmethod/latin/LatinKeyboard;
    .end local v1           #symbolsShiftedKeyboard:Lcom/android/inputmethod/latin/LatinKeyboard;
    :cond_34
    :goto_34
    return-void

    .line 231
    :cond_35
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    iget-object v3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsShiftedId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->equals(Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 232
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getKeyboard(Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;)Lcom/android/inputmethod/latin/LatinKeyboard;

    move-result-object v0

    .line 233
    .restart local v0       #symbolsKeyboard:Lcom/android/inputmethod/latin/LatinKeyboard;
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsShiftedId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getKeyboard(Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;)Lcom/android/inputmethod/latin/LatinKeyboard;

    move-result-object v1

    .line 234
    .restart local v1       #symbolsShiftedKeyboard:Lcom/android/inputmethod/latin/LatinKeyboard;
    invoke-virtual {v1, v4}, Lcom/android/inputmethod/latin/LatinKeyboard;->setShifted(Z)Z

    .line 235
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    iput-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    .line 236
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    iget-object v3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getKeyboard(Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;)Lcom/android/inputmethod/latin/LatinKeyboard;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 237
    invoke-virtual {v0, v4}, Lcom/android/inputmethod/latin/LatinKeyboard;->setShifted(Z)Z

    .line 238
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mContext:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mMode:I

    iget v4, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/inputmethod/latin/LatinKeyboard;->setImeOptions(Landroid/content/res/Resources;II)V

    goto :goto_34
.end method

.method toggleSymbols()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 243
    iget v3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mMode:I

    iget v4, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mImeOptions:I

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mIsSymbols:Z

    if-nez v0, :cond_19

    move v0, v1

    :goto_b
    invoke-virtual {p0, v3, v4, v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 244
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mIsSymbols:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mPreferSymbols:Z

    if-nez v0, :cond_1b

    .line 245
    iput v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsModeState:I

    .line 250
    :goto_18
    return-void

    :cond_19
    move v0, v2

    .line 243
    goto :goto_b

    .line 248
    :cond_1b
    iput v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsModeState:I

    goto :goto_18
.end method
