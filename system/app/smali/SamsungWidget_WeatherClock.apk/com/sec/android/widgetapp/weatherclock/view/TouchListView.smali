.class public Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;
.super Landroid/widget/ListView;
.source "TouchListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/weatherclock/view/TouchListView$list;
    }
.end annotation


# instance fields
.field action:I

.field center_vertical:F

.field holding:Z

.field movecounts:I

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

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->center_vertical:F

    .line 40
    iput v1, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->action:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->points:I

    .line 42
    iput v1, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->movecounts:I

    .line 43
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->holding:Z

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

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->center_vertical:F

    .line 40
    iput v1, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->action:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->points:I

    .line 42
    iput v1, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->movecounts:I

    .line 43
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->holding:Z

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

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->center_vertical:F

    .line 40
    iput v1, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->action:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->points:I

    .line 42
    iput v1, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->movecounts:I

    .line 43
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->holding:Z

    .line 17
    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .registers 3

    .prologue
    .line 32
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->center_vertical:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_11

    .line 34
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->center_vertical:F

    .line 36
    :cond_11
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 37
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "e"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->action:I

    .line 47
    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->action:I

    packed-switch v1, :pswitch_data_4c

    .line 69
    :cond_f
    :goto_f
    :pswitch_f
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_13
    return v0

    .line 50
    :pswitch_14
    iput v3, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->movecounts:I

    goto :goto_f

    .line 53
    :pswitch_17
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->movecounts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->movecounts:I

    goto :goto_f

    .line 56
    :pswitch_1e
    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->points:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->points:I

    .line 57
    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->movecounts:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_f

    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->points:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_f

    .line 59
    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->points:I

    .line 61
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v2, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->center_vertical:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_41

    .line 62
    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->setSelection(I)V

    .line 65
    :goto_3e
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->holding:Z

    goto :goto_13

    .line 64
    :cond_41
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;->setSelection(I)V

    goto :goto_3e

    .line 47
    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_14
        :pswitch_f
        :pswitch_17
        :pswitch_f
        :pswitch_f
        :pswitch_1e
    .end packed-switch
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 75
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView$list;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/widgetapp/weatherclock/view/TouchListView$list;-><init>(Lcom/sec/android/widgetapp/weatherclock/view/TouchListView;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    return-void
.end method
