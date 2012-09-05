.class public Lcom/sec/android/widgetapp/dualclock/City;
.super Ljava/lang/Object;
.source "City.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    }
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field public cities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/widgetapp/dualclock/City$CityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public citiesID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCitiesByName:[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

.field private mCitiesByRawOffset:[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "City"

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/City;->TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/City;->cities:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/City;->citiesID:Ljava/util/HashMap;

    .line 37
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/dualclock/City;->loadCities(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/dualclock/City;->loadCitiesID(Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method public findCityByOffset(I)Ljava/lang/String;
    .registers 7
    .parameter "offseet"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/City;->mCitiesByRawOffset:[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    .local v0, arr$:[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_12

    aget-object v1, v0, v2

    .line 207
    .local v1, c:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    iget v4, v1, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->rawOffset:I

    if-ne v4, p1, :cond_f

    .line 208
    iget-object v4, v1, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->name:Ljava/lang/String;

    .line 211
    .end local v1           #c:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    :goto_e
    return-object v4

    .line 206
    .restart local v1       #c:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 211
    .end local v1           #c:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    :cond_12
    const-string v4, ""

    goto :goto_e
.end method

.method public findCityByTimezoneID(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .parameter "id"
    .parameter "_offset"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/City;->mCitiesByRawOffset:[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    .local v0, arr$:[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_16

    aget-object v1, v0, v2

    .line 263
    .local v1, c:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    iget-object v4, v1, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->timeZoneID:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 264
    iget-object v4, v1, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->name:Ljava/lang/String;

    .line 267
    .end local v1           #c:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    :goto_12
    return-object v4

    .line 262
    .restart local v1       #c:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 267
    .end local v1           #c:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    :cond_16
    invoke-virtual {p0, p2}, Lcom/sec/android/widgetapp/dualclock/City;->findCityByOffset(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_12
.end method

.method public findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .registers 3
    .parameter "city"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/City;->cities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    return-object v0
.end method

.method public findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3
    .parameter "cityUniqueID"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/City;->citiesID:Ljava/util/HashMap;

    if-eqz v0, :cond_d

    .line 320
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/City;->citiesID:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 322
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getCitiesByName()[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .registers 12

    .prologue
    .line 110
    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    .line 111
    .local v8, ts:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 112
    .local v2, ht:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/sec/android/widgetapp/dualclock/City$CityInfo;>;"
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/City;->mCitiesByRawOffset:[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    .local v0, arr$:[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_e
    if-ge v3, v5, :cond_58

    aget-object v1, v0, v3

    .line 113
    .local v1, c:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    iget-object v9, v1, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 114
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :goto_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 117
    :cond_4d
    iget-object v9, v1, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v9, v1, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    .line 121
    .end local v1           #c:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    :cond_58
    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 122
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/TreeSet;->size()I

    move-result v9

    new-array v1, v9, [Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    .line 123
    .local v1, c:[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    const/4 v6, 0x0

    .line 124
    .local v6, n:I
    :goto_63
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_79

    .line 125
    add-int/lit8 v7, v6, 0x1

    .end local v6           #n:I
    .local v7, n:I
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    aput-object v9, v1, v6

    move v6, v7

    .end local v7           #n:I
    .restart local v6       #n:I
    goto :goto_63

    .line 127
    :cond_79
    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/City;->mCitiesByName:[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    .line 128
    return-object v1
.end method

.method public getCityPositionByID(I)I
    .registers 12
    .parameter "id"

    .prologue
    .line 156
    const/4 v4, 0x0

    .line 157
    .local v4, index:I
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/City;->getCitiesByName()[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    move-result-object v2

    .line 158
    .local v2, city:[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 159
    .local v8, v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    move-object v0, v2

    .local v0, arr$:[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_d
    if-ge v3, v6, :cond_1d

    aget-object v1, v0, v3

    .line 160
    .local v1, c:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    iget v9, v1, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->uniqueID:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 162
    .end local v1           #c:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    :cond_1d
    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 163
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_33

    .line 164
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 165
    .local v7, temp:I
    if-ne p1, v7, :cond_34

    .line 170
    .end local v7           #temp:I
    :cond_33
    return v4

    .line 168
    .restart local v7       #temp:I
    :cond_34
    add-int/lit8 v4, v4, 0x1

    .line 169
    goto :goto_21
.end method

.method public loadCities(Landroid/content/Context;)V
    .registers 24
    .parameter "context"

    .prologue
    .line 46
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f050006

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 48
    .local v14, mCities:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f050007

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 50
    .local v16, mMappingTable:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f050008

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 56
    .local v15, mCountries:[Ljava/lang/String;
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 57
    .local v9, Salescode:Ljava/lang/String;
    const-string v2, "ARB"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    const-string v2, "HAJ"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    const-string v2, "DAM"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 58
    :cond_3f
    const/16 v2, 0x21

    new-instance v7, Ljava/lang/String;

    const-string v21, " "

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v7, v15, v2

    .line 60
    :cond_4c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f050002

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    .line 62
    .local v17, mTimeZone:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f050003

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 64
    .local v19, mUniqueID:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f050005

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 66
    .local v18, mTimeZoneRawOffset:[Ljava/lang/String;
    const-string v5, ""

    .line 67
    .local v5, tzid:Ljava/lang/String;
    const/4 v6, 0x0

    .line 68
    .local v6, rawOffset:I
    const/16 v2, 0x39

    aget-object v8, v15, v2

    .line 69
    .local v8, Russia:Ljava/lang/String;
    const/4 v1, 0x0

    .line 70
    .local v1, city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    array-length v2, v14

    new-array v2, v2, [Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/widgetapp/dualclock/City;->mCitiesByRawOffset:[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    .line 72
    const/4 v12, 0x0

    .local v12, i:I
    move-object v10, v1

    .end local v1           #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .local v10, city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    :goto_7e
    :try_start_7e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/dualclock/City;->mCitiesByRawOffset:[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    array-length v2, v2

    if-ge v12, v2, :cond_f3

    .line 73
    aget-object v3, v14, v12

    .line 74
    .local v3, name:Ljava/lang/String;
    aget-object v2, v16, v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 75
    .local v20, mappingValue:I
    aget-object v4, v15, v20

    .line 76
    .local v4, country:Ljava/lang/String;
    aget-object v5, v17, v12

    .line 78
    aget-object v2, v18, v12

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 79
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 80
    const v2, 0x36ee80

    add-int/2addr v6, v2

    .line 82
    :cond_a5
    new-instance v1, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    aget-object v2, v19, v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;-><init>(Lcom/sec/android/widgetapp/dualclock/City;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_b6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7e .. :try_end_b6} :catch_fd
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_b6} :catch_f5

    .line 84
    .end local v10           #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .restart local v1       #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    :try_start_b6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/dualclock/City;->cities:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/dualclock/City;->cities:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :goto_dc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/dualclock/City;->mCitiesByRawOffset:[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    aput-object v1, v2, v12

    .line 72
    add-int/lit8 v12, v12, 0x1

    move-object v10, v1

    .end local v1           #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .restart local v10       #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    goto :goto_7e

    .line 87
    .end local v10           #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .restart local v1       #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    :cond_e6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/dualclock/City;->cities:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ed
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b6 .. :try_end_ed} :catch_ee
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_ed} :catch_fb

    goto :goto_dc

    .line 91
    :catch_ee
    move-exception v13

    .line 92
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #country:Ljava/lang/String;
    .end local v20           #mappingValue:I
    .local v13, ie:Ljava/lang/IndexOutOfBoundsException;
    :goto_ef
    invoke-virtual {v13}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    .line 96
    .end local v13           #ie:Ljava/lang/IndexOutOfBoundsException;
    :goto_f2
    return-void

    .end local v1           #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .restart local v10       #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    :cond_f3
    move-object v1, v10

    .line 95
    .end local v10           #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .restart local v1       #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    goto :goto_f2

    .line 93
    .end local v1           #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .restart local v10       #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    :catch_f5
    move-exception v11

    move-object v1, v10

    .line 94
    .end local v10           #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .restart local v1       #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .local v11, e:Ljava/lang/Exception;
    :goto_f7
    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_f2

    .line 93
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #country:Ljava/lang/String;
    .restart local v20       #mappingValue:I
    :catch_fb
    move-exception v11

    goto :goto_f7

    .line 91
    .end local v1           #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #country:Ljava/lang/String;
    .end local v20           #mappingValue:I
    .restart local v10       #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    :catch_fd
    move-exception v13

    move-object v1, v10

    .end local v10           #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .restart local v1       #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    goto :goto_ef
.end method

.method public loadCitiesID(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, cityname:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/City;->mCitiesByRawOffset:[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1f

    .line 101
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/City;->citiesID:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 103
    :cond_1f
    return-void
.end method

.method public setupCityListByGMT()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/dualclock/ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/dualclock/ListItem;>;"
    new-instance v2, Lcom/sec/android/widgetapp/dualclock/City$2;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/dualclock/City$2;-><init>(Lcom/sec/android/widgetapp/dualclock/City;)V

    .line 230
    .local v2, com:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/sec/android/widgetapp/dualclock/City$CityInfo;>;"
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/City;->mCitiesByName:[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    invoke-static {v6, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 231
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/City;->mCitiesByName:[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    .local v0, arr$:[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_13
    if-ge v3, v5, :cond_2e

    aget-object v1, v0, v3

    .line 232
    .local v1, c:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    new-instance v6, Lcom/sec/android/widgetapp/dualclock/ListItem;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getGMT()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getRawOffsetMillis()I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lcom/sec/android/widgetapp/dualclock/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 235
    .end local v1           #c:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    :cond_2e
    return-object v4
.end method

.method public setupCityListByName()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/dualclock/ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 244
    .local v6, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/City;->getCitiesByName()[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    move-result-object v2

    .line 245
    .local v2, city:[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/dualclock/ListItem;>;"
    move-object v0, v2

    .local v0, arr$:[Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_11
    if-ge v3, v5, :cond_47

    aget-object v1, v0, v3

    .line 247
    .local v1, c:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    new-instance v7, Lcom/sec/android/widgetapp/dualclock/ListItem;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getGMT()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getRawOffsetMillis()I

    move-result v10

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getUniqueID()I

    move-result v11

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/sec/android/widgetapp/dualclock/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 246
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 254
    .end local v1           #c:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    :cond_47
    return-object v4
.end method
