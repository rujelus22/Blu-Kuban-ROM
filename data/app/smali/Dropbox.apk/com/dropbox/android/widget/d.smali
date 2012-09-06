.class final Lcom/dropbox/android/widget/d;
.super Landroid/widget/FrameLayout;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/a;


# direct methods
.method public constructor <init>(Lcom/dropbox/android/widget/a;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1158
    iput-object p1, p0, Lcom/dropbox/android/widget/d;->a:Lcom/dropbox/android/widget/a;

    .line 1159
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1160
    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1176
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_38

    .line 1177
    :cond_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_26

    .line 1179
    invoke-virtual {p0}, Lcom/dropbox/android/widget/d;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1180
    if-eqz v1, :cond_38

    .line 1181
    invoke-virtual {v1, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1191
    :goto_25
    return v0

    .line 1184
    :cond_26
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_38

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_38

    .line 1187
    iget-object v1, p0, Lcom/dropbox/android/widget/d;->a:Lcom/dropbox/android/widget/a;

    invoke-virtual {v1}, Lcom/dropbox/android/widget/a;->c()V

    goto :goto_25

    .line 1191
    :cond_38
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_25
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/dropbox/android/widget/d;->a:Lcom/dropbox/android/widget/a;

    invoke-static {v0}, Lcom/dropbox/android/widget/a;->f(Lcom/dropbox/android/widget/a;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/dropbox/android/widget/d;->a:Lcom/dropbox/android/widget/a;

    invoke-static {v0}, Lcom/dropbox/android/widget/a;->f(Lcom/dropbox/android/widget/a;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1197
    const/4 v0, 0x1

    .line 1199
    :goto_15
    return v0

    :cond_16
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_15
.end method

.method protected final onCreateDrawableState(I)[I
    .registers 4
    .parameter

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/dropbox/android/widget/d;->a:Lcom/dropbox/android/widget/a;

    invoke-static {v0}, Lcom/dropbox/android/widget/a;->e(Lcom/dropbox/android/widget/a;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1166
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1167
    invoke-static {}, Lcom/dropbox/android/widget/a;->d()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 1170
    :goto_15
    return-object v0

    :cond_16
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_15
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 1205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 1207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_27

    if-ltz v1, :cond_21

    invoke-virtual {p0}, Lcom/dropbox/android/widget/d;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_21

    if-ltz v2, :cond_21

    invoke-virtual {p0}, Lcom/dropbox/android/widget/d;->getHeight()I

    move-result v1

    if-lt v2, v1, :cond_27

    .line 1209
    :cond_21
    iget-object v1, p0, Lcom/dropbox/android/widget/d;->a:Lcom/dropbox/android/widget/a;

    invoke-virtual {v1}, Lcom/dropbox/android/widget/a;->c()V

    .line 1215
    :goto_26
    return v0

    .line 1211
    :cond_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_34

    .line 1212
    iget-object v1, p0, Lcom/dropbox/android/widget/d;->a:Lcom/dropbox/android/widget/a;

    invoke-virtual {v1}, Lcom/dropbox/android/widget/a;->c()V

    goto :goto_26

    .line 1215
    :cond_34
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_26
.end method

.method public final sendAccessibilityEvent(I)V
    .registers 3
    .parameter

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/dropbox/android/widget/d;->a:Lcom/dropbox/android/widget/a;

    invoke-static {v0}, Lcom/dropbox/android/widget/a;->g(Lcom/dropbox/android/widget/a;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1223
    iget-object v0, p0, Lcom/dropbox/android/widget/d;->a:Lcom/dropbox/android/widget/a;

    invoke-static {v0}, Lcom/dropbox/android/widget/a;->g(Lcom/dropbox/android/widget/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1227
    :goto_11
    return-void

    .line 1225
    :cond_12
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto :goto_11
.end method
