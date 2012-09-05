.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$10;
.super Ljava/lang/Object;
.source "WeatherClockDetail.java"

# interfaces
.implements Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->showRefreshDialog()V
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
    .line 1617
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$10;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(I)V
    .registers 4
    .parameter "buttonType"

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$10;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->stopHttpThread()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$1500(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    .line 1621
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$10;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mRequestCanceled:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$1202(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Z)Z

    .line 1622
    return-void
.end method
