.class public Lcom/android/inputmethod/keyboard/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# static fields
.field public static final CODE_CANCEL:I = -0x4

.field public static final CODE_CAPSLOCK:I = -0x3

.field public static final CODE_CLOSING_ANGLE_BRACKET:I = 0x3e

.field public static final CODE_CLOSING_CURLY_BRACKET:I = 0x7d

.field public static final CODE_CLOSING_PARENTHESIS:I = 0x29

.field public static final CODE_CLOSING_SQUARE_BRACKET:I = 0x5d

.field public static final CODE_DASH:I = 0x2d

.field public static final CODE_DELETE:I = -0x5

.field public static final CODE_DIGIT0:I = 0x30

.field public static final CODE_DOUBLE_QUOTE:I = 0x22

.field public static final CODE_DUMMY:I = 0x0

.field public static final CODE_ENTER:I = 0xa

.field public static final CODE_HAPTIC_AND_AUDIO_FEEDBACK_ONLY:I = -0x62

.field public static final CODE_PERIOD:I = 0x2e

.field public static final CODE_PLUS:I = 0x2b

.field public static final CODE_SETTINGS:I = -0x6

.field public static final CODE_SHIFT:I = -0x1

.field public static final CODE_SHORTCUT:I = -0x7

.field public static final CODE_SINGLE_QUOTE:I = 0x27

.field public static final CODE_SPACE:I = 0x20

.field public static final CODE_SWITCH_ALPHA_SYMBOL:I = -0x2

.field public static final CODE_TAB:I = 0x9

.field public static final CODE_UNSPECIFIED:I = -0x63

.field public static final KEYCODE_DOWN_ARROW:I = 0x14

.field public static final KEYCODE_LEFT_ARROW:I = 0x15

.field public static final KEYCODE_RIGHT_ARROW:I = 0x16

.field public static final KEYCODE_UP_ARROW:I = 0x13


# instance fields
.field public final mIconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

.field public final mId:Lcom/android/inputmethod/keyboard/KeyboardId;

.field public final mIsRtlKeyboard:Z

.field public final mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field public final mMaxMiniKeyboardColumn:I

.field public final mMoreKeysTemplate:I

.field public final mMostCommonKeyHeight:I

.field public final mMostCommonKeyWidth:I

.field public final mOccupiedHeight:I

.field public final mOccupiedWidth:I

.field private final mProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;

.field public final mShiftKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field public final mShiftLockKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field private final mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

.field public final mShiftedIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public final mThemeId:I

.field public final mTopPadding:I

.field public final mUnshiftedIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public final mVerticalGap:I


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V
    .registers 11
    .parameter "params"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    .line 124
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 125
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mThemeId:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mThemeId:I

    .line 126
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedHeight:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    .line 127
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mOccupiedWidth:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedWidth:I

    .line 128
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMostCommonKeyHeight:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyHeight:I

    .line 129
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMostCommonKeyWidth:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyWidth:I

    .line 130
    iget-boolean v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mIsRtlKeyboard:Z

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mIsRtlKeyboard:Z

    .line 131
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMoreKeysTemplate:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMoreKeysTemplate:I

    .line 132
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mMaxMiniKeyboardColumn:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMaxMiniKeyboardColumn:I

    .line 134
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTopPadding:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mTopPadding:I

    .line 135
    iget v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mVerticalGap:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mVerticalGap:I

    .line 137
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mKeys:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    .line 138
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mShiftKeys:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftKeys:Ljava/util/List;

    .line 139
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mShiftLockKeys:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftLockKeys:Ljava/util/Set;

    .line 140
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mShiftedIcons:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftedIcons:Ljava/util/Map;

    .line 141
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mUnshiftedIcons:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mUnshiftedIcons:Ljava/util/Map;

    .line 142
    iget-object v0, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mIconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mIconsSet:Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

    .line 144
    new-instance v0, Lcom/android/inputmethod/keyboard/ProximityInfo;

    .line 145
    iget v1, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->GRID_WIDTH:I

    iget v2, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->GRID_HEIGHT:I

    iget v3, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedWidth:I

    iget v4, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    .line 146
    iget v5, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyWidth:I

    iget v6, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyHeight:I

    iget-object v7, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    iget-object v8, p1, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;->mTouchPositionCorrection:Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;

    invoke-direct/range {v0 .. v8}, Lcom/android/inputmethod/keyboard/ProximityInfo;-><init>(IIIIIILjava/util/List;Lcom/android/inputmethod/keyboard/internal/KeyboardParams$TouchPositionCorrection;)V

    .line 144
    iput-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;

    .line 147
    return-void
