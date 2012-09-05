.class Lcom/swype/android/compat/HandleMultitouch3;
.super Ljava/lang/Object;
.source "HandleMultitouch3.java"

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
    const/4 v4, 0x0

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Lcom/swype/android/widget/TouchEventType;->fromMotionEvent(I)Lcom/swype/android/widget/TouchEventType;

    move-result-object v7

    .line 14
    if-eqz v7, :cond_44

    .line 15
    sget-object v0, Lcom/swype/android/widget/TouchEventType;->MOVE:Lcom/swype/android/widget/TouchEventType;

    if-ne v7, v0, :cond_31

    .line 16
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/swype/android/widget/TouchEventType;->fromMotionEvent(I)Lcom/swype/android/widget/TouchEventType;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    move v9, v4

    :goto_19
    if-ge v9, v8, :cond_31

    .line 18
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v5

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/swype/android/widget/MultitouchEventReceiver;->onMultitouchEvent(Lcom/swype/android/widget/TouchEventType;IIIJ)V

    .line 17
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_19

    .line 26
    :cond_31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    move-object v0, p2

    move-object v1, v7

    invoke-interface/range {v0 .. v6}, Lcom/swype/android/widget/MultitouchEventReceiver;->onMultitouchEvent(Lcom/swype/android/widget/TouchEventType;IIIJ)V

    .line 32
    :cond_44
    return-void
.end method
