.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7$1;
.super Ljava/lang/Object;
.source "WeatherClockSearchDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7;

.field final synthetic val$cityName:Ljava/lang/String;

.field final synthetic val$location:Ljava/lang/String;

.field final synthetic val$responseBody:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1428
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7;

    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7$1;->val$cityName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7$1;->val$location:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7$1;->val$responseBody:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1432
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7$1;->val$cityName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7$1;->val$location:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7$1;->val$responseBody:Ljava/lang/String;

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->parseResponseAndSave2DB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$1000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1433
    .local v0, parseResult:Z
    if-nez v0, :cond_15

    .line 1435
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7;

    const/4 v2, -0x1

    iput v2, v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7;->responseCode:I

    .line 1437
    :cond_15
    return-void
.end method
