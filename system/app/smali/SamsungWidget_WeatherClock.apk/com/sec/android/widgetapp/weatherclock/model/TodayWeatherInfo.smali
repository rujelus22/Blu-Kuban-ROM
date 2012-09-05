.class public Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;
.super Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;
.source "TodayWeatherInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field mCurrentTemp:F

.field mTimeZone:Ljava/lang/String;

.field mUpdateDate:Ljava/lang/String;

.field mUrl:Ljava/lang/String;

.field mWeatherText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 123
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo$1;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;-><init>()V

    .line 16
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
    .line 20
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;-><init>(IFFILjava/lang/String;)V

    .line 21
    iput p5, p0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mCurrentTemp:F

    .line 22
    iput-object p6, p0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mTimeZone:Ljava/lang/String;

    .line 23
    iput-object p7, p0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mWeatherText:Ljava/lang/String;

    .line 24
    iput-object p8, p0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mUrl:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(ILcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "tempScale"
    .parameter "generalInfo"
    .parameter "currentTemp"
    .parameter "timezone"
    .parameter "weathertext"
    .parameter "url"

    .prologue
    .line 34
    invoke-virtual {p2}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v2

    invoke-virtual {p2}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v3

    invoke-virtual {p2}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;-><init>(IFFIFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;-><init>()V

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mCurrentTemp:F

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->mHighTemp:F

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->mLowTemp:F

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mTimeZone:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mUpdateDate:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mWeatherText:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mUrl:Ljava/lang/String;

    .line 121
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public getCurrentTemp()F
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mCurrentTemp:F

    return v0
.end method

.method public getHighTemp()F
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->mHighTemp:F

    return v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentTemp(F)V
    .registers 2
    .parameter "temperature"

    .prologue
    .line 44
    iput p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mCurrentTemp:F

    .line 45
    return-void
.end method

.method public setLowTemp(F)V
    .registers 2
    .parameter "temperature"

    .prologue
    .line 54
    iput p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->mLowTemp:F

    .line 55
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .registers 2
    .parameter "timezone"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mTimeZone:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setUpdateDate(Ljava/lang/String;)V
    .registers 2
    .parameter "timestamp"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mUpdateDate:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "url"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mUrl:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setWeatherText(Ljava/lang/String;)V
    .registers 2
    .parameter "mWeatherText"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mWeatherText:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 103
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mCurrentTemp:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 104
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->mHighTemp:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 105
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->mLowTemp:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mTimeZone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mUpdateDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mWeatherText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return-void
.end method
