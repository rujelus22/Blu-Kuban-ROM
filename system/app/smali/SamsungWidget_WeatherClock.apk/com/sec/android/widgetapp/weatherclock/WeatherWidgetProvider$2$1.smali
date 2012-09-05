.class Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2$1;
.super Ljava/lang/Object;
.source "WeatherWidgetProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2;->onReceive(IILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2;)V
    .registers 2
    .parameter

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 1109
    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->checkAutoRefresh()V
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1400()V

    .line 1110
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->startScroll()V

    .line 1111
    return-void
.end method
