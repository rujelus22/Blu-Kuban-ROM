.class public Lcom/google/android/apps/plus/content/EsPostsData;
.super Ljava/lang/Object;
.source "EsPostsData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/content/EsPostsData$1;,
        Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;,
        Lcom/google/android/apps/plus/content/EsPostsData$ActivityStreamKeyQuery;
    }
.end annotation


# static fields
.field private static final ACTIVITY_TIMESTAMP_AND_STATUS_COLUMNS:[Ljava/lang/String;

.field private static LARGE_PLAYER_SIZE:I

.field private static MAX_PORTRAIT_ASPECT_RATIO:F

.field private static MIN_LANDSCAPE_ASPECT_RATIO:F

.field private static final mSyncLock:Ljava/lang/Object;

.field private static sInitialized:Z

.field private static sMaxContentLength:Ljava/lang/Integer;

.field private static sMaxDocumentLength:Ljava/lang/Integer;

.field private static sSyncEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsPostsData;->mSyncLock:Ljava/lang/Object;

    .line 129
    sput-boolean v3, Lcom/google/android/apps/plus/content/EsPostsData;->sSyncEnabled:Z

    .line 796
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "activity_id"

    aput-object v2, v0, v1

    const-string v1, "modified"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "data_state"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/content/EsPostsData;->ACTIVITY_TIMESTAMP_AND_STATUS_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public static buildActivitiesStreamKey(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Ljava/lang/String;
    .registers 7
    .parameter "gaiaId"
    .parameter "circleId"
    .parameter "location"
    .parameter "view"

    .prologue
    const/16 v2, 0x7c

    .line 1957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1958
    .local v0, keyBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1959
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1960
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1961
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1962
    if-eqz p2, :cond_4d

    .line 1963
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasPosition()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1964
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLatitudeE7()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1965
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1966
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLongitudeE7()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1967
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1968
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getAccuracy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1974
    :cond_3e
    :goto_3e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1978
    invoke-virtual {p3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1980
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1971
    :cond_4d
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e
.end method

.method private static buildPlusOneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Ljava/util/Map;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 13
    .parameter "plusOneData"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;"
        }
    .end annotation

    .prologue
    .local p1, personMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    const/4 v10, 0x2

    .line 1699
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v5

    .line 1700
    .local v5, newPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_6
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getCountDataCount()I

    move-result v7

    if-ge v3, v7, :cond_105

    .line 1701
    invoke-virtual {p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getCountData(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v1

    .line 1704
    .local v1, countData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    .line 1705
    .local v0, cdb:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->hasCircleName()Z

    move-result v7

    if-eqz v7, :cond_21

    .line 1706
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getCircleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->setCircleName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    .line 1709
    :cond_21
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->hasCount()Z

    move-result v7

    if-eqz v7, :cond_52

    .line 1710
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getCount()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->setCount(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    .line 1711
    const-string v7, "EsPostsData"

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 1712
    const-string v7, "EsPostsData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    :cond_52
    const/4 v4, 0x0

    .local v4, j:I
    :goto_53
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getPersonIdCount()I

    move-result v7

    if-ge v4, v7, :cond_cc

    .line 1717
    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getFocusObfuscatedPersonId(I)Ljava/lang/String;

    move-result-object v2

    .line 1718
    .local v2, gaiaId:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->addFocusObfuscatedPersonId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    .line 1719
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 1720
    .local v6, p:Lcom/google/wireless/tacotruck/proto/Data$Person;
    if-eqz v6, :cond_a0

    .line 1721
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->addPersonFirstName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    .line 1722
    const-string v7, "EsPostsData"

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 1723
    const-string v7, "EsPostsData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    Person id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    :cond_9d
    :goto_9d
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    .line 1727
    :cond_a0
    const-string v7, ""

    invoke-virtual {v0, v7}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->addPersonFirstName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    .line 1728
    const-string v7, "EsPostsData"

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 1729
    const-string v7, "EsPostsData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    Person id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> (no name)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    .line 1734
    .end local v2           #gaiaId:Ljava/lang/String;
    .end local v6           #p:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :cond_cc
    const-string v7, "EsPostsData"

    invoke-static {v7, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_fa

    .line 1735
    const/4 v4, 0x0

    :goto_d5
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getPersonFirstNameCount()I

    move-result v7

    if-ge v4, v7, :cond_fa

    .line 1736
    const-string v7, "EsPostsData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "        Person first name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getPersonFirstName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    add-int/lit8 v4, v4, 0x1

    goto :goto_d5

    .line 1741
    :cond_fa
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setCountData(ILcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 1700
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 1744
    .end local v0           #cdb:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    .end local v1           #countData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
    .end local v4           #j:I
    :cond_105
    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v7

    return-object v7
.end method

.method static cleanupData(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 10
    .parameter "db"
    .parameter "account"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    .line 1847
    sget-boolean v2, Lcom/google/android/apps/plus/content/EsPostsData;->sSyncEnabled:Z

    if-nez v2, :cond_7

    .line 1875
    :goto_6
    return-void

    .line 1851
    :cond_7
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsPostsData;->deleteNonEssentialStreams(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1853
    const-string v2, "activities"

    const-string v3, "activity_id NOT IN (SELECT DISTINCT activity_id FROM activity_streams)"

    invoke-virtual {p0, v2, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1857
    .local v0, deleted:I
    const-string v2, "EsPostsData"

    invoke-static {v2, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1858
    const-string v2, "EsPostsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanupData deleted unreferenced activities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    :cond_32
    invoke-static {}, Lcom/google/android/apps/plus/content/EsPostsData;->getAvailableStorage()J

    move-result-wide v2

    const-wide/32 v4, 0xf42400

    cmp-long v2, v2, v4

    if-gez v2, :cond_65

    .line 1864
    const-string v2, "activities"

    const-string v3, "activity_id IN (SELECT activity_id FROM activity_streams WHERE sort_index > 50)"

    invoke-virtual {p0, v2, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1869
    .local v1, deletedAllCircles:I
    const-string v2, "EsPostsData"

    invoke-static {v2, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 1870
    const-string v2, "EsPostsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanupData deleted \"all circles\" activities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    .end local v1           #deletedAllCircles:I
    :cond_65
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsPostsData;->deleteUnusedLocations(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_6
.end method

.method private static createLocations(Lcom/google/android/apps/plus/api/LocationQuery;Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 7
    .parameter "query"
    .parameter "street"
    .parameter "city"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/plus/api/LocationQuery;",
            "Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;",
            "Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Location;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1824
    .local p3, places:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Location;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1826
    .local v0, locations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Location;>;"
    if-eqz p1, :cond_22

    .line 1827
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/LocationQuery;->getLocation()Landroid/location/Location;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/util/LocationUtils;->createPoint(Landroid/location/Location;)Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    .line 1828
    .local v1, p:Lcom/google/wireless/tacotruck/proto/Data$Point;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setReverseGeocode(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1831
    .end local v1           #p:Lcom/google/wireless/tacotruck/proto/Data$Point;
    :cond_22
    if-eqz p2, :cond_33

    .line 1832
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setReverseGeocode(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1835
    :cond_33
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1837
    return-object v0
.end method

.method public static deleteActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "activityId"

    .prologue
    .line 1223
    const-string v6, "EsPostsData"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 1224
    const-string v6, "EsPostsData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>>>> deleteActivity id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_21
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1230
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1232
    invoke-static {v0, p2}, Lcom/google/android/apps/plus/content/EsPostsData;->getActivityStreams(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1235
    .local v5, streamKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    :try_start_31
    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v3, v6

    .line 1236
    .local v3, selectionArgs:[Ljava/lang/String;
    const-string v6, "activity_streams"

    const-string v7, "activity_id=?"

    invoke-virtual {v0, v6, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1239
    const-string v6, "activities"

    const-string v7, "activity_id=?"

    invoke-virtual {v0, v6, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1241
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_47
    .catchall {:try_start_31 .. :try_end_47} :catchall_67

    .line 1243
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1247
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1248
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1249
    .local v4, streamKey:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_52

    .line 1243
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #selectionArgs:[Ljava/lang/String;
    .end local v4           #streamKey:Ljava/lang/String;
    :catchall_67
    move-exception v6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6

    .line 1251
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v3       #selectionArgs:[Ljava/lang/String;
    :cond_6c
    return-void
.end method

.method public static deleteComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1375
    .local p3, commentIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1379
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1380
    .local v4, sb:Ljava/lang/StringBuffer;
    const-string v5, "comment_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " IN("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1381
    const/4 v2, 0x1

    .line 1382
    .local v2, first:Z
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1383
    .local v0, commentId:Ljava/lang/String;
    const-string v5, "EsPostsData"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1384
    const-string v5, "EsPostsData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>>> deleteComments: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for activity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_56
    if-eqz v2, :cond_61

    .line 1388
    const/4 v2, 0x0

    .line 1392
    :goto_59
    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1f

    .line 1390
    :cond_61
    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_59

    .line 1395
    .end local v0           #commentId:Ljava/lang/String;
    :cond_67
    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1397
    const-string v5, "activity_comments"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1399
    invoke-static {v1, p0, p1, p2}, Lcom/google/android/apps/plus/content/EsPostsData;->notifyActivityChange(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 1400
    return-void
.end method

.method private static deleteNonEssentialStreams(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7
    .parameter "db"

    .prologue
    const/4 v5, 0x0

    .line 1883
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    invoke-static {v5, v5, v5, v3}, Lcom/google/android/apps/plus/content/EsPostsData;->buildActivitiesStreamKey(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Ljava/lang/String;

    move-result-object v0

    .line 1886
    .local v0, allCirclesStreamKey:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1887
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "stream_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NOT IN("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1889
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1891
    const-string v3, "activity_streams"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1892
    .local v1, deleted:I
    const-string v3, "EsPostsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 1893
    const-string v3, "EsPostsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteNonEssentialStreams deleted streams: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    :cond_4e
    return-void
.end method

.method private static deleteUnusedLocations(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 13
    .parameter "db"

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1904
    const-string v1, "location_queries"

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    const-string v7, "_id DESC"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1908
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_18

    .line 1943
    :goto_17
    return-void

    .line 1912
    :cond_18
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gt v0, v11, :cond_22

    .line 1913
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_17

    .line 1919
    :cond_22
    :try_start_22
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1922
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1923
    .local v10, selection:Ljava/lang/StringBuilder;
    const-string v0, "_id"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1925
    const/4 v9, 0x1

    .line 1926
    .local v9, first:Z
    :goto_36
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1927
    if-eqz v9, :cond_4d

    .line 1928
    const/4 v9, 0x0

    .line 1933
    :goto_3f
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_47
    .catchall {:try_start_22 .. :try_end_47} :catchall_48

    goto :goto_36

    .line 1941
    .end local v9           #first:Z
    .end local v10           #selection:Ljava/lang/StringBuilder;
    :catchall_48
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1930
    .restart local v9       #first:Z
    .restart local v10       #selection:Ljava/lang/StringBuilder;
    :cond_4d
    const/16 v0, 0x2c

    :try_start_4f
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 1936
    :cond_53
    const/16 v0, 0x29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1939
    const-string v0, "location_queries"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_4f .. :try_end_62} :catchall_48

    .line 1941
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_17
.end method

.method public static doActivityStreamSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Lcom/google/android/apps/plus/service/ServiceResult;
    .registers 17
    .parameter "context"
    .parameter "account"
    .parameter "view"
    .parameter "circleId"
    .parameter "gaiaId"
    .parameter "continuationToken"
    .parameter "maxCount"
    .parameter "listener"
    .parameter "syncState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 240
    const-string v1, "EsPostsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 241
    const/4 v1, 0x0

    invoke-static {p4, p3, v1, p2}, Lcom/google/android/apps/plus/content/EsPostsData;->buildActivitiesStreamKey(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Ljava/lang/String;

    move-result-object v7

    .line 242
    .local v7, streamKey:Ljava/lang/String;
    const-string v1, "EsPostsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doActivityStreamSync starting sync stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .end local v7           #streamKey:Ljava/lang/String;
    :cond_30
    new-instance v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;ZLcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .local v0, so:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 249
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getActivityStream(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 250
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 251
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 252
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 255
    :cond_52
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 256
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_89
    new-instance v1, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v1, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(Lcom/google/android/apps/plus/network/HttpOperation;)V

    return-object v1
.end method

.method public static doNearbyActivitiesSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/String;ILcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Lcom/google/android/apps/plus/service/ServiceResult;
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "view"
    .parameter "location"
    .parameter "continuationToken"
    .parameter "maxCount"
    .parameter "listener"
    .parameter "syncState"

    .prologue
    const/4 v3, 0x0

    .line 207
    const-string v1, "EsPostsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 208
    invoke-static {v3, v3, p3, p2}, Lcom/google/android/apps/plus/content/EsPostsData;->buildActivitiesStreamKey(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Ljava/lang/String;

    move-result-object v7

    .line 209
    .local v7, streamKey:Ljava/lang/String;
    const-string v1, "EsPostsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doNearbyActivitiesSync starting sync stream: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", count: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v7           #streamKey:Ljava/lang/String;
    :cond_30
    new-instance v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;ZLcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 216
    .local v0, so:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getNearbyActivities(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/String;I)V

    .line 217
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 218
    new-instance v1, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v1, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(Lcom/google/android/apps/plus/network/HttpOperation;)V

    return-object v1
.end method

.method public static getActivityAuthorId(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "activityId"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1666
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1669
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "activities"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "author_id"

    aput-object v3, v2, v6

    const-string v3, "activity_id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1672
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_22

    .line 1686
    :goto_21
    return-object v5

    .line 1677
    :cond_22
    :try_start_22
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1678
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_38

    .line 1679
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_22 .. :try_end_33} :catchall_3c

    move-result-object v5

    .line 1683
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_21

    :cond_38
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_21

    :catchall_3c
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getActivityCanReshare(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "activityId"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 1631
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1634
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "activities"

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "can_reshare"

    aput-object v3, v2, v10

    const-string v3, "activity_id=?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p2, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1638
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_22

    .line 1652
    :goto_21
    return-object v5

    .line 1643
    :cond_22
    :try_start_22
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1644
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_41

    .line 1645
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3f

    move v1, v9

    :goto_37
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_45

    move-result-object v5

    .line 1649
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_21

    :cond_3f
    move v1, v10

    .line 1645
    goto :goto_37

    .line 1649
    :cond_41
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_21

    :catchall_45
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getActivityImageData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 22
    .parameter "context"
    .parameter "account"
    .parameter "activityId"

    .prologue
    .line 1496
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1499
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "activities"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "media"

    aput-object v8, v3, v4

    const-string v4, "activity_id=?"

    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v5, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1502
    .local v13, cursor:Landroid/database/Cursor;
    if-nez v13, :cond_25

    .line 1503
    const/4 v3, 0x0

    .line 1543
    :goto_24
    return-object v3

    .line 1507
    :cond_25
    :try_start_25
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 1508
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_a4

    .line 1509
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v17

    .line 1510
    .local v17, mediaData:[B
    if-eqz v17, :cond_a4

    move-object/from16 v0, v17

    array-length v3, v0

    if-eqz v3, :cond_a4

    .line 1511
    invoke-static/range {v17 .. v17}, Lcom/google/android/apps/plus/content/DbMedia;->deserialize([B)[Lcom/google/android/apps/plus/content/DbMedia;

    move-result-object v16

    .line 1512
    .local v16, mediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    if-eqz v16, :cond_a4

    .line 1513
    const/4 v14, 0x0

    .local v14, i:I
    :goto_45
    move-object/from16 v0, v16

    array-length v3, v0

    if-ge v14, v3, :cond_a4

    .line 1514
    aget-object v15, v16, v14

    .line 1515
    .local v15, media:Lcom/google/android/apps/plus/content/DbMedia;
    invoke-virtual {v15}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v3

    sget-object v4, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    if-ne v3, v4, :cond_a1

    .line 1516
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 1517
    .local v18, res:Landroid/content/res/Resources;
    const v3, 0x7f0d007a

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v5, v3

    .line 1519
    .local v5, mediaFetchWidth:I
    const v3, 0x7f0d007a

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v6, v3

    .line 1521
    .local v6, mediaFetchHeight:I
    new-instance v2, Lcom/google/android/apps/plus/content/MediaImageRequest;

    invoke-virtual {v15}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/plus/content/MediaImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 1526
    .local v2, request:Lcom/google/android/apps/plus/content/MediaImageRequest;
    new-instance v7, Lcom/google/android/apps/plus/api/DownloadImageOperationNoCache;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object v10, v2

    invoke-direct/range {v7 .. v12}, Lcom/google/android/apps/plus/api/DownloadImageOperationNoCache;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/content/MediaImageRequest;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 1529
    .local v7, op:Lcom/google/android/apps/plus/api/DownloadImageOperationNoCache;
    invoke-virtual {v7}, Lcom/google/android/apps/plus/api/DownloadImageOperationNoCache;->start()V

    .line 1530
    invoke-virtual {v7}, Lcom/google/android/apps/plus/api/DownloadImageOperationNoCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_a1

    .line 1531
    invoke-virtual {v7}, Lcom/google/android/apps/plus/api/DownloadImageOperationNoCache;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_9c
    .catchall {:try_start_25 .. :try_end_9c} :catchall_aa

    move-result-object v3

    .line 1540
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_24

    .line 1513
    .end local v2           #request:Lcom/google/android/apps/plus/content/MediaImageRequest;
    .end local v5           #mediaFetchWidth:I
    .end local v6           #mediaFetchHeight:I
    .end local v7           #op:Lcom/google/android/apps/plus/api/DownloadImageOperationNoCache;
    .end local v18           #res:Landroid/content/res/Resources;
    :cond_a1
    add-int/lit8 v14, v14, 0x1

    goto :goto_45

    .line 1540
    .end local v14           #i:I
    .end local v15           #media:Lcom/google/android/apps/plus/content/DbMedia;
    .end local v16           #mediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    .end local v17           #mediaData:[B
    :cond_a4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1543
    const/4 v3, 0x0

    goto/16 :goto_24

    .line 1540
    :catchall_aa
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public static getActivityIsPublic(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "activityId"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 1557
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1560
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "activities"

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "public"

    aput-object v3, v2, v10

    const-string v3, "activity_id=?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p2, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1564
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_22

    .line 1578
    :goto_21
    return-object v5

    .line 1569
    :cond_22
    :try_start_22
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1570
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_41

    .line 1571
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3f

    move v1, v9

    :goto_37
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_45

    move-result-object v5

    .line 1575
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_21

    :cond_3f
    move v1, v10

    .line 1571
    goto :goto_37

    .line 1575
    :cond_41
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_21

    :catchall_45
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private static getActivityLastModifiedTime(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)J
    .registers 12
    .parameter "activity"

    .prologue
    const-wide/16 v8, 0x0

    .line 766
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasCollapsedData()Z

    move-result v10

    if-nez v10, :cond_a

    move-wide v6, v8

    .line 793
    :cond_9
    :goto_9
    return-wide v6

    .line 770
    :cond_a
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getCollapsedData()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    .line 773
    .local v0, collapsedData:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLastModifiedMsec()J

    move-result-wide v6

    .line 774
    .local v6, modifiedTime:J
    cmp-long v10, v6, v8

    if-nez v10, :cond_1a

    .line 775
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getCreationMsec()J

    move-result-wide v6

    .line 778
    :cond_1a
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getCommentList()Ljava/util/List;

    move-result-object v4

    .line 779
    .local v4, commentsList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Comment;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Comment;

    .line 780
    .local v1, comment:Lcom/google/wireless/tacotruck/proto/Data$Comment;
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getLastUpdateTimestampMsec()J

    move-result-wide v2

    .line 781
    .local v2, commentModified:J
    cmp-long v10, v2, v8

    if-nez v10, :cond_3a

    .line 782
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getCreationTimestampMsec()J

    move-result-wide v2

    .line 784
    :cond_3a
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 785
    goto :goto_22

    .line 790
    .end local v1           #comment:Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .end local v2           #commentModified:J
    :cond_3f
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasPlusoneData()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 791
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->hashCode([B)I

    move-result v8

    rem-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    add-long/2addr v6, v8

    goto :goto_9
.end method

.method public static getActivityPlusOneId(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1413
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1416
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "activities"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "plus_one_data"

    aput-object v3, v2, v6

    const-string v3, "activity_id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1419
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_22

    .line 1436
    :goto_21
    return-object v5

    .line 1424
    :cond_22
    :try_start_22
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1425
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_42

    .line 1426
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v9

    .line 1427
    .local v9, poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    if-eqz v9, :cond_42

    .line 1428
    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;
    :try_end_3d
    .catchall {:try_start_22 .. :try_end_3d} :catchall_46

    move-result-object v5

    .line 1433
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_21

    .end local v9           #poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_42
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_21

    :catchall_46
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getActivityPlusOnedByViewer(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "activityId"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1592
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1595
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "activities"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "plus_one_data"

    aput-object v3, v2, v6

    const-string v3, "activity_id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1598
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_22

    .line 1617
    :goto_21
    return-object v5

    .line 1603
    :cond_22
    :try_start_22
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1604
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_46

    .line 1605
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v10

    .line 1606
    .local v10, poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    if-eqz v10, :cond_46

    .line 1607
    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_41
    .catchall {:try_start_22 .. :try_end_41} :catchall_56
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_22 .. :try_end_41} :catch_4a

    move-result-object v5

    .line 1614
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_21

    .end local v10           #poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_46
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_21

    .line 1611
    :catch_4a
    move-exception v9

    .line 1612
    .local v9, ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_4b
    const-string v1, "EsPostsData"

    const-string v2, "getActivityPlusOnedByViewer"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_56

    .line 1614
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_21

    .end local v9           #ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_56
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getActivityPostText(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 17
    .parameter "context"
    .parameter "account"
    .parameter "activityId"

    .prologue
    .line 1450
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1453
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "activities"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "media"

    aput-object v4, v2, v3

    const-string v3, "activity_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1456
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_25

    .line 1457
    const/4 v1, 0x0

    .line 1482
    :goto_24
    return-object v1

    .line 1461
    :cond_25
    :try_start_25
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 1462
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 1463
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .line 1464
    .local v13, mediaData:[B
    if-eqz v13, :cond_6b

    array-length v1, v13

    if-eqz v1, :cond_6b

    .line 1465
    invoke-static {v13}, Lcom/google/android/apps/plus/content/DbMedia;->deserialize([B)[Lcom/google/android/apps/plus/content/DbMedia;

    move-result-object v12

    .line 1466
    .local v12, mediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    if-eqz v12, :cond_6b

    .line 1467
    const/4 v10, 0x0

    .local v10, i:I
    :goto_43
    array-length v1, v12

    if-ge v10, v1, :cond_6b

    .line 1468
    aget-object v11, v12, v10

    .line 1469
    .local v11, media:Lcom/google/android/apps/plus/content/DbMedia;
    invoke-virtual {v11}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    if-ne v1, v2, :cond_68

    .line 1470
    invoke-virtual {v11}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtml()Ljava/lang/String;

    move-result-object v9

    .line 1471
    .local v9, html:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_63
    .catchall {:try_start_25 .. :try_end_63} :catchall_70

    move-result-object v1

    .line 1479
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_24

    .line 1467
    .end local v9           #html:Ljava/lang/String;
    :cond_68
    add-int/lit8 v10, v10, 0x1

    goto :goto_43

    .line 1479
    .end local v10           #i:I
    .end local v11           #media:Lcom/google/android/apps/plus/content/DbMedia;
    .end local v12           #mediaArray:[Lcom/google/android/apps/plus/content/DbMedia;
    .end local v13           #mediaData:[B
    :cond_6b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1482
    const/4 v1, 0x0

    goto :goto_24

    .line 1479
    :catchall_70
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private static getActivityStatuses(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/HashMap;
    .registers 18
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 811
    .local p1, activities:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 812
    .local v13, sb:Ljava/lang/StringBuilder;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 813
    .local v10, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "activity_id IN ("

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    .line 815
    .local v8, activity:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    const-string v0, "?,"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 818
    .end local v8           #activity:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    :cond_2c
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 819
    const-string v0, ")"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 822
    .local v15, statuses:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;>;"
    const-string v1, "activities"

    sget-object v2, Lcom/google/android/apps/plus/content/EsPostsData;->ACTIVITY_TIMESTAMP_AND_STATUS_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 826
    .local v11, cursor:Landroid/database/Cursor;
    :goto_59
    :try_start_59
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 827
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 828
    .local v9, activityId:Ljava/lang/String;
    new-instance v14, Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;

    const/4 v0, 0x0

    invoke-direct {v14, v0}, Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;-><init>(Lcom/google/android/apps/plus/content/EsPostsData$1;)V

    .line 829
    .local v14, status:Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v14, Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;->timestamp:J

    .line 830
    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v14, Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;->dataStatus:I

    .line 831
    invoke-virtual {v15, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7b
    .catchall {:try_start_59 .. :try_end_7b} :catchall_7c

    goto :goto_59

    .line 834
    .end local v9           #activityId:Ljava/lang/String;
    .end local v14           #status:Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;
    :catchall_7c
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_81
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 836
    return-object v15
.end method

.method private static getActivityStreams(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .parameter "db"
    .parameter "activityId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 2017
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2019
    .local v11, streamKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "activity_streams"

    sget-object v3, Lcom/google/android/apps/plus/content/EsPostsData$ActivityStreamKeyQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "activity_id=?"

    new-array v5, v1, [Ljava/lang/String;

    aput-object p1, v5, v0

    move-object v0, p0

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2022
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_1d

    .line 2034
    :goto_1c
    return-object v11

    .line 2027
    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2028
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_2c

    goto :goto_1d

    .line 2031
    :catchall_2c
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_31
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1c
.end method

.method private static getAvailableStorage()J
    .registers 9

    .prologue
    .line 2083
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    .line 2084
    .local v3, path:Ljava/io/File;
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2085
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v7, v7

    mul-long v0, v5, v7

    .line 2086
    .local v0, available:J
    const-string v5, "EsPostsData"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 2087
    const-string v5, "EsPostsData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAvailableStorage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    .line 2093
    .end local v0           #available:J
    .end local v4           #stat:Landroid/os/StatFs;
    :cond_3a
    :goto_3a
    return-wide v0

    .line 2090
    :catch_3b
    move-exception v2

    .line 2092
    .local v2, ex:Ljava/lang/Exception;
    const-string v5, "EsPostsData"

    const-string v6, "getAvailableStorage"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2093
    const-wide/16 v0, -0x1

    goto :goto_3a
.end method

.method private static getMostRecentSortIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .registers 13
    .parameter "db"
    .parameter "streamKey"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 848
    const-string v1, "activity_streams"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "sort_index"

    aput-object v0, v2, v10

    const-string v3, "stream_key=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v10

    const-string v7, "sort_index ASC"

    const-string v8, "1"

    move-object v0, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 852
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_1f

    move v0, v10

    .line 864
    :goto_1e
    return v0

    .line 857
    :cond_1f
    :try_start_1f
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 858
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_33

    move-result v0

    .line 861
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1e

    :cond_2e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 864
    goto :goto_1e

    .line 861
    :catchall_33
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static insertActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "streamKey"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    .local p3, activities:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;>;"
    .local p4, personMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 382
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 385
    :try_start_b
    invoke-static {p0, p1, v1, p3, p4}, Lcom/google/android/apps/plus/content/EsPostsData;->insertActivitiesInTransaction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/util/Map;)V

    .line 388
    if-eqz p2, :cond_8b

    .line 389
    const-string v6, "EsPostsData"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 390
    const-string v6, "EsPostsData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insertActivities in stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_3f
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 395
    .local v5, values:Landroid/content/ContentValues;
    invoke-static {v1, p2}, Lcom/google/android/apps/plus/content/EsPostsData;->getMostRecentSortIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    sub-int v3, v6, v7

    .line 396
    .local v3, sortIndex:I
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    .line 397
    .local v0, activity:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    const-string v6, "stream_key"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v6, "activity_id"

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getActivityId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v6, "sort_index"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 400
    const-string v6, "last_activity"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 402
    const-string v6, "activity_streams"

    const-string v7, "activity_id"

    const/4 v8, 0x4

    invoke-virtual {v1, v6, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 405
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 409
    .end local v0           #activity:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #sortIndex:I
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_8b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8e
    .catchall {:try_start_b .. :try_end_8e} :catchall_a0

    .line 411
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 414
    if-eqz p2, :cond_a5

    .line 416
    invoke-static {p1, p2}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 417
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 424
    .end local v4           #uri:Landroid/net/Uri;
    :cond_9f
    return-void

    .line 411
    :catchall_a0
    move-exception v6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6

    .line 420
    :cond_a5
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_a9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    .line 421
    .restart local v0       #activity:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getActivityId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, p0, p1, v6}, Lcom/google/android/apps/plus/content/EsPostsData;->notifyActivityChange(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_a9
.end method

.method private static insertActivitiesInTransaction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/util/Map;)V
    .registers 63
    .parameter "context"
    .parameter "account"
    .parameter "db"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    .local p3, activities:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;>;"
    .local p4, personMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    sget-boolean v3, Lcom/google/android/apps/plus/content/EsPostsData;->sInitialized:Z

    if-nez v3, :cond_56

    .line 438
    const/4 v3, 0x1

    sput-boolean v3, Lcom/google/android/apps/plus/content/EsPostsData;->sInitialized:Z

    .line 440
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    .line 442
    .local v52, res:Landroid/content/res/Resources;
    const-string v3, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/view/WindowManager;

    .line 444
    .local v57, winMgr:Landroid/view/WindowManager;
    new-instance v34, Landroid/util/DisplayMetrics;

    invoke-direct/range {v34 .. v34}, Landroid/util/DisplayMetrics;-><init>()V

    .line 445
    .local v34, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-interface/range {v57 .. v57}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 446
    move-object/from16 v0, v34

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v34

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v42

    .line 448
    .local v42, imageWidth:I
    and-int/lit8 v3, v42, -0x2

    const v5, 0x7f0d0037

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Lcom/google/android/apps/plus/content/EsPostsData;->LARGE_PLAYER_SIZE:I

    .line 450
    const v3, 0x7f0d0209

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sput v3, Lcom/google/android/apps/plus/content/EsPostsData;->MIN_LANDSCAPE_ASPECT_RATIO:F

    .line 451
    const v3, 0x7f0d020a

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sput v3, Lcom/google/android/apps/plus/content/EsPostsData;->MAX_PORTRAIT_ASPECT_RATIO:F

    .line 454
    .end local v34           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v42           #imageWidth:I
    .end local v52           #res:Landroid/content/res/Resources;
    .end local v57           #winMgr:Landroid/view/WindowManager;
    :cond_56
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v22

    .line 455
    .local v22, activitiesCount:I
    if-nez v22, :cond_5d

    .line 760
    :cond_5c
    return-void

    .line 459
    :cond_5d
    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v47, mediaWithUrl:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Media;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v32, dbMedia:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/DbMedia;>;"
    invoke-static/range {p2 .. p3}, Lcom/google/android/apps/plus/content/EsPostsData;->getActivityStatuses(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v55

    .line 465
    .local v55, statuses:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;>;"
    new-instance v56, Landroid/content/ContentValues;

    invoke-direct/range {v56 .. v56}, Landroid/content/ContentValues;-><init>()V

    .line 466
    .local v56, values:Landroid/content/ContentValues;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :cond_74
    :goto_74
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    .line 467
    .local v23, activity:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getActivityId()Ljava/lang/String;

    move-result-object v17

    .line 468
    .local v17, activityId:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getActionState()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v21

    .line 469
    .local v21, actionState:Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    const-string v3, "EsPostsData"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 470
    const-string v5, "EsPostsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ">>>>> Activity id: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ", author id: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getFocusObfuscatedAuthorId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ", updated: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getCollapsedData()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLastModifiedMsec()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ", read: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v21 .. v21}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->hasViewerHasRead()Z

    move-result v3

    if-eqz v3, :cond_24f

    invoke-virtual/range {v21 .. v21}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getViewerHasRead()Z

    move-result v3

    if-eqz v3, :cond_24c

    const/4 v3, 0x1

    :goto_d7
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_e2
    const/16 v24, 0x0

    .line 479
    .local v24, activityChanged:Z
    invoke-static/range {v23 .. v23}, Lcom/google/android/apps/plus/content/EsPostsData;->getActivityLastModifiedTime(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)J

    move-result-wide v48

    .line 480
    .local v48, modifiedTime:J
    move-object/from16 v0, v55

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;

    .line 481
    .local v54, status:Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;
    if-nez v54, :cond_252

    .line 482
    const/16 v24, 0x1

    .line 490
    :cond_f6
    :goto_f6
    if-eqz v24, :cond_74

    .line 494
    const-wide/16 v30, 0x0

    .line 496
    .local v30, contentFlags:J
    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getCollapsedData()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v27

    .line 498
    .local v27, collapsedData:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    invoke-virtual/range {v56 .. v56}, Landroid/content/ContentValues;->clear()V

    .line 500
    const-string v3, "activity_id"

    move-object/from16 v0, v56

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v3, "author_id"

    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getFocusObfuscatedAuthorId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getSource()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v53

    .line 504
    .local v53, source:Lcom/google/wireless/tacotruck/proto/Data$Source;
    const-string v3, "source"

    invoke-virtual/range {v53 .. v53}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getType()Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v3, "source_name"

    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getCreationSource()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getExpandedData()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v37

    .line 510
    .local v37, expandedData:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasExpandedData()Z

    move-result v3

    if-eqz v3, :cond_26e

    .line 511
    const-string v3, "data_state"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 513
    invoke-virtual/range {v37 .. v37}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->hasLocation()Z

    move-result v3

    if-eqz v3, :cond_187

    .line 514
    invoke-virtual/range {v37 .. v37}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v44

    .line 515
    .local v44, location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasLocationName()Z

    move-result v3

    if-eqz v3, :cond_178

    .line 516
    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLocationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v44 .. v44}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_178

    .line 517
    invoke-static/range {v44 .. v44}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v26

    .line 518
    .local v26, builder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLocationName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 519
    invoke-virtual/range {v26 .. v26}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v44

    .line 523
    .end local v26           #builder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    :cond_178
    const-string v3, "loc"

    invoke-virtual/range {v44 .. v44}, Lcom/google/wireless/tacotruck/proto/Data$Location;->toByteArray()[B

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 524
    const-wide/16 v9, 0x8

    or-long v30, v30, v9

    .line 527
    .end local v44           #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    :cond_187
    invoke-virtual/range {v37 .. v37}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getMediaList()Ljava/util/List;

    move-result-object v45

    .line 546
    .local v45, mediaList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Media;>;"
    :goto_18b
    if-eqz v45, :cond_356

    .line 548
    sget-object v3, Lcom/google/android/apps/plus/content/EsPostsData;->sMaxContentLength:Ljava/lang/Integer;

    if-nez v3, :cond_1b3

    .line 549
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b0006

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/google/android/apps/plus/content/EsPostsData;->sMaxContentLength:Ljava/lang/Integer;

    .line 551
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b0007

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/google/android/apps/plus/content/EsPostsData;->sMaxDocumentLength:Ljava/lang/Integer;

    .line 555
    :cond_1b3
    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getPhotoMediaDisplay()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getIsPwa()Z

    move-result v6

    .line 556
    .local v6, isPWA:Z
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->clear()V

    .line 557
    const/16 v43, 0x0

    .line 558
    .local v43, imagesEncountered:I
    const/16 v39, 0x0

    .local v39, i:I
    :goto_1c2
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v39

    if-ge v0, v3, :cond_34d

    .line 559
    move-object/from16 v0, v45

    move/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/tacotruck/proto/Data$Media;

    .line 560
    .local v4, media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v46

    .line 561
    .local v46, mediaType:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getPlayerWidth()I

    move-result v11

    .line 562
    .local v11, playerWidth:I
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getPlayerHeight()I

    move-result v12

    .line 564
    .local v12, playerHeight:I
    sget-object v3, Lcom/google/android/apps/plus/content/EsPostsData$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Media$Type:[I

    invoke-virtual/range {v46 .. v46}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_59e

    .line 631
    :cond_1eb
    :goto_1eb
    if-eqz v6, :cond_349

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasPhotoData()Z

    move-result v3

    if-eqz v3, :cond_349

    .line 632
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getPhotoData()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getMediaTag()J

    move-result-wide v7

    .line 637
    .local v7, mediaTag:J
    :goto_1fb
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getContentHtml()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    .line 638
    .local v29, content:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    .line 640
    .local v33, description:Ljava/lang/String;
    new-instance v3, Lcom/google/android/apps/plus/content/DbMedia;

    const/4 v5, 0x0

    const/4 v9, 0x0

    sget-object v10, Lcom/google/android/apps/plus/content/EsPostsData;->sMaxContentLength:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object/from16 v0, v29

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    sget-object v13, Lcom/google/android/apps/plus/content/EsPostsData;->sMaxDocumentLength:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, v33

    invoke-virtual {v0, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v3 .. v12}, Lcom/google/android/apps/plus/content/DbMedia;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Media;Lcom/google/android/apps/plus/api/MediaRef;ZJLjava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_1c2

    .line 470
    .end local v4           #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    .end local v6           #isPWA:Z
    .end local v7           #mediaTag:J
    .end local v11           #playerWidth:I
    .end local v12           #playerHeight:I
    .end local v24           #activityChanged:Z
    .end local v27           #collapsedData:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    .end local v29           #content:Ljava/lang/String;
    .end local v30           #contentFlags:J
    .end local v33           #description:Ljava/lang/String;
    .end local v37           #expandedData:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    .end local v39           #i:I
    .end local v43           #imagesEncountered:I
    .end local v45           #mediaList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Media;>;"
    .end local v46           #mediaType:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    .end local v48           #modifiedTime:J
    .end local v53           #source:Lcom/google/wireless/tacotruck/proto/Data$Source;
    .end local v54           #status:Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;
    :cond_24c
    const/4 v3, 0x0

    goto/16 :goto_d7

    :cond_24f
    const/4 v3, -0x1

    goto/16 :goto_d7

    .line 483
    .restart local v24       #activityChanged:Z
    .restart local v48       #modifiedTime:J
    .restart local v54       #status:Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;
    :cond_252
    move-object/from16 v0, v54

    iget-wide v9, v0, Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;->timestamp:J

    cmp-long v3, v48, v9

    if-eqz v3, :cond_25e

    .line 484
    const/16 v24, 0x1

    goto/16 :goto_f6

    .line 485
    :cond_25e
    move-object/from16 v0, v54

    iget v3, v0, Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;->dataStatus:I

    if-nez v3, :cond_26a

    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasExpandedData()Z

    move-result v3

    if-eqz v3, :cond_f6

    .line 487
    :cond_26a
    const/16 v24, 0x1

    goto/16 :goto_f6

    .line 529
    .restart local v27       #collapsedData:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    .restart local v30       #contentFlags:J
    .restart local v37       #expandedData:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    .restart local v53       #source:Lcom/google/wireless/tacotruck/proto/Data$Source;
    :cond_26e
    const-string v3, "data_state"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 531
    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasLocationName()Z

    move-result v3

    if-eqz v3, :cond_2b5

    .line 532
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v26

    .line 533
    .restart local v26       #builder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLocationName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 534
    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasLocationClusterId()Z

    move-result v3

    if-eqz v3, :cond_29c

    .line 535
    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLocationClusterId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setLocalClusterId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 537
    :cond_29c
    const-string v3, "loc"

    invoke-virtual/range {v26 .. v26}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Location;->toByteArray()[B

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 538
    const-wide/16 v9, 0x8

    or-long v30, v30, v9

    .line 543
    .end local v26           #builder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    :goto_2af
    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getMediaList()Ljava/util/List;

    move-result-object v45

    .restart local v45       #mediaList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Media;>;"
    goto/16 :goto_18b

    .line 540
    .end local v45           #mediaList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Media;>;"
    :cond_2b5
    const-string v3, "loc"

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_2af

    .line 566
    .restart local v4       #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    .restart local v6       #isPWA:Z
    .restart local v11       #playerWidth:I
    .restart local v12       #playerHeight:I
    .restart local v39       #i:I
    .restart local v43       #imagesEncountered:I
    .restart local v45       #mediaList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Media;>;"
    .restart local v46       #mediaType:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    :pswitch_2bd
    const-wide/16 v9, 0x1

    or-long v30, v30, v9

    .line 567
    goto/16 :goto_1eb

    .line 571
    :pswitch_2c3
    const-wide/16 v9, 0x4

    or-long v30, v30, v9

    .line 572
    goto/16 :goto_1eb

    .line 576
    :pswitch_2c9
    add-int/lit8 v43, v43, 0x1

    .line 577
    const-wide/16 v9, 0x10

    or-long v30, v30, v9

    .line 578
    sget v3, Lcom/google/android/apps/plus/content/EsPostsData;->LARGE_PLAYER_SIZE:I

    if-lt v11, v3, :cond_2f3

    sget v3, Lcom/google/android/apps/plus/content/EsPostsData;->LARGE_PLAYER_SIZE:I

    if-lt v12, v3, :cond_2f3

    .line 580
    const-wide/16 v9, 0x100

    or-long v30, v30, v9

    .line 585
    :goto_2db
    sget v3, Lcom/google/android/apps/plus/content/EsPostsData;->LARGE_PLAYER_SIZE:I

    if-ge v11, v3, :cond_2e3

    sget v3, Lcom/google/android/apps/plus/content/EsPostsData;->LARGE_PLAYER_SIZE:I

    if-lt v12, v3, :cond_1eb

    .line 587
    :cond_2e3
    int-to-float v3, v11

    int-to-float v5, v12

    div-float v25, v3, v5

    .line 588
    .local v25, aspectRatio:F
    sget v3, Lcom/google/android/apps/plus/content/EsPostsData;->MIN_LANDSCAPE_ASPECT_RATIO:F

    cmpl-float v3, v25, v3

    if-ltz v3, :cond_2f8

    .line 589
    const-wide/16 v9, 0x200

    or-long v30, v30, v9

    goto/16 :goto_1eb

    .line 582
    .end local v25           #aspectRatio:F
    :cond_2f3
    const-wide/16 v9, 0x80

    or-long v30, v30, v9

    goto :goto_2db

    .line 590
    .restart local v25       #aspectRatio:F
    :cond_2f8
    sget v3, Lcom/google/android/apps/plus/content/EsPostsData;->MAX_PORTRAIT_ASPECT_RATIO:F

    cmpg-float v3, v25, v3

    if-gtz v3, :cond_1eb

    .line 591
    const-wide/16 v9, 0x400

    or-long v30, v30, v9

    goto/16 :goto_1eb

    .line 598
    .end local v25           #aspectRatio:F
    :pswitch_304
    const-wide/16 v9, 0x40

    or-long v30, v30, v9

    .line 599
    sget v3, Lcom/google/android/apps/plus/content/EsPostsData;->LARGE_PLAYER_SIZE:I

    if-lt v11, v3, :cond_32c

    sget v3, Lcom/google/android/apps/plus/content/EsPostsData;->LARGE_PLAYER_SIZE:I

    if-lt v12, v3, :cond_32c

    .line 601
    const-wide/16 v9, 0x100

    or-long v30, v30, v9

    .line 606
    :goto_314
    sget v3, Lcom/google/android/apps/plus/content/EsPostsData;->LARGE_PLAYER_SIZE:I

    if-ge v11, v3, :cond_31c

    sget v3, Lcom/google/android/apps/plus/content/EsPostsData;->LARGE_PLAYER_SIZE:I

    if-lt v12, v3, :cond_1eb

    .line 608
    :cond_31c
    int-to-float v3, v11

    int-to-float v5, v12

    div-float v25, v3, v5

    .line 609
    .restart local v25       #aspectRatio:F
    sget v3, Lcom/google/android/apps/plus/content/EsPostsData;->MIN_LANDSCAPE_ASPECT_RATIO:F

    cmpl-float v3, v25, v3

    if-ltz v3, :cond_331

    .line 610
    const-wide/16 v9, 0x200

    or-long v30, v30, v9

    goto/16 :goto_1eb

    .line 603
    .end local v25           #aspectRatio:F
    :cond_32c
    const-wide/16 v9, 0x80

    or-long v30, v30, v9

    goto :goto_314

    .line 611
    .restart local v25       #aspectRatio:F
    :cond_331
    sget v3, Lcom/google/android/apps/plus/content/EsPostsData;->MAX_PORTRAIT_ASPECT_RATIO:F

    cmpg-float v3, v25, v3

    if-gtz v3, :cond_1eb

    .line 612
    const-wide/16 v9, 0x400

    or-long v30, v30, v9

    goto/16 :goto_1eb

    .line 619
    .end local v25           #aspectRatio:F
    :pswitch_33d
    const-wide/16 v9, 0x2

    or-long v30, v30, v9

    .line 620
    goto/16 :goto_1eb

    .line 625
    :pswitch_343
    const-wide/16 v9, 0x2000

    or-long v30, v30, v9

    goto/16 :goto_1eb

    .line 634
    :cond_349
    const-wide/16 v7, 0x0

    .restart local v7       #mediaTag:J
    goto/16 :goto_1fb

    .line 647
    .end local v4           #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    .end local v7           #mediaTag:J
    .end local v11           #playerWidth:I
    .end local v12           #playerHeight:I
    .end local v46           #mediaType:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    :cond_34d
    const/4 v3, 0x1

    move/from16 v0, v43

    if-le v0, v3, :cond_356

    .line 648
    const-wide/16 v9, 0x20

    or-long v30, v30, v9

    .line 652
    .end local v6           #isPWA:Z
    .end local v39           #i:I
    .end local v43           #imagesEncountered:I
    :cond_356
    const-string v3, "media"

    invoke-static/range {v32 .. v32}, Lcom/google/android/apps/plus/content/DbMedia;->serialize(Ljava/util/List;)[B

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 654
    const-string v3, "total_comment_count"

    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getTotalCommentCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 656
    const-string v3, "public"

    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getIsPublic()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 657
    const-string v3, "acl_display"

    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getAclDisplay()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v3, "created"

    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getCreationMsec()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 659
    const-string v3, "modified"

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 660
    const-string v3, "updated"

    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLastModifiedMsec()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 662
    const-string v3, "can_comment"

    invoke-virtual/range {v21 .. v21}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getViewerCanComment()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 663
    const-string v3, "can_reshare"

    invoke-virtual/range {v21 .. v21}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getViewerCanReshare()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 664
    const-string v3, "has_muted"

    invoke-virtual/range {v21 .. v21}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getViewerHasMuted()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 665
    const-string v5, "has_read"

    invoke-virtual/range {v21 .. v21}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->hasViewerHasRead()Z

    move-result v3

    if-eqz v3, :cond_4eb

    invoke-virtual/range {v21 .. v21}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getViewerHasRead()Z

    move-result v3

    if-eqz v3, :cond_4e8

    const/4 v3, 0x1

    :goto_3ef
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 669
    const-string v3, "explanations"

    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getExplanationList()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/content/DbExplanation;->serialize(Ljava/util/List;)[B

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 673
    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasPlusoneData()Z

    move-result v3

    if-eqz v3, :cond_4f7

    .line 674
    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v51

    .line 675
    .local v51, plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    if-eqz v51, :cond_4ee

    .line 676
    move-object/from16 v0, v51

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsPostsData;->buildPlusOneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Ljava/util/Map;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v50

    .line 677
    .local v50, newPod:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    const-string v3, "plus_one_data"

    invoke-virtual/range {v50 .. v50}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 686
    .end local v50           #newPod:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .end local v51           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :goto_426
    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasA2AHangoutData()Z

    move-result v3

    if-eqz v3, :cond_509

    .line 687
    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getA2AHangoutData()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v38

    .line 688
    .local v38, hangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;
    if-eqz v38, :cond_500

    .line 689
    const-string v3, "a2a_hangout_data"

    invoke-virtual/range {v38 .. v38}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->toByteArray()[B

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 690
    const-wide/16 v9, 0x1000

    or-long v30, v30, v9

    .line 698
    .end local v38           #hangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;
    :goto_441
    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasEmbedClientItem()Z

    move-result v3

    if-eqz v3, :cond_489

    .line 699
    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getEmbedClientItem()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v35

    .line 700
    .local v35, embedClient:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;
    sget-object v3, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->plusEvent:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->hasExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Z

    move-result v3

    if-eqz v3, :cond_512

    .line 701
    sget-object v3, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;->plusEvent:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    .line 703
    .local v36, event:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;
    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsEventData;->convertToPlusEvent(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/api/services/plusi/model/PlusEvent;

    move-result-object v18

    .line 706
    .local v18, embedEvent:Lcom/google/api/services/plusi/model/PlusEvent;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->id:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 707
    .local v16, eventId:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v14

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-object/from16 v15, p2

    invoke-static/range {v13 .. v20}, Lcom/google/android/apps/plus/content/EsEventData;->insertEventInTransaction(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/plusi/model/PlusEvent;Ljava/util/List;Ljava/lang/Long;)Z

    .line 709
    const-string v3, "event_id"

    move-object/from16 v0, v56

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-wide/16 v9, 0x800

    or-long v30, v30, v9

    .line 730
    .end local v16           #eventId:Ljava/lang/String;
    .end local v18           #embedEvent:Lcom/google/api/services/plusi/model/PlusEvent;
    .end local v35           #embedClient:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;
    .end local v36           #event:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;
    :cond_489
    :goto_489
    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasIsPopularPost()Z

    move-result v3

    if-eqz v3, :cond_4a1

    .line 731
    const-string v5, "popular_post"

    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getIsPopularPost()Z

    move-result v3

    if-eqz v3, :cond_567

    const/4 v3, 0x1

    :goto_498
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 734
    :cond_4a1
    const-string v3, "content_flags"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 736
    if-eqz v54, :cond_56a

    .line 737
    const-string v3, "activities"

    const-string v5, "activity_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v17, v9, v10

    move-object/from16 v0, p2

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 745
    :goto_4bf
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->clear()V

    .line 746
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .local v41, i$:Ljava/util/Iterator;
    :cond_4c6
    :goto_4c6
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_578

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/tacotruck/proto/Data$Media;

    .line 747
    .restart local v4       #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasThumbnailUrl()Z

    move-result v3

    if-eqz v3, :cond_4c6

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4c6

    .line 748
    move-object/from16 v0, v47

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c6

    .line 665
    .end local v4           #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    .end local v41           #i$:Ljava/util/Iterator;
    :cond_4e8
    const/4 v3, 0x0

    goto/16 :goto_3ef

    :cond_4eb
    const/4 v3, -0x1

    goto/16 :goto_3ef

    .line 679
    .restart local v51       #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_4ee
    const-string v3, "plus_one_data"

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_426

    .line 682
    .end local v51           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_4f7
    const-string v3, "plus_one_data"

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_426

    .line 692
    .restart local v38       #hangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;
    :cond_500
    const-string v3, "a2a_hangout_data"

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_441

    .line 695
    .end local v38           #hangoutData:Lcom/google/apps/tacotown/proto/A2a$HangoutData;
    :cond_509
    const-string v3, "a2a_hangout_data"

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_441

    .line 711
    .restart local v35       #embedClient:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;
    :cond_512
    sget-object v3, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->plusPhotosAddedToCollection:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->hasExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Z

    move-result v3

    if-eqz v3, :cond_489

    .line 713
    sget-object v3, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->plusPhotosAddedToCollection:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;

    .line 715
    .local v28, collection:Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;
    invoke-virtual/range {v28 .. v28}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->hasPlusEvent()Z

    move-result v3

    if-eqz v3, :cond_556

    .line 716
    invoke-virtual/range {v28 .. v28}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->getPlusEvent()Lcom/google/protos/embeds/PlusEventItem$PlusEvent;

    move-result-object v36

    .line 717
    .restart local v36       #event:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;
    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsEventData;->convertToPlusEvent(Lcom/google/protos/embeds/PlusEventItem$PlusEvent;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/api/services/plusi/model/PlusEvent;

    move-result-object v18

    .line 720
    .restart local v18       #embedEvent:Lcom/google/api/services/plusi/model/PlusEvent;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/api/services/plusi/model/PlusEvent;->id:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 721
    .restart local v16       #eventId:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v14

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-object/from16 v15, p2

    invoke-static/range {v13 .. v20}, Lcom/google/android/apps/plus/content/EsEventData;->insertEventInTransaction(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/plusi/model/PlusEvent;Ljava/util/List;Ljava/lang/Long;)Z

    .line 723
    const-string v3, "event_id"

    move-object/from16 v0, v56

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    .end local v16           #eventId:Ljava/lang/String;
    .end local v18           #embedEvent:Lcom/google/api/services/plusi/model/PlusEvent;
    .end local v36           #event:Lcom/google/protos/embeds/PlusEventItem$PlusEvent;
    :cond_556
    const-string v3, "photo_collection"

    invoke-virtual/range {v28 .. v28}, Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;->toByteArray()[B

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 726
    const-wide/16 v9, 0x800

    or-long v30, v30, v9

    goto/16 :goto_489

    .line 731
    .end local v28           #collection:Lcom/google/protos/embeds/PlusPhotosAddedToCollectionItem$PlusPhotosAddedToCollection;
    .end local v35           #embedClient:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;
    :cond_567
    const/4 v3, 0x0

    goto/16 :goto_498

    .line 740
    :cond_56a
    const-string v3, "activities"

    const-string v5, "activity_id"

    const/4 v9, 0x5

    move-object/from16 v0, p2

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v5, v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto/16 :goto_4bf

    .line 752
    .restart local v41       #i$:Ljava/util/Iterator;
    :cond_578
    if-nez v54, :cond_59a

    const/4 v3, 0x1

    :goto_57b
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v47

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsPostsData;->updateMediaInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Z)V

    .line 755
    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasExpandedData()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 756
    invoke-virtual/range {v37 .. v37}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getCommentList()Ljava/util/List;

    move-result-object v5

    if-nez v54, :cond_59c

    const/4 v3, 0x1

    :goto_591
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1, v5, v3}, Lcom/google/android/apps/plus/content/EsPostsData;->updateCommentsInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Z)V

    goto/16 :goto_74

    .line 752
    :cond_59a
    const/4 v3, 0x0

    goto :goto_57b

    .line 756
    :cond_59c
    const/4 v3, 0x0

    goto :goto_591

    .line 564
    :pswitch_data_59e
    .packed-switch 0x1
        :pswitch_2bd
        :pswitch_2c3
        :pswitch_2c9
        :pswitch_304
        :pswitch_33d
        :pswitch_343
        :pswitch_343
    .end packed-switch
.end method

.method public static insertLocations(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/LocationQuery;Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;Ljava/util/List;)V
    .registers 19
    .parameter "context"
    .parameter "account"
    .parameter "query"
    .parameter "street"
    .parameter "city"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Lcom/google/android/apps/plus/api/LocationQuery;",
            "Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;",
            "Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1761
    .local p5, places:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Location;>;"
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1765
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p2}, Lcom/google/android/apps/plus/api/LocationQuery;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 1767
    .local v4, queryKey:Ljava/lang/String;
    const-string v9, "location_queries"

    const-string v10, "key=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-virtual {v0, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1770
    invoke-static/range {p2 .. p5}, Lcom/google/android/apps/plus/content/EsPostsData;->createLocations(Lcom/google/android/apps/plus/api/LocationQuery;Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1772
    .local v2, locations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Location;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_e4

    .line 1773
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1776
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "key"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    const-string v9, "location_queries"

    const-string v10, "key"

    invoke-virtual {v0, v9, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 1780
    .local v5, rowId:J
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-ltz v9, :cond_e4

    .line 1781
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1784
    :try_start_3e
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_de

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 1785
    .local v3, place:Lcom/google/wireless/tacotruck/proto/Data$Location;
    const-string v9, "EsPostsData"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_79

    .line 1786
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasName()Z

    move-result v9

    if-eqz v9, :cond_bd

    .line 1787
    const-string v9, "EsPostsData"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ">>>>> Place name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    :cond_79
    :goto_79
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 1795
    const-string v9, "qrid"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1797
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasName()Z

    move-result v9

    if-eqz v9, :cond_94

    .line 1798
    const-string v9, "name"

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    :cond_94
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasDistanceInMetres()Z

    move-result v9

    if-eqz v9, :cond_a7

    .line 1802
    const-string v9, "dist"

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDistanceInMetres()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1805
    :cond_a7
    const-string v9, "location"

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1807
    const-string v9, "locations"

    const-string v10, "qrid"

    invoke-virtual {v0, v9, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_b7
    .catchall {:try_start_3e .. :try_end_b7} :catchall_b8

    goto :goto_42

    .line 1813
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #place:Lcom/google/wireless/tacotruck/proto/Data$Location;
    :catchall_b8
    move-exception v9

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v9

    .line 1789
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #place:Lcom/google/wireless/tacotruck/proto/Data$Location;
    :cond_bd
    :try_start_bd
    const-string v9, "EsPostsData"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ">>>>> Address: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getReverseGeocode()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 1811
    .end local v3           #place:Lcom/google/wireless/tacotruck/proto/Data$Location;
    :cond_de
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e1
    .catchall {:try_start_bd .. :try_end_e1} :catchall_b8

    .line 1813
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1818
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #rowId:J
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_e4
    invoke-virtual {p2}, Lcom/google/android/apps/plus/api/LocationQuery;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/google/android/apps/plus/content/EsProvider;->buildLocationQueryUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1819
    .local v7, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1820
    return-void
.end method

.method public static isSyncEnabled()Z
    .registers 1

    .prologue
    .line 145
    sget-boolean v0, Lcom/google/android/apps/plus/content/EsPostsData;->sSyncEnabled:Z

    return v0
.end method

.method public static markActivitiesAsRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1173
    .local p2, activityIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "EsPostsData"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 1174
    const-string v6, "EsPostsData"

    const-string v7, ">>>>> markActivitiesAsRead activity ids:"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1176
    .local v0, activityId:Ljava/lang/String;
    const-string v6, "EsPostsData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 1180
    .end local v0           #activityId:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_39
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1183
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1186
    :try_start_44
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 1187
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "has_read"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1190
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v6, 0x100

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1191
    .local v4, sb:Ljava/lang/StringBuffer;
    const-string v6, "activity_id"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " IN("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1192
    const/4 v2, 0x1

    .line 1193
    .local v2, first:Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_6b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1194
    .restart local v0       #activityId:Ljava/lang/String;
    if-eqz v2, :cond_87

    .line 1195
    const/4 v2, 0x0

    .line 1199
    :goto_7a
    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_81
    .catchall {:try_start_44 .. :try_end_81} :catchall_82

    goto :goto_6b

    .line 1207
    .end local v0           #activityId:Ljava/lang/String;
    .end local v2           #first:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #sb:Ljava/lang/StringBuffer;
    .end local v5           #values:Landroid/content/ContentValues;
    :catchall_82
    move-exception v6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6

    .line 1197
    .restart local v0       #activityId:Ljava/lang/String;
    .restart local v2       #first:Z
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #sb:Ljava/lang/StringBuffer;
    .restart local v5       #values:Landroid/content/ContentValues;
    :cond_87
    const/16 v6, 0x2c

    :try_start_89
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7a

    .line 1202
    .end local v0           #activityId:Ljava/lang/String;
    :cond_8d
    const/16 v6, 0x29

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1204
    const-string v6, "activities"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1205
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9f
    .catchall {:try_start_89 .. :try_end_9f} :catchall_82

    .line 1207
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1213
    return-void
.end method

.method public static muteActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "activityId"

    .prologue
    .line 1137
    const-string v6, "EsPostsData"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 1138
    const-string v6, "EsPostsData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>>>> muteActivity id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_21
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1144
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1147
    :try_start_2c
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 1148
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "has_muted"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1149
    const-string v6, "activities"

    const-string v7, "activity_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-virtual {v0, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1151
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4c
    .catchall {:try_start_2c .. :try_end_4c} :catchall_70

    .line 1153
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1157
    invoke-static {v0, p2}, Lcom/google/android/apps/plus/content/EsPostsData;->getActivityStreams(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1158
    .local v4, streamKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1159
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1160
    .local v3, streamKey:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_5b

    .line 1153
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #streamKey:Ljava/lang/String;
    .end local v4           #streamKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #values:Landroid/content/ContentValues;
    :catchall_70
    move-exception v6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6

    .line 1162
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v4       #streamKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5       #values:Landroid/content/ContentValues;
    :cond_75
    return-void
.end method

.method private static notifyActivityChange(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 12
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "activityId"

    .prologue
    const/4 v7, 0x0

    .line 1994
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1996
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v6, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITY_VIEW_BY_ACTIVITY_ID_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1998
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1999
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2001
    invoke-static {p0, p3}, Lcom/google/android/apps/plus/content/EsPostsData;->getActivityStreams(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 2002
    .local v4, streamKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2003
    .local v3, streamKey:Ljava/lang/String;
    invoke-static {p2, v3}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2004
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {v2, v5, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1d

    .line 2006
    .end local v3           #streamKey:Ljava/lang/String;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_31
    return-void
.end method

.method public static plusOneComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 19
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentId"
    .parameter "plusOne"

    .prologue
    .line 1057
    const-string v2, "EsPostsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1058
    const-string v2, "EsPostsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>> plusOneComment activity id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", commentId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_3b
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1066
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "activity_comments"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "plus_one_data"

    aput-object v5, v3, v4

    const-string v4, "comment_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1069
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_60

    .line 1070
    const/4 v12, 0x0

    .line 1097
    :goto_5f
    return-object v12

    .line 1073
    :cond_60
    const/4 v12, 0x0

    .line 1075
    .local v12, poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :try_start_61
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 1076
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_77

    .line 1077
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v12

    .line 1080
    :cond_77
    move/from16 v0, p4

    invoke-static {v12, v0}, Lcom/google/android/apps/plus/content/EsPostsData;->updatePlusOneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v9

    .line 1082
    .local v9, builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    new-instance v13, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v13, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1083
    .local v13, values:Landroid/content/ContentValues;
    const-string v3, "plus_one_data"

    if-eqz v9, :cond_a8

    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v2

    :goto_8f
    invoke-virtual {v13, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1086
    const-string v2, "activity_comments"

    const-string v3, "comment_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-virtual {v1, v2, v13, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1089
    move-object/from16 v0, p2

    invoke-static {v1, p0, p1, v0}, Lcom/google/android/apps/plus/content/EsPostsData;->notifyActivityChange(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    :try_end_a4
    .catchall {:try_start_61 .. :try_end_a4} :catchall_b6
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_61 .. :try_end_a4} :catch_aa

    .line 1094
    .end local v9           #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_a4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_5f

    .line 1083
    .restart local v9       #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .restart local v13       #values:Landroid/content/ContentValues;
    :cond_a8
    const/4 v2, 0x0

    goto :goto_8f

    .line 1091
    .end local v9           #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .end local v13           #values:Landroid/content/ContentValues;
    :catch_aa
    move-exception v11

    .line 1092
    .local v11, ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_ab
    const-string v2, "EsPostsData"

    const-string v3, "plusOneComment"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b2
    .catchall {:try_start_ab .. :try_end_b2} :catchall_b6

    .line 1094
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_5f

    .end local v11           #ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_b6
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static plusOneComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Z)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentId"
    .parameter "plusOneData"
    .parameter "plusOne"

    .prologue
    const/4 v5, 0x1

    .line 1007
    const-string v2, "EsPostsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 1008
    const-string v3, "EsPostsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>> plusOneComment activity id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", comment id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", plus one id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p4, :cond_9e

    invoke-virtual {p4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;

    move-result-object v2

    :goto_31
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", local plus one: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", server plus one: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p4, :cond_a1

    invoke-virtual {p4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_4f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", total plus ones: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p4, :cond_a4

    invoke-virtual {p4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_63
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_6e
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1021
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1022
    .local v1, values:Landroid/content/ContentValues;
    if-eqz p5, :cond_af

    .line 1023
    if-eqz p4, :cond_a7

    .line 1024
    const-string v2, "plus_one_data"

    invoke-virtual {p4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1036
    :goto_88
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_9d

    .line 1037
    const-string v2, "activity_comments"

    const-string v3, "comment_id=?"

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1040
    invoke-static {v0, p0, p1, p2}, Lcom/google/android/apps/plus/content/EsPostsData;->notifyActivityChange(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 1042
    :cond_9d
    return-void

    .line 1008
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_9e
    const-string v2, "no data"

    goto :goto_31

    :cond_a1
    const-string v2, "no data"

    goto :goto_4f

    :cond_a4
    const-string v2, "no data"

    goto :goto_63

    .line 1026
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1       #values:Landroid/content/ContentValues;
    :cond_a7
    const-string v2, "EsPostsData"

    const-string v3, "plusOneComment did not receive PlusOneData for +1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 1029
    :cond_af
    if-eqz p4, :cond_bb

    .line 1030
    const-string v2, "plus_one_data"

    invoke-virtual {p4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_88

    .line 1032
    :cond_bb
    const-string v2, "EsPostsData"

    const-string v3, "plusOneComment did not receive PlusOneData for +1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88
.end method

.method public static plusOnePost(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 18
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter "plusOne"

    .prologue
    .line 926
    const-string v2, "EsPostsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 927
    const-string v2, "EsPostsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>> plusOnePost activity id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_2f
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 934
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "activities"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "plus_one_data"

    aput-object v5, v3, v4

    const-string v4, "activity_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 937
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_54

    .line 938
    const/4 v12, 0x0

    .line 965
    :goto_53
    return-object v12

    .line 941
    :cond_54
    const/4 v12, 0x0

    .line 943
    .local v12, poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :try_start_55
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 944
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 945
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v12

    .line 948
    :cond_6b
    move/from16 v0, p3

    invoke-static {v12, v0}, Lcom/google/android/apps/plus/content/EsPostsData;->updatePlusOneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v9

    .line 950
    .local v9, builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    new-instance v13, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v13, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 951
    .local v13, values:Landroid/content/ContentValues;
    const-string v3, "plus_one_data"

    if-eqz v9, :cond_9c

    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v2

    :goto_83
    invoke-virtual {v13, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 954
    const-string v2, "activities"

    const-string v3, "activity_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v13, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 957
    move-object/from16 v0, p2

    invoke-static {v1, p0, p1, v0}, Lcom/google/android/apps/plus/content/EsPostsData;->notifyActivityChange(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    :try_end_98
    .catchall {:try_start_55 .. :try_end_98} :catchall_aa
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_55 .. :try_end_98} :catch_9e

    .line 962
    .end local v9           #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_98
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_53

    .line 951
    .restart local v9       #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .restart local v13       #values:Landroid/content/ContentValues;
    :cond_9c
    const/4 v2, 0x0

    goto :goto_83

    .line 959
    .end local v9           #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .end local v13           #values:Landroid/content/ContentValues;
    :catch_9e
    move-exception v11

    .line 960
    .local v11, ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_9f
    const-string v2, "EsPostsData"

    const-string v3, "plusOnePost"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a6
    .catchall {:try_start_9f .. :try_end_a6} :catchall_aa

    .line 962
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_53

    .end local v11           #ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_aa
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static plusOnePost(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Z)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter "plusOneData"
    .parameter "plusOne"

    .prologue
    const/4 v5, 0x1

    .line 878
    const-string v2, "EsPostsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 879
    const-string v3, "EsPostsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>> plusOnePost activity id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", plus one id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_94

    invoke-virtual {p3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;

    move-result-object v2

    :goto_27
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", local plus one: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", server plus one: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_97

    invoke-virtual {p3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_45
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", total plus ones: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_9a

    invoke-virtual {p3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_59
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_64
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 891
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 892
    .local v1, values:Landroid/content/ContentValues;
    if-eqz p4, :cond_a5

    .line 893
    if-eqz p3, :cond_9d

    .line 894
    const-string v2, "plus_one_data"

    invoke-virtual {p3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 906
    :goto_7e
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_93

    .line 907
    const-string v2, "activities"

    const-string v3, "activity_id=?"

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 910
    invoke-static {v0, p0, p1, p2}, Lcom/google/android/apps/plus/content/EsPostsData;->notifyActivityChange(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 912
    :cond_93
    return-void

    .line 879
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_94
    const-string v2, "no data"

    goto :goto_27

    :cond_97
    const-string v2, "no data"

    goto :goto_45

    :cond_9a
    const-string v2, "no data"

    goto :goto_59

    .line 896
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1       #values:Landroid/content/ContentValues;
    :cond_9d
    const-string v2, "EsPostsData"

    const-string v3, "plusOnePost did not receive PlusOneData for +1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 899
    :cond_a5
    if-eqz p3, :cond_b1

    .line 900
    const-string v2, "plus_one_data"

    invoke-virtual {p3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_7e

    .line 902
    :cond_b1
    const-string v2, "EsPostsData"

    const-string v3, "plusOnePost did not receive PlusOneData for +1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e
.end method

.method public static setCommentPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentId"
    .parameter "plusOneData"

    .prologue
    const/4 v5, 0x1

    .line 1111
    const-string v2, "EsPostsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1112
    const-string v2, "EsPostsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>> setCommentPlusOne activity id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", comment id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_2c
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1119
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1120
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "plus_one_data"

    if-eqz p4, :cond_54

    invoke-virtual {p4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v2

    :goto_41
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1123
    const-string v2, "activity_comments"

    const-string v3, "comment_id=?"

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1126
    invoke-static {v0, p0, p1, p2}, Lcom/google/android/apps/plus/content/EsPostsData;->notifyActivityChange(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 1127
    return-void

    .line 1120
    :cond_54
    const/4 v2, 0x0

    goto :goto_41
.end method

.method public static setPostPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter "plusOneData"

    .prologue
    const/4 v5, 0x1

    .line 978
    const-string v2, "EsPostsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 979
    const-string v2, "EsPostsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>> setPostPlusOne activity id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_22
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 985
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 986
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "plus_one_data"

    if-eqz p3, :cond_4a

    invoke-virtual {p3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v2

    :goto_37
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 989
    const-string v2, "activities"

    const-string v3, "activity_id=?"

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 992
    invoke-static {v0, p0, p1, p2}, Lcom/google/android/apps/plus/content/EsPostsData;->notifyActivityChange(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 993
    return-void

    .line 986
    :cond_4a
    const/4 v2, 0x0

    goto :goto_37
.end method

.method public static syncActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 17
    .parameter "context"
    .parameter "account"
    .parameter "syncState"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 159
    sget-object v12, Lcom/google/android/apps/plus/content/EsPostsData;->mSyncLock:Ljava/lang/Object;

    monitor-enter v12

    .line 160
    :try_start_3
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_d

    sget-boolean v0, Lcom/google/android/apps/plus/content/EsPostsData;->sSyncEnabled:Z

    if-nez v0, :cond_f

    .line 161
    :cond_d
    monitor-exit v12

    .line 188
    :goto_e
    return-void

    .line 164
    :cond_f
    const-string v0, "Activities:Sync"

    invoke-virtual {p2, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 166
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITIES_PAGE_SIZE:I

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v7, p3

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/content/EsPostsData;->doActivityStreamSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Lcom/google/android/apps/plus/service/ServiceResult;

    .line 169
    invoke-static {p0}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->getAllWidgetCircleIds(Landroid/content/Context;)Ljava/util/List;

    move-result-object v11

    .line 170
    .local v11, widgetCircleIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5c

    .line 171
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_31
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 174
    .local v10, widgetCircleId:Ljava/lang/String;
    const-string v0, "v.whatshot"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 175
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->WHATS_HOT:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 176
    .local v2, view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    const/4 v3, 0x0

    .line 181
    .local v3, circleId:Ljava/lang/String;
    :goto_48
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v7, p3

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/content/EsPostsData;->doActivityStreamSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Lcom/google/android/apps/plus/service/ServiceResult;

    goto :goto_31

    .line 187
    .end local v2           #view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    .end local v3           #circleId:Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #widgetCircleId:Ljava/lang/String;
    .end local v11           #widgetCircleIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_55
    move-exception v0

    monitor-exit v12
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw v0

    .line 178
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v10       #widgetCircleId:Ljava/lang/String;
    .restart local v11       #widgetCircleIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_58
    :try_start_58
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 179
    .restart local v2       #view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    move-object v3, v10

    .restart local v3       #circleId:Ljava/lang/String;
    goto :goto_48

    .line 186
    .end local v2           #view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    .end local v3           #circleId:Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #widgetCircleId:Ljava/lang/String;
    :cond_5c
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 187
    monitor-exit v12
    :try_end_60
    .catchall {:try_start_58 .. :try_end_60} :catchall_55

    goto :goto_e
.end method

.method private static updateCommentsInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Z)V
    .registers 13
    .parameter "db"
    .parameter "activityId"
    .parameter
    .parameter "newActivity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Comment;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1326
    .local p2, comments:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Comment;>;"
    if-nez p3, :cond_f

    .line 1327
    const-string v5, "activity_comments"

    const-string v6, "activity_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {p0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1331
    :cond_f
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1363
    :cond_15
    return-void

    .line 1336
    :cond_16
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1337
    .local v4, values:Landroid/content/ContentValues;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Comment;

    .line 1338
    .local v0, comment:Lcom/google/wireless/tacotruck/proto/Data$Comment;
    const-string v5, "EsPostsData"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 1339
    const-string v5, "EsPostsData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    >>>>> insertComments comment id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", author id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getAuthorGaiaId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", content: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getContentHtml()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", created: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getCreationTimestampMsec()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", truncated: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getTruncated()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    :cond_88
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1348
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1349
    .local v1, commentId:Ljava/lang/String;
    const-string v5, "activity_id"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    const-string v5, "comment_id"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    const-string v5, "author_id"

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getFocusObfuscatedAuthorId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    const-string v5, "content"

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getContentHtml()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    const-string v5, "created"

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getCreationTimestampMsec()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1354
    const-string v5, "truncated"

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getTruncated()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1355
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasPlusoneData()Z

    move-result v5

    if-eqz v5, :cond_e2

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v3

    .line 1357
    .local v3, plusOneBlob:[B
    :goto_d3
    const-string v5, "plus_one_data"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1359
    const-string v5, "activity_comments"

    const-string v6, "activity_id"

    const/4 v7, 0x5

    invoke-virtual {p0, v5, v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto/16 :goto_1f

    .line 1355
    .end local v3           #plusOneBlob:[B
    :cond_e2
    const/4 v3, 0x0

    goto :goto_d3
.end method

.method private static updateMediaInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Z)V
    .registers 22
    .parameter "db"
    .parameter "activityId"
    .parameter
    .parameter "newActivity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Media;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1264
    .local p2, mediaItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Media;>;"
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 1265
    .local v11, existingMedia:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p3, :cond_39

    .line 1266
    const-string v3, "media"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "thumbnail_url"

    aput-object v5, v4, v2

    const-string v5, "activity_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1270
    .local v10, cursor:Landroid/database/Cursor;
    :goto_22
    :try_start_22
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1271
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_31

    goto :goto_22

    .line 1274
    :catchall_31
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_36
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1278
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_39
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_db

    .line 1280
    new-instance v17, Landroid/content/ContentValues;

    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1281
    .local v17, values:Landroid/content/ContentValues;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_4b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_db

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/wireless/tacotruck/proto/Data$Media;

    .line 1282
    .local v14, media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_58
    const/4 v2, 0x2

    if-ge v12, v2, :cond_4b

    .line 1283
    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v15

    .line 1284
    .local v15, thumbnailUrl:Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v12, v2, :cond_75

    .line 1285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&google_plus:card_type=nonsquare"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1287
    :cond_75
    const-string v2, "EsPostsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 1288
    const-string v2, "EsPostsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    >>>>> insertMedia: , thumbnail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :cond_b2
    invoke-virtual {v11, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 1295
    invoke-virtual {v11, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1282
    :goto_bb
    add-int/lit8 v12, v12, 0x1

    goto :goto_58

    .line 1297
    :cond_be
    const-string v2, "activity_id"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    const-string v2, "thumbnail_url"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    const-string v2, "media"

    const-string v3, "activity_id"

    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_bb

    .line 1308
    .end local v12           #i:I
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    .end local v15           #thumbnailUrl:Ljava/lang/String;
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_db
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :goto_df
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_fe

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1309
    .local v16, url:Ljava/lang/String;
    const-string v2, "media"

    const-string v3, "activity_id=? AND thumbnail_url=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v16, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_df

    .line 1313
    .end local v16           #url:Ljava/lang/String;
    :cond_fe
    return-void
.end method

.method static updatePlusOneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 4
    .parameter "poData"
    .parameter "plusOne"

    .prologue
    const/4 v1, 0x1

    .line 2047
    if-eqz p0, :cond_34

    .line 2048
    if-eqz p1, :cond_19

    .line 2049
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    .line 2050
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setPlusonedByViewer(Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 2051
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->getTotalPlusoneCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setTotalPlusoneCount(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 2053
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->clearPlusoneId()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 2075
    :goto_18
    return-object v0

    .line 2055
    .end local v0           #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    :cond_19
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    .line 2056
    .restart local v0       #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setPlusonedByViewer(Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 2057
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v1

    if-lez v1, :cond_30

    .line 2058
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setTotalPlusoneCount(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 2061
    :cond_30
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->clearPlusoneId()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    goto :goto_18

    .line 2064
    .end local v0           #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    :cond_34
    if-eqz p1, :cond_41

    .line 2065
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    .line 2066
    .restart local v0       #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setPlusonedByViewer(Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 2067
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setTotalPlusoneCount(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    goto :goto_18

    .line 2071
    .end local v0           #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    :cond_41
    const/4 v0, 0x0

    .restart local v0       #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    goto :goto_18
.end method

.method public static updateStreamActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 25
    .parameter "context"
    .parameter "account"
    .parameter "streamKey"
    .parameter
    .parameter
    .parameter "oldContinuationToken"
    .parameter "newContinuationToken"
    .parameter "syncState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    .local p3, activities:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;>;"
    .local p4, personMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    .line 283
    .local v4, activitiesCount:I
    invoke-static/range {p5 .. p6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 284
    const/16 p6, 0x0

    .line 287
    :cond_c
    const-string v12, "EsPostsData"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_51

    .line 288
    const-string v12, "EsPostsData"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateStreamActivities: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " received activities: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ,new token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ,old token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_51
    if-eqz p7, :cond_58

    .line 295
    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->incrementCount(I)V

    .line 299
    :cond_58
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 302
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 306
    :try_start_63
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b5

    .line 307
    const/4 v9, 0x0

    .line 309
    .local v9, sortIndex:I
    const-string v12, "activity_streams"

    const-string v13, "stream_key=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object p2, v14, v15

    invoke-virtual {v6, v12, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 319
    :goto_77
    new-instance v11, Landroid/content/ContentValues;

    const/4 v12, 0x5

    invoke-direct {v11, v12}, Landroid/content/ContentValues;-><init>(I)V

    .line 320
    .local v11, values:Landroid/content/ContentValues;
    add-int v12, v9, v4

    add-int/lit8 v8, v12, -0x1

    .line 321
    .local v8, lastSortIndex:I
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_85
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    .line 322
    .local v5, activity:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    const-string v12, "stream_key"

    move-object/from16 v0, p2

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v12, "activity_id"

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getActivityId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v12, "sort_index"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-string v12, "activity_streams"

    const-string v13, "activity_id"

    const/4 v14, 0x5

    invoke-virtual {v6, v12, v13, v11, v14}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 328
    add-int/lit8 v9, v9, 0x1

    goto :goto_85

    .line 312
    .end local v5           #activity:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #lastSortIndex:I
    .end local v9           #sortIndex:I
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_b5
    const-string v12, "SELECT count(*) FROM activity_streams WHERE stream_key=?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object p2, v13, v14

    invoke-static {v6, v12, v13}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v12

    long-to-int v9, v12

    .restart local v9       #sortIndex:I
    goto :goto_77

    .line 332
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #lastSortIndex:I
    .restart local v11       #values:Landroid/content/ContentValues;
    :cond_c3
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 333
    const-string v12, "token"

    move-object/from16 v0, p6

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v12, "activity_streams"

    const-string v13, "stream_key=? AND sort_index=0"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object p2, v14, v15

    invoke-virtual {v6, v12, v11, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 340
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_101

    .line 341
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 342
    const-string v12, "last_activity"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    const-string v12, "activity_streams"

    const-string v13, "stream_key=? AND sort_index=?"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object p2, v14, v15

    const/4 v15, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v6, v12, v11, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 349
    :cond_101
    if-lez v4, :cond_13f

    .line 350
    const-string v12, "EsPostsData"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_134

    .line 351
    const-string v12, "EsPostsData"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateStreamActivities: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " inserting activities:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_134
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v6, v2, v3}, Lcom/google/android/apps/plus/content/EsPostsData;->insertActivitiesInTransaction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/util/Map;)V

    .line 357
    :cond_13f
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_142
    .catchall {:try_start_63 .. :try_end_142} :catchall_152

    .line 359
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 363
    invoke-static/range {p1 .. p2}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 364
    .local v10, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v10, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 365
    return-void

    .line 359
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #lastSortIndex:I
    .end local v9           #sortIndex:I
    .end local v10           #uri:Landroid/net/Uri;
    .end local v11           #values:Landroid/content/ContentValues;
    :catchall_152
    move-exception v12

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12
.end method
