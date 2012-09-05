.class public Lcom/sec/android/app/clockpackage/worldclock/CityManager;
.super Ljava/lang/Object;
.source "CityManager.java"


# static fields
.field public static CITY_COUNT:I

.field public static cities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/clockpackage/worldclock/City;",
            ">;"
        }
    .end annotation
.end field

.field public static citiesByName:[Lcom/sec/android/app/clockpackage/worldclock/City;

.field public static citiesByRawOffset:[Lcom/sec/android/app/clockpackage/worldclock/City;

.field public static citiesID:Ljava/util/HashMap;
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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    .line 35
    sput-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanDBSelected()V
    .registers 5

    .prologue
    .line 256
    sget-object v4, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    if-nez v4, :cond_5

    .line 268
    .local v0, arr$:[Lcom/sec/android/app/clockpackage/worldclock/City;
    .local v2, i$:I
    .local v3, len$:I
    :cond_4
    return-void

    .line 262
    .end local v0           #arr$:[Lcom/sec/android/app/clockpackage/worldclock/City;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_5
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByRawOffset:[Lcom/sec/android/app/clockpackage/worldclock/City;

    .restart local v0       #arr$:[Lcom/sec/android/app/clockpackage/worldclock/City;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_9
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 264
    .local v1, c:Lcom/sec/android/app/clockpackage/worldclock/City;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/android/app/clockpackage/worldclock/City;->setDBSelected(Z)V

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method

.method public static findCityByOffset(I)Ljava/lang/String;
    .registers 7
    .parameter "offseet"

    .prologue
    .line 368
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByRawOffset:[Lcom/sec/android/app/clockpackage/worldclock/City;

    .local v0, arr$:[Lcom/sec/android/app/clockpackage/worldclock/City;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_31

    aget-object v1, v0, v2

    .line 370
    .local v1, c:Lcom/sec/android/app/clockpackage/worldclock/City;
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getLocalRawOffset()I

    move-result v4

    if-ne v4, p0, :cond_2e

    .line 372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 378
    .end local v1           #c:Lcom/sec/android/app/clockpackage/worldclock/City;
    :goto_2d
    return-object v4

    .line 368
    .restart local v1       #c:Lcom/sec/android/app/clockpackage/worldclock/City;
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 378
    .end local v1           #c:Lcom/sec/android/app/clockpackage/worldclock/City;
    :cond_31
    const-string v4, ""

    goto :goto_2d
.end method

.method public static findCityByTimezoneID(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .parameter "id"
    .parameter "_offset"

    .prologue
    .line 485
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByRawOffset:[Lcom/sec/android/app/clockpackage/worldclock/City;

    .local v0, arr$:[Lcom/sec/android/app/clockpackage/worldclock/City;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_35

    aget-object v1, v0, v2

    .line 487
    .local v1, c:Lcom/sec/android/app/clockpackage/worldclock/City;
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getTimeZoneID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 489
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 495
    .end local v1           #c:Lcom/sec/android/app/clockpackage/worldclock/City;
    :goto_31
    return-object v4

    .line 485
    .restart local v1       #c:Lcom/sec/android/app/clockpackage/worldclock/City;
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 495
    .end local v1           #c:Lcom/sec/android/app/clockpackage/worldclock/City;
    :cond_35
    invoke-static {p1}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCityByOffset(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_31
.end method

.method public static findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;
    .registers 2
    .parameter "cityCountry"

    .prologue
    .line 569
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    if-eqz v0, :cond_f

    if-eqz p0, :cond_f

    .line 570
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/worldclock/City;

    .line 573
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 4
    .parameter "cityUniqueID"

    .prologue
    const/4 v1, 0x0

    .line 577
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    if-eqz v2, :cond_14

    if-eqz p0, :cond_14

    .line 578
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 579
    .local v0, cityName:Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 584
    .end local v0           #cityName:Ljava/lang/String;
    :goto_11
    return-object v0

    .restart local v0       #cityName:Ljava/lang/String;
    :cond_12
    move-object v0, v1

    .line 582
    goto :goto_11

    .end local v0           #cityName:Ljava/lang/String;
    :cond_14
    move-object v0, v1

    .line 584
    goto :goto_11
.end method

.method public static getCitiesByName()[Lcom/sec/android/app/clockpackage/worldclock/City;
    .registers 11

    .prologue
    .line 276
    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    .line 278
    .local v8, ts:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 280
    .local v2, ht:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/sec/android/app/clockpackage/worldclock/City;>;"
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByRawOffset:[Lcom/sec/android/app/clockpackage/worldclock/City;

    .local v0, arr$:[Lcom/sec/android/app/clockpackage/worldclock/City;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_e
    if-ge v3, v5, :cond_59

    aget-object v1, v0, v3

    .line 292
    .local v1, c:Lcom/sec/android/app/clockpackage/worldclock/City;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 298
    .end local v1           #c:Lcom/sec/android/app/clockpackage/worldclock/City;
    :cond_59
    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 300
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/TreeSet;->size()I

    move-result v9

    new-array v1, v9, [Lcom/sec/android/app/clockpackage/worldclock/City;

    .line 302
    .local v1, c:[Lcom/sec/android/app/clockpackage/worldclock/City;
    const/4 v6, 0x0

    .line 304
    .local v6, n:I
    :goto_64
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7a

    .line 306
    add-int/lit8 v7, v6, 0x1

    .end local v6           #n:I
    .local v7, n:I
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/clockpackage/worldclock/City;

    aput-object v9, v1, v6

    move v6, v7

    .end local v7           #n:I
    .restart local v6       #n:I
    goto :goto_64

    .line 310
    :cond_7a
    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByName:[Lcom/sec/android/app/clockpackage/worldclock/City;

    .line 312
    return-object v1
.end method

.method public static getCitiesByOffset()[Lcom/sec/android/app/clockpackage/worldclock/City;
    .registers 3

    .prologue
    .line 322
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/sec/android/app/clockpackage/worldclock/City;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/clockpackage/worldclock/City;

    .line 324
    .local v0, c:[Lcom/sec/android/app/clockpackage/worldclock/City;
    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager$1;

    invoke-direct {v1}, Lcom/sec/android/app/clockpackage/worldclock/CityManager$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 358
    return-object v0
.end method

.method public static getCitiesOrderByName()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 613
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->getCitiesByName()[Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v2

    .line 615
    .local v2, city:[Lcom/sec/android/app/clockpackage/worldclock/City;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 627
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v2

    .local v0, arr$:[Lcom/sec/android/app/clockpackage/worldclock/City;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_c
    if-ge v3, v5, :cond_1a

    aget-object v1, v0, v3

    .line 629
    .local v1, c:Lcom/sec/android/app/clockpackage/worldclock/City;
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 634
    .end local v1           #c:Lcom/sec/android/app/clockpackage/worldclock/City;
    :cond_1a
    return-object v4
.end method

.method public static initCity(Landroid/content/Context;)V
    .registers 1
    .parameter "context"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->loadCities(Landroid/content/Context;)V

    .line 47
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->loadCitiesID(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public static loadCities(Landroid/content/Context;)V
    .registers 24
    .parameter "context"

    .prologue
    .line 70
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    if-eqz v1, :cond_c

    .line 72
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 74
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    .line 78
    :cond_c
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    .line 82
    const/4 v13, 0x0

    .local v13, cityname_pinyin:[Ljava/lang/String;
    const/4 v15, 0x0

    .line 84
    .local v15, countries_pinyin:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 86
    .local v12, cityname:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    .line 88
    .local v17, maptables:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 100
    .local v14, countries:[Ljava/lang/String;
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 101
    .local v11, Salescode:Ljava/lang/String;
    const-string v1, "ARB"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    const-string v1, "HAJ"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    const-string v1, "DAM"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 102
    :cond_54
    const/16 v1, 0x21

    new-instance v2, Ljava/lang/String;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v14, v1

    .line 104
    :cond_5f
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 106
    .local v19, timeZone:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 108
    .local v18, textAlign:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    .line 110
    .local v22, zoomlevel:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 112
    .local v20, x_latitude:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    .line 117
    .local v21, y_longitude:[Ljava/lang/String;
    const/4 v10, -0x1

    .line 119
    .local v10, nationalFlag:I
    const/4 v0, 0x0

    .line 121
    .local v0, city:Lcom/sec/android/app/clockpackage/worldclock/City;
    array-length v1, v12

    sput v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->CITY_COUNT:I

    .line 123
    sget v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->CITY_COUNT:I

    new-array v1, v1, [Lcom/sec/android/app/clockpackage/worldclock/City;

    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByRawOffset:[Lcom/sec/android/app/clockpackage/worldclock/City;

    .line 125
    const/4 v7, 0x0

    .local v7, i:I
    :goto_a2
    sget v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->CITY_COUNT:I

    if-ge v7, v1, :cond_10b

    .line 127
    aget-object v1, v22, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 129
    .local v5, zoomlv:I
    aget-object v1, v18, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 131
    .local v6, textal:I
    aget-object v1, v20, v7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 133
    .local v8, latitude:F
    aget-object v1, v21, v7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 135
    .local v9, longitude:F
    aget-object v1, v17, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 144
    .local v16, mapindex:I
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/City;

    .end local v0           #city:Lcom/sec/android/app/clockpackage/worldclock/City;
    aget-object v1, v12, v7

    aget-object v2, v14, v16

    aget-object v3, v19, v7

    const/4 v4, -0x1

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/clockpackage/worldclock/City;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFFI)V

    .line 152
    .restart local v0       #city:Lcom/sec/android/app/clockpackage/worldclock/City;
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v12, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v14, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByRawOffset:[Lcom/sec/android/app/clockpackage/worldclock/City;

    aput-object v0, v1, v7

    .line 125
    add-int/lit8 v7, v7, 0x1

    goto :goto_a2

    .line 159
    .end local v5           #zoomlv:I
    .end local v6           #textal:I
    .end local v8           #latitude:F
    .end local v9           #longitude:F
    .end local v16           #mapindex:I
    :cond_10b
    return-void
.end method

.method public static loadCitiesID(Landroid/content/Context;)V
    .registers 11
    .parameter "context"

    .prologue
    .line 192
    sget-object v6, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    if-eqz v6, :cond_c

    .line 194
    sget-object v6, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 196
    const/4 v6, 0x0

    sput-object v6, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    .line 200
    :cond_c
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, cityname:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, maptables:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, countries:[Ljava/lang/String;
    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, Salescode:Ljava/lang/String;
    const-string v6, "ARB"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_52

    const-string v6, "HAJ"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_52

    const-string v6, "DAM"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 213
    :cond_52
    const/16 v6, 0x21

    new-instance v7, Ljava/lang/String;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v7, v2, v6

    .line 218
    :cond_5d
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5e
    sget-object v6, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByRawOffset:[Lcom/sec/android/app/clockpackage/worldclock/City;

    array-length v6, v6

    if-ge v3, v6, :cond_94

    .line 220
    aget-object v6, v5, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 225
    .local v4, mapindex:I
    sget-object v6, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v1, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 230
    .end local v4           #mapindex:I
    :cond_94
    return-void
.end method

.method public static removeCity()V
    .registers 0

    .prologue
    .line 57
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->unloadCities()V

    .line 59
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->unloadCitiesID()V

    .line 61
    return-void
.end method

.method public static setupCityListByGMT()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;>;"
    new-instance v2, Lcom/sec/android/app/clockpackage/worldclock/CityManager$2;

    invoke-direct {v2}, Lcom/sec/android/app/clockpackage/worldclock/CityManager$2;-><init>()V

    .line 411
    .local v2, com:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/sec/android/app/clockpackage/worldclock/City;>;"
    sget-object v7, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByName:[Lcom/sec/android/app/clockpackage/worldclock/City;

    invoke-static {v7, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 415
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByName:[Lcom/sec/android/app/clockpackage/worldclock/City;

    .local v0, arr$:[Lcom/sec/android/app/clockpackage/worldclock/City;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_13
    if-ge v3, v5, :cond_46

    aget-object v1, v0, v3

    .line 417
    .local v1, c:Lcom/sec/android/app/clockpackage/worldclock/City;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    new-instance v7, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getGMT()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getRawOffsetMillis()I

    move-result v10

    invoke-direct {v7, v8, v9, v10}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 436
    .end local v1           #c:Lcom/sec/android/app/clockpackage/worldclock/City;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :cond_46
    return-object v4
.end method

.method public static setupCityListByName()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->getCitiesByName()[Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v2

    .line 449
    .local v2, city:[Lcom/sec/android/app/clockpackage/worldclock/City;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;>;"
    move-object v0, v2

    .local v0, arr$:[Lcom/sec/android/app/clockpackage/worldclock/City;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_c
    if-ge v3, v5, :cond_3b

    aget-object v1, v0, v3

    .line 455
    .local v1, c:Lcom/sec/android/app/clockpackage/worldclock/City;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    new-instance v7, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/City;->getGMT()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 475
    .end local v1           #c:Lcom/sec/android/app/clockpackage/worldclock/City;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :cond_3b
    return-object v4
.end method

.method public static unloadCities()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 167
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    if-nez v1, :cond_6

    .line 184
    .local v0, idxCityRawOffset:I
    :goto_5
    return-void

    .line 173
    .end local v0           #idxCityRawOffset:I
    :cond_6
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 175
    sput-object v2, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    .line 177
    const/4 v0, 0x0

    .restart local v0       #idxCityRawOffset:I
    :goto_e
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByRawOffset:[Lcom/sec/android/app/clockpackage/worldclock/City;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 179
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByRawOffset:[Lcom/sec/android/app/clockpackage/worldclock/City;

    aput-object v2, v1, v0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 182
    :cond_1a
    sput-object v2, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesByRawOffset:[Lcom/sec/android/app/clockpackage/worldclock/City;

    goto :goto_5
.end method

.method public static unloadCitiesID()V
    .registers 1

    .prologue
    .line 238
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    if-nez v0, :cond_5

    .line 248
    :goto_4
    return-void

    .line 244
    :cond_5
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 246
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    goto :goto_4
.end method
