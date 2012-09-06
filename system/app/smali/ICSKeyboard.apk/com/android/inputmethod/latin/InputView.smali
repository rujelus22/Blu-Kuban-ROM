.class public Lcom/android/inputmethod/latin/InputView;
.super Landroid/widget/LinearLayout;
.source "InputView.java"


# instance fields
.field private final mEventForwardingRect:Landroid/graphics/Rect;

.field private final mEventReceivingRect:Landroid/graphics/Rect;

.field private final mInputViewRect:Landroid/graphics/Rect;

.field private mIsForwardingEvent:Z

.field private mKeyboardTopPadding:I

.field private mKeyboardView:Landroid/view/View;

.field private mSuggestionsContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/InputView;->mInputViewRect:Landroid/graphics/Rect;

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/InputView;->mEventForwardingRect:Landroid/graphics/Rect;

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/InputView;->mEventReceivingRect:Landroid/graphics/Rect;

    .line 39
    return-void
.end method

.method private forwardTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "me"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 63
    iget-object v3, p0, Lcom/android/inputmethod/latin/InputView;->mInputViewRect:Landroid/graphics/Rect;

    .line 64
    .local v3, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/InputView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v11, v11

    iget v12, v3, Landroid/graphics/Rect;->left:I

    add-int v7, v11, v12

    .line 66
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    iget v12, v3, Landroid/graphics/Rect;->top:I

    add-int v8, v11, v12

    .line 68
    .local v8, y:I
    iget-object v1, p0, Lcom/android/inputmethod/latin/InputView;->mEventForwardingRect:Landroid/graphics/Rect;

    .line 69
    .local v1, forwardingRect:Landroid/graphics/Rect;
    iget-object v11, p0, Lcom/android/inputmethod/latin/InputView;->mKeyboardView:Landroid/view/View;

    invoke-virtual {v11, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 70
    iget-boolean v11, p0, Lcom/android/inputmethod/latin/InputView;->mIsForwardingEvent:Z

    if-nez v11, :cond_2b

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-nez v11, :cond_2b

    .line 111
    :cond_2a
    :goto_2a
    return v9

    .line 74
    :cond_2b
    iget v11, v1, Landroid/graphics/Rect;->top:I

    iget v12, p0, Lcom/android/inputmethod/latin/InputView;->mKeyboardTopPadding:I

    add-int v0, v11, v12

    .line 75
    .local v0, forwardingLimitY:I
    const/4 v4, 0x0

    .line 77
    .local v4, sendToTarget:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    packed-switch v11, :pswitch_data_76

    .line 95
    :cond_39
    :goto_39
    if-eqz v4, :cond_2a

    .line 99
    iget-object v2, p0, Lcom/android/inputmethod/latin/InputView;->mEventReceivingRect:Landroid/graphics/Rect;

    .line 100
    .local v2, receivingRect:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/inputmethod/latin/InputView;->mSuggestionsContainer:Landroid/view/View;

    invoke-virtual {v9, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 101
    iget v9, v2, Landroid/graphics/Rect;->left:I

    sub-int v5, v7, v9

    .line 103
    .local v5, translatedX:I
    if-ge v8, v0, :cond_70

    .line 105
    iget v9, v2, Landroid/graphics/Rect;->top:I

    sub-int v9, v8, v9

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 109
    .local v6, translatedY:I
    :goto_56
    int-to-float v9, v5

    int-to-float v11, v6

    invoke-virtual {p1, v9, v11}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 110
    iget-object v9, p0, Lcom/android/inputmethod/latin/InputView;->mSuggestionsContainer:Landroid/view/View;

    invoke-virtual {v9, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move v9, v10

    .line 111
    goto :goto_2a

    .line 79
    .end local v2           #receivingRect:Landroid/graphics/Rect;
    .end local v5           #translatedX:I
    .end local v6           #translatedY:I
    :pswitch_62
    if-ge v8, v0, :cond_39

    .line 81
    iput-boolean v10, p0, Lcom/android/inputmethod/latin/InputView;->mIsForwardingEvent:Z

    .line 82
    const/4 v4, 0x1

    .line 84
    goto :goto_39

    .line 86
    :pswitch_68
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/InputView;->mIsForwardingEvent:Z

    .line 87
    goto :goto_39

    .line 90
    :pswitch_6b
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/InputView;->mIsForwardingEvent:Z

    .line 91
    iput-boolean v9, p0, Lcom/android/inputmethod/latin/InputView;->mIsForwardingEvent:Z

    goto :goto_39

    .line 107
    .restart local v2       #receivingRect:Landroid/graphics/Rect;
    .restart local v5       #translatedX:I
    :cond_70
    iget v9, v2, Landroid/graphics/Rect;->top:I

    sub-int v6, v8, v9

    .restart local v6       #translatedY:I
    goto :goto_56

    .line 77
    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_62
        :pswitch_6b
        :pswitch_68
        :pswitch_6b
    .end packed-switch
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "me"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputView;->mSuggestionsContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    .line 54
    iget-object v0, p0, Lcom/android/inputmethod/latin/InputView;->mKeyboardView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    .line 55
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/InputView;->forwardTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 56
    const/4 v0, 0x1

    .line 58
    :goto_17
    return v0

    :cond_18
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_17
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 47
    const v0, 0x7f07003e

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/InputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/InputView;->mSuggestionsContainer:Landroid/view/View;

    .line 48
    const v0, 0x7f07003f

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/InputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/InputView;->mKeyboardView:Landroid/view/View;

    .line 49
    return-void
.end method

.method public setKeyboardGeometry(I)V
    .registers 2
    .parameter "keyboardTopPadding"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/inputmethod/latin/InputView;->mKeyboardTopPadding:I

    .line 43
    return-void
.end method
