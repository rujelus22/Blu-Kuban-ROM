.class public Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;
.super Ljava/lang/Object;
.source "SearchWeatherInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field mCurrentTemp:F

.field mHighTemp:F

.field mIconNum:I

.field mLowTemp:F

.field mTempScale:I

.field mTimeZone:Ljava/lang/String;

.field mTimestamp:Ljava/lang/String;

.field mUpdateDate:Ljava/lang/String;

.field mUrl:Ljava/lang/String;

.field mWeatherText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 86
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo$1;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mCurrentTemp:F

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mTimeZone:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mUpdateDate:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mWeatherText:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mUrl:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mTimestamp:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mTempScale:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mIconNum:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mHighTemp:F

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mLowTemp:F

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;)V
    .registers 3
    .parameter "todayInfo"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget v0, p1, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mCurrentTemp:F

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mCurrentTemp:F

    .line 42
    iget-object v0, p1, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->mTimestamp:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mTimeZone:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mUpdateDate:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mUpdateDate:Ljava/lang/String;

    .line 44
    iget-object v0, p1, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mWeatherText:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mWeatherText:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mUrl:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->mTimestamp:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mTimestamp:Ljava/lang/String;

    .line 47
    iget v0, p1, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->mTempScale:I

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mTempScale:I

    .line 48
    iget v0, p1, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->mIconNum:I

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mIconNum:I

    .line 49
    iget v0, p1, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->mHighTemp:F

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mHighTemp:F

    .line 50
    iget v0, p1, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->mLowTemp:F

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mLowTemp:F

    .line 51
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public getCurrentTemp()F
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mCurrentTemp:F

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getHighTemp()F
    .registers 2

    .prologue
    .line 129
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mHighTemp:F

    return v0
.end method

.method public getIconNum()I
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mIconNum:I

    return v0
.end method

.method public getLowTemp()F
    .registers 2

    .prologue
    .line 133
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mLowTemp:F

    return v0
.end method

.method public getTempScale()I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mTempScale:I

    return v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWeatherText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mWeatherText:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentTemp(F)V
    .registers 2
    .parameter "mCurrentTemp"

    .prologue
    .line 137
    iput p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mCurrentTemp:F

    .line 138
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 2
    .parameter "timestamp"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mTimestamp:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setHighTemp(F)V
    .registers 2
    .parameter "mHighTemp"

    .prologue
    .line 169
    iput p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mHighTemp:F

    .line 170
    return-void
.end method

.method public setIconNum(I)V
    .registers 2
    .parameter "mIconNum"

    .prologue
    .line 165
    iput p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mIconNum:I

    .line 166
    return-void
.end method

.method public setLowTemp(F)V
    .registers 2
    .parameter "mLowTemp"

    .prologue
    .line 173
    iput p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mLowTemp:F

    .line 174
    return-void
.end method

.method public setTempScale(I)V
    .registers 2
    .parameter "mTempScale"

    .prologue
    .line 161
    iput p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mTempScale:I

    .line 162
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .registers 2
    .parameter "mTimeZone"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mTimeZone:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setUpdateDate(Ljava/lang/String;)V
    .registers 2
    .parameter "mUpdateDate"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mUpdateDate:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "mUrl"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mUrl:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setWeatherText(Ljava/lang/String;)V
    .registers 2
    .parameter "mWeatherText"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mWeatherText:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 60
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mCurrentTemp:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 61
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mTimeZone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mUpdateDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mWeatherText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mTimestamp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mTempScale:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mIconNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mHighTemp:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 69
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/model/SearchWeatherInfo;->mLowTemp:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 70
    return-void
.end method