.end method

.method public static themeIndex(Ljava/lang/String;)I
    .registers 3
    .parameter "themeName"

    .prologue
    const/4 v0, 0x0

    .line 258
    const-string v1, "Basic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 264
    :cond_9
    :goto_9
    return v0

    .line 259
    :cond_a
    const-string v1, "BasicHighContrast"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    goto :goto_9

    .line 260
    :cond_14
    const-string v1, "IceCreamSandwich"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x5

    goto :goto_9

    .line 261
    :cond_1e
    const-string v1, "Stone"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v0, 0x6

    goto :goto_9

    .line 262
    :cond_28
    const-string v1, "StoneBold"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v0, 0x7

    goto :goto_9

    .line 263
    :cond_32
    const-string v1, "GingerBread"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v0, 0x8

    goto :goto_9
.end method

.method public static themeName(I)Ljava/lang/String;
    .registers 2
    .parameter "themeId"

    .prologue
    .line 246
    packed-switch p0, :pswitch_data_18

    .line 253
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 247
    :pswitch_5
    const-string v0, "Basic"

    goto :goto_4

    .line 248
    :pswitch_8
    const-string v0, "BasicHighContrast"

    goto :goto_4

    .line 249
    :pswitch_b
    const-string v0, "IceCreamSandwich"

    goto :goto_4

    .line 250
    :pswitch_e
    const-string v0, "Stone"

    goto :goto_4

    .line 251
    :pswitch_11
    const-string v0, "StoneBold"

    goto :goto_4

    .line 252
    :pswitch_14
    const-string v0, "GingerBread"

    goto :goto_4

    .line 246
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public adjustLabelCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "label"

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Keyboard;->isShiftedOrShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2a

    .line 227
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 228
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v1, v1, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 230
    .end local p1
    :cond_2a
    return-object p1
.end method

.method public getKeyboardShiftState()Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    return-object v0
.end method

.method public getNearestKeys(II)[I
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/keyboard/ProximityInfo;->getNearestKeys(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getProximityInfo()Lcom/android/inputmethod/keyboard/ProximityInfo;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;

    return-object v0
.end method

.method public hasShiftLockKey()Z
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftLockKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isAlphaKeyboard()Z
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardId;->isAlphabetKeyboard()Z

    move-result v0

    return v0
.end method

.method public isAutomaticTemporaryUpperCase()Z
    .registers 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Keyboard;->isAlphaKeyboard()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->isAutomaticTemporaryUpperCase()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isManualTemporaryUpperCase()Z
    .registers 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Keyboard;->isAlphaKeyboard()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->isManualTemporaryUpperCase()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isManualTemporaryUpperCaseFromAuto()Z
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Keyboard;->isAlphaKeyboard()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->isManualTemporaryUpperCaseFromAuto()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isNumberKeyboard()Z
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardId;->isNumberKeyboard()Z

    move-result v0

    return v0
.end method

.method public isPhoneKeyboard()Z
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardId;->isPhoneKeyboard()Z

    move-result v0

    return v0
.end method

.method public isShiftLocked()Z
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->isShiftLocked()Z

    move-result v0

    return v0
.end method

.method public isShiftedOrShiftLocked()Z
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->isShiftedOrShiftLocked()Z

    move-result v0

    return v0
.end method

.method public setAutomaticTemporaryUpperCase()V
    .registers 2

    .prologue
    .line 193
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/Keyboard;->setShifted(Z)Z

    .line 194
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->setAutomaticTemporaryUpperCase()V

    .line 195
    return-void
.end method

.method public setShiftLocked(Z)Z
    .registers 5
    .parameter "newShiftLockState"

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftLockKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_13

    .line 169
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->setShiftLocked(Z)V

    .line 170
    const/4 v1, 0x1

    return v1

    .line 158
    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/Key;

    .line 161
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/Key;->setHighlightOn(Z)V

    .line 163
    if-eqz p1, :cond_32

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftedIcons:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 164
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftedIcons:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 166
    :cond_32
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mUnshiftedIcons:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6
.end method

.method public setShifted(Z)Z
    .registers 5
    .parameter "newShiftState"

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_13

    .line 185
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->setShifted(Z)Z

    move-result v1

    return v1

    .line 178
    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/Key;

    .line 179
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    if-nez p1, :cond_2f

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->isShiftLocked()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 180
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mUnshiftedIcons:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 181
    :cond_2f
    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardShiftState;->isShiftedOrShiftLocked()Z

    move-result v1

    if-nez v1, :cond_6

    .line 182
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftedIcons:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6
.end method
