.class Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector$1;
.super Ljava/lang/Object;
.source "EvAdvanceMotionDetector.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;-><init>(Landroid/content/Context;Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector$OnEvMotionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector$1;->this$0:Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .registers 6
    .parameter "motionEvent"

    .prologue
    .line 36
    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector$1;->this$0:Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;

    iget-object v3, v3, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;->mEvMotionListener:Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector$OnEvMotionListener;

    if-nez v3, :cond_7

    .line 70
    :goto_6
    return-void

    .line 39
    :cond_7
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v3

    sparse-switch v3, :sswitch_data_34

    goto :goto_6

    .line 58
    :sswitch_f
    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector$1;->this$0:Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;

    iget-object v3, v3, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;->mEvMotionListener:Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector$OnEvMotionListener;

    invoke-interface {v3}, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector$OnEvMotionListener;->onMotionTwoTapping()V

    goto :goto_6

    .line 42
    :sswitch_17
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDx()I

    move-result v0

    .line 43
    .local v0, dx:I
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDy()I

    move-result v1

    .line 44
    .local v1, dy:I
    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector$1;->this$0:Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;

    iget-object v3, v3, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;->mEvMotionListener:Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector$OnEvMotionListener;

    invoke-interface {v3, v0, v1}, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector$OnEvMotionListener;->onMotionPanningGyro(II)V

    goto :goto_6

    .line 50
    .end local v0           #dx:I
    .end local v1           #dy:I
    :sswitch_27
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getTilt()I

    move-result v2

    .line 51
    .local v2, tilt:I
    iget-object v3, p0, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector$1;->this$0:Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;

    iget-object v3, v3, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector;->mEvMotionListener:Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector$OnEvMotionListener;

    invoke-interface {v3, v2}, Lcom/infraware/office/baseframe/gestureproc/porting/EvAdvanceMotionDetector$OnEvMotionListener;->onMotionTilt(I)V

    goto :goto_6

    .line 39
    nop

    :sswitch_data_34
    .sparse-switch
        0x1 -> :sswitch_f
        0x3d -> :sswitch_17
        0x43 -> :sswitch_27
    .end sparse-switch
.end method
