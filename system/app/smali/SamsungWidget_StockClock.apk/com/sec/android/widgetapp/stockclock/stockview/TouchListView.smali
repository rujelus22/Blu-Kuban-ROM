.class public Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;
.super Landroid/widget/ListView;
.source "TouchListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView$list;
    }
.end annotation


# instance fields
.field action:I

.field center_vertical:F

.field holding:Z

.field points:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 12
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->center_vertical:F

    .line 38
    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->action:I

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->points:I

    .line 40
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->holding:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->center_vertical:F

    .line 38
    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->action:I

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->points:I

    .line 40
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->holding:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->center_vertical:F

    .line 38
    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->action:I

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->points:I

    .line 40
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->holding:Z

    .line 17
    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .registers 3

    .prologue
    .line 31
    iget v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->center_vertical:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_11

    .line 33
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->center_vertical:F

    .line 35
    :cond_11
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 36
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->action:I

    .line 45
    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->action:I

    packed-switch v1, :pswitch_data_3c

    .line 61
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_13
    return v0

    .line 48
    :pswitch_14
    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->points:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->points:I

    .line 49
    iget v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->points:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_f

    .line 51
    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->points:I

    .line 53
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->center_vertical:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_31

    .line 54
    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->setSelection(I)V

    .line 57
    :goto_2e
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->holding:Z

    goto :goto_13

    .line 56
    :cond_31
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;->setSelection(I)V

    goto :goto_2e

    .line 45
    nop

    :pswitch_data_3c
    .packed-switch 0x5
        :pswitch_14
    .end packed-switch
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 67
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView$list;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView$list;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/TouchListView;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    return-void
.end method
