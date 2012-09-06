.class public Lcom/android/inputmethod/keyboard/PointerTracker;
.super Ljava/lang/Object;
.source "PointerTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;,
        Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;,
        Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
    }
.end annotation


# static fields
.field private static final DEBUG_EVENT:Z

.field private static final DEBUG_LISTENER:Z

.field private static DEBUG_MODE:Z

.field private static final DEBUG_MOVE_EVENT:Z

.field private static final EMPTY_LISTENER:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

.field private static final TAG:Ljava/lang/String;

.field private static sConfigSlidingKeyInputEnabled:Z

.field private static sDelayBeforeKeyRepeatStart:I

.field private static sKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

.field private static sLongPressKeyTimeout:I

.field private static sLongPressShiftKeyTimeout:I

.field private static sLongPressSpaceKeyTimeout:I

.field private static sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

.field private static sTouchNoiseThresholdDistanceSquared:I

.field private static sTouchNoiseThresholdMillis:I

.field private static final sTrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/PointerTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDownTime:J

.field private mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

.field private mIgnoreModifierKey:Z

.field private mIsAllowedSlidingKeyInput:Z

.field mIsInSlidingKeyInput:Z

.field private mIsRepeatableKey:Z

.field private mIsShowingMoreKeysPanel:Z

.field private mKeyAlreadyProcessed:Z

.field private mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

.field private mKeyIndex:I

.field private final mKeyPreviewText:Landroid/widget/TextView;

.field private mKeyQuarterWidthSquared:I

.field private mKeyX:I

.field private mKeyY:I

.field private mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

.field private mKeyboardLayoutHasBeenChanged:Z

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field private mLastX:I

.field private mLastY:I

.field private mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

.field public final mPointerId:I

.field private mPreviousEventTime:J

.field private mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

.field private mUpTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/android/inputmethod/keyboard/PointerTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->TAG:Ljava/lang/String;

    .line 38
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/keyboard/PointerTracker;->DEBUG_MODE:Z

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sTrackers:Ljava/util/List;

    .line 155
    new-instance v0, Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;-><init>()V

    .line 154
    sput-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->EMPTY_LISTENER:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 33
    return-void
.end method

.method public constructor <init>(ILcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V
    .registers 4
    .parameter "id"
    .parameter "handler"

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    sget-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->EMPTY_LISTENER:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    .line 215
    if-nez p2, :cond_12

    .line 216
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 217
    :cond_12
    iput p1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mPointerId:I

    .line 218
    invoke-interface {p2}, Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getKeyDetector()Lcom/android/inputmethod/keyboard/KeyDetector;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->setKeyDetectorInner(Lcom/android/inputmethod/keyboard/KeyDetector;)V

    .line 219
    invoke-interface {p2}, Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 220
    invoke-interface {p2}, Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getDrawingProxy()Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    .line 221
    invoke-interface {p2}, Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getTimerProxy()Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    .line 222
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->inflateKeyPreviewText()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyPreviewText:Landroid/widget/TextView;

    .line 223
    return-void
.end method

.method private callListenerOnCancelInput()V
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCancelInput()V

    .line 284
    return-void
.end method

.method private callListenerOnCodeInput(Lcom/android/inputmethod/keyboard/Key;I[III)V
    .registers 8
    .parameter "key"
    .parameter "primaryCode"
    .parameter "keyCodes"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 249
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIgnoreModifierKey:Z

    if-eqz v1, :cond_10

    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifierCode(I)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    .line 254
    .local v0, ignoreModifierKey:Z
    :goto_d
    if-eqz v0, :cond_12

    .line 258
    :cond_f
    :goto_f
    return-void

    .line 249
    .end local v0           #ignoreModifierKey:Z
    :cond_10
    const/4 v0, 0x0

    goto :goto_d

    .line 256
    .restart local v0       #ignoreModifierKey:Z
    :cond_12
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 257
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v1, p2, p3, p4, p5}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCodeInput(I[III)V

    goto :goto_f
.end method

.method private callListenerOnPressAndCheckKeyboardLayoutChange(Lcom/android/inputmethod/keyboard/Key;Z)Z
    .registers 8
    .parameter "key"
    .parameter "withSliding"

    .prologue
    const/4 v2, 0x0

    .line 231
    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIgnoreModifierKey:Z

    if-eqz v3, :cond_12

    iget v3, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v3}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifierCode(I)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v0, 0x1

    .line 235
    .local v0, ignoreModifierKey:Z
    :goto_e
    if-eqz v0, :cond_14

    move v1, v2

    .line 243
    :goto_11
    return v1

    .end local v0           #ignoreModifierKey:Z
    :cond_12
    move v0, v2

    .line 231
    goto :goto_e

    .line 237
    .restart local v0       #ignoreModifierKey:Z
    :cond_14
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 238
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    iget v4, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-interface {v3, v4, p2}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onPress(IZ)V

    .line 239
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 240
    .local v1, keyboardLayoutHasBeenChanged:Z
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    goto :goto_11

    .end local v1           #keyboardLayoutHasBeenChanged:Z
    :cond_26
    move v1, v2

    .line 243
    goto :goto_11
.end method

.method private callListenerOnRelease(Lcom/android/inputmethod/keyboard/Key;IZ)V
    .registers 6
    .parameter "key"
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 270
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIgnoreModifierKey:Z

    if-eqz v1, :cond_10

    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifierCode(I)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    .line 274
    .local v0, ignoreModifierKey:Z
    :goto_d
    if-eqz v0, :cond_12

    .line 278
    :cond_f
    :goto_f
    return-void

    .line 270
    .end local v0           #ignoreModifierKey:Z
    :cond_10
    const/4 v0, 0x0

    goto :goto_d

    .line 276
    .restart local v0       #ignoreModifierKey:Z
    :cond_12
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 277
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v1, p2, p3}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onRelease(IZ)V

    goto :goto_f
