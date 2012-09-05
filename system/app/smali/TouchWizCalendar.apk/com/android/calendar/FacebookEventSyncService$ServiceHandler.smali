.class final Lcom/android/calendar/FacebookEventSyncService$ServiceHandler;
.super Landroid/os/Handler;
.source "FacebookEventSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/FacebookEventSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/FacebookEventSyncService;


# direct methods
.method public constructor <init>(Lcom/android/calendar/FacebookEventSyncService;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/calendar/FacebookEventSyncService$ServiceHandler;->this$0:Lcom/android/calendar/FacebookEventSyncService;

    .line 65
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 70
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 71
    .local v0, action:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 73
    iget-object v1, p0, Lcom/android/calendar/FacebookEventSyncService$ServiceHandler;->this$0:Lcom/android/calendar/FacebookEventSyncService;

    invoke-virtual {v1}, Lcom/android/calendar/FacebookEventSyncService;->syncEventsPartial()V

    .line 75
    :cond_a
    return-void
.end method
