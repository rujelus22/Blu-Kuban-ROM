.class public Lcom/android/inputmethod/latin/MoreSuggestionsView;
.super Lcom/android/inputmethod/keyboard/KeyboardView;
.source "MoreSuggestionsView.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/MoreKeysPanel;


# static fields
.field private static final EMPTY_TIMER_PROXY:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;


# instance fields
.field private mController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

.field private final mCoordinates:[I

.field private mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

.field private final mModalPanelKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

.field private final mModalPanelKeyEventHandler:Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;

.field private mOriginX:I

.field private mOriginY:I

.field private final mSlidingPanelKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

.field private final mSuggestionsPaneListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    new-instance v0, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy$Adapter;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy$Adapter;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->EMPTY_TIMER_PROXY:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 84
    const v0, 0x7f010008

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mCoordinates:[I

    .line 58
    new-instance v1, Lcom/android/inputmethod/latin/MoreSuggestionsView$1;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView$1;-><init>(Lcom/android/inputmethod/latin/MoreSuggestionsView;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mSuggestionsPaneListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 200
    new-instance v1, Lcom/android/inputmethod/latin/MoreSuggestionsView$2;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView$2;-><init>(Lcom/android/inputmethod/latin/MoreSuggestionsView;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mModalPanelKeyEventHandler:Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/inputmethod/keyboard/KeyDetector;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/inputmethod/keyboard/KeyDetector;-><init>(F)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mModalPanelKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    .line 92
    new-instance v1, Lcom/android/inputmethod/keyboard/MoreKeysDetector;

    .line 93
    const v2, 0x7f0b0017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/inputmethod/keyboard/MoreKeysDetector;-><init>(F)V

    .line 92
    iput-object v1, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mSlidingPanelKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    .line 94
    invoke-virtual {p0, v3, v3}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->setKeyPreviewPopupEnabled(ZI)V

    .line 95
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/MoreSuggestionsView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/inputmethod/latin/MoreSuggestionsView;)Lcom/android/inputmethod/keyboard/KeyDetector;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mModalPanelKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/inputmethod/latin/MoreSuggestionsView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    .registers 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mSuggestionsPaneListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method static synthetic access$3()Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->EMPTY_TIMER_PROXY:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    return-object v0
.end method

.method private static wrapUp(IIII)I
    .registers 5
    .parameter "x"
    .parameter "width"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 177
    if-ge p0, p2, :cond_3

    .line 181
    .end local p2
    :goto_2
    return p2

    .line 179
    .restart local p2
    :cond_3
    add-int v0, p0, p1

    if-le v0, p3, :cond_a

    .line 180
    sub-int p2, p3, p1

    goto :goto_2

    :cond_a
    move p2, p0

    .line 181
    goto :goto_2
.end method


# virtual methods
.method public dismissMoreKeysPanel()Z
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 187
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;->dismissMoreKeysPanel()Z

    move-result v0

    goto :goto_5
.end method

.method public getDrawingProxy()Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;
    .registers 1

    .prologue
    .line 129
    return-object p0
.end method

.method public getKeyDetector()Lcom/android/inputmethod/keyboard/KeyDetector;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mSlidingPanelKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    return-object v0
.end method

.method public getKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mSuggestionsPaneListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method public getTimerProxy()Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
    .registers 2

    .prologue
    .line 134
    sget-object v0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->EMPTY_TIMER_PROXY:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    return-object v0
.end method

.method protected onMeasure(II)V
    .registers 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v1

    .line 100
    .local v1, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    if-eqz v1, :cond_24

    .line 101
    iget v3, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedWidth:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->getPaddingRight()I

    move-result v4

    add-int v2, v3, v4

    .line 102
    .local v2, width:I
    iget v3, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->getPaddingBottom()I

    move-result v4

    add-int v0, v3, v4

    .line 103
    .local v0, height:I
    invoke-virtual {p0, v2, v0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->setMeasuredDimension(II)V

    .line 107
    .end local v0           #height:I
    .end local v2           #width:I
    :goto_23
    return-void

    .line 105
    :cond_24
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView;->onMeasure(II)V

    goto :goto_23
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "me"

    .prologue
    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 225
    .local v1, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 226
    .local v4, eventTime:J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    .line 227
    .local v8, index:I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 228
    .local v7, id:I
    invoke-static {v7, p0}, Lcom/android/inputmethod/keyboard/PointerTracker;->getPointerTracker(ILcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v0

    .line 229
    .local v0, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v2, v6

    .line 230
    .local v2, x:I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v3, v6

    .line 231
    .local v3, y:I
    iget-object v6, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mModalPanelKeyEventHandler:Lcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;

    invoke-virtual/range {v0 .. v6}, Lcom/android/inputmethod/keyboard/PointerTracker;->processMotionEvent(IIIJLcom/android/inputmethod/keyboard/PointerTracker$KeyEventHandler;)V

    .line 232
    const/4 v6, 0x1

    return v6
.end method

.method public setKeyPreviewPopupEnabled(ZI)V
    .registers 4
    .parameter "previewEnabled"
    .parameter "delay"

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-super {p0, v0, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 142
    return-void
.end method

.method public setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .registers 6
    .parameter "keyboard"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 112
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mModalPanelKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/inputmethod/keyboard/KeyDetector;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;FF)V

    .line 113
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mSlidingPanelKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    .line 114
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mVerticalCorrection:F

    add-float/2addr v2, v3

    .line 113
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/inputmethod/keyboard/KeyDetector;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;FF)V

    .line 115
    return-void
.end method

.method public setShifted(Z)V
    .registers 2
    .parameter "shifted"

    .prologue
    .line 147
    return-void
.end method

.method public showMoreKeysPanel(Landroid/view/View;Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;IILandroid/widget/PopupWindow;Lcom/android/inputmethod/keyboard/KeyboardActionListener;)V
    .registers 16
    .parameter "parentView"
    .parameter "controller"
    .parameter "pointX"
    .parameter "pointY"
    .parameter "window"
    .parameter "listener"

    .prologue
    .line 152
    iput-object p2, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

    .line 153
    iput-object p6, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 154
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 155
    .local v0, container:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/MoreSuggestions;

    .line 157
    .local v1, pane:Lcom/android/inputmethod/latin/MoreSuggestions;
    iget-object v5, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mCoordinates:[I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 158
    iget v5, v1, Lcom/android/inputmethod/latin/MoreSuggestions;->mOccupiedWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, p3, v5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    add-int v2, v5, v6

    .line 159
    .local v2, paneLeft:I
    const/4 v5, 0x0

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, v1, Lcom/android/inputmethod/latin/MoreSuggestions;->mOccupiedWidth:I

    sub-int/2addr v6, v7

    .line 159
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 161
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    .line 159
    sub-int/2addr v5, v6

    .line 161
    iget-object v6, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mCoordinates:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    .line 159
    add-int/2addr v5, v6

    .line 162
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 159
    invoke-static {v5, v6, v7, v8}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->wrapUp(IIII)I

    move-result v3

    .line 164
    .local v3, x:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 163
    sub-int v5, p4, v5

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .line 163
    add-int/2addr v5, v6

    .line 165
    iget-object v6, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mCoordinates:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    .line 163
    add-int v4, v5, v6

    .line 167
    .local v4, y:I
    invoke-virtual {p5, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 168
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p5, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 169
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p5, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 170
    const/4 v5, 0x0

    invoke-virtual {p5, p1, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 172
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mCoordinates:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mOriginX:I

    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v4

    iget-object v6, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mCoordinates:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mOriginY:I

    .line 174
    return-void
.end method

.method public translateX(I)I
    .registers 3
    .parameter "x"

    .prologue
    .line 192
    iget v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mOriginX:I

    sub-int v0, p1, v0

    return v0
.end method

.method public translateY(I)I
    .registers 3
    .parameter "y"

    .prologue
    .line 197
    iget v0, p0, Lcom/android/inputmethod/latin/MoreSuggestionsView;->mOriginY:I

    sub-int v0, p1, v0

    return v0
.end method
