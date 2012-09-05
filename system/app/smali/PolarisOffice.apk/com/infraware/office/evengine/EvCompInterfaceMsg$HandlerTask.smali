.class public Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;
.super Landroid/os/Handler;
.source "EvCompInterfaceMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/evengine/EvCompInterfaceMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HandlerTask"
.end annotation


# static fields
.field private static final PREVIEW_TIMER:I = 0x1

.field private static final RUNTIMER:I


# instance fields
.field private mbAlive:Z

.field private mbPreview:Z

.field final synthetic this$0:Lcom/infraware/office/evengine/EvCompInterfaceMsg;


# direct methods
.method protected constructor <init>(Lcom/infraware/office/evengine/EvCompInterfaceMsg;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 19
    iput-object p1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->this$0:Lcom/infraware/office/evengine/EvCompInterfaceMsg;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->mbAlive:Z

    .line 24
    iput-boolean v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->mbPreview:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const-wide/16 v2, 0x1

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0, v1}, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->removeMessages(I)V

    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4c

    .line 75
    :cond_b
    :goto_b
    return-void

    .line 53
    :pswitch_c
    iget-boolean v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->mbAlive:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->this$0:Lcom/infraware/office/evengine/EvCompInterfaceMsg;

    iget v0, v0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->mbSuspend:I

    if-nez v0, :cond_1d

    .line 55
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->this$0:Lcom/infraware/office/evengine/EvCompInterfaceMsg;

    iget-object v0, v0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ITimer()V

    .line 58
    :cond_1d
    iget-boolean v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->mbAlive:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->this$0:Lcom/infraware/office/evengine/EvCompInterfaceMsg;

    iget v0, v0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->mbSuspend:I

    if-nez v0, :cond_b

    .line 60
    invoke-virtual {p0, v1, v2, v3}, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_b

    .line 64
    :pswitch_2b
    iget-boolean v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->mbPreview:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->this$0:Lcom/infraware/office/evengine/EvCompInterfaceMsg;

    iget v0, v0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->mbSuspend:I

    if-nez v0, :cond_3c

    .line 66
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->this$0:Lcom/infraware/office/evengine/EvCompInterfaceMsg;

    iget-object v0, v0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ISetPreviewTimerCB()V

    .line 69
    :cond_3c
    iget-boolean v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->mbPreview:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->this$0:Lcom/infraware/office/evengine/EvCompInterfaceMsg;

    iget v0, v0, Lcom/infraware/office/evengine/EvCompInterfaceMsg;->mbSuspend:I

    if-nez v0, :cond_b

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_b

    .line 50
    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_c
        :pswitch_2b
    .end packed-switch
.end method

.method setOperationTimer(Z)V
    .registers 5
    .parameter "bStart"

    .prologue
    const/4 v2, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->mbAlive:Z

    .line 28
    iget-boolean v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->mbAlive:Z

    if-eqz v0, :cond_b

    .line 30
    invoke-virtual {p0, v2}, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->sendEmptyMessage(I)Z

    .line 35
    :goto_a
    return-void

    .line 32
    :cond_b
    const-string v0, "EvCompInterfaceMsg"

    const-string v1, "remove timer1"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, v2}, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->removeMessages(I)V

    goto :goto_a
.end method

.method setPreviewTimer(Z)V
    .registers 5
    .parameter "bStart"

    .prologue
    const/4 v2, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->mbPreview:Z

    .line 39
    iget-boolean v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->mbPreview:Z

    if-eqz v0, :cond_b

    .line 41
    invoke-virtual {p0, v2}, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->sendEmptyMessage(I)Z

    .line 46
    :goto_a
    return-void

    .line 43
    :cond_b
    const-string v0, "EvCompInterfaceMsg"

    const-string v1, "remove timer1"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, v2}, Lcom/infraware/office/evengine/EvCompInterfaceMsg$HandlerTask;->removeMessages(I)V

    goto :goto_a
.end method
