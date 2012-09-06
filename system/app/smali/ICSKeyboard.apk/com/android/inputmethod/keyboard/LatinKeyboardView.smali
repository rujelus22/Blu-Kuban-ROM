.class public Lcom/android/inputmethod/keyboard/LatinKeyboardView;
.super Lcom/android/inputmethod/keyboard/KeyboardView;
.source "LatinKeyboardView.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;
.implements Lcom/android/inputmethod/keyboard/SuddenJumpingTouchEventHandler$ProcessMotionEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;,
        Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;
    }
.end annotation


# static fields
.field private static final ENABLE_CAPSLOCK_BY_DOUBLETAP:Z = true

.field private static final TAG:Ljava/lang/String;

.field public static mSwipeThreshold:I


# instance fields
.field private final mConfigShowMiniKeyboardAtTouchedPoint:Z

.field private final mDisambiguateSwipe:Z

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field private final mHasDistinctMultitouch:Z

.field protected mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

.field private final mKeyRepeatInterval:I

.field private final mKeyTimerHandler:Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

.field private mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

.field private mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

.field private final mMoreKeysPanelCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            "Lcom/android/inputmethod/keyboard/MoreKeysPanel;",
            ">;"
        }
    .end annotation
.end field

.field private mMoreKeysPanelPointerTrackerId:I

.field private mMoreKeysWindow:Landroid/widget/PopupWindow;

.field private mOldKeyIndex:I

.field private mOldPointerCount:I

.field private final mSwipeTracker:Lcom/android/inputmethod/keyboard/SwipeTracker;

.field private final mTouchScreenRegulator:Lcom/android/inputmethod/keyboard/SuddenJumpingTouchEventHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const-class v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->TAG:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 248
    const v0, 0x7f010002

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 249
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 252
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanelCache:Ljava/util/WeakHashMap;

    .line 77
    iput v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mOldPointerCount:I

    .line 87
    new-instance v3, Lcom/android/inputmethod/keyboard/SwipeTracker;

    invoke-direct {v3}, Lcom/android/inputmethod/keyboard/SwipeTracker;-><init>()V

    iput-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mSwipeTracker:Lcom/android/inputmethod/keyboard/SwipeTracker;

    .line 88
    new-instance v3, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    invoke-direct {v3, p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;-><init>(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)V

    iput-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    .line 254
    new-instance v3, Lcom/android/inputmethod/keyboard/SuddenJumpingTouchEventHandler;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/android/inputmethod/keyboard/SuddenJumpingTouchEventHandler;-><init>(Landroid/content/Context;Lcom/android/inputmethod/keyboard/SuddenJumpingTouchEventHandler$ProcessMotionEvent;)V

    iput-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mTouchScreenRegulator:Lcom/android/inputmethod/keyboard/SuddenJumpingTouchEventHandler;

    .line 256
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 258
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f080010

    .line 257
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mConfigShowMiniKeyboardAtTouchedPoint:Z

    .line 259
    const v3, 0x7f0b001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 260
    .local v1, keyHysteresisDistance:F
    new-instance v3, Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-direct {v3, v1}, Lcom/android/inputmethod/keyboard/KeyDetector;-><init>(F)V

    iput-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    .line 262
    const/4 v0, 0x1

    .line 263
    .local v0, ignoreMultitouch:Z
    new-instance v3, Landroid/view/GestureDetector;

    .line 264
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;

    invoke-direct {v5, p0, v7}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;-><init>(Lcom/android/inputmethod/keyboard/LatinKeyboardView;Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;)V

    invoke-direct {v3, v4, v5, v7, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    .line 263
    iput-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 265
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 268
    const-string v4, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .line 267
    iput-boolean v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mHasDistinctMultitouch:Z

    .line 269
    const v3, 0x7f0a000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyRepeatInterval:I

    .line 271
    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mHasDistinctMultitouch:Z

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->init(ZLandroid/content/Context;)V

    .line 272
    const/high16 v3, 0x43fa

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mSwipeThreshold:I

    .line 273
    const v3, 0x7f080015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mDisambiguateSwipe:Z

    .line 275
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)I
    .registers 2
    .parameter

    .prologue
    .line 64
    iget v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyRepeatInterval:I

    return v0
.end method

.method static synthetic access$1(Lcom/android/inputmethod/keyboard/LatinKeyboardView;ILcom/android/inputmethod/keyboard/PointerTracker;)Z
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 376
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->openMiniKeyboardIfRequired(ILcom/android/inputmethod/keyboard/PointerTracker;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)Lcom/android/inputmethod/keyboard/SwipeTracker;
    .registers 2
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mSwipeTracker:Lcom/android/inputmethod/keyboard/SwipeTracker;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)Z
    .registers 2
    .parameter

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mDisambiguateSwipe:Z

    return v0
