.class final Lcom/sec/android/daemonapp/info/GeneralWeatherInfo$1;
.super Ljava/lang/Object;
.source "GeneralWeatherInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;
    .registers 3
    .parameter "in"

    .prologue
    .line 95
    new-instance v0, Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;

    invoke-direct {v0, p1}, Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/sec/android/daemonapp/info/GeneralWeatherInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;
    .registers 3
    .parameter "size"

    .prologue
    .line 99
    new-array v0, p1, [Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/sec/android/daemonapp/info/GeneralWeatherInfo$1;->newArray(I)[Lcom/sec/android/daemonapp/info/GeneralWeatherInfo;

    move-result-object v0

    return-object v0
.end method
