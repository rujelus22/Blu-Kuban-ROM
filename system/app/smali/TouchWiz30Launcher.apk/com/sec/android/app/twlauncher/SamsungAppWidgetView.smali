.class public Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;
.super Landroid/widget/FrameLayout;
.source "SamsungAppWidgetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;
    }
.end annotation


# instance fields
.field private mHasPerformedLongPress:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->init()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;)Landroid/view/ViewParent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private init()V
    .registers 3

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mInflater:Landroid/view/LayoutInflater;

    .line 60
    return-void
.end method

.method private postCheckForLongClick()V
    .registers 4

    .prologue
    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    if-nez v0, :cond_e

    .line 116
    new-instance v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;-><init>(Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    .line 118
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .registers 2

    .prologue
    .line 124
    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    if-eqz v0, :cond_f

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 130
    :cond_f
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 51
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, arg0:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public getErrorView()Landroid/view/View;
    .registers 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    const/4 v0, 0x0

    .line 68
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    if-eqz v1, :cond_9

    .line 69
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    .line 70
    const/4 v0, 0x1

    .line 91
    :cond_8
    :goto_8
    return v0

    .line 75
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_22

    :pswitch_10
    goto :goto_8

    .line 77
    :pswitch_11
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->postCheckForLongClick()V

    goto :goto_8

    .line 83
    :pswitch_15
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    .line 84
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    if-eqz v1, :cond_8

    .line 85
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 75
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_11
        :pswitch_15
        :pswitch_10
        :pswitch_15
    .end packed-switch
.end method
