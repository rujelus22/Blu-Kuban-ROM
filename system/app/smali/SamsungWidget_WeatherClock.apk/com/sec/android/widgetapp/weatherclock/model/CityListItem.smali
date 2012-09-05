.class public Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;
.super Ljava/lang/Object;
.source "CityListItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private mCityName:Ljava/lang/String;

.field private mLatitude:Ljava/lang/String;

.field private mLocation:Ljava/lang/String;

.field private mLongitude:Ljava/lang/String;

.field mMainDefault:[Z

.field private mState:Ljava/lang/String;

.field mSummerTime:[Z

.field provider:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .parameter "cityName"
    .parameter "state"
    .parameter "location"
    .parameter "isMainDefault"
    .parameter "isSummerTime"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "provider"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->mMainDefault:[Z

    .line 10
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->mSummerTime:[Z

    .line 14
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->mCityName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->mState:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->mLocation:Ljava/lang/String;

    .line 17
    iput-object p6, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->mLatitude:Ljava/lang/String;

    .line 18
    iput-object p7, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->mLongitude:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->mMainDefault:[Z

    aput-boolean p4, v0, v1

    .line 20
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->mSummerTime:[Z

    aput-boolean p5, v0, v1

    .line 21
    iput p8, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->provider:I

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public getCityName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->mCityName:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->mLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->mLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public getMainDefault()Z
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->mMainDefault:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public getProvider()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->provider:I

    return v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public getSummerTime()Z
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->mSummerTime:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->mCityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->mState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->mLatitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->mLongitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->mMainDefault:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 85
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->mSummerTime:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 86
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->provider:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    return-void
.end method
