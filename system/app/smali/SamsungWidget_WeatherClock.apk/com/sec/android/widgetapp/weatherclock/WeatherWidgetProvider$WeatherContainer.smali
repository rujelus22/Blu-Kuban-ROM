.class Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;
.super Ljava/lang/Object;
.source "WeatherWidgetProvider.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeatherContainer"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public SelectCity:Z

.field public WeatherCityLocation:Ljava/lang/String;

.field public WeatherCityName:Ljava/lang/String;

.field public WeatherCityTime:Ljava/lang/String;

.field public WeatherFivedayDateText:I

.field public WeatherFivedayHighTemperature:I

.field public WeatherFivedayLowTemperature:I

.field public WeatherFivedayWeatherIcon:I

.field public WeatherFourdayDateText:I

.field public WeatherFourdayHighTemperature:I

.field public WeatherFourdayLowTemperature:I

.field public WeatherFourdayWeatherIcon:I

.field public WeatherOnedayDateText:I

.field public WeatherOnedayHighTemperature:I

.field public WeatherOnedayLowTemperature:I

.field public WeatherOnedayWeatherIcon:I

.field public WeatherThreedayDateText:I

.field public WeatherThreedayHighTemperature:I

.field public WeatherThreedayLowTemperature:I

.field public WeatherThreedayWeatherIcon:I

.field public WeatherTime:Ljava/lang/Long;

.field public WeatherTodayHighTemperature:I

.field public WeatherTodayLowTemperature:I

.field public WeatherTodayTemperature:I

.field public WeatherTodayWeatherIcon:I

.field public WeatherTwodayDateText:I

.field public WeatherTwodayHighTemperature:I

.field public WeatherTwodayLowTemperature:I

.field public WeatherTwodayWeatherIcon:I

.field public WeatherUnit:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 118
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;-><init>()V

    return-void
.end method
