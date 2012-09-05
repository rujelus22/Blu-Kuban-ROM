.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8$1;
.super Ljava/lang/Object;
.source "WeatherClockDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8;

.field final synthetic val$location:Ljava/lang/String;

.field final synthetic val$responseBody:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1487
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8;

    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8$1;->val$location:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8$1;->val$responseBody:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1489
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8$1;->val$location:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8$1;->val$responseBody:Ljava/lang/String;

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->parseResponseAndSave2DB(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$1300(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1490
    .local v0, parseResult:Z
    if-nez v0, :cond_13

    .line 1492
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8;

    const/4 v2, -0x1

    iput v2, v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8;->responseCode:I

    .line 1494
    :cond_13
    return-void
.end method