.end method

.method static synthetic access$4(Lcom/android/inputmethod/keyboard/LatinKeyboardView;I)Lcom/android/inputmethod/keyboard/PointerTracker;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;
    .registers 2
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/android/inputmethod/keyboard/LatinKeyboardView;Lcom/android/inputmethod/keyboard/PointerTracker;Z)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 391
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->onDoubleTapShiftKey(Lcom/android/inputmethod/keyboard/PointerTracker;Z)V

    return-void
.end method

.method private getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;
    .registers 3
    .parameter "id"

    .prologue
    .line 506
    invoke-static {p1, p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->getPointerTracker(ILcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v0

    return-object v0
.end method

.method private invokeOnKey(I)Z
    .registers 5
    .parameter "primaryCode"

    .prologue
    const/4 v2, -0x1

    .line 468
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v2, v2}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCodeInput(I[III)V

    .line 471
    const/4 v0, 0x1

    return v0
.end method

.method private onDoubleTapShiftKey(Lcom/android/inputmethod/keyboard/PointerTracker;Z)V
    .registers 7
    .parameter "tracker"
    .parameter "ignore"

    .prologue
    const/4 v3, 0x0

    .line 396
    if-eqz p2, :cond_c

    const/16 v0, -0x62

    .line 398
    .local v0, primaryCode:I
    :goto_5
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, v3, v3}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCodeInput(I[III)V

    .line 399
    return-void

    .line 397
    .end local v0           #primaryCode:I
    :cond_c
    const/4 v0, -0x3

    goto :goto_5
.end method

.method private openMiniKeyboardIfRequired(ILcom/android/inputmethod/keyboard/PointerTracker;)Z
    .registers 6
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    const/4 v1, 0x0

    .line 378
    iget v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysLayout:I

    if-nez v2, :cond_6

    .line 388
    :cond_5
    :goto_5
    return v1

    .line 383
    :cond_6
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    if-nez v2, :cond_5

    .line 385
    invoke-virtual {p2, p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 386
    .local v0, parentKey:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v0, :cond_5

    .line 388
    invoke-virtual {p0, v0, p2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->onLongPress(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/PointerTracker;)Z

    move-result v1

    goto :goto_5
.end method

.method private openMoreKeysPanel(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/PointerTracker;)Z
    .registers 16
    .parameter "parentKey"
    .parameter "tracker"

    .prologue
    const/4 v12, 0x1

    .line 475
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanelCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    .line 476
    .local v0, moreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;
    if-nez v0, :cond_18

    .line 477
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->onCreateMoreKeysPanel(Lcom/android/inputmethod/keyboard/Key;)Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    move-result-object v0

    .line 478
    if-nez v0, :cond_13

    .line 479
    const/4 v1, 0x0

    .line 502
    :goto_12
    return v1

    .line 480
    :cond_13
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanelCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :cond_18
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysWindow:Landroid/widget/PopupWindow;

    if-nez v1, :cond_35

    .line 483
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysWindow:Landroid/widget/PopupWindow;

    .line 484
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 485
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysWindow:Landroid/widget/PopupWindow;

    const v2, 0x7f0f0026

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 487
    :cond_35
    iput-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    .line 488
    iget v1, p2, Lcom/android/inputmethod/keyboard/PointerTracker;->mPointerId:I

    iput v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanelPointerTrackerId:I

    .line 490
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v11

    .line 491
    .local v11, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    invoke-virtual {v11}, Lcom/android/inputmethod/keyboard/Keyboard;->isShiftedOrShiftLocked()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->setShifted(Z)V

    .line 492
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mConfigShowMiniKeyboardAtTouchedPoint:Z

    if-eqz v1, :cond_7d

    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastX()I

    move-result v3

    .line 494
    .local v3, pointX:I
    :goto_4e
    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mY:I

    iget v2, v11, Lcom/android/inputmethod/keyboard/Keyboard;->mVerticalGap:I

    sub-int v4, v1, v2

    .line 496
    .local v4, pointY:I
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v6

    move-object v1, p0

    move-object v2, p0

    .line 495
    invoke-interface/range {v0 .. v6}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->showMoreKeysPanel(Landroid/view/View;Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;IILandroid/widget/PopupWindow;Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V

    .line 497
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastX()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->translateX(I)I

    move-result v6

    .line 498
    .local v6, translatedX:I
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastY()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->translateY(I)I

    move-result v7

    .line 500
    .local v7, translatedY:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object v5, p2

    move-object v10, v0

    .line 499
    invoke-virtual/range {v5 .. v10}, Lcom/android/inputmethod/keyboard/PointerTracker;->onShowMoreKeysPanel(IIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 501
    invoke-virtual {p0, v12}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->dimEntireKeyboard(Z)V

    move v1, v12

    .line 502
    goto :goto_12

    .line 493
    .end local v3           #pointX:I
    .end local v4           #pointY:I
    .end local v6           #translatedX:I
    .end local v7           #translatedY:I
    :cond_7d
    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mX:I

    iget v2, p1, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int v3, v1, v2

    goto :goto_4e
.end method


# virtual methods
.method public cancelAllMessages()V
    .registers 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->cancelAllMessages()V

    .line 373
    invoke-super {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->cancelAllMessages()V

    .line 374
    return-void
.end method

.method public closing()V
    .registers 2

    .prologue
    .line 645
    invoke-super {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->closing()V

    .line 646
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->dismissMoreKeysPanel()Z

    .line 647
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanelCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 648
    return-void
.end method

.method public dismissMoreKeysPanel()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 652
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 653
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 654
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    .line 655
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanelPointerTrackerId:I

    .line 656
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->dimEntireKeyboard(Z)V

    .line 657
    const/4 v0, 0x1

    .line 659
    :cond_1c
    return v0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 717
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 718
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v0

    .line 719
    .local v0, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getInstance()Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->dispatchHoverEvent(Landroid/view/MotionEvent;Lcom/android/inputmethod/keyboard/PointerTracker;)Z

    move-result v1

    .line 723
    .end local v0           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_17
    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 698
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 699
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v0

    .line 700
    .local v0, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->getInstance()Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Lcom/android/inputmethod/keyboard/PointerTracker;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 701
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 704
    .end local v0           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :goto_1f
    return v1

    .line 701
    .restart local v0       #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_20
    const/4 v1, 0x1

    .line 700
    goto :goto_1f

    .line 704
    .end local v0           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_22
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    goto :goto_1f
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 689
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 690
    const/4 v0, 0x0

    .line 693
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "c"

    .prologue
    .line 668
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$GCUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$GCUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/Utils$GCUtils;->reset()V

    .line 669
    const/4 v2, 0x1

    .line 670
    .local v2, tryGC:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    const/4 v3, 0x5

    if-ge v1, v3, :cond_e

    if-nez v2, :cond_f

    .line 678
    :cond_e
    return-void

    .line 672
    :cond_f
    :try_start_f
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->draw(Landroid/graphics/Canvas;)V
    :try_end_12
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_12} :catch_16

    .line 673
    const/4 v2, 0x0

    .line 670
    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 674
    :catch_16
    move-exception v0

    .line 675
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$GCUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$GCUtils;

    move-result-object v3

    const-string v4, "LatinKeyboardView"

    invoke-virtual {v3, v4, v0}, Lcom/android/inputmethod/latin/Utils$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v2

    goto :goto_13
.end method

.method public getDrawingProxy()Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;
    .registers 1

    .prologue
    .line 303
    return-object p0
.end method

.method public getKeyDetector()Lcom/android/inputmethod/keyboard/KeyDetector;
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    return-object v0
.end method

.method public getKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method public getPointerCount()I
    .registers 2

    .prologue
    .line 518
    iget v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mOldPointerCount:I

    return v0
.end method

.method public getTimerProxy()Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    return-object v0
.end method

.method public handleBack()Z
    .registers 2

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->dismissMoreKeysPanel()Z

    move-result v0

    return v0
.end method

.method public hasDistinctMultitouch()Z
    .registers 2

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mHasDistinctMultitouch:Z

    return v0
.end method

.method public isInSlidingKeyInput()Z
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    if-eqz v0, :cond_6

    .line 511
    const/4 v0, 0x1

    .line 513
    :goto_5
    return v0

    :cond_6
    invoke-static {}, Lcom/android/inputmethod/keyboard/PointerTracker;->isAnyInSlidingKeyInput()Z

    move-result v0

    goto :goto_5
.end method

.method public isProximityCorrectionEnabled()Z
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyDetector;->isProximityCorrectionEnabled()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 683
    invoke-static {}, Lcom/android/inputmethod/deprecated/VoiceProxy;->getInstance()Lcom/android/inputmethod/deprecated/VoiceProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->onAttachedToWindow()V

    .line 684
    return-void
.end method

.method protected onCreateMoreKeysPanel(Lcom/android/inputmethod/keyboard/Key;)Lcom/android/inputmethod/keyboard/MoreKeysPanel;
    .registers 9
    .parameter "parentKey"

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x2

    .line 403
    iget-object v4, p1, Lcom/android/inputmethod/keyboard/Key;->mMoreKeys:[Ljava/lang/CharSequence;

    if-nez v4, :cond_7

    .line 418
    :goto_6
    return-object v2

    .line 406
    :cond_7
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget v5, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysLayout:I

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 407
    .local v0, container:Landroid/view/View;
    if-nez v0, :cond_1d

    .line 408
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 411
    :cond_1d
    const v4, 0x7f070043

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/keyboard/MiniKeyboardView;

    .line 412
    .local v2, miniKeyboardView:Lcom/android/inputmethod/keyboard/MiniKeyboardView;
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v3

    .line 413
    .local v3, parentKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    new-instance v4, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;

    .line 414
    iget v5, v3, Lcom/android/inputmethod/keyboard/Keyboard;->mMoreKeysTemplate:I

    .line 413
    invoke-direct {v4, p0, v5, p1, v3}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;-><init>(Lcom/android/inputmethod/keyboard/KeyboardView;ILcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 414
    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;->build()Lcom/android/inputmethod/keyboard/MiniKeyboard;

    move-result-object v1

    .line 415
    .local v1, miniKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    invoke-virtual {v2, v1}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 416
    invoke-virtual {v0, v6, v6}, Landroid/view/View;->measure(II)V

    goto :goto_6
.end method

.method protected onLongPress(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/PointerTracker;)Z
    .registers 8
    .parameter "parentKey"
    .parameter "tracker"

    .prologue
    const/4 v3, 0x1

    .line 439
    iget v2, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    .line 440
    .local v2, primaryCode:I
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    .line 441
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    instance-of v4, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    if-eqz v4, :cond_34

    move-object v1, v0

    .line 442
    check-cast v1, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    .line 443
    .local v1, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    const/16 v4, 0x30

    if-ne v2, v4, :cond_22

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isPhoneKeyboard()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 444
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onLongPressed()V

    .line 446
    const/16 v3, 0x2b

    invoke-direct {p0, v3}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->invokeOnKey(I)Z

    move-result v3

    .line 463
    .end local v1           #latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    :goto_21
    return v3

    .line 448
    .restart local v1       #latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    :cond_22
    const/4 v4, -0x1

    if-ne v2, v4, :cond_34

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isAlphaKeyboard()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 449
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onLongPressed()V

    .line 450
    const/4 v3, -0x3

    invoke-direct {p0, v3}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->invokeOnKey(I)Z

    move-result v3

    goto :goto_21

    .line 453
    .end local v1           #latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    :cond_34
    const/4 v4, -0x6

    if-eq v2, v4, :cond_3b

    const/16 v4, 0x20

    if-ne v2, v4, :cond_4e

    .line 455
    :cond_3b
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->onCustomRequest(I)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 457
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onLongPressed()V

    goto :goto_21

    .line 460
    :cond_49
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->openMoreKeysPanel(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/PointerTracker;)Z

    move-result v3

    goto :goto_21

    .line 463
    :cond_4e
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->openMoreKeysPanel(Lcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/PointerTracker;)Z

    move-result v3

    goto :goto_21
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "me"

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    if-nez v0, :cond_8

    .line 524
    const/4 v0, 0x0

    .line 528
    :goto_7
    return v0

    .line 527
    :cond_8
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mSwipeTracker:Lcom/android/inputmethod/keyboard/SwipeTracker;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 528
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mTouchScreenRegulator:Lcom/android/inputmethod/keyboard/SuddenJumpingTouchEventHandler;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method public processMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 27
    .parameter "me"

    .prologue
    .line 533
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mHasDistinctMultitouch:Z

    if-eqz v7, :cond_2a

    const/16 v20, 0x0

    .line 534
    .local v20, nonDistinctMultitouch:Z
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 535
    .local v8, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v22

    .line 536
    .local v22, pointerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mOldPointerCount:I

    move/from16 v21, v0

    .line 537
    .local v21, oldPointerCount:I
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mOldPointerCount:I

    .line 542
    if-eqz v20, :cond_2d

    const/4 v7, 0x1

    move/from16 v0, v22

    if-le v0, v7, :cond_2d

    const/4 v7, 0x1

    move/from16 v0, v21

    if-le v0, v7, :cond_2d

    .line 543
    const/4 v7, 0x1

    .line 626
    :goto_29
    return v7

    .line 533
    .end local v8           #action:I
    .end local v20           #nonDistinctMultitouch:Z
    .end local v21           #oldPointerCount:I
    .end local v22           #pointerCount:I
    :cond_2a
    const/16 v20, 0x1

    goto :goto_8

    .line 547
    .restart local v8       #action:I
    .restart local v20       #nonDistinctMultitouch:Z
    .restart local v21       #oldPointerCount:I
    .restart local v22       #pointerCount:I
    :cond_2d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    if-nez v7, :cond_51

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v7, :cond_51

    .line 548
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 549
    invoke-static {}, Lcom/android/inputmethod/keyboard/PointerTracker;->dismissAllKeyPreviews()V

    .line 550
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->cancelKeyTimers()V

    .line 551
    const/4 v7, 0x1

    goto :goto_29

    .line 554
    :cond_51
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    .line 555
    .local v5, eventTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v16

    .line 556
    .local v16, index:I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 558
    .local v15, id:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    if-eqz v7, :cond_de

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanelPointerTrackerId:I

    if-ne v15, v7, :cond_de

    .line 559
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    invoke-interface {v7, v9}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->translateX(I)I

    move-result v3

    .line 560
    .local v3, x:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    invoke-interface {v7, v9}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->translateY(I)I

    move-result v4

    .line 566
    .local v4, y:I
    :goto_8f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->isInKeyRepeat()Z

    move-result v7

    if-eqz v7, :cond_b1

    .line 567
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v2

    .line 570
    .local v2, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    const/4 v7, 0x1

    move/from16 v0, v22

    if-le v0, v7, :cond_b1

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->isModifier()Z

    move-result v7

    if-nez v7, :cond_b1

    .line 571
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->cancelKeyRepeatTimer()V

    .line 579
    .end local v2           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_b1
    if-eqz v20, :cond_154

    .line 581
    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v2

    .line 582
    .restart local v2       #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    const/4 v7, 0x1

    move/from16 v0, v22

    if-ne v0, v7, :cond_f1

    const/4 v7, 0x2

    move/from16 v0, v21

    if-ne v0, v7, :cond_f1

    .line 586
    invoke-virtual {v2, v3, v4}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKeyIndexOn(II)I

    move-result v19

    .line 587
    .local v19, newKeyIndex:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mOldKeyIndex:I

    move/from16 v0, v19

    if-eq v7, v0, :cond_db

    move-object/from16 v7, p0

    .line 588
    invoke-virtual/range {v2 .. v7}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownEvent(IIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 589
    const/4 v7, 0x1

    if-ne v8, v7, :cond_db

    .line 590
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEvent(IIJ)V

    .line 605
    .end local v19           #newKeyIndex:I
    :cond_db
    :goto_db
    const/4 v7, 0x1

    goto/16 :goto_29

    .line 562
    .end local v2           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_de
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v3, v7

    .line 563
    .restart local v3       #x:I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v4, v7

    .restart local v4       #y:I
    goto :goto_8f

    .line 592
    .restart local v2       #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_f1
    const/4 v7, 0x2

    move/from16 v0, v22

    if-ne v0, v7, :cond_117

    const/4 v7, 0x1

    move/from16 v0, v21

    if-ne v0, v7, :cond_117

    .line 595
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastX()I

    move-result v17

    .line 596
    .local v17, lastX:I
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getLastY()I

    move-result v18

    .line 597
    .local v18, lastY:I
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKeyIndexOn(II)I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mOldKeyIndex:I

    .line 598
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1, v5, v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEvent(IIJ)V

    goto :goto_db

    .line 599
    .end local v17           #lastX:I
    .end local v18           #lastY:I
    :cond_117
    const/4 v7, 0x1

    move/from16 v0, v22

    if-ne v0, v7, :cond_12b

    const/4 v7, 0x1

    move/from16 v0, v21

    if-ne v0, v7, :cond_12b

    move-object v7, v2

    move v9, v3

    move v10, v4

    move-wide v11, v5

    move-object/from16 v13, p0

    .line 600
    invoke-virtual/range {v7 .. v13}, Lcom/android/inputmethod/keyboard/PointerTracker;->processMotionEvent(IIIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    goto :goto_db

    .line 602
    :cond_12b
    sget-object v7, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Unknown touch panel behavior: pointer count is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 603
    const-string v10, " (old "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 602
    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_db

    .line 608
    .end local v2           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_154
    const/4 v7, 0x2

    if-ne v8, v7, :cond_1b4

    .line 609
    const/4 v14, 0x0

    .local v14, i:I
    :goto_158
    move/from16 v0, v22

    if-lt v14, v0, :cond_15f

    .line 626
    .end local v14           #i:I
    :goto_15c
    const/4 v7, 0x1

    goto/16 :goto_29

    .line 610
    .restart local v14       #i:I
    :cond_15f
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v2

    .line 612
    .restart local v2       #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    if-eqz v7, :cond_1a1

    .line 613
    iget v7, v2, Lcom/android/inputmethod/keyboard/PointerTracker;->mPointerId:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanelPointerTrackerId:I

    if-ne v7, v9, :cond_1a1

    .line 614
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    invoke-interface {v7, v9}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->translateX(I)I

    move-result v23

    .line 615
    .local v23, px:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanel:Lcom/android/inputmethod/keyboard/MoreKeysPanel;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    invoke-interface {v7, v9}, Lcom/android/inputmethod/keyboard/MoreKeysPanel;->translateY(I)I

    move-result v24

    .line 620
    .local v24, py:I
    :goto_197
    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v2, v0, v1, v5, v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->onMoveEvent(IIJ)V

    .line 609
    add-int/lit8 v14, v14, 0x1

    goto :goto_158

    .line 617
    .end local v23           #px:I
    .end local v24           #py:I
    :cond_1a1
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v0, v7

    move/from16 v23, v0

    .line 618
    .restart local v23       #px:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v0, v7

    move/from16 v24, v0

    .restart local v24       #py:I
    goto :goto_197

    .line 623
    .end local v2           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    .end local v14           #i:I
    .end local v23           #px:I
    .end local v24           #py:I
    :cond_1b4
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v7

    move v9, v3

    move v10, v4

    move-wide v11, v5

    move-object/from16 v13, p0

    invoke-virtual/range {v7 .. v13}, Lcom/android/inputmethod/keyboard/PointerTracker;->processMotionEvent(IIIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    goto :goto_15c
.end method

.method public setKeyPreviewPopupEnabled(ZI)V
    .registers 6
    .parameter "previewEnabled"
    .parameter "delay"

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    .line 314
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    instance-of v2, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    if-eqz v2, :cond_1c

    move-object v1, v0

    .line 315
    check-cast v1, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    .line 316
    .local v1, latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isPhoneKeyboard()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isNumberKeyboard()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 318
    :cond_17
    const/4 v2, 0x0

    invoke-super {p0, v2, p2}, Lcom/android/inputmethod/keyboard/KeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 323
    .end local v1           #latinKeyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    :goto_1b
    return-void

    .line 322
    :cond_1c
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    goto :goto_1b
.end method

.method public setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .registers 6
    .parameter "keyboard"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->cancelKeyTimers()V

    .line 336
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 337
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    .line 338
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mVerticalCorrection:F

    add-float/2addr v2, v3

    .line 337
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/inputmethod/keyboard/KeyDetector;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;FF)V

    .line 339
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    iget v1, p1, Lcom/android/inputmethod/keyboard/Keyboard;->mMostCommonKeyWidth:I

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyDetector;->setProximityThreshold(I)V

    .line 340
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-static {v0}, Lcom/android/inputmethod/keyboard/PointerTracker;->setKeyDetector(Lcom/android/inputmethod/keyboard/KeyDetector;)V

    .line 341
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mTouchScreenRegulator:Lcom/android/inputmethod/keyboard/SuddenJumpingTouchEventHandler;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/SuddenJumpingTouchEventHandler;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 342
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mMoreKeysPanelCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 343
    return-void
.end method

.method public setKeyboardActionListener(Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 284
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/PointerTracker;->setKeyboardActionListener(Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V

    .line 285
    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/KeyDetector;->setProximityCorrectionEnabled(Z)V

    .line 361
    return-void
.end method

.method public setSpacebarTextFadeFactor(FLcom/android/inputmethod/keyboard/LatinKeyboard;)V
    .registers 5
    .parameter "fadeFactor"
    .parameter "oldKeyboard"

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    .line 425
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    instance-of v1, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    if-eqz v1, :cond_f

    if-ne v0, p2, :cond_f

    .line 426
    check-cast v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    .end local v0           #keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    invoke-virtual {v0, p1, p0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->setSpacebarTextFadeFactor(FLcom/android/inputmethod/keyboard/KeyboardView;)V

    .line 428
    :cond_f
    return-void
.end method

.method public startIgnoringDoubleTap()V
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->startIgnoringDoubleTap()V

    .line 280
    return-void
.end method

.method protected swipeDown()V
    .registers 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->swipeDown()V

    .line 642
    return-void
.end method

.method protected swipeLeft()V
    .registers 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->swipeLeft()V

    .line 634
    return-void
.end method

.method protected swipeRight()V
    .registers 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->swipeRight()V

    .line 630
    return-void
.end method

.method protected swipeUp()V
    .registers 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyboardActionListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/KeyboardActionListener;->swipeUp()V

    .line 638
    return-void
.end method
