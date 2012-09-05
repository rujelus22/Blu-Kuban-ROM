.class final Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$4;
.super Ljava/lang/Object;
.source "WeatherWidgetProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->showError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appWidgetId:I

.field final synthetic val$views:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2162
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$4;->val$views:Landroid/widget/RemoteViews;

    iput p2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$4;->val$appWidgetId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$4;->val$views:Landroid/widget/RemoteViews;

    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$4;->val$appWidgetId:I

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->hideError(Landroid/widget/RemoteViews;I)V
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1800(Landroid/widget/RemoteViews;I)V

    .line 2166
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$4;->val$appWidgetId:I

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$4;->val$appWidgetId:I

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetLayout(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IIZ)V

    .line 2167
    return-void
.end method
