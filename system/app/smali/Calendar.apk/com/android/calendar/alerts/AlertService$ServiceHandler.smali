.class final Lcom/android/calendar/alerts/AlertService$ServiceHandler;
.super Landroid/os/Handler;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/AlertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/alerts/AlertService;


# direct methods
.method public constructor <init>(Lcom/android/calendar/alerts/AlertService;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertService$ServiceHandler;->this$0:Lcom/android/calendar/alerts/AlertService;

    .line 457
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 458
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$ServiceHandler;->this$0:Lcom/android/calendar/alerts/AlertService;

    invoke-virtual {v0, p1}, Lcom/android/calendar/alerts/AlertService;->processMessage(Landroid/os/Message;)V

    .line 465
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$ServiceHandler;->this$0:Lcom/android/calendar/alerts/AlertService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/calendar/alerts/AlertReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 466
    return-void
.end method
