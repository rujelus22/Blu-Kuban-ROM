.class public Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;
.super Ljava/lang/Object;
.source "AccuWeatherContainer.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public Check:Ljava/lang/Boolean;

.field public UpdateState:I

.field public WeatherCityLocation:Ljava/lang/String;

.field public WeatherCityName:Ljava/lang/String;

.field public WeatherCityState:Ljava/lang/String;

.field public WeatherCityTime:Ljava/lang/String;

.field public WeatherForecastDay1Date:Ljava/lang/String;

.field public WeatherForecastDay1HighTemperature:I

.field public WeatherForecastDay1LowTemperature:I

.field public WeatherForecastDay1Url:Ljava/lang/String;

.field public WeatherForecastDay1WeatherIcon:I

.field public WeatherForecastDay1WeatherText:Ljava/lang/String;

.field public WeatherForecastDay2Date:Ljava/lang/String;

.field public WeatherForecastDay2HighTemperature:I

.field public WeatherForecastDay2LowTemperature:I

.field public WeatherForecastDay2Url:Ljava/lang/String;

.field public WeatherForecastDay2WeatherIcon:I

.field public WeatherForecastDay2WeatherText:Ljava/lang/String;

.field public WeatherForecastDay3Date:Ljava/lang/String;

.field public WeatherForecastDay3HighTemperature:I

.field public WeatherForecastDay3LowTemperature:I

.field public WeatherForecastDay3Url:Ljava/lang/String;

.field public WeatherForecastDay3WeatherIcon:I

.field public WeatherForecastDay3WeatherText:Ljava/lang/String;

.field public WeatherForecastDay4Date:Ljava/lang/String;

.field public WeatherForecastDay4HighTemperature:I

.field public WeatherForecastDay4LowTemperature:I

.field public WeatherForecastDay4Url:Ljava/lang/String;

.field public WeatherForecastDay4WeatherIcon:I

.field public WeatherForecastDay4WeatherText:Ljava/lang/String;

.field public WeatherForecastMainUrl:Ljava/lang/String;

.field public WeatherForecastNight1HighTemperature:I

.field public WeatherForecastNight1LowTemperature:I

.field public WeatherForecastNight1WeatherIcon:I

.field public WeatherForecastNight1WeatherText:Ljava/lang/String;

.field public WeatherForecastNight2HighTemperature:I

.field public WeatherForecastNight2LowTemperature:I

.field public WeatherForecastNight2WeatherIcon:I

.field public WeatherForecastNight2WeatherText:Ljava/lang/String;

.field public WeatherForecastNight3HighTemperature:I

.field public WeatherForecastNight3LowTemperature:I

.field public WeatherForecastNight3WeatherIcon:I

.field public WeatherForecastNight3WeatherText:Ljava/lang/String;

.field public WeatherForecastNight4HighTemperature:I

.field public WeatherForecastNight4LowTemperature:I

.field public WeatherForecastNight4WeatherIcon:I

.field public WeatherForecastNight4WeatherText:Ljava/lang/String;

.field public WeatherIndex:I

.field public WeatherTime:Ljava/lang/Long;

.field public WeatherTodayTemperature:I

.field public WeatherTodayUrl:Ljava/lang/String;

.field public WeatherTodayWeatherIcon:I

.field public WeatherTodayWeatherSunrise:Ljava/lang/String;

.field public WeatherTodayWeatherSunset:Ljava/lang/String;

.field public WeatherTodayWeatherText:Ljava/lang/String;

.field public WeatherTodayWindDirection:Ljava/lang/String;

.field public WeatherTodayWindSpeed:Ljava/lang/String;

.field public WeatherUnitsDist:Ljava/lang/String;

.field public WeatherUnitsPrec:Ljava/lang/String;

.field public WeatherUnitsPres:Ljava/lang/String;

.field public WeatherUnitsSpeed:Ljava/lang/String;

.field public WeatherUnitsTemp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->Check:Ljava/lang/Boolean;

    return-void
.end method
