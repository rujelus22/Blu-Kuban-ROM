.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$6;
.super Ljava/lang/Object;
.source "WeatherClockDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setEventListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    .line 1088
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    const-string v5, "DETAIL_HOME"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->setViewUri(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 1089
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1090
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$6;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-virtual {v3, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 1097
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_17
    return-void

    .line 1092
    :catch_18
    move-exception v0

    .line 1095
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method
