.class public Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;
.super Ljava/lang/Object;
.source "AccessibleKeyboardViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyboardFlickGestureDetector;
    }
.end annotation


# static fields
.field private static final DELAY_KEY_PRESS:J = 0xaL

.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;


# instance fields
.field private mGestureDetector:Lcom/android/inputmethod/accessibility/FlickGestureDetector;

.field private mInputMethod:Landroid/inputmethodservice/InputMethodService;

.field private mLastHoverKeyIndex:I

.field private mLastX:I

.field private mLastY:I

.field private mListener:Lcom/android/inputmethod/accessibility/AccessibleKeyboardActionListener;

.field private mScaledEdgeSlop:I

.field private mView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-class v0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    invoke-direct {v0}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;-><init>()V

    sput-object v0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->sInstance:Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastHoverKeyIndex:I

    .line 51
    iput v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastX:I

    .line 52
    iput v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastY:I

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;)Lcom/android/inputmethod/accessibility/AccessibleKeyboardActionListener;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mListener:Lcom/android/inputmethod/accessibility/AccessibleKeyboardActionListener;

    return-object v0
.end method

.method private fireKeyHoverEvent(Lcom/android/inputmethod/keyboard/PointerTracker;IZ)V
    .registers 7
    .parameter "tracker"
    .parameter "keyIndex"
    .parameter "entering"

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mListener:Lcom/android/inputmethod/accessibility/AccessibleKeyboardActionListener;

    if-nez v1, :cond_c

    .line 174
    sget-object v1, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->TAG:Ljava/lang/String;

    const-string v2, "No accessible keyboard action listener set!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_b
    :goto_b
    return-void

    .line 178
    :cond_c
    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-nez v1, :cond_18

    .line 179
    sget-object v1, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->TAG:Ljava/lang/String;

    const-string v2, "No keyboard view set!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 183
    :cond_18
    const/4 v1, -0x1

    if-eq p2, v1, :cond_b

    .line 186
    invoke-virtual {p1, p2}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .line 188
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v0, :cond_b

    .line 191
    if-eqz p3, :cond_32

    .line 192
    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mListener:Lcom/android/inputmethod/accessibility/AccessibleKeyboardActionListener;

    iget v2, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-interface {v1, v2}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardActionListener;->onHoverEnter(I)V

    .line 193
    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->sendAccessibilityEvent(I)V

    goto :goto_b

    .line 195
    :cond_32
    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mListener:Lcom/android/inputmethod/accessibility/AccessibleKeyboardActionListener;

    iget v2, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-interface {v1, v2}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardActionListener;->onHoverExit(I)V

    .line 196
    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->sendAccessibilityEvent(I)V

    goto :goto_b
.end method

