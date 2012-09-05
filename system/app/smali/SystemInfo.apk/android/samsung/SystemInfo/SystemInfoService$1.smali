.class Landroid/samsung/SystemInfo/SystemInfoService$1;
.super Landroid/os/Handler;
.source "SystemInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/samsung/SystemInfo/SystemInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/samsung/SystemInfo/SystemInfoService;


# direct methods
.method constructor <init>(Landroid/samsung/SystemInfo/SystemInfoService;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Landroid/samsung/SystemInfo/SystemInfoService$1;->this$0:Landroid/samsung/SystemInfo/SystemInfoService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 95
    :goto_5
    return-void

    .line 91
    :pswitch_6
    iget-object v0, p0, Landroid/samsung/SystemInfo/SystemInfoService$1;->this$0:Landroid/samsung/SystemInfo/SystemInfoService;

    #getter for: Landroid/samsung/SystemInfo/SystemInfoService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/samsung/SystemInfo/SystemInfoService;->access$400(Landroid/samsung/SystemInfo/SystemInfoService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    iget-object v0, p0, Landroid/samsung/SystemInfo/SystemInfoService$1;->this$0:Landroid/samsung/SystemInfo/SystemInfoService;

    #calls: Landroid/samsung/SystemInfo/SystemInfoService;->DisplaySystemInfo()V
    invoke-static {v0}, Landroid/samsung/SystemInfo/SystemInfoService;->access$300(Landroid/samsung/SystemInfo/SystemInfoService;)V

    goto :goto_5

    .line 89
    :pswitch_data_16
    .packed-switch 0x3
        :pswitch_6
    .end packed-switch
.end method
