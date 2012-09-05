.class public Lcom/infraware/office/baseframe/gestureproc/EvPptGestureProc;
.super Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;
.source "EvPptGestureProc.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V
    .registers 6
    .parameter "activity"
    .parameter "view"
    .parameter "listener"

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/infraware/office/baseframe/gestureproc/EvEditGestureProc;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;)V

    .line 11
    iget-object v0, p0, Lcom/infraware/office/baseframe/gestureproc/EvPptGestureProc;->mAdvGestureDetector:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;->setIsLongpressEnabled(Z)V

    .line 12
    const-string v0, "EvPptGestureProc"

    const-string v1, "EvPptGestureProc"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method
