.class Lcom/swype/android/compat/HandleMultitouch5;
.super Ljava/lang/Object;
.source "HandleMultitouch5.java"

# interfaces
.implements Lcom/swype/android/compat/MultitouchHandler$HandleMultitouch;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMT(Landroid/view/MotionEvent;Lcom/swype/android/widget/MultitouchEventReceiver;ILcom/swype/android/compat/MultitouchHandler$MultitouchFilter;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 18
    and-int/lit16 v1, v0, 0xff

    invoke-static {v1}, Lcom/swype/android/widget/TouchEventType;->fromMotionEvent(I)Lcom/swype/android/widget/TouchEventType;

    move-result-object v7

    .line 19
    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v8, v0, 0x8

    .line 20
    sget-object v0, Lcom/swype/android/widget/TouchEventType;->MOVE:Lcom/swype/android/widget/TouchEventType;

    if-ne v7, v0, :cond_45

    .line 22
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v9

    move v3, v0

    :goto_1e
    if-ge v3, v9, :cond_45

    .line 24
    const/4 v0, 0x0

    move v2, v0

    :goto_22
    if-ge v2, v6, :cond_41

    .line 26
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3d

    move-object v0, p4

    move-object v1, p1

    move v4, p3

    move-object v5, p2

    .line 27
    invoke-interface/range {v0 .. v5}, Lcom/swype/android/compat/MultitouchHandler$MultitouchFilter;->filterHistoricalMT(Landroid/view/MotionEvent;IIILcom/swype/android/widget/MultitouchEventReceiver;)V

    .line 24
    :cond_3d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_22

    .line 22
    :cond_41
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1e

    .line 32
    :cond_45
    const/4 v0, 0x0

    :goto_46
    if-ge v0, v6, :cond_6e

    .line 35
    sget-object v1, Lcom/swype/android/widget/TouchEventType;->DOWN:Lcom/swype/android/widget/TouchEventType;

    if-ne v7, v1, :cond_4e

    if-ne v0, v8, :cond_6b

    .line 36
    :cond_4e
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_68

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-interface {p2}, Lcom/swype/android/widget/MultitouchEventReceiver;->getRawYPosition()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 46
    :cond_68
    invoke-interface {p4, p1, v0, p3, p2}, Lcom/swype/android/compat/MultitouchHandler$MultitouchFilter;->filterCurrentMT(Landroid/view/MotionEvent;IILcom/swype/android/widget/MultitouchEventReceiver;)V

    .line 32
    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 48
    :cond_6e
    return-void
.end method
