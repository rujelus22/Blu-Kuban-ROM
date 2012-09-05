.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$1;
.super Ljava/lang/Object;
.source "WeatherClockSearchDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->initWeatherClockView()V
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
    .line 344
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->insertSearchCityToDB()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$000(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V

    .line 349
    return-void
.end method
