.class public Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
.super Ljava/lang/Object;
.source "CityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field mCity:Ljava/lang/String;

.field mLatitude:Ljava/lang/String;

.field mLocation:Ljava/lang/String;

.field mLongitude:Ljava/lang/String;

.field mProvider:I

.field mState:Ljava/lang/String;

.field zoomlevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 137
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo$1;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 126
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mCity:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mState:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mLocation:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mLatitude:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mLongitude:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mProvider:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->zoomlevel:I

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter "city"
    .parameter "state"
    .parameter "location"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "provider"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mCity:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mState:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mLocation:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mLatitude:Ljava/lang/String;

    .line 15
    iput-object p5, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mLongitude:Ljava/lang/String;

    .line 16
    iput p6, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mProvider:I

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .parameter "mCity"
    .parameter "mState"
    .parameter "mLocation"
    .parameter "mLatitude"
    .parameter "mLongitude"
    .parameter "mProvider"
    .parameter "zoomlevel"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mCity:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mState:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mLocation:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mLatitude:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mLongitude:Ljava/lang/String;

    .line 29
    iput p6, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mProvider:I

    .line 30
    iput p7, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->zoomlevel:I

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mProvider:I

    return v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public getZoomlevel()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->zoomlevel:I

    return v0
.end method

.method public setCity(Ljava/lang/String;)V
    .registers 2
    .parameter "mCity"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mCity:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .registers 2
    .parameter "mLatitude"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mLatitude:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .registers 2
    .parameter "mLocation"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mLocation:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .registers 2
    .parameter "mLongitude"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mLongitude:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setProvider(I)V
    .registers 2
    .parameter "mProvider"

    .prologue
    .line 56
    iput p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mProvider:I

    .line 57
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .registers 2
    .parameter "mState"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mState:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setZoomlevel(I)V
    .registers 2
    .parameter "zoomlevel"

    .prologue
    .line 42
    iput p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->zoomlevel:I

    .line 43
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mCity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mLatitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mLongitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->mProvider:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->zoomlevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    return-void
.end method
