.class public Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;
.super Landroid/widget/ImageButton;
.source "NumberPickerButton.java"


# instance fields
.field private mNumberPicker:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method private cancelLongpress()V
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;->mNumberPicker:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->setClicking(Z)V

    .line 136
    const v0, 0x7f0e00e3

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_15

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;->mNumberPicker:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->cancelIncrement()V

    .line 146
    :cond_14
    :goto_14
    return-void

    .line 140
    :cond_15
    const v0, 0x7f0e00e5

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_14

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;->mNumberPicker:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->cancelDecrement()V

    goto :goto_14
.end method

.method private cancelLongpressIfRequired(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 120
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;->cancelLongpress()V

    .line 122
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 126
    :cond_17
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;->cancelLongpress()V

    .line 130
    :cond_1a
    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 103
    const/16 v0, 0x17

    if-eq p1, v0, :cond_8

    const/16 v0, 0x42

    if-ne p1, v0, :cond_b

    .line 107
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;->cancelLongpress()V

    .line 113
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 87
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 96
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setNumberPicker(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)V
    .registers 2
    .parameter "picker"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPickerButton;->mNumberPicker:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    .line 80
    return-void
.end method
