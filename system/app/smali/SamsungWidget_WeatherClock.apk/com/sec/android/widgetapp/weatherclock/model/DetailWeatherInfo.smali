.class public Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
.super Ljava/lang/Object;
.source "DetailWeatherInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field forecasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;",
            ">;"
        }
    .end annotation
.end field

.field todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo$1;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->forecasts:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->forecasts:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    .line 54
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->forecasts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 55
    return-void
.end method


# virtual methods
.method public addForecastInfo(Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->forecasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public getForcastSize()I
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->forecasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;
    .registers 3
    .parameter "index"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->forecasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    return-object v0
.end method

.method public getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    return-object v0
.end method

.method public setTodayWeatherInfo(Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;)V
    .registers 2
    .parameter "todayInfo"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    .line 28
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->todayInfo:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 48
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->forecasts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 49
    return-void
.end method
