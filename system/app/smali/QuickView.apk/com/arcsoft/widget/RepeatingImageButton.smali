.class public Lcom/arcsoft/widget/RepeatingImageButton;
.super Landroid/widget/ImageButton;
.source "RepeatingImageButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/widget/RepeatingImageButton$RepeatListener;
    }
.end annotation


# instance fields
.field private mInterval:J

.field private mListener:Lcom/arcsoft/widget/RepeatingImageButton$RepeatListener;

.field private mRepeatCount:I

.field private mRepeater:Ljava/lang/Runnable;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/arcsoft/widget/RepeatingImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    const v0, 0x1010072

    invoke-direct {p0, p1, p2, v0}, Lcom/arcsoft/widget/RepeatingImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/arcsoft/widget/RepeatingImageButton;->mInterval:J

    .line 113
    new-instance v0, Lcom/arcsoft/widget/RepeatingImageButton$1;

    invoke-direct {v0, p0}, Lcom/arcsoft/widget/RepeatingImageButton$1;-><init>(Lcom/arcsoft/widget/RepeatingImageButton;)V

    iput-object v0, p0, Lcom/arcsoft/widget/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/arcsoft/widget/RepeatingImageButton;->setLongClickable(Z)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/arcsoft/widget/RepeatingImageButton;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/arcsoft/widget/RepeatingImageButton;->doRepeat(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/arcsoft/widget/RepeatingImageButton;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/arcsoft/widget/RepeatingImageButton;->mInterval:J

    return-wide v0
.end method

.method private doRepeat(Z)V
    .registers 9
    .parameter "last"

    .prologue
    .line 123
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 124
    .local v0, now:J
    iget-object v2, p0, Lcom/arcsoft/widget/RepeatingImageButton;->mListener:Lcom/arcsoft/widget/RepeatingImageButton$RepeatListener;

    if-eqz v2, :cond_14

    .line 125
    iget-object v3, p0, Lcom/arcsoft/widget/RepeatingImageButton;->mListener:Lcom/arcsoft/widget/RepeatingImageButton$RepeatListener;

    iget-wide v4, p0, Lcom/arcsoft/widget/RepeatingImageButton;->mStartTime:J

    sub-long v4, v0, v4

    if-eqz p1, :cond_15

    const/4 v2, -0x1

    :goto_11
    invoke-interface {v3, p0, v4, v5, v2}, Lcom/arcsoft/widget/RepeatingImageButton$RepeatListener;->onRepeat(Landroid/view/View;JI)V

    .line 127
    :cond_14
    return-void

    .line 125
    :cond_15
    iget v2, p0, Lcom/arcsoft/widget/RepeatingImageButton;->mRepeatCount:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/arcsoft/widget/RepeatingImageButton;->mRepeatCount:I

    goto :goto_11
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 87
    sparse-switch p1, :sswitch_data_e

    .line 95
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 92
    :sswitch_8
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 93
    const/4 v0, 0x1

    goto :goto_7

    .line 87
    nop

    :sswitch_data_e
    .sparse-switch
        0x17 -> :sswitch_8
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v2, 0x0

    .line 100
    sparse-switch p1, :sswitch_data_1c

    .line 110
    :cond_5
    :goto_5
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 104
    :sswitch_a
    iget-object v0, p0, Lcom/arcsoft/widget/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/arcsoft/widget/RepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 105
    iget-wide v0, p0, Lcom/arcsoft/widget/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 106
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/arcsoft/widget/RepeatingImageButton;->doRepeat(Z)V

    .line 107
    iput-wide v2, p0, Lcom/arcsoft/widget/RepeatingImageButton;->mStartTime:J

    goto :goto_5

    .line 100
    :sswitch_data_1c
    .sparse-switch
        0x17 -> :sswitch_a
        0x42 -> :sswitch_a
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const-wide/16 v2, 0x0

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 76
    iget-object v0, p0, Lcom/arcsoft/widget/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/arcsoft/widget/RepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 77
    iget-wide v0, p0, Lcom/arcsoft/widget/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    .line 79
    iput-wide v2, p0, Lcom/arcsoft/widget/RepeatingImageButton;->mStartTime:J

    .line 82
    :cond_16
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .registers 3

    .prologue
    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/arcsoft/widget/RepeatingImageButton;->mStartTime:J

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/arcsoft/widget/RepeatingImageButton;->mRepeatCount:I

    .line 68
    iget-object v0, p0, Lcom/arcsoft/widget/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/arcsoft/widget/RepeatingImageButton;->post(Ljava/lang/Runnable;)Z

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public setRepeatListener(Lcom/arcsoft/widget/RepeatingImageButton$RepeatListener;J)V
    .registers 5
    .parameter "l"
    .parameter "interval"

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/arcsoft/widget/RepeatingImageButton;->setLongClickable(Z)V

    .line 60
    iput-object p1, p0, Lcom/arcsoft/widget/RepeatingImageButton;->mListener:Lcom/arcsoft/widget/RepeatingImageButton$RepeatListener;

    .line 61
    iput-wide p2, p0, Lcom/arcsoft/widget/RepeatingImageButton;->mInterval:J

    .line 62
    return-void
.end method
