.class public Lcom/sec/android/app/clockpackage/worldclock/City;
.super Ljava/lang/Object;
.source "City.java"


# instance fields
.field private isDBSelected:Z

.field public mCityUnqID:I

.field private mCountry:Ljava/lang/String;

.field public mLatitude:F

.field public mLongitude:F

.field private mName:Ljava/lang/String;

.field private mNationalFlag:I

.field public mRawOffset:I

.field public mTextAlign:I

.field private mTimeZoneID:Ljava/lang/String;

.field public mZoomLevel:I

.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->timeZone:Ljava/util/TimeZone;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFFI)V
    .registers 12
    .parameter "name"
    .parameter "country"
    .parameter "timeZoneID"
    .parameter "rawOffset"
    .parameter "zoomlevel"
    .parameter "textalign"
    .parameter "cityUnqID"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "nationalFlag"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->timeZone:Ljava/util/TimeZone;

    .line 67
    invoke-virtual/range {p0 .. p10}, Lcom/sec/android/app/clockpackage/worldclock/City;->initCityInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFFI)V

    .line 69
    return-void
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getDBSelected()Z
    .registers 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->isDBSelected:Z

    return v0
.end method

.method public getGMT()Ljava/lang/String;
    .registers 5

    .prologue
    const v3, 0x36ee80

    .line 117
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getLocalRawOffset()I

    move-result v1

    .line 120
    .local v1, rawOffset:I
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "GMT"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, GMT:Ljava/lang/StringBuffer;
    div-int v2, v1, v3

    if-ltz v2, :cond_17

    .line 125
    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    :cond_17
    div-int v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    rem-int v2, v1, v3

    if-gtz v2, :cond_28

    rem-int v2, v1, v3

    if-gez v2, :cond_3e

    .line 135
    :cond_28
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    rem-int v2, v1, v3

    const v3, 0xea60

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getGMT_num()I
    .registers 3

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getLocalRawOffset()I

    move-result v0

    const v1, 0x36ee80

    div-int/2addr v0, v1

    return v0
.end method

.method public getLatitude()F
    .registers 2

    .prologue
    .line 213
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->mLatitude:F

    return v0
.end method

.method public getLocalRawOffset()I
    .registers 3

    .prologue
    .line 368
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->mRawOffset:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->timeZone:Ljava/util/TimeZone;

    if-nez v0, :cond_11

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->mTimeZoneID:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->timeZone:Ljava/util/TimeZone;

    .line 376
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->mRawOffset:I

    .line 380
    :cond_19
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->mRawOffset:I

    return v0
.end method

.method public getLongitude()F
    .registers 2

    .prologue
    .line 223
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->mLongitude:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalFlag()I
    .registers 2

    .prologue
    .line 389
    const/4 v0, -0x1

    return v0
.end method

.method public getRawOffsetMillis()I
    .registers 2

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getLocalRawOffset()I

    move-result v0

    return v0
.end method

.method public getTimeZoneID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->mTimeZoneID:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 318
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->mCityUnqID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getZoomLevel()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 298
    iget v0, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->mZoomLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public initCityInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFFI)V
    .registers 11
    .parameter "name"
    .parameter "country"
    .parameter "timeZoneID"
    .parameter "rawOffset"
    .parameter "zoomlevel"
    .parameter "textalign"
    .parameter "cityUnqID"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "nationalFlag"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->mName:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->mCountry:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->mTimeZoneID:Ljava/lang/String;

    .line 86
    iput p4, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->mRawOffset:I

    .line 87
    iput p5, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->mZoomLevel:I

    .line 88
    iput p6, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->mTextAlign:I

    .line 89
    iput p7, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->mCityUnqID:I

    .line 90
    iput p8, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->mLatitude:F

    .line 91
    iput p9, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->mLongitude:F

    .line 92
    iput p10, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->mNationalFlag:I

    .line 93
    return-void
.end method

.method public setDBSelected(Z)V
    .registers 2
    .parameter "isDBSelected"

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/worldclock/City;->isDBSelected:Z

    .line 205
    return-void
.end method
