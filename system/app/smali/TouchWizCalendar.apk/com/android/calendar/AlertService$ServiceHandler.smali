.class final Lcom/android/calendar/AlertService$ServiceHandler;
.super Landroid/os/Handler;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AlertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AlertService;


# direct methods
.method public constructor <init>(Lcom/android/calendar/AlertService;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 744
    iput-object p1, p0, Lcom/android/calendar/AlertService$ServiceHandler;->this$0:Lcom/android/calendar/AlertService;

    .line 745
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 746
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/calendar/AlertService$ServiceHandler;->this$0:Lcom/android/calendar/AlertService;

    invoke-virtual {v0, p1}, Lcom/android/calendar/AlertService;->processMessage(Landroid/os/Message;)V

    .line 756
    iget-object v0, p0, Lcom/android/calendar/AlertService$ServiceHandler;->this$0:Lcom/android/calendar/AlertService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/calendar/AlertReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 757
    return-void
.end method
