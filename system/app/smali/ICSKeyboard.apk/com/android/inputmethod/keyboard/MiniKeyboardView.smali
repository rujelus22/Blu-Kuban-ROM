.class public Lcom/android/inputmethod/keyboard/MiniKeyboardView;
.super Lcom/android/inputmethod/keyboard/KeyboardView;
.source "MiniKeyboardView.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/MoreKeysPanel;


# static fields
.field private static final EMPTY_TIMER_PROXY:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;


# instance fields
.field private mController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

.field private final mCoordinates:[I

.field private final mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

.field private mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

.field private final mMiniKeyboardListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

.field private mOriginX:I

.field private mOriginY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy$Adapter;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy$Adapter;-><init>()V

    sput-object v0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->EMPTY_TIMER_PROXY:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 75
    const v0, 0x7f010004

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mCoordinates:[I

    .line 48
    new-instance v1, Lcom/android/inputmethod/keyboard/MiniKeyboardView$1;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView$1;-><init>(Lcom/android/inputmethod/keyboard/MiniKeyboardView;)V

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mMiniKeyboardListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/inputmethod/keyboard/MoreKeysDetector;

    .line 83
    const v2, 0x7f0b0007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/inputmethod/keyboard/MoreKeysDetector;-><init>(F)V

    .line 82
    iput-object v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    .line 84
    invoke-virtual {p0, v3, v3}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 85
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/keyboard/MiniKeyboardView;)Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method private static wrapUp(IIII)I
    .registers 5
    .parameter "x"
    .parameter "width"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 170
    if-ge p0, p2, :cond_3

    .line 174
    .end local p2
    :goto_2
    return p2

    .line 172
    .restart local p2
    :cond_3
    add-int v0, p0, p1

    if-le v0, p3, :cond_a

    .line 173
    sub-int p2, p3, p1

    goto :goto_2

    :cond_a
    move p2, p0

    .line 174
    goto :goto_2
.end method


# virtual methods
.method public dismissMoreKeysPanel()Z
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;->dismissMoreKeysPanel()Z

    move-result v0

    return v0
.end method

.method public getDrawingProxy()Lcom/android/inputmethod/keyboard/PointerTracker$DrawingProxy;
    .registers 1

    .prologue
    .line 118
    return-object p0
.end method

.method public getKeyDetector()Lcom/android/inputmethod/keyboard/KeyDetector;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    return-object v0
.end method

.method public getKeyboardActionListener()Lcom/android/inputmethod/keyboard/KeyboardActionListener;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mMiniKeyboardListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    return-object v0
.end method

.method public getTimerProxy()Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
    .registers 2

    .prologue
    .line 123
    sget-object v0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->EMPTY_TIMER_PROXY:Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;

    return-object v0
.end method

.method protected onMeasure(II)V
    .registers 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v1

    .line 90
    .local v1, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    if-eqz v1, :cond_24

    .line 91
    iget v3, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedWidth:I

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->getPaddingRight()I

    move-result v4

    add-int v2, v3, v4

    .line 92
    .local v2, width:I
    iget v3, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mOccupiedHeight:I

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->getPaddingBottom()I

    move-result v4

    add-int v0, v3, v4

    .line 93
    .local v0, height:I
    invoke-virtual {p0, v2, v0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->setMeasuredDimension(II)V

    .line 97
    .end local v0           #height:I
    .end local v2           #width:I
    :goto_23
    return-void

    .line 95
    :cond_24
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView;->onMeasure(II)V

    goto :goto_23
.end method

.method public setKeyPreviewPopupEnabled(ZI)V
    .registers 4
    .parameter "previewEnabled"
    .parameter "delay"

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-super {p0, v0, v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 131
    return-void
.end method

.method public setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .registers 6
    .parameter "keyboard"

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V

    .line 102
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mKeyDetector:Lcom/android/inputmethod/keyboard/KeyDetector;

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    .line 103
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mVerticalCorrection:F

    add-float/2addr v2, v3

    .line 102
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/inputmethod/keyboard/KeyDetector;->setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;FF)V

    .line 104
    return-void
.end method

.method public setShifted(Z)V
    .registers 4
    .parameter "shifted"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v0

    .line 136
    .local v0, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/Keyboard;->setShifted(Z)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 137
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->invalidateAllKeys()V

    .line 139
    :cond_d
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
    .line 144
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mController:Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;

    .line 145
    iput-object p6, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mListener:Lcom/android/inputmethod/keyboard/KeyboardActionListener;

    .line 146
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 147
    .local v0, container:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/MiniKeyboard;

    .line 149
    .local v1, miniKeyboard:Lcom/android/inputmethod/keyboard/MiniKeyboard;
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mCoordinates:[I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 150
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/MiniKeyboard;->getDefaultCoordX()I

    move-result v5

    sub-int v5, p3, v5

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    .line 150
    add-int v2, v5, v6

    .line 152
    .local v2, miniKeyboardLeft:I
    const/4 v5, 0x0

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, v1, Lcom/android/inputmethod/keyboard/MiniKeyboard;->mOccupiedWidth:I

    sub-int/2addr v6, v7

    .line 152
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 154
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    .line 152
    sub-int/2addr v5, v6

    .line 154
    iget-object v6, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mCoordinates:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    .line 152
    add-int/2addr v5, v6

    .line 155
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 152
    invoke-static {v5, v6, v7, v8}, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->wrapUp(IIII)I

    move-result v3

    .line 157
    .local v3, x:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 156
    sub-int v5, p4, v5

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .line 156
    add-int/2addr v5, v6

    .line 158
    iget-object v6, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mCoordinates:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    .line 156
    add-int v4, v5, v6

    .line 160
    .local v4, y:I
    invoke-virtual {p5, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 161
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p5, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 162
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p5, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 163
    const/4 v5, 0x0

    invoke-virtual {p5, p1, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mCoordinates:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mOriginX:I

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v4

    iget-object v6, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mCoordinates:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mOriginY:I

    .line 167
    return-void
.end method

.method public translateX(I)I
    .registers 3
    .parameter "x"

    .prologue
    .line 184
    iget v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mOriginX:I

    sub-int v0, p1, v0

    return v0
.end method

.method public translateY(I)I
    .registers 3
    .parameter "y"

    .prologue
    .line 189
    iget v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardView;->mOriginY:I

    sub-int v0, p1, v0

    return v0
.end method
