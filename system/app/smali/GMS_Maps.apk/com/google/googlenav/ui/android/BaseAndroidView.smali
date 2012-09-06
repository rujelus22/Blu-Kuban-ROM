.class public abstract Lcom/google/googlenav/ui/android/BaseAndroidView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/content/Context;

.field protected b:Lcom/google/googlenav/android/i;

.field protected c:Lcom/google/googlenav/ui/android/b;

.field protected d:Z

.field protected final e:Laj/i;

.field private f:Landroid/view/View$OnTouchListener;

.field private g:Ljava/util/List;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->d:Z

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->g:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->a:Landroid/content/Context;

    .line 62
    new-instance v0, Laj/i;

    invoke-direct {v0}, Laj/i;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->e:Laj/i;

    .line 63
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/googlenav/android/i;Lcom/google/googlenav/ui/android/ButtonContainer;)V
.end method

.method public declared-synchronized a(Lcom/google/googlenav/ui/android/D;)V
    .registers 3
    .parameter

    .prologue
    .line 157
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 158
    monitor-exit p0

    return-void

    .line 157
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract b()V
.end method

.method public declared-synchronized b(Lcom/google/googlenav/ui/android/D;)V
    .registers 3
    .parameter

    .prologue
    .line 162
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 163
    monitor-exit p0

    return-void

    .line 162
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 142
    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->b:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->B()V

    .line 143
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->f:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->f:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 134
    const/4 v0, 0x1

    .line 136
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_d
.end method

.method public abstract e()V
.end method

.method public f()V
    .registers 1

    .prologue
    .line 199
    return-void
.end method

.method public abstract g()V
.end method

.method public h()V
    .registers 1

    .prologue
    .line 205
    return-void
.end method

.method public i()V
    .registers 1

    .prologue
    .line 213
    return-void
.end method

.method public m()V
    .registers 1

    .prologue
    .line 220
    return-void
.end method

.method protected n()V
    .registers 2

    .prologue
    .line 70
    new-instance v0, Lcom/google/googlenav/ui/android/C;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/C;-><init>(Lcom/google/googlenav/ui/android/BaseAndroidView;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 170
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 171
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->c:Lcom/google/googlenav/ui/android/b;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->c:Lcom/google/googlenav/ui/android/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/android/b;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->c:Lcom/google/googlenav/ui/android/b;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->c:Lcom/google/googlenav/ui/android/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/googlenav/ui/android/b;->a(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->c:Lcom/google/googlenav/ui/android/b;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->c:Lcom/google/googlenav/ui/android/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/android/b;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method protected onSizeChanged(IIII)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 148
    monitor-enter p0

    .line 149
    :try_start_4
    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/D;

    .line 150
    invoke-interface {v0, p1, p2}, Lcom/google/googlenav/ui/android/D;->b(II)V

    goto :goto_a

    .line 152
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw v0

    :cond_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1a

    .line 153
    return-void
.end method

.method public setIsLongpressEnabledForTest(Z)V
    .registers 3
    .parameter

    .prologue
    .line 224
    invoke-static {}, Lcom/google/googlenav/common/util/t;->a()V

    .line 225
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->w()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->e:Laj/i;

    invoke-virtual {v0}, Laj/i;->a()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 227
    :cond_15
    check-cast p0, Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->k()Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->A()Laj/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Laj/g;->a(Z)V

    .line 233
    :goto_22
    return-void

    .line 230
    :cond_23
    check-cast p0, Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->k()Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->z()Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    goto :goto_22
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 2
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/googlenav/ui/android/BaseAndroidView;->f:Landroid/view/View$OnTouchListener;

    .line 123
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 124
    return-void
.end method
