.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$9;
.super Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;
.source "WeatherClockDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->performNetworkAccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

.field final synthetic val$location:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1543
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$9;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$9;->val$location:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(IILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "position"
    .parameter "responseCode"
    .parameter "responseStatus"
    .parameter "responseBody"

    .prologue
    .line 1546
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V

    .line 1548
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$9;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mRequestCanceled:Z
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$1200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1562
    :goto_b
    return-void

    .line 1550
    :cond_c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1552
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1553
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1554
    const-string v2, "LOCATION"

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$9;->val$location:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    const-string v2, "RESPONSE_BODY"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1559
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$9;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->httpHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1561
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$9;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-virtual {v2, p1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->deleteMe(I)V

    goto :goto_b
.end method
