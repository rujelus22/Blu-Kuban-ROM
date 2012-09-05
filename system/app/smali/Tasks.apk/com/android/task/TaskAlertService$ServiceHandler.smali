.class final Lcom/android/task/TaskAlertService$ServiceHandler;
.super Landroid/os/Handler;
.source "TaskAlertService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/task/TaskAlertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/task/TaskAlertService;


# direct methods
.method public constructor <init>(Lcom/android/task/TaskAlertService;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/task/TaskAlertService$ServiceHandler;->this$0:Lcom/android/task/TaskAlertService;

    .line 303
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 304
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/task/TaskAlertService$ServiceHandler;->this$0:Lcom/android/task/TaskAlertService;

    invoke-virtual {v0, p1}, Lcom/android/task/TaskAlertService;->processMessage(Landroid/os/Message;)V

    .line 312
    iget-object v0, p0, Lcom/android/task/TaskAlertService$ServiceHandler;->this$0:Lcom/android/task/TaskAlertService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/task/TaskAlertReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 313
    return-void
.end method
