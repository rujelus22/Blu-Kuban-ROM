.class public Ltwitter4j/GeoLocation;
.super Ljava/lang/Object;
.source "GeoLocation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x434604a578b0df0fL


# instance fields
.field protected latitude:D

.field protected longitude:D


# direct methods
.method public constructor <init>(DD)V
    .registers 5
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Ltwitter4j/GeoLocation;->latitude:D

    .line 43
    iput-wide p3, p0, Ltwitter4j/GeoLocation;->longitude:D

    .line 44
    return-void
.end method

.method static coordinatesAsGeoLocationArray(Lorg/json/JSONArray;)[[Ltwitter4j/GeoLocation;
    .registers 13
    .parameter "coordinates"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 73
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v1, v6, [[Ltwitter4j/GeoLocation;

    .line 74
    .local v1, boundingBox:[[Ltwitter4j/GeoLocation;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_7
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_44

    .line 75
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    .line 76
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [Ltwitter4j/GeoLocation;

    aput-object v6, v1, v3

    .line 77
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_3a

    .line 78
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 79
    .local v2, coordinate:Lorg/json/JSONArray;
    aget-object v6, v1, v3

    new-instance v7, Ltwitter4j/GeoLocation;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Ltwitter4j/GeoLocation;-><init>(DD)V

    aput-object v7, v6, v4
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_37} :catch_3d

    .line 77
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 74
    .end local v2           #coordinate:Lorg/json/JSONArray;
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 83
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v1           #boundingBox:[[Ltwitter4j/GeoLocation;
    .end local v3           #i:I
    .end local v4           #j:I
    :catch_3d
    move-exception v5

    .line 84
    .local v5, jsone:Lorg/json/JSONException;
    new-instance v6, Ltwitter4j/TwitterException;

    invoke-direct {v6, v5}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 82
    .end local v5           #jsone:Lorg/json/JSONException;
    .restart local v1       #boundingBox:[[Ltwitter4j/GeoLocation;
    .restart local v3       #i:I
    :cond_44
    return-object v1
.end method

.method static getInstance(Lorg/json/JSONObject;)Ltwitter4j/GeoLocation;
    .registers 9
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    const-string v3, "geo"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 57
    const-string v3, "geo"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "coordinates"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, coordinates:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 60
    const-string v3, ","

    invoke-static {v0, v3}, Ltwitter4j/internal/util/T4JInternalStringUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, point:[Ljava/lang/String;
    new-instance v3, Ltwitter4j/GeoLocation;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Ltwitter4j/GeoLocation;-><init>(DD)V
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_38} :catch_39

    .line 67
    .end local v0           #coordinates:Ljava/lang/String;
    .end local v2           #point:[Ljava/lang/String;
    :goto_38
    return-object v3

    .line 64
    :catch_39
    move-exception v1

    .line 65
    .local v1, jsone:Lorg/json/JSONException;
    new-instance v3, Ltwitter4j/TwitterException;

    invoke-direct {v3, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 67
    .end local v1           #jsone:Lorg/json/JSONException;
    :cond_40
    const/4 v3, 0x0

    goto :goto_38
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    if-ne p0, p1, :cond_5

    .line 116
    :cond_4
    :goto_4
    return v1

    .line 109
    :cond_5
    instance-of v3, p1, Ltwitter4j/GeoLocation;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 111
    check-cast v0, Ltwitter4j/GeoLocation;

    .line 113
    .local v0, that:Ltwitter4j/GeoLocation;
    invoke-virtual {v0}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v3

    iget-wide v5, p0, Ltwitter4j/GeoLocation;->latitude:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_1c

    move v1, v2

    goto :goto_4

    .line 114
    :cond_1c
    invoke-virtual {v0}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v3

    iget-wide v5, p0, Ltwitter4j/GeoLocation;->longitude:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 94
    iget-wide v0, p0, Ltwitter4j/GeoLocation;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 103
    iget-wide v0, p0, Ltwitter4j/GeoLocation;->longitude:D

    return-wide v0
.end method

.method public hashCode()I
    .registers 11

    .prologue
    const-wide/16 v3, 0x0

    const/16 v9, 0x20

    const-wide/16 v7, 0x0

    .line 123
    iget-wide v5, p0, Ltwitter4j/GeoLocation;->latitude:D

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_2b

    iget-wide v5, p0, Ltwitter4j/GeoLocation;->latitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 124
    .local v1, temp:J
    :goto_12
    ushr-long v5, v1, v9

    xor-long/2addr v5, v1

    long-to-int v0, v5

    .line 125
    .local v0, result:I
    iget-wide v5, p0, Ltwitter4j/GeoLocation;->longitude:D

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_2d

    iget-wide v3, p0, Ltwitter4j/GeoLocation;->longitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 126
    :goto_22
    mul-int/lit8 v3, v0, 0x1f

    ushr-long v4, v1, v9

    xor-long/2addr v4, v1

    long-to-int v4, v4

    add-int v0, v3, v4

    .line 127
    return v0

    .end local v0           #result:I
    .end local v1           #temp:J
    :cond_2b
    move-wide v1, v3

    .line 123
    goto :goto_12

    .restart local v0       #result:I
    .restart local v1       #temp:J
    :cond_2d
    move-wide v1, v3

    .line 125
    goto :goto_22
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "GeoLocation{latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/GeoLocation;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/GeoLocation;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
