.class Lcom/sec/android/widgetapp/stockclock/WidgetService$DateFormatObserver;
.super Landroid/database/ContentObserver;
.source "WidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/WidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateFormatObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/WidgetService;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/stockclock/WidgetService;)V
    .registers 3
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/WidgetService$DateFormatObserver;->this$0:Lcom/sec/android/widgetapp/stockclock/WidgetService;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 95
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/WidgetService$DateFormatObserver;->this$0:Lcom/sec/android/widgetapp/stockclock/WidgetService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "clock.date_format_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/WidgetService;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    return-void
.end method
