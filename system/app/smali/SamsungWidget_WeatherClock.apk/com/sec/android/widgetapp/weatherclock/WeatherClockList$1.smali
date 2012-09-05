.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$1;
.super Ljava/lang/Object;
.source "WeatherClockList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x2edf

    .line 127
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->isActivityVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 128
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuAdd;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    const-string v1, "appWidgetId"

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->mAppWidgetId:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->access$000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const-string v1, "flags"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;

    invoke-virtual {v1, v0, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 137
    :cond_29
    return-void
.end method
