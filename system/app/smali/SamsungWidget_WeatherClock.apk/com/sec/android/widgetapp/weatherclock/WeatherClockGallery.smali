.class public Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;
.super Landroid/widget/Gallery;
.source "WeatherClockGallery.java"


# instance fields
.field child:Landroid/view/View;

.field needPositioning:Z

.field position:I

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->child:Landroid/view/View;

    .line 32
    iput v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->position:I

    .line 33
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->needPositioning:Z

    .line 48
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setSoundEffectsEnabled(Z)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->child:Landroid/view/View;

    .line 32
    iput v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->position:I

    .line 33
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->needPositioning:Z

    .line 54
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setSoundEffectsEnabled(Z)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->child:Landroid/view/View;

    .line 32
    iput v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->position:I

    .line 33
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->needPositioning:Z

    .line 39
    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setSoundEffectsEnabled(Z)V

    .line 40
    sget-object v2, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 42
    .local v1, unselectedAlpha:F
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setUnselectedAlpha(F)V

    .line 43
    return-void
.end method


# virtual methods
.method protected computeHorizontalScrollOffset()I
    .registers 2

    .prologue
    .line 163
    invoke-super {p0}, Landroid/widget/Gallery;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public fixSelectedItemMetadata()V
    .registers 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 202
    .local v0, selectedView:Landroid/view/View;
    if-eqz v0, :cond_6

    .line 207
    :cond_6
    return-void
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .registers 4
    .parameter "child"
    .parameter "t"

    .prologue
    .line 168
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 169
    const/high16 v0, 0x3f80

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public getSelectedItemPosition()I
    .registers 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_21

    .line 72
    invoke-super {p0}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    rem-int/2addr v0, v1

    .line 74
    :goto_20
    return v0

    :cond_21
    invoke-super {p0}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v0

    goto :goto_20
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    .line 148
    const/16 v0, 0x15

    invoke-super {p0, v0, v2}, Landroid/widget/Gallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 152
    :goto_13
    return v0

    :cond_14
    const/16 v0, 0x16

    invoke-super {p0, v0, v2}, Landroid/widget/Gallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_13
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 181
    const/16 v3, 0x17

    if-eq p1, v3, :cond_9

    const/16 v3, 0x42

    if-ne p1, v3, :cond_1f

    .line 183
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 184
    .local v0, selectedView:Landroid/view/View;
    if-eqz v0, :cond_1e

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 187
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_1e

    .line 189
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->checkEventRegion(Landroid/view/View;Z)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 190
    :cond_1b
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 196
    .end local v0           #selectedView:Landroid/view/View;
    .end local v1           #v:Landroid/view/View;
    :cond_1e
    :goto_1e
    return v2

    :cond_1f
    invoke-super {p0, p1, p2}, Landroid/widget/Gallery;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1e
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 175
    invoke-super/range {p0 .. p5}, Landroid/widget/Gallery;->onLayout(ZIIII)V

    .line 176
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->fixSelectedItemMetadata()V

    .line 177
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 59
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v2, 0x1

    .line 93
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->needPositioning:Z

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->child:Landroid/view/View;

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    const/16 v1, -0x14

    if-le v0, v1, :cond_41

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_41

    .line 95
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->position:I

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_46

    .line 97
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->position:I

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setSelection(IZ)V

    .line 104
    :cond_41
    :goto_41
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0

    .line 99
    :cond_46
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->position:I

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_41

    .line 101
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->position:I

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setSelection(IZ)V

    goto :goto_41
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "e"

    .prologue
    const/high16 v5, 0x4120

    const/4 v2, 0x0

    .line 115
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 116
    .local v1, isResult:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_5e

    .line 140
    :cond_10
    :goto_10
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->fixSelectedItemMetadata()V

    .line 141
    .end local v1           #isResult:Z
    :goto_13
    return v1

    .line 119
    .restart local v1       #isResult:Z
    :pswitch_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->x:F

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->y:F

    .line 122
    sput-boolean v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->EVENT_FLAG:Z

    .line 123
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_28
    if-ltz v0, :cond_34

    .line 125
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setPressed(Z)V

    .line 123
    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    .line 127
    :cond_34
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->setPressed(Z)V

    .line 128
    invoke-static {p1, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->checkEventRegion(Landroid/view/MotionEvent;Z)V

    goto :goto_10

    .line 132
    .end local v0           #i:I
    :pswitch_3b
    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_10

    iget v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_10

    .line 134
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->EVENT_FLAG:Z

    move v1, v2

    .line 135
    goto :goto_13

    .line 116
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_14
        :pswitch_3b
    .end packed-switch
.end method

.method public setPosition(ILandroid/view/View;)V
    .registers 4
    .parameter "position"
    .parameter "child"

    .prologue
    .line 64
    iput p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->position:I

    .line 65
    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->child:Landroid/view/View;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->needPositioning:Z

    .line 67
    return-void
.end method

.method public setSelection(IZ)V
    .registers 4
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    if-ge p1, v0, :cond_1b

    .line 81
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    add-int/2addr p1, v0

    .line 88
    :goto_17
    invoke-super {p0, p1, p2}, Landroid/widget/Gallery;->setSelection(IZ)V

    .line 89
    return-void

    .line 85
    :cond_1b
    iput p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->position:I

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockGallery;->needPositioning:Z

    goto :goto_17
.end method