.method private fireKeyPressEvent(Lcom/android/inputmethod/keyboard/PointerTracker;IIJ)V
    .registers 12
    .parameter "tracker"
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 201
    iget-object v5, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-object v0, p1

    move v1, p2

    move v2, p3

    move-wide v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/inputmethod/keyboard/PointerTracker;->onDownEvent(IIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 202
    const-wide/16 v0, 0xa

    add-long/2addr v0, p4

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->onUpEvent(IIJ)V

    .line 203
    return-void
.end method

.method public static getInstance()Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->sInstance:Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    return-object v0
.end method

.method public static init(Landroid/inputmethodservice/InputMethodService;Landroid/content/SharedPreferences;)V
    .registers 4
    .parameter "inputMethod"
    .parameter "prefs"

    .prologue
    .line 55
    sget-object v0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->sInstance:Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    invoke-direct {v0, p0, p1}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->initInternal(Landroid/inputmethodservice/InputMethodService;Landroid/content/SharedPreferences;)V

    .line 56
    sget-object v0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->sInstance:Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;->getInstance()Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;

    move-result-object v1

    iput-object v1, v0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mListener:Lcom/android/inputmethod/accessibility/AccessibleKeyboardActionListener;

    .line 57
    return-void
.end method

.method private initInternal(Landroid/inputmethodservice/InputMethodService;Landroid/content/SharedPreferences;)V
    .registers 5
    .parameter "inputMethod"
    .parameter "prefs"

    .prologue
    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 73
    .local v0, paint:Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 74
    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 75
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iput-object p1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mInputMethod:Landroid/inputmethodservice/InputMethodService;

    .line 79
    new-instance v1, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyboardFlickGestureDetector;

    invoke-direct {v1, p0, p1}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy$KeyboardFlickGestureDetector;-><init>(Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mGestureDetector:Lcom/android/inputmethod/accessibility/FlickGestureDetector;

    .line 80
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mScaledEdgeSlop:I

    .line 81
    return-void
.end method

.method public static setView(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 64
    sget-object v0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->sInstance:Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;

    iput-object p0, v0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    .line 65
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;Lcom/android/inputmethod/keyboard/PointerTracker;)Z
    .registers 4
    .parameter "event"
    .parameter "tracker"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mGestureDetector:Lcom/android/inputmethod/accessibility/FlickGestureDetector;

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/inputmethod/accessibility/FlickGestureDetector;->onHoverEvent(Landroid/view/MotionEvent;Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;Lcom/android/inputmethod/keyboard/PointerTracker;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 123
    const/4 v0, 0x1

    .line 125
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->onHoverEventInternal(Landroid/view/MotionEvent;Lcom/android/inputmethod/keyboard/PointerTracker;)Z

    move-result v0

    goto :goto_9
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Lcom/android/inputmethod/keyboard/PointerTracker;)Z
    .registers 11
    .parameter "event"
    .parameter "tracker"

    .prologue
    const/4 v4, 0x0

    .line 85
    iget-object v5, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    if-nez v5, :cond_d

    .line 86
    sget-object v5, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->TAG:Ljava/lang/String;

    const-string v6, "No keyboard view set!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_c
    :goto_c
    return v4

    .line 90
    :cond_d
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v5

    packed-switch v5, :pswitch_data_4a

    .line 111
    :cond_14
    :goto_14
    const/4 v4, 0x1

    goto :goto_c

    .line 92
    :pswitch_16
    iget v5, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastHoverKeyIndex:I

    invoke-virtual {p2, v5}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKey(I)Lcom/android/inputmethod/keyboard/Key;

    move-result-object v2

    .line 94
    .local v2, key:Lcom/android/inputmethod/keyboard/Key;
    if-eqz v2, :cond_14

    .line 97
    iget-object v5, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mInputMethod:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v5}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 98
    .local v1, info:Landroid/view/inputmethod/EditorInfo;
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->shouldObscureInput(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v3

    .line 99
    .local v3, shouldObscure:Z
    invoke-static {}, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->getInstance()Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;

    move-result-object v5

    .line 100
    iget-object v6, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v6}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v7}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v2, v3}, Lcom/android/inputmethod/accessibility/KeyCodeDescriptionMapper;->getDescriptionForKey(Landroid/content/Context;Lcom/android/inputmethod/keyboard/Keyboard;Lcom/android/inputmethod/keyboard/Key;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 103
    .local v0, description:Ljava/lang/CharSequence;
    if-eqz v0, :cond_c

    .line 106
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 90
    :pswitch_data_4a
    .packed-switch 0x80
        :pswitch_16
    .end packed-switch
.end method

.method onHoverEventInternal(Landroid/view/MotionEvent;Lcom/android/inputmethod/keyboard/PointerTracker;)Z
    .registers 15
    .parameter "event"
    .parameter "tracker"

    .prologue
    const/4 v11, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v9, v1

    .line 136
    .local v9, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v10, v1

    .line 138
    .local v10, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_6e

    .line 169
    :goto_14
    :pswitch_14
    return v0

    .line 141
    :pswitch_15
    invoke-virtual {p2, v9, v10}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKeyIndexOn(II)I

    move-result v7

    .line 143
    .local v7, keyIndex:I
    iget v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastHoverKeyIndex:I

    if-eq v7, v1, :cond_2d

    .line 144
    iget v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastHoverKeyIndex:I

    invoke-direct {p0, p2, v1, v0}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->fireKeyHoverEvent(Lcom/android/inputmethod/keyboard/PointerTracker;IZ)V

    .line 145
    iput v7, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastHoverKeyIndex:I

    .line 146
    iput v9, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastX:I

    .line 147
    iput v10, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastY:I

    .line 148
    iget v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastHoverKeyIndex:I

    invoke-direct {p0, p2, v0, v11}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->fireKeyHoverEvent(Lcom/android/inputmethod/keyboard/PointerTracker;IZ)V

    :cond_2d
    move v0, v11

    .line 151
    goto :goto_14

    .line 153
    .end local v7           #keyIndex:I
    :pswitch_2f
    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getWidth()I

    move-result v8

    .line 154
    .local v8, width:I
    iget-object v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getHeight()I

    move-result v6

    .line 156
    .local v6, height:I
    iget v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mScaledEdgeSlop:I

    if-lt v9, v1, :cond_4f

    iget v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mScaledEdgeSlop:I

    if-lt v10, v1, :cond_4f

    iget v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mScaledEdgeSlop:I

    sub-int v1, v8, v1

    if-ge v9, v1, :cond_4f

    .line 157
    iget v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mScaledEdgeSlop:I

    sub-int v1, v6, v1

    if-lt v10, v1, :cond_5c

    .line 158
    :cond_4f
    iget v1, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastHoverKeyIndex:I

    invoke-direct {p0, p2, v1, v0}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->fireKeyHoverEvent(Lcom/android/inputmethod/keyboard/PointerTracker;IZ)V

    .line 159
    iput v2, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastHoverKeyIndex:I

    .line 160
    iput v2, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastX:I

    .line 161
    iput v2, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastY:I

    :cond_5a
    :goto_5a
    move v0, v11

    .line 166
    goto :goto_14

    .line 162
    :cond_5c
    iget v0, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastHoverKeyIndex:I

    if-eq v0, v2, :cond_5a

    .line 163
    iget v2, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastX:I

    iget v3, p0, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->mLastY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/accessibility/AccessibleKeyboardViewProxy;->fireKeyPressEvent(Lcom/android/inputmethod/keyboard/PointerTracker;IIJ)V

    goto :goto_5a

    .line 138
    :pswitch_data_6e
    .packed-switch 0x7
        :pswitch_15
        :pswitch_14
        :pswitch_15
        :pswitch_2f
    .end packed-switch
.end method
