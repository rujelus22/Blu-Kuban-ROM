.class public abstract Lcom/google/googlenav/ui/android/BaseAndroidView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field protected final a:Landroid/content/Context;

.field protected b:Lcom/google/googlenav/android/l;

.field protected c:Lcom/google/googlenav/ui/android/c;

.field protected d:Z

.field private e:Landroid/view/View$OnTouchListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->d:Z

    iput-object p1, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/google/googlenav/android/l;Lcom/google/googlenav/ui/android/ButtonContainer;)V
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->b:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->D()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->e:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->e:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_d
.end method

.method public e()V
    .registers 1

    return-void
.end method

.method public abstract f()V
.end method

.method public g()V
    .registers 1

    return-void
.end method

.method public h()V
    .registers 1

    return-void
.end method

.method protected k()V
    .registers 2

    new-instance v0, Lcom/google/googlenav/ui/android/s;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/s;-><init>(Lcom/google/googlenav/ui/android/BaseAndroidView;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->c:Lcom/google/googlenav/ui/android/c;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->c:Lcom/google/googlenav/ui/android/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/android/c;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->c:Lcom/google/googlenav/ui/android/c;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->c:Lcom/google/googlenav/ui/android/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/googlenav/ui/android/c;->a(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->c:Lcom/google/googlenav/ui/android/c;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->c:Lcom/google/googlenav/ui/android/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/android/c;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->b:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/D;->b(II)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->e:Landroid/view/View$OnTouchListener;

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
