.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$9;
.super Ljava/lang/Object;
.source "WeatherClockSearchDetail.java"

# interfaces
.implements Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->showRefreshDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 1563
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$9;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(I)V
    .registers 4
    .parameter "buttonType"

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$9;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->stopHttpThread()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$1300(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V

    .line 1567
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$9;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mRequestCanceled:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$902(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;Z)Z

    .line 1568
    return-void
.end method