.end method

.method private callListenerOnTextInput(Lcom/android/inputmethod/keyboard/Key;)V
    .registers 4
    .parameter "key"

    .prologue
    .line 263
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 264
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    iget-object v1, p1, Lcom/android/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onTextInput(Ljava/lang/CharSequence;)V

    .line 265
    :cond_d
    return-void
.end method

.method private detectAndSendKey(III)V
    .registers 11
    .parameter "index"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 712
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v1

    .line 713
    .local v1, key:Lcom/android/inputmethod/keyboard/Key;
    if-nez v1, :cond_c

    .line 714
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnCancelInput()V

    .line 742
    :goto_b
    return-void

    .line 717
    :cond_c
    iget-object v0, v1, Lcom/android/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_19

    .line 718
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnTextInput(Lcom/android/inputmethod/keyboard/Key;)V

    .line 719
    iget v0, v1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-direct {p0, v1, v0, v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnRelease(Lcom/android/inputmethod/keyboard/Key;IZ)V

    goto :goto_b

    .line 721
    :cond_19
    iget v2, v1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    .line 722
    .local v2, code:I
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyDetector;->newCodeArray()[I

    move-result-object v3

    .line 723
    .local v3, codes:[I
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v0, p2, p3, v3}, Lcom/android/inputmethod/keyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    .line 727
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/Keyboard;->isManualTemporaryUpperCase()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/Key;->hasUppercaseLetter()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 728
    iget-object v0, v1, Lcom/android/inputmethod/keyboard/Key;->mHintLabel:Ljava/lang/CharSequence;

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 729
    aput v2, v3, v6

    .line 735
    :cond_3c
    array-length v0, v3

    const/4 v4, 0x2

    if-lt v0, v4, :cond_4e

    aget v0, v3, v6

    if-eq v0, v2, :cond_4e

    aget v0, v3, v5

    if-ne v0, v2, :cond_4e

    .line 736
    aget v0, v3, v6

    aput v0, v3, v5

    .line 737
    aput v2, v3, v6

    :cond_4e
    move-object v0, p0

    move v4, p2

    move v5, p3

    .line 739
    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnCodeInput(Lcom/android/inputmethod/keyboard/Key;I[III)V

    .line 740
    invoke-direct {p0, v1, v2, v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnRelease(Lcom/android/inputmethod/keyboard/Key;IZ)V

    goto :goto_b
.end method

.method public static dismissAllKeyPreviews()V
    .registers 3

    .prologue
    .line 209
    sget-object v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sTrackers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 212
    return-void

    .line 209
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    check-cast v0, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 210
    .restart local v0       #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    iget v2, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    invoke-direct {v0, v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(I)V

    goto :goto_6
.end method

.method public static getPointerTracker(ILcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)Lcom/android/inputmethod/keyboard/PointerTracker;
    .registers 6
    .parameter "id"
    .parameter "handler"

    .prologue
    .line 179
    sget-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sTrackers:Ljava/util/List;

    .line 182
    .local v2, trackers:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/PointerTracker;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, i:I
    :goto_6
    if-le v0, p0, :cond_f

    .line 187
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/keyboard/PointerTracker;

    return-object v3

    .line 183
    :cond_f
    new-instance v1, Lcom/android/inputmethod/keyboard/PointerTracker;

    invoke-direct {v1, v0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;-><init>(ILcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 184
    .local v1, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public static init(ZLandroid/content/Context;)V
    .registers 5
    .parameter "hasDistinctMultitouch"
    .parameter "context"

    .prologue
    .line 158
    if-eqz p0, :cond_55

    .line 159
    new-instance v2, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    invoke-direct {v2}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;-><init>()V

    sput-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    .line 164
    :goto_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 165
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f080008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sConfigSlidingKeyInputEnabled:Z

    .line 166
    const v2, 0x7f0a000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sDelayBeforeKeyRepeatStart:I

    .line 167
    const v2, 0x7f0a000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sLongPressKeyTimeout:I

    .line 168
    const v2, 0x7f0a000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sLongPressShiftKeyTimeout:I

    .line 169
    const v2, 0x7f0a0010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sLongPressSpaceKeyTimeout:I

    .line 170
    const v2, 0x7f0a0011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sTouchNoiseThresholdMillis:I

    .line 172
    const/high16 v2, 0x7f0b

    .line 171
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 173
    .local v1, touchNoiseThresholdDistance:F
    mul-float v2, v1, v1

    float-to-int v2, v2

    sput v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sTouchNoiseThresholdDistanceSquared:I

    .line 175
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v2

    sput-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 176
    return-void

    .line 161
    .end local v0           #res:Landroid/content/res/Resources;
    .end local v1           #touchNoiseThresholdDistance:F
    :cond_55
    const/4 v2, 0x0

    sput-object v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    goto :goto_9
.end method

.method public static isAnyInSlidingKeyInput()Z
    .registers 1

    .prologue
    .line 191
    sget-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->isAnyInSlidingKeyInput()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static isKeyPreviewRequired(Lcom/android/inputmethod/keyboard/Key;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 355
    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    .line 356
    .local v0, code:I
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifierCode(I)Z

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, -0x5

    if-eq v0, v1, :cond_13

    .line 357
    const/16 v1, 0xa

    if-eq v0, v1, :cond_13

    const/16 v1, 0x20

    if-ne v0, v1, :cond_15

    .line 358
    :cond_13
    const/4 v1, 0x0

    .line 359
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x1

    goto :goto_14
.end method

.method private isMajorEnoughMoveToBeOnNewKey(III)Z
    .registers 9
    .parameter "x"
    .parameter "y"
    .parameter "newKey"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 675
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeys:Ljava/util/List;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    if-nez v1, :cond_12

    .line 676
    :cond_a
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "keyboard and/or key detector not set"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 677
    :cond_12
    iget v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    .line 678
    .local v0, curKey:I
    if-ne p3, v0, :cond_18

    move v1, v2

    .line 684
    :goto_17
    return v1

    .line 680
    :cond_18
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 681
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {v1, p1, p2}, Lcom/android/inputmethod/keyboard/Key;->squaredDistanceToEdge(II)I

    move-result v1

    .line 682
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyDetector;->getKeyHysteresisDistanceSquared()I

    move-result v4

    if-lt v1, v4, :cond_34

    move v1, v3

    .line 681
    goto :goto_17

    :cond_34
    move v1, v2

    goto :goto_17

    :cond_36
    move v1, v3

    .line 684
    goto :goto_17
.end method

.method private static isModifierCode(I)Z
    .registers 2
    .parameter "primaryCode"

    .prologue
    .line 307
    const/4 v0, -0x1

    if-eq p0, v0, :cond_8

    .line 308
    const/4 v0, -0x2

    if-eq p0, v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    .line 307
    goto :goto_7
.end method

.method private isModifierInternal(I)Z
    .registers 4
    .parameter "keyIndex"

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 313
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    iget v1, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifierCode(I)Z

    move-result v1

    goto :goto_7
.end method

.method private isOnModifierKey(II)Z
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/inputmethod/keyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifierInternal(I)Z

    move-result v0

    return v0
.end method

.method private isValidKeyIndex(I)Z
    .registers 3
    .parameter "keyIndex"

    .prologue
    .line 299
    if-ltz p1, :cond_c

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static keyCodePrintable(I)Ljava/lang/String;
    .registers 7
    .parameter "primaryCode"

    .prologue
    .line 757
    invoke-static {p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifierCode(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v0, " modifier"

    .line 758
    .local v0, modifier:Ljava/lang/String;
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    if-gez p0, :cond_2f

    const-string v1, "%4d"

    :goto_e
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 757
    .end local v0           #modifier:Ljava/lang/String;
    :cond_2c
    const-string v0, ""

    goto :goto_8

    .line 758
    .restart local v0       #modifier:Ljava/lang/String;
    :cond_2f
    const-string v1, "0x%02x"

    goto :goto_e
.end method

.method private onCancelEventInternal()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 646
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->cancelKeyTimers()V

    .line 647
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v0, p0}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->cancelShowKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 648
    iget v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(I)V

    .line 649
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 650
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsShowingMoreKeysPanel:Z

    if-eqz v0, :cond_1d

    .line 651
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->dismissMoreKeysPanel()Z

    .line 652
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsShowingMoreKeysPanel:Z

    .line 654
    :cond_1d
    return-void
.end method

.method private onDownEventInternal(IIJ)V
    .registers 8
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    const/4 v2, 0x0

    .line 458
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownKey(IIJ)I

    move-result v0

    .line 461
    .local v0, keyIndex:I
    sget-boolean v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sConfigSlidingKeyInputEnabled:Z

    if-nez v1, :cond_42

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifierInternal(I)Z

    move-result v1

    if-nez v1, :cond_42

    .line 462
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyDetector;->alwaysAllowsSlidingInput()Z

    move-result v1

    if-nez v1, :cond_42

    move v1, v2

    .line 461
    :goto_18
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsAllowedSlidingKeyInput:Z

    .line 463
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 464
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 465
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsRepeatableKey:Z

    .line 466
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 467
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIgnoreModifierKey:Z

    .line 468
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 472
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnPressAndCheckKeyboardLayoutChange(Lcom/android/inputmethod/keyboard/Key;Z)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 473
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownKey(IIJ)I

    move-result v0

    .line 475
    :cond_38
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->startRepeatKey(I)V

    .line 476
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->startLongPressTimer(I)V

    .line 477
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->setPressedKeyGraphics(I)V

    .line 479
    :cond_41
    return-void

    .line 462
    :cond_42
    const/4 v1, 0x1

    goto :goto_18
.end method

.method private onDownKey(IIJ)I
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 375
    iput-wide p3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDownTime:J

    .line 376
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveKeyInternal(II)I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveToNewKey(III)I

    move-result v0

    return v0
.end method

.method private onMoveKey(II)I
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 386
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveKeyInternal(II)I

    move-result v0

    return v0
.end method

.method private onMoveKeyInternal(II)I
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 380
    iput p1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastX:I

    .line 381
    iput p2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastY:I

    .line 382
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/inputmethod/keyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result v0

    return v0
.end method

.method private onMoveToNewKey(III)I
    .registers 4
    .parameter "keyIndex"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 390
    iput p1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    .line 391
    iput p2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyX:I

    .line 392
    iput p3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyY:I

    .line 393
    return p1
.end method

.method private onUpEventInternal(IIJ)V
    .registers 10
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    const/4 v4, 0x0

    .line 593
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    invoke-interface {v3}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->cancelKeyTimers()V

    .line 594
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v3, p0}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->cancelShowKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 595
    iput-boolean v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 597
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveKey(II)I

    move-result v3

    invoke-direct {p0, p1, p2, v3}, Lcom/android/inputmethod/keyboard/PointerTracker;->isMajorEnoughMoveToBeOnNewKey(III)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 598
    move v1, p1

    .line 599
    .local v1, keyX:I
    move v2, p2

    .line 605
    .local v2, keyY:I
    :goto_19
    invoke-direct {p0, v1, v2, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpKey(IIJ)I

    move-result v0

    .line 606
    .local v0, keyIndex:I
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(I)V

    .line 607
    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsShowingMoreKeysPanel:Z

    if-eqz v3, :cond_2b

    .line 608
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v3}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->dismissMoreKeysPanel()Z

    .line 609
    iput-boolean v4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsShowingMoreKeysPanel:Z

    .line 611
    :cond_2b
    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    if-eqz v3, :cond_35

    .line 616
    :cond_2f
    :goto_2f
    return-void

    .line 602
    .end local v0           #keyIndex:I
    .end local v1           #keyX:I
    .end local v2           #keyY:I
    :cond_30
    iget v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyX:I

    .line 603
    .restart local v1       #keyX:I
    iget v2, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyY:I

    .restart local v2       #keyY:I
    goto :goto_19

    .line 613
    .restart local v0       #keyIndex:I
    :cond_35
    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsRepeatableKey:Z

    if-nez v3, :cond_2f

    .line 614
    invoke-direct {p0, v0, v1, v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->detectAndSendKey(III)V

    goto :goto_2f
.end method

.method private onUpKey(IIJ)I
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 397
    iput-wide p3, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mUpTime:J

    .line 398
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    .line 399
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveKeyInternal(II)I

    move-result v0

    return v0
.end method

.method private printTouchEvent(Ljava/lang/String;IIJ)V
    .registers 16
    .parameter "title"
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 747
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, p3, v6}, Lcom/android/inputmethod/keyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result v4

    .line 748
    .local v4, keyIndex:I
    invoke-virtual {p0, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v3

    .line 749
    .local v3, key:Lcom/android/inputmethod/keyboard/Key;
    if-nez v3, :cond_59

    const-string v0, "----"

    .line 750
    .local v0, code:Ljava/lang/String;
    :goto_f
    iget-wide v5, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mPreviousEventTime:J

    sub-long v1, p4, v5

    .line 751
    .local v1, delta:J
    sget-object v6, Lcom/android/inputmethod/keyboard/PointerTracker;->TAG:Ljava/lang/String;

    const-string v7, "%s%s[%d] %4d %4d %5d %3d(%s)"

    const/16 v5, 0x8

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v8, v5

    const/4 v9, 0x1

    .line 752
    iget-boolean v5, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    if-eqz v5, :cond_60

    const-string v5, "-"

    :goto_25
    aput-object v5, v8, v9

    const/4 v5, 0x2

    iget v9, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mPointerId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x7

    aput-object v0, v8, v5

    .line 751
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iput-wide p4, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mPreviousEventTime:J

    .line 754
    return-void

    .line 749
    .end local v0           #code:Ljava/lang/String;
    .end local v1           #delta:J
    :cond_59
    iget v5, v3, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v5}, Lcom/android/inputmethod/keyboard/PointerTracker;->keyCodePrintable(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 752
    .restart local v0       #code:Ljava/lang/String;
    .restart local v1       #delta:J
    :cond_60
    const-string v5, " "

    goto :goto_25
.end method

.method public static setKeyDetector(Lcom/android/inputmethod/keyboard/KeyDetector;)V
    .registers 4
    .parameter "keyDetector"

    .prologue
    .line 201
    sget-object v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sTrackers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 206
    return-void

    .line 201
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 202
    .local v0, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-direct {v0, p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->setKeyDetectorInner(Lcom/android/inputmethod/keyboard/KeyDetector;)V

    .line 204
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    goto :goto_6
.end method

.method private setKeyDetectorInner(Lcom/android/inputmethod/keyboard/KeyDetector;)V
    .registers 4
    .parameter "keyDetector"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    .line 288
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/KeyDetector;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    .line 289
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget-object v1, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeys:Ljava/util/List;

    .line 290
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    iget v1, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyWidth:I

    div-int/lit8 v0, v1, 0x4

    .line 291
    .local v0, keyQuarterWidth:I
    mul-int v1, v0, v0

    iput v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyQuarterWidthSquared:I

    .line 292
    return-void
.end method

.method public static setKeyboardActionListener(Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 195
    sget-object v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sTrackers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 198
    return-void

    .line 195
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 196
    .local v0, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    iput-object p0, v0, Lcom/android/inputmethod/keyboard/PointerTracker;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    goto :goto_6
.end method

.method private setPressedKeyGraphics(I)V
    .registers 4
    .parameter "keyIndex"

    .prologue
    .line 343
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 344
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 345
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isKeyPreviewRequired(Lcom/android/inputmethod/keyboard/Key;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 346
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v1, p1, p0}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->showKeyPreview(ILcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 348
    :cond_17
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/Key;->onPressed()V

    .line 349
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v1, v0}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 351
    :cond_1f
    return-void
.end method

.method private setReleasedKeyGraphics(I)V
    .registers 4
    .parameter "keyIndex"

    .prologue
    .line 334
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v1, p0}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->dismissKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 335
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 336
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/Key;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 337
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/Key;->onReleased()V

    .line 338
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    invoke-interface {v1, v0}, Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;->invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 340
    :cond_19
    return-void
.end method

.method private startLongPressTimer(I)V
    .registers 6
    .parameter "keyIndex"

    .prologue
    .line 689
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 690
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    if-nez v0, :cond_7

    .line 709
    :cond_6
    :goto_6
    return-void

    .line 691
    :cond_7
    iget v1, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_19

    .line 692
    sget v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sLongPressShiftKeyTimeout:I

    if-lez v1, :cond_6

    .line 693
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    sget v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sLongPressShiftKeyTimeout:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3, p1, p0}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->startLongPressTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V

    goto :goto_6

    .line 695
    :cond_19
    iget v1, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2c

    .line 696
    sget v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sLongPressSpaceKeyTimeout:I

    if-lez v1, :cond_6

    .line 697
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    sget v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sLongPressSpaceKeyTimeout:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3, p1, p0}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->startLongPressTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V

    goto :goto_6

    .line 699
    :cond_2c
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/Key;->hasUppercaseLetter()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/Keyboard;->isManualTemporaryUpperCase()Z

    move-result v1

    if-nez v1, :cond_6

    .line 703
    :cond_3a
    sget-object v1, Lcom/android/inputmethod/keyboard/PointerTracker;->sKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isInMomentarySwitchState()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 705
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    sget v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sLongPressKeyTimeout:I

    mul-int/lit8 v2, v2, 0x3

    int-to-long v2, v2

    invoke-interface {v1, v2, v3, p1, p0}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->startLongPressTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V

    goto :goto_6

    .line 707
    :cond_4d
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    sget v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sLongPressKeyTimeout:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3, p1, p0}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->startLongPressTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V

    goto :goto_6
.end method

.method private startRepeatKey(I)V
    .registers 6
    .parameter "keyIndex"

    .prologue
    .line 657
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 658
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v0, :cond_19

    iget-boolean v1, v0, Lcom/android/inputmethod/keyboard/Key;->mRepeatable:Z

    if-eqz v1, :cond_19

    .line 659
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->onRepeatKey(I)V

    .line 660
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    sget v2, Lcom/android/inputmethod/keyboard/PointerTracker;->sDelayBeforeKeyRepeatStart:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3, p1, p0}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->startKeyRepeatTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 661
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsRepeatableKey:Z

    .line 665
    :goto_18
    return-void

    .line 663
    :cond_19
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsRepeatableKey:Z

    goto :goto_18
.end method

.method private startSlidingKeyInput(Lcom/android/inputmethod/keyboard/Key;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    if-nez v0, :cond_c

    .line 483
    iget v0, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifierCode(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIgnoreModifierKey:Z

    .line 484
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 485
    return-void
.end method


# virtual methods
.method public getDownTime()J
    .registers 3

    .prologue
    .line 371
    iget-wide v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDownTime:J

    return-wide v0
.end method

.method public getKey(I)Lcom/android/inputmethod/keyboard/Key;
    .registers 3
    .parameter "keyIndex"

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/Key;

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getKeyIndexOn(II)I
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/inputmethod/keyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result v0

    return v0
.end method

.method public getKeyPreviewText()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLastX()I
    .registers 2

    .prologue
    .line 363
    iget v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastX:I

    return v0
.end method

.method public getLastY()I
    .registers 2

    .prologue
    .line 367
    iget v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastY:I

    return v0
.end method

.method public isInSlidingKeyInput()Z
    .registers 2

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsInSlidingKeyInput:Z

    return v0
.end method

.method public isModifier()Z
    .registers 2

    .prologue
    .line 317
    iget v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifierInternal(I)Z

    move-result v0

    return v0
.end method

.method public isOnShiftKey(II)Z
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 325
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/inputmethod/keyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 326
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v0, :cond_14

    iget v1, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public onCancelEvent(IIJ)V
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 637
    sget-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    .line 638
    .local v0, queue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;
    if-eqz v0, :cond_a

    .line 639
    invoke-virtual {v0, p0, p3, p4}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->releaseAllPointersExcept(Lcom/android/inputmethod/keyboard/PointerTracker;J)V

    .line 640
    invoke-virtual {v0, p0}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->remove(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 642
    :cond_a
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->onCancelEventInternal()V

    .line 643
    return-void
.end method

.method public onDownEvent(IIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V
    .registers 15
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"
    .parameter "handler"

    .prologue
    .line 426
    invoke-interface {p5}, Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getDrawingProxy()Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    move-result-object v6

    iput-object v6, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mDrawingProxy:Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;

    .line 427
    invoke-interface {p5}, Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getTimerProxy()Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    move-result-object v6

    iput-object v6, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    .line 428
    invoke-interface {p5}, Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v6

    invoke-static {v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->setKeyboardActionListener(Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V

    .line 429
    invoke-interface {p5}, Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;->getKeyDetector()Lcom/android/inputmethod/keyboard/KeyDetector;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->setKeyDetectorInner(Lcom/android/inputmethod/keyboard/KeyDetector;)V

    .line 431
    iget-wide v6, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mUpTime:J

    sub-long v0, p3, v6

    .line 432
    .local v0, deltaT:J
    sget v6, Lcom/android/inputmethod/keyboard/PointerTracker;->sTouchNoiseThresholdMillis:I

    int-to-long v6, v6

    cmp-long v6, v0, v6

    if-gez v6, :cond_5d

    .line 433
    iget v6, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastX:I

    sub-int v3, p1, v6

    .line 434
    .local v3, dx:I
    iget v6, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastY:I

    sub-int v4, p2, v6

    .line 435
    .local v4, dy:I
    mul-int v6, v3, v3

    mul-int v7, v4, v4

    add-int v2, v6, v7

    .line 436
    .local v2, distanceSquared:I
    sget v6, Lcom/android/inputmethod/keyboard/PointerTracker;->sTouchNoiseThresholdDistanceSquared:I

    if-ge v2, v6, :cond_5d

    .line 437
    sget-boolean v6, Lcom/android/inputmethod/keyboard/PointerTracker;->DEBUG_MODE:Z

    if-eqz v6, :cond_59

    .line 438
    sget-object v6, Lcom/android/inputmethod/keyboard/PointerTracker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onDownEvent: ignore potential noise: time="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 439
    const-string v8, " distance="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 438
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_59
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 455
    .end local v2           #distanceSquared:I
    .end local v3           #dx:I
    .end local v4           #dy:I
    :goto_5c
    return-void

    .line 445
    :cond_5d
    sget-object v5, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    .line 446
    .local v5, queue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;
    if-eqz v5, :cond_6d

    .line 447
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->isOnModifierKey(II)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 450
    invoke-virtual {v5, p3, p4}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->releaseAllPointers(J)V

    .line 452
    :cond_6a
    invoke-virtual {v5, p0}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->add(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 454
    :cond_6d
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownEventInternal(IIJ)V

    goto :goto_5c
.end method

.method public onLongPressed()V
    .registers 3

    .prologue
    .line 625
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 626
    iget v1, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(I)V

    .line 627
    sget-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    .line 628
    .local v0, queue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;
    if-eqz v0, :cond_f

    .line 629
    invoke-virtual {v0, p0}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->remove(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 631
    :cond_f
    return-void
.end method

.method public onMoveEvent(IIJ)V
    .registers 20
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 490
    iget-boolean v10, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    if-eqz v10, :cond_5

    .line 562
    :cond_4
    :goto_4
    return-void

    .line 493
    :cond_5
    iget v6, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastX:I

    .line 494
    .local v6, lastX:I
    iget v7, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mLastY:I

    .line 495
    .local v7, lastY:I
    iget v9, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyIndex:I

    .line 496
    .local v9, oldKeyIndex:I
    invoke-virtual {p0, v9}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v8

    .line 497
    .local v8, oldKey:Lcom/android/inputmethod/keyboard/Key;
    invoke-direct/range {p0 .. p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveKey(II)I

    move-result v4

    .line 498
    .local v4, keyIndex:I
    invoke-direct {p0, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->isValidKeyIndex(I)Z

    move-result v10

    if-eqz v10, :cond_c5

    .line 499
    if-nez v8, :cond_38

    .line 505
    invoke-virtual {p0, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnPressAndCheckKeyboardLayoutChange(Lcom/android/inputmethod/keyboard/Key;Z)Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 506
    invoke-direct/range {p0 .. p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveKey(II)I

    move-result v4

    .line 507
    :cond_2a
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {p0, v4, v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveToNewKey(III)I

    .line 508
    invoke-direct {p0, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->startLongPressTimer(I)V

    .line 509
    invoke-direct {p0, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->setPressedKeyGraphics(I)V

    goto :goto_4

    .line 510
    :cond_38
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {p0, v0, v1, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->isMajorEnoughMoveToBeOnNewKey(III)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 514
    invoke-direct {p0, v9}, Lcom/android/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(I)V

    .line 515
    iget v10, v8, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/4 v11, 0x1

    invoke-direct {p0, v8, v10, v11}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnRelease(Lcom/android/inputmethod/keyboard/Key;IZ)V

    .line 516
    invoke-direct {p0, v8}, Lcom/android/inputmethod/keyboard/PointerTracker;->startSlidingKeyInput(Lcom/android/inputmethod/keyboard/Key;)V

    .line 517
    iget-object v10, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    invoke-interface {v10}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->cancelKeyTimers()V

    .line 518
    invoke-direct {p0, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->startRepeatKey(I)V

    .line 519
    iget-boolean v10, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsAllowedSlidingKeyInput:Z

    if-eqz v10, :cond_77

    .line 523
    invoke-virtual {p0, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnPressAndCheckKeyboardLayoutChange(Lcom/android/inputmethod/keyboard/Key;Z)Z

    move-result v10

    if-eqz v10, :cond_69

    .line 524
    invoke-direct/range {p0 .. p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveKey(II)I

    move-result v4

    .line 525
    :cond_69
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {p0, v4, v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveToNewKey(III)I

    .line 526
    invoke-direct {p0, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->startLongPressTimer(I)V

    .line 527
    invoke-direct {p0, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->setPressedKeyGraphics(I)V

    goto :goto_4

    .line 532
    :cond_77
    sub-int v2, p1, v6

    .line 533
    .local v2, dx:I
    sub-int v3, p2, v7

    .line 534
    .local v3, dy:I
    mul-int v10, v2, v2

    mul-int v11, v3, v3

    add-int v5, v10, v11

    .line 535
    .local v5, lastMoveSquared:I
    iget v10, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyQuarterWidthSquared:I

    if-lt v5, v10, :cond_bd

    .line 536
    sget-boolean v10, Lcom/android/inputmethod/keyboard/PointerTracker;->DEBUG_MODE:Z

    if-eqz v10, :cond_b3

    .line 537
    sget-object v10, Lcom/android/inputmethod/keyboard/PointerTracker;->TAG:Ljava/lang/String;

    const-string v11, "onMoveEvent: sudden move is translated to up[%d,%d]/down[%d,%d] events"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 538
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 537
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_b3
    move-wide/from16 v0, p3

    invoke-direct {p0, v6, v7, v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEventInternal(IIJ)V

    .line 540
    invoke-direct/range {p0 .. p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownEventInternal(IIJ)V

    goto/16 :goto_4

    .line 542
    :cond_bd
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 543
    invoke-direct {p0, v9}, Lcom/android/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(I)V

    goto/16 :goto_4

    .line 548
    .end local v2           #dx:I
    .end local v3           #dy:I
    .end local v5           #lastMoveSquared:I
    :cond_c5
    if-eqz v8, :cond_4

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {p0, v0, v1, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->isMajorEnoughMoveToBeOnNewKey(III)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 551
    invoke-direct {p0, v9}, Lcom/android/inputmethod/keyboard/PointerTracker;->setReleasedKeyGraphics(I)V

    .line 552
    iget v10, v8, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/4 v11, 0x1

    invoke-direct {p0, v8, v10, v11}, Lcom/android/inputmethod/keyboard/PointerTracker;->callListenerOnRelease(Lcom/android/inputmethod/keyboard/Key;IZ)V

    .line 553
    invoke-direct {p0, v8}, Lcom/android/inputmethod/keyboard/PointerTracker;->startSlidingKeyInput(Lcom/android/inputmethod/keyboard/Key;)V

    .line 554
    iget-object v10, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mTimerProxy:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    invoke-interface {v10}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;->cancelLongPressTimer()V

    .line 555
    iget-boolean v10, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsAllowedSlidingKeyInput:Z

    if-eqz v10, :cond_ef

    .line 556
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {p0, v4, v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveToNewKey(III)I

    goto/16 :goto_4

    .line 558
    :cond_ef
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    goto/16 :goto_4
.end method

.method public onPhantomUpEvent(IIJ)V
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 588
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEventInternal(IIJ)V

    .line 589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 590
    return-void
.end method

.method public onRepeatKey(I)V
    .registers 5
    .parameter "keyIndex"

    .prologue
    .line 668
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 669
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v0, :cond_d

    .line 670
    iget v1, v0, Lcom/android/inputmethod/keyboard/Key;->mX:I

    iget v2, v0, Lcom/android/inputmethod/keyboard/Key;->mY:I

    invoke-direct {p0, p1, v1, v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->detectAndSendKey(III)V

    .line 672
    :cond_d
    return-void
.end method

.method public onShowMoreKeysPanel(IIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"
    .parameter "handler"

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->onLongPressed()V

    .line 620
    invoke-virtual/range {p0 .. p5}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownEvent(IIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/PointerTracker;->mIsShowingMoreKeysPanel:Z

    .line 622
    return-void
.end method

.method public onUpEvent(IIJ)V
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 568
    sget-object v0, Lcom/android/inputmethod/keyboard/PointerTracker;->sPointerTrackerQueue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;

    .line 569
    .local v0, queue:Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;
    if-eqz v0, :cond_10

    .line 570
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifier()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 573
    invoke-virtual {v0, p0, p3, p4}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->releaseAllPointersExcept(Lcom/android/inputmethod/keyboard/PointerTracker;J)V

    .line 577
    :goto_d
    invoke-virtual {v0, p0}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->remove(Lcom/android/inputmethod/keyboard/PointerTracker;)V

    .line 579
    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEventInternal(IIJ)V

    .line 580
    return-void

    .line 575
    :cond_14
    invoke-virtual {v0, p0, p3, p4}, Lcom/android/inputmethod/keyboard/internal/PointerTrackerQueue;->releaseAllPointersOlderThan(Lcom/android/inputmethod/keyboard/PointerTracker;J)V

    goto :goto_d
.end method

.method public processMotionEvent(IIIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V
    .registers 13
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"
    .parameter "handler"

    .prologue
    .line 404
    packed-switch p1, :pswitch_data_1a

    .line 420
    :goto_3
    :pswitch_3
    return-void

    :pswitch_4
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    .line 407
    invoke-virtual/range {v0 .. v5}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownEvent(IIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    goto :goto_3

    .line 411
    :pswitch_d
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEvent(IIJ)V

    goto :goto_3

    .line 414
    :pswitch_11
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveEvent(IIJ)V

    goto :goto_3

    .line 417
    :pswitch_15
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/inputmethod/keyboard/PointerTracker;->onCancelEvent(IIJ)V

    goto :goto_3

    .line 404
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_4
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_3
        :pswitch_4
        :pswitch_d
    .end packed-switch
.end method
