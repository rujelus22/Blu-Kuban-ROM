.class public Lcom/sec/android/daemonapp/info/MapCityInfo;
.super Ljava/lang/Object;
.source "MapCityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field mCity:Ljava/lang/String;

.field mIcon:Ljava/lang/String;

.field mLatitude:Ljava/lang/String;

.field mLocation:Ljava/lang/String;

.field mLongitude:Ljava/lang/String;

.field mProvider:I

.field mState:Ljava/lang/String;

.field mTemp:Ljava/lang/String;

.field mUpdateDate:Ljava/lang/String;

.field zoomlevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 122
    new-instance v0, Lcom/sec/android/daemonapp/info/MapCityInfo$1;

    invoke-direct {v0}, Lcom/sec/android/daemonapp/info/MapCityInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/daemonapp/info/MapCityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mCity:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mState:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mLocation:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mLatitude:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mLongitude:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mTemp:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mIcon:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mProvider:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->zoomlevel:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mUpdateDate:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .parameter "city"
    .parameter "state"
    .parameter "location"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "icon"
    .parameter "temp"
    .parameter "provider"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mCity:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mState:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mLocation:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mLatitude:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mLongitude:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mIcon:Ljava/lang/String;

    .line 34
    iput-object p7, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mTemp:Ljava/lang/String;

    .line 35
    iput p8, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mProvider:I

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .parameter "mCity"
    .parameter "mState"
    .parameter "mLocation"
    .parameter "mLatitude"
    .parameter "mLongitude"
    .parameter "mIcon"
    .parameter "mTemp"
    .parameter "mProvider"
    .parameter "zoomlevel"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mCity:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mState:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mLocation:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mLatitude:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mLongitude:Ljava/lang/String;

    .line 22
    iput-object p7, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mTemp:Ljava/lang/String;

    .line 23
    iput-object p6, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mIcon:Ljava/lang/String;

    .line 24
    iput p8, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mProvider:I

    .line 25
    iput p9, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->zoomlevel:I

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mProvider:I

    return v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public getTemp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method public getZoomlevel()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->zoomlevel:I

    return v0
.end method

.method public setCity(Ljava/lang/String;)V
    .registers 2
    .parameter "mCity"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mCity:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .registers 2
    .parameter "mIcon"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mIcon:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .registers 2
    .parameter "mLatitude"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mLatitude:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .registers 2
    .parameter "mLocation"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mLocation:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .registers 2
    .parameter "mLongitude"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mLongitude:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setProvider(I)V
    .registers 2
    .parameter "mProvider"

    .prologue
    .line 99
    iput p1, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mProvider:I

    .line 100
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .registers 2
    .parameter "mState"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mState:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setTemp(Ljava/lang/String;)V
    .registers 2
    .parameter "mTemp"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mTemp:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setUpdateDate(Ljava/lang/String;)V
    .registers 2
    .parameter "mUpdateDate"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mUpdateDate:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setZoomlevel(I)V
    .registers 2
    .parameter "zoomlevel"

    .prologue
    .line 51
    iput p1, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->zoomlevel:I

    .line 52
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mCity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mLatitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mLongitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mTemp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mProvider:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->zoomlevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/daemonapp/info/MapCityInfo;->mUpdateDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return-void
.end method
