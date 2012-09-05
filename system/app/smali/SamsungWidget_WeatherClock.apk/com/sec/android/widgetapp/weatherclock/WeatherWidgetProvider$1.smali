.class Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$1;
.super Ljava/lang/Object;
.source "WeatherWidgetProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;

.field final synthetic val$temp_ids:[I


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;[I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 743
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$1;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;

    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$1;->val$temp_ids:[I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 746
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$102(Z)Z

    .line 748
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_16

    .line 749
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->getWeatherDBData(Landroid/content/Context;)Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$300(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 751
    :cond_16
    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->stopThreads()V
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$400()V

    .line 753
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 755
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$1;->val$temp_ids:[I

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->performNetworkAccess(Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;[IZZ)V
    invoke-static {v1, v2, v3, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$500(Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;[IZZ)V

    .line 753
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 758
    :cond_36
    return-void
.end method
