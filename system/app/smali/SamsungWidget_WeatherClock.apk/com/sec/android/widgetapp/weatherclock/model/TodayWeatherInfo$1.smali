.class final Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo$1;
.super Ljava/lang/Object;
.source "TodayWeatherInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 123
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;
    .registers 3
    .parameter "in"

    .prologue
    .line 125
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    invoke-direct {v0, p1}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;
    .registers 3
    .parameter "size"

    .prologue
    .line 129
    new-array v0, p1, [Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo$1;->newArray(I)[Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v0

    return-object v0
.end method