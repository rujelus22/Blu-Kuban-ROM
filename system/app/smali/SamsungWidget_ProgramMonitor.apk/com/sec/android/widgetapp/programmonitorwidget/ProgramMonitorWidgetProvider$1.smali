.class Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider$1;
.super Landroid/os/Handler;
.source "ProgramMonitorWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider$1;->this$0:Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 232
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_5e

    .line 258
    :goto_5
    return-void

    .line 234
    :pswitch_6
    sget-boolean v1, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->DBG:Z

    if-eqz v1, :cond_11

    .line 235
    const-string v1, "ProgramMonitorWidgetProvider"

    const-string v2, "mHandler GET_RUNNING_APPLICATION_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_11
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ProgramMonitorRemoteService.RUNNING_COUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider$1;->this$0:Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;

    iget-object v1, v1, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    .line 241
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_20
    sget-boolean v1, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->DBG:Z

    if-eqz v1, :cond_2b

    .line 242
    const-string v1, "ProgramMonitorWidgetProvider"

    const-string v2, "mHandler PROCESS_CPU_WARNING"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_2b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ProgramMonitorRemoteService.CPU_USAGE_WARN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .restart local v0       #i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider$1;->this$0:Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;

    iget-object v1, v1, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    .line 249
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_3a
    sget-boolean v1, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->DBG:Z

    if-eqz v1, :cond_45

    .line 250
    const-string v1, "ProgramMonitorWidgetProvider"

    const-string v2, "mHandler GET_RUNNING_APPLICATION_COUNT_AGAIN"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ProgramMonitorRemoteService.UPDATE_RUNNING_COUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .restart local v0       #i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider$1;->this$0:Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;

    iget-object v1, v1, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 255
    iget-object v1, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider$1;->this$0:Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;

    iget-object v1, v1, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0x2bc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    .line 232
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_20
        :pswitch_3a
    .end packed-switch
.end method
