.class public Lcom/sec/android/daemonapp/info/TodayWeatherInfo;
.super Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;
.source "TodayWeatherInfo.java"


# instance fields
.field mCurrentTemp:F

.field mTimeZone:Ljava/lang/String;

.field mUpdateDate:Ljava/lang/String;

.field mUrl:Ljava/lang/String;

.field mWeatherText:Ljava/lang/String;

.field realFeel:F

.field speedUnit:Ljava/lang/String;

.field windDirection:Ljava/lang/String;

.field windSpeed:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(IFFIFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "tempScale"
    .parameter "lowTemp"
    .parameter "highTemp"
    .parameter "iconNum"
    .parameter "currentTemp"
    .parameter "timezone"
    .parameter "weathertext"
    .parameter "url"

    .prologue
    .line 17
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;-><init>(IFFILjava/lang/String;)V

    .line 18
    iput p5, p0, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->mCurrentTemp:F

    .line 19
    iput-object p6, p0, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->mTimeZone:Ljava/lang/String;

    .line 20
    iput-object p7, p0, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->mWeatherText:Ljava/lang/String;

    .line 21
    iput-object p8, p0, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->mUrl:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(ILcom/sec/android/daemonapp/info/GeneralWeatherInfo;FLjava/lang/String;)V
    .registers 14
    .parameter "tempScale"
    .parameter "generalInfo"
    .parameter "currentTemp"
    .parameter "timezone"

    .prologue
    const/4 v7, 0x0

    .line 66
    invoke-virtual {p2}, Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;->getLowTemp()F

    move-result v2

    invoke-virtual {p2}, Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;->getHighTemp()F

    move-result v3

    invoke-virtual {p2}, Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;->getIconNum()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v5, p3

    move-object v6, p4

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;-><init>(IFFIFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(ILcom/sec/android/daemonapp/info/GeneralWeatherInfo;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "tempScale"
    .parameter "generalInfo"
    .parameter "currentTemp"
    .parameter "timezone"
    .parameter "weathertext"
    .parameter "url"

    .prologue
    .line 71
    invoke-virtual {p2}, Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;->getLowTemp()F

    move-result v2

    invoke-virtual {p2}, Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;->getHighTemp()F

    move-result v3

    invoke-virtual {p2}, Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;->getIconNum()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;-><init>(IFFIFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method public getCurrentTemp()F
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->mCurrentTemp:F

    return v0
.end method

.method public getHighTemp()F
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;->mHighTemp:F

    return v0
.end method

.method public getRealFeel()F
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->realFeel:F

    return v0
.end method

.method public getSpeedUnit()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->speedUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->mUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWeatherText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->mWeatherText:Ljava/lang/String;

    return-object v0
.end method

.method public getWindDirection()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->windDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getWindSpeed()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->windSpeed:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentTemp(F)V
    .registers 2
    .parameter "temperature"

    .prologue
    .line 81
    iput p1, p0, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->mCurrentTemp:F

    .line 82
    return-void
.end method

.method public setLowTemp(F)V
    .registers 2
    .parameter "temperature"

    .prologue
    .line 91
    iput p1, p0, Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;->mLowTemp:F

    .line 92
    return-void
.end method

.method public setRealFeel(F)V
    .registers 2
    .parameter "realFeel"

    .prologue
    .line 31
    iput p1, p0, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->realFeel:F

    .line 32
    return-void
.end method

.method public setSpeedUnit(Ljava/lang/String;)V
    .registers 2
    .parameter "speedUnit"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->speedUnit:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .registers 2
    .parameter "timezone"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->mTimeZone:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setUpdateDate(Ljava/lang/String;)V
    .registers 2
    .parameter "timestamp"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->mUpdateDate:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "url"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->mUrl:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setWeatherText(Ljava/lang/String;)V
    .registers 2
    .parameter "mWeatherText"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->mWeatherText:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setWindDirection(Ljava/lang/String;)V
    .registers 2
    .parameter "windDirection"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->windDirection:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setWindSpeed(Ljava/lang/String;)V
    .registers 2
    .parameter "windSpeed"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sec/android/daemonapp/info/TodayWeatherInfo;->windSpeed:Ljava/lang/String;

    .line 52
    return-void
.end method
