.class public Lcom/estrongs/android/pop/popupwindowwitharrow/d;
.super Landroid/widget/RelativeLayout;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/d;->a:Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/d;->a:Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->b()V

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_13
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/d;->a:Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;

    invoke-static {v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->f(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/d;->a:Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;

    invoke-static {v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->f(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_15
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/d;->a:Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;

    invoke-static {v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->e(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_16

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->g()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :goto_15
    return-object v0

    :cond_16
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_15
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2b

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/d;->a:Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;

    invoke-static {v4}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->g(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/d;->a:Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->b()V

    :cond_2a
    :goto_2a
    return v0

    :cond_2b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_38

    iget-object v1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/d;->a:Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->b()V

    goto :goto_2a

    :cond_38
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_2a
.end method

.method public sendAccessibilityEvent(I)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/d;->a:Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;

    invoke-static {v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->g(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/d;->a:Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;

    invoke-static {v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->g(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :goto_11
    return-void

    :cond_12
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->sendAccessibilityEvent(I)V

    goto :goto_11
.end method
