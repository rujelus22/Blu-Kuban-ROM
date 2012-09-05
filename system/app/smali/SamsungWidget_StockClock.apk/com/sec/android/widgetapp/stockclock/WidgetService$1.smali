.class Lcom/sec/android/widgetapp/stockclock/WidgetService$1;
.super Landroid/content/BroadcastReceiver;
.source "WidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/WidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/WidgetService;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/WidgetService;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/WidgetService$1;->this$0:Lcom/sec/android/widgetapp/stockclock/WidgetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    if-nez p2, :cond_3

    .line 86
    :cond_2
    :goto_2
    return-void

    .line 49
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, action:Ljava/lang/String;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v2, "clock.date_format_changed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 56
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.stockclock.UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/WidgetService$1;->this$0:Lcom/sec/android/widgetapp/stockclock/WidgetService;

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/stockclock/WidgetService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 59
    .end local v1           #i:Landroid/content/Intent;
    :cond_38
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 61
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.stockclock.UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .restart local v1       #i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/WidgetService$1;->this$0:Lcom/sec/android/widgetapp/stockclock/WidgetService;

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/stockclock/WidgetService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 64
    .end local v1           #i:Landroid/content/Intent;
    :cond_4d
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 66
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.stockclock.UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .restart local v1       #i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/WidgetService$1;->this$0:Lcom/sec/android/widgetapp/stockclock/WidgetService;

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/stockclock/WidgetService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 70
    .end local v1           #i:Landroid/content/Intent;
    :cond_62
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 73
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.stockclock.UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .restart local v1       #i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/WidgetService$1;->this$0:Lcom/sec/android/widgetapp/stockclock/WidgetService;

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/stockclock/WidgetService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 76
    .end local v1           #i:Landroid/content/Intent;
    :cond_77
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 78
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.APPWIDGET_SCREENON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .restart local v1       #i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/WidgetService$1;->this$0:Lcom/sec/android/widgetapp/stockclock/WidgetService;

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/stockclock/WidgetService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 81
    .end local v1           #i:Landroid/content/Intent;
    :cond_8d
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.APPWIDGET_SCREENOFF"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .restart local v1       #i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/WidgetService$1;->this$0:Lcom/sec/android/widgetapp/stockclock/WidgetService;

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/stockclock/WidgetService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2
.end method
