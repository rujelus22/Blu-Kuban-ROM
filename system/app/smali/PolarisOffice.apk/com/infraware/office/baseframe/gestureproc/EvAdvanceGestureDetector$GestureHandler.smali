.class Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$GestureHandler;
.super Landroid/os/Handler;
.source "EvAdvanceGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$GestureHandler;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;

    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter "handler"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector$GestureHandler;->this$0:Lcom/infraware/office/baseframe/gestureproc/EvAdvanceGestureDetector;

    .line 60
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 74
    return-void
.end method
