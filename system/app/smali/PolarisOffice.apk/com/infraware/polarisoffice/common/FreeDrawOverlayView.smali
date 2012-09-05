.class public Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;
.super Landroid/view/View;
.source "FreeDrawOverlayView.java"

# interfaces
.implements Lcom/infraware/office/evengine/E$EV_HTC_PEN_MODE;
.implements Lcom/infraware/office/evengine/E$EV_HID_ACTION;


# static fields
.field static final LOG_CAT:Ljava/lang/String; = "FreeDrawOverlayView"


# instance fields
.field protected mAdvGestureDetector:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;

.field protected mEvInterface:Lcom/infraware/office/evengine/EvInterface;

.field protected mPenMode:I

.field private mX:[I

.field private mY:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x100

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mAdvGestureDetector:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;

    .line 18
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mPenMode:I

    .line 21
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mX:[I

    .line 22
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mY:[I

    .line 35
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 36
    new-instance v0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;

    new-instance v1, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView$1;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView$1;-><init>(Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;)V

    invoke-direct {v0, p1, p0, v1}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$OnEvGestureListener;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mAdvGestureDetector:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;

    .line 94
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mAdvGestureDetector:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;)[I
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mX:[I

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;)[I
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mY:[I

    return-object v0
.end method


# virtual methods
.method public destory()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->IHTCSetPenMode(I)V

    .line 99
    iput-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mAdvGestureDetector:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;

    .line 100
    iput-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 101
    return-void
.end method

.method public setPenMode(I)V
    .registers 4
    .parameter "EV_HTC_PEN_MODE"

    .prologue
    .line 105
    iget v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mPenMode:I

    if-ne v0, p1, :cond_5

    .line 122
    :goto_4
    return-void

    .line 108
    :cond_5
    packed-switch p1, :pswitch_data_1c

    goto :goto_4

    .line 110
    :pswitch_9
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->setVisibility(I)V

    .line 120
    :goto_d
    iput p1, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mPenMode:I

    .line 121
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v1, p0, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->mPenMode:I

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->IHTCSetPenMode(I)V

    goto :goto_4

    .line 114
    :pswitch_17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FreeDrawOverlayView;->setVisibility(I)V

    goto :goto_d

    .line 108
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method
