.class public Lcom/google/android/apps/plus/content/EsPostsData;
.super Ljava/lang/Object;
.source "EsPostsData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/content/EsPostsData$1;,
        Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;,
        Lcom/google/android/apps/plus/content/EsPostsData$MediaDataQuery;,
        Lcom/google/android/apps/plus/content/EsPostsData$ActivityStreamKeyQuery;
    }
.end annotation


# static fields
.field private static final ACTIVITY_TIMESTAMP_AND_STATUS_COLUMNS:[Ljava/lang/String;

.field private static final mSyncLock:Ljava/lang/Object;

.field private static sSyncEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsPostsData;->mSyncLock:Ljava/lang/Object;

    .line 103
    sput-boolean v3, Lcom/google/android/apps/plus/content/EsPostsData;->sSyncEnabled:Z

    .line 617
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

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public static buildActivitiesStreamKey(Ljava/lang/Long;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x7c

    .line 1539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1540
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1541
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1542
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1543
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1544
    if-eqz p2, :cond_4d

    .line 1545
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasPosition()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1546
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLatitudeE7()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1547
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1548
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLongitudeE7()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1549
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1550
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getAccuracy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1556
    :cond_3e
    :goto_3e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1560
    invoke-virtual {p3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1553
    :cond_4d
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e
.end method

.method private static buildPlusOneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Ljava/util/Map;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 14
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x2

    .line 1282
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v4

    move v1, v2

    .line 1283
    :goto_7
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getCountDataCount()I

    move-result v0

    if-ge v1, v0, :cond_117

    .line 1284
    invoke-virtual {p0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getCountData(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v5

    .line 1287
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v6

    .line 1288
    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->hasCircleName()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1289
    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getCircleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->setCircleName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    .line 1292
    :cond_22
    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1293
    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getCount()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->setCount(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    .line 1294
    const-string v0, "EsPostsData"

    invoke-static {v0, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1295
    const-string v0, "EsPostsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Count: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getCount()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    move v3, v2

    .line 1299
    :goto_54
    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getPersonIdCount()I

    move-result v0

    if-ge v3, v0, :cond_dd

    .line 1300
    invoke-virtual {v5, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getPersonId(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->addPersonId(J)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    .line 1301
    invoke-virtual {v5, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getPersonId(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 1302
    if-eqz v0, :cond_ae

    .line 1303
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->addPersonFirstName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    .line 1304
    const-string v7, "EsPostsData"

    invoke-static {v7, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_aa

    .line 1305
    const-string v7, "EsPostsData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    Person id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getPersonId(I)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :cond_aa
    :goto_aa
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_54

    .line 1309
    :cond_ae
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->addPersonFirstName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    .line 1310
    const-string v0, "EsPostsData"

    invoke-static {v0, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 1311
    const-string v0, "EsPostsData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    Person id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getPersonId(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> (no name)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    .line 1316
    :cond_dd
    const-string v0, "EsPostsData"

    invoke-static {v0, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10b

    move v0, v2

    .line 1317
    :goto_e6
    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getPersonFirstNameCount()I

    move-result v3

    if-ge v0, v3, :cond_10b

    .line 1318
    const-string v3, "EsPostsData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "        Person first name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5, v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getPersonFirstName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    add-int/lit8 v0, v0, 0x1

    goto :goto_e6

    .line 1323
    :cond_10b
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setCountData(ILcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 1283
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_7

    .line 1326
    :cond_117
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    return-object v0
.end method

.method static cleanupData(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 1429
    sget-boolean v0, Lcom/google/android/apps/plus/content/EsPostsData;->sSyncEnabled:Z

    if-nez v0, :cond_7

    .line 1457
    :goto_6
    return-void

    .line 1433
    :cond_7
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsPostsData;->deleteNonEssentialStreams(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1435
    const-string v0, "activities"

    const-string v1, "activity_id NOT IN (SELECT DISTINCT activity_id FROM activity_streams)"

    invoke-virtual {p0, v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1439
    const-string v1, "EsPostsData"

    invoke-static {v1, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1440
    const-string v1, "EsPostsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanupData deleted unreferenced activities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :cond_32
    invoke-static {}, Lcom/google/android/apps/plus/content/EsPostsData;->getAvailableStorage()J

    move-result-wide v0

    const-wide/32 v2, 0xf42400

    cmp-long v0, v0, v2

    if-gez v0, :cond_65

    .line 1446
    const-string v0, "activities"

    const-string v1, "activity_id IN (SELECT activity_id FROM activity_streams WHERE sort_index > 50)"

    invoke-virtual {p0, v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1451
    const-string v1, "EsPostsData"

    invoke-static {v1, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1452
    const-string v1, "EsPostsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanupData deleted \"all circles\" activities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
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
    .line 1406
    .local p3, places:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Location;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1408
    .local v0, locations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/tacotruck/proto/Data$Location;>;"
    if-eqz p1, :cond_22

    .line 1409
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/LocationQuery;->getLocation()Landroid/location/Location;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/util/LocationUtils;->createPoint(Landroid/location/Location;)Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    .line 1410
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

    .line 1413
    .end local v1           #p:Lcom/google/wireless/tacotruck/proto/Data$Point;
    :cond_22
    if-eqz p2, :cond_33

    .line 1414
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setReverseGeocode(Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1417
    :cond_33
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1419
    return-object v0
.end method

.method public static deleteActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "activityId"

    .prologue
    .line 993
    const-string v6, "EsPostsData"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 994
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

    .line 997
    :cond_21
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1000
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1003
    :try_start_2c
    invoke-static {v0, p2}, Lcom/google/android/apps/plus/content/EsPostsData;->getActivityStreams(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1006
    .local v5, streamKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v3, v6

    .line 1007
    .local v3, selectionArgs:[Ljava/lang/String;
    const-string v6, "activity_streams"

    const-string v7, "activity_id=?"

    invoke-virtual {v0, v6, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1010
    const-string v6, "activities"

    const-string v7, "activity_id=?"

    invoke-virtual {v0, v6, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1012
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1015
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1016
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1017
    .local v4, streamKey:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_63
    .catchall {:try_start_2c .. :try_end_63} :catchall_64

    goto :goto_4f

    .line 1020
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #selectionArgs:[Ljava/lang/String;
    .end local v4           #streamKey:Ljava/lang/String;
    .end local v5           #streamKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_64
    move-exception v6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v3       #selectionArgs:[Ljava/lang/String;
    .restart local v5       #streamKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_69
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1022
    return-void
.end method

.method public static deleteComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;)V
    .registers 12
    .parameter
    .parameter
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1208
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1212
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v0, 0x100

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1213
    const-string v0, "comment_id"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1214
    const/4 v0, 0x1

    .line 1215
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1216
    const-string v5, "EsPostsData"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 1217
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

    .line 1220
    :cond_57
    if-eqz v1, :cond_62

    .line 1221
    const/4 v1, 0x0

    .line 1225
    :goto_5a
    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_20

    .line 1223
    :cond_62
    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5a

    .line 1228
    :cond_68
    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1230
    const-string v0, "activity_comments"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1232
    invoke-static {v2, p0, p1, p2}, Lcom/google/android/apps/plus/content/EsPostsData;->notifyActivityChange(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 1233
    return-void
.end method

.method private static deleteNonEssentialStreams(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1465
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    invoke-static {v4, v4, v4, v0}, Lcom/google/android/apps/plus/content/EsPostsData;->buildActivitiesStreamKey(Ljava/lang/Long;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Ljava/lang/String;

    move-result-object v0

    .line 1468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1469
    const-string v2, "stream_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " NOT IN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1473
    const-string v0, "activity_streams"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1474
    const-string v1, "EsPostsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1475
    const-string v1, "EsPostsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteNonEssentialStreams deleted streams: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_4e
    return-void
.end method

.method private static deleteUnusedLocations(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 11
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 1486
    const-string v1, "location_queries"

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v7, "_id DESC"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1490
    if-nez v1, :cond_18

    .line 1525
    :goto_17
    return-void

    .line 1494
    :cond_18
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gt v0, v9, :cond_22

    .line 1495
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_17

    .line 1501
    :cond_22
    :try_start_22
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1505
    const-string v0, "_id"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " IN("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v9

    .line 1508
    :goto_36
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1509
    if-eqz v0, :cond_4d

    move v0, v8

    .line 1515
    :goto_3f
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_47
    .catchall {:try_start_22 .. :try_end_47} :catchall_48

    goto :goto_36

    .line 1523
    :catchall_48
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1512
    :cond_4d
    const/16 v3, 0x2c

    :try_start_4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 1518
    :cond_53
    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1521
    const-string v0, "location_queries"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_4f .. :try_end_62} :catchall_48

    .line 1523
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_17
.end method

.method public static doActivityStreamSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Lcom/google/android/apps/plus/service/ServiceResult;
    .registers 17
    .parameter "context"
    .parameter "account"
    .parameter "view"
    .parameter "circleId"
    .parameter "userId"
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
    .line 211
    const-string v1, "EsPostsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 212
    const/4 v1, 0x0

    invoke-static {p4, p3, v1, p2}, Lcom/google/android/apps/plus/content/EsPostsData;->buildActivitiesStreamKey(Ljava/lang/Long;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Ljava/lang/String;

    move-result-object v7

    .line 213
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

    .line 218
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

    .line 220
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getActivityStream(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V

    .line 221
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 222
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 223
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 226
    :cond_52
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 227
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

    .line 231
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

    .line 178
    const-string v1, "EsPostsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 179
    invoke-static {v3, v3, p3, p2}, Lcom/google/android/apps/plus/content/EsPostsData;->buildActivitiesStreamKey(Ljava/lang/Long;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Ljava/lang/String;

    move-result-object v7

    .line 180
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

    .line 185
    .end local v7           #streamKey:Ljava/lang/String;
    :cond_30
    new-instance v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;ZLcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 187
    .local v0, so:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getNearbyActivities(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;Ljava/lang/String;I)V

    .line 188
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 189
    new-instance v1, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v1, v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>(Lcom/google/android/apps/plus/network/HttpOperation;)V

    return-object v1
.end method

.method private static getActivityLastModifiedTime(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)J
    .registers 12
    .parameter "activity"

    .prologue
    const-wide/16 v8, 0x0

    .line 587
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasCollapsedData()Z

    move-result v10

    if-nez v10, :cond_a

    move-wide v6, v8

    .line 614
    :cond_9
    :goto_9
    return-wide v6

    .line 591
    :cond_a
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getCollapsedData()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    .line 594
    .local v0, collapsedData:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLastModifiedMsec()J

    move-result-wide v6

    .line 595
    .local v6, modifiedTime:J
    cmp-long v10, v6, v8

    if-nez v10, :cond_1a

    .line 596
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getCreationMsec()J

    move-result-wide v6

    .line 599
    :cond_1a
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getCommentList()Ljava/util/List;

    move-result-object v4

    .line 600
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

    .line 601
    .local v1, comment:Lcom/google/wireless/tacotruck/proto/Data$Comment;
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getLastUpdateTimestampMsec()J

    move-result-wide v2

    .line 602
    .local v2, commentModified:J
    cmp-long v10, v2, v8

    if-nez v10, :cond_3a

    .line 603
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getCreationTimestampMsec()J

    move-result-wide v2

    .line 605
    :cond_3a
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 606
    goto :goto_22

    .line 611
    .end local v1           #comment:Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .end local v2           #commentModified:J
    :cond_3f
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasPlusoneData()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 612
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

    .line 1246
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1249
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

    .line 1252
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_22

    .line 1269
    :goto_21
    return-object v5

    .line 1257
    :cond_22
    :try_start_22
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1258
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1259
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v9

    .line 1260
    .local v9, poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    if-eqz v9, :cond_3e

    .line 1261
    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;
    :try_end_3d
    .catchall {:try_start_22 .. :try_end_3d} :catchall_42

    move-result-object v5

    .line 1266
    .end local v9           #poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_3e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_21

    :catchall_42
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
    .line 632
    .local p1, activities:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 633
    .local v13, sb:Ljava/lang/StringBuilder;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 634
    .local v10, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "activity_id IN ("

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
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

    .line 636
    .local v8, activity:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    const-string v0, "?,"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 639
    .end local v8           #activity:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    :cond_2c
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 640
    const-string v0, ")"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 643
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

    .line 647
    .local v11, cursor:Landroid/database/Cursor;
    :goto_59
    :try_start_59
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 648
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 649
    .local v9, activityId:Ljava/lang/String;
    new-instance v14, Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;

    const/4 v0, 0x0

    invoke-direct {v14, v0}, Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;-><init>(Lcom/google/android/apps/plus/content/EsPostsData$1;)V

    .line 650
    .local v14, status:Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v14, Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;->timestamp:J

    .line 651
    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v14, Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;->dataStatus:I

    .line 652
    invoke-virtual {v15, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7b
    .catchall {:try_start_59 .. :try_end_7b} :catchall_7c

    goto :goto_59

    .line 655
    .end local v9           #activityId:Ljava/lang/String;
    .end local v14           #status:Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;
    :catchall_7c
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_81
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 657
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

    .line 1599
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1601
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

    .line 1604
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_1d

    .line 1616
    :goto_1c
    return-object v11

    .line 1609
    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1610
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_2c

    goto :goto_1d

    .line 1613
    :catchall_2c
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_31
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1c
.end method

.method private static getAvailableStorage()J
    .registers 5

    .prologue
    .line 1667
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 1668
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1669
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    .line 1670
    const-string v2, "EsPostsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1671
    const-string v2, "EsPostsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAvailableStorage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 1677
    :cond_39
    :goto_39
    return-wide v0

    .line 1674
    :catch_3a
    move-exception v0

    .line 1676
    const-string v1, "EsPostsData"

    const-string v2, "getAvailableStorage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1677
    const-wide/16 v0, -0x1

    goto :goto_39
.end method

.method public static getMediaThumbnailBytes(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)[B
    .registers 4
    .parameter "context"
    .parameter "account"
    .parameter "url"

    .prologue
    .line 1112
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/content/EsPostsData;->getMediaThumbnailData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)[B

    move-result-object v0

    .line 1113
    .local v0, imageBytes:[B
    return-object v0
.end method

.method public static getMediaThumbnailData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)[B
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1127
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1130
    const-string v1, "media"

    sget-object v2, Lcom/google/android/apps/plus/content/EsPostsData$MediaDataQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "thumbnail_url=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1132
    if-nez v1, :cond_1e

    .line 1145
    :goto_1d
    return-object v5

    .line 1138
    :cond_1e
    :try_start_1e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1139
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_2d

    move-result-object v5

    .line 1142
    :cond_29
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1d

    :catchall_2d
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getMostRecentSortIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .registers 13
    .parameter "db"
    .parameter "streamKey"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 669
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

    .line 673
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_1f

    move v0, v10

    .line 685
    :goto_1e
    return v0

    .line 678
    :cond_1f
    :try_start_1f
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 679
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_2e

    move-result v0

    .line 682
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1e

    :catchall_2e
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_33
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 685
    goto :goto_1e
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
            "Ljava/lang/Long;",
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
    .line 350
    .local p3, activities:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;>;"
    .local p4, personMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 353
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 356
    :try_start_b
    invoke-static {v1, p3, p4}, Lcom/google/android/apps/plus/content/EsPostsData;->insertActivitiesInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/util/Map;)V

    .line 359
    if-eqz p2, :cond_8b

    .line 360
    const-string v6, "EsPostsData"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 361
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

    .line 364
    :cond_3f
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 365
    .local v5, values:Landroid/content/ContentValues;
    invoke-static {v1, p2}, Lcom/google/android/apps/plus/content/EsPostsData;->getMostRecentSortIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    sub-int v3, v6, v7

    .line 366
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

    .line 367
    .local v0, activity:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    const-string v6, "stream_key"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v6, "activity_id"

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getActivityId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v6, "sort_index"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    const-string v6, "last_activity"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 372
    const-string v6, "activity_streams"

    const-string v7, "activity_id"

    const/4 v8, 0x4

    invoke-virtual {v1, v6, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 375
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 379
    .end local v0           #activity:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #sortIndex:I
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_8b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8e
    .catchall {:try_start_b .. :try_end_8e} :catchall_a0

    .line 381
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 384
    if-eqz p2, :cond_a5

    .line 386
    invoke-static {p1, p2}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 387
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 394
    .end local v4           #uri:Landroid/net/Uri;
    :cond_9f
    return-void

    .line 381
    :catchall_a0
    move-exception v6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6

    .line 390
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

    .line 391
    .restart local v0       #activity:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getActivityId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, p0, p1, v6}, Lcom/google/android/apps/plus/content/EsPostsData;->notifyActivityChange(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_a9
.end method

.method private static insertActivitiesInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/util/Map;)V
    .registers 38
    .parameter "db"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
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
    .line 407
    .local p1, activities:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;>;"
    .local p2, personMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    .line 408
    .local v10, activitiesCount:I
    if-nez v10, :cond_7

    .line 581
    :cond_6
    return-void

    .line 412
    :cond_7
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v24, mediaWithUrl:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Media;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v16, dbMedia:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/DbMedia;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsPostsData;->getActivityStatuses(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v31

    .line 418
    .local v31, statuses:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;>;"
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 419
    .local v32, values:Landroid/content/ContentValues;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_1e
    :goto_1e
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    .line 420
    .local v11, activity:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getActivityId()Ljava/lang/String;

    move-result-object v13

    .line 421
    .local v13, activityId:Ljava/lang/String;
    const-string v3, "EsPostsData"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 422
    const-string v3, "EsPostsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, ">>>>> Activity id: "

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v33, ", author id: "

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getAuthorGaiaId()J

    move-result-wide v33

    move-wide/from16 v0, v33

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v33, ", updated: "

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getCollapsedData()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLastModifiedMsec()J

    move-result-wide v33

    move-wide/from16 v0, v33

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_79
    const/4 v12, 0x0

    .line 428
    .local v12, activityChanged:Z
    invoke-static {v11}, Lcom/google/android/apps/plus/content/EsPostsData;->getActivityLastModifiedTime(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)J

    move-result-wide v25

    .line 429
    .local v25, modifiedTime:J
    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;

    .line 430
    .local v30, status:Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;
    if-nez v30, :cond_157

    .line 431
    const/4 v12, 0x1

    .line 439
    :cond_89
    :goto_89
    if-eqz v12, :cond_1e

    .line 443
    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getCollapsedData()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v15

    .line 445
    .local v15, collapsedData:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    invoke-virtual/range {v32 .. v32}, Landroid/content/ContentValues;->clear()V

    .line 447
    const-string v3, "activity_id"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v3, "author_id"

    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getAuthorGaiaId()J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 450
    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getSource()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v29

    .line 451
    .local v29, source:Lcom/google/wireless/tacotruck/proto/Data$Source;
    const-string v3, "source"

    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getType()Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v3, "source_name"

    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getCreationSource()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getExpandedData()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v17

    .line 457
    .local v17, expandedData:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasExpandedData()Z

    move-result v3

    if-eqz v3, :cond_173

    .line 458
    const-string v3, "data_state"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 460
    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->hasLocation()Z

    move-result v3

    if-eqz v3, :cond_114

    .line 461
    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v22

    .line 462
    .local v22, location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasLocationName()Z

    move-result v3

    if-eqz v3, :cond_109

    .line 463
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLocationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_109

    .line 464
    invoke-static/range {v22 .. v22}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v14

    .line 465
    .local v14, builder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLocationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 466
    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v22

    .line 470
    .end local v14           #builder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    :cond_109
    const-string v3, "loc"

    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/tacotruck/proto/Data$Location;->toByteArray()[B

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 473
    .end local v22           #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    :cond_114
    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getMediaList()Ljava/util/List;

    move-result-object v23

    .line 491
    .local v23, mediaList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Media;>;"
    :goto_118
    if-eqz v23, :cond_1bd

    .line 492
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getPhotoMediaDisplay()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getIsPwa()Z

    move-result v6

    .line 493
    .local v6, isPWA:Z
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 494
    const/16 v19, 0x0

    .local v19, i:I
    :goto_127
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_1bd

    .line 495
    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/tacotruck/proto/Data$Media;

    .line 497
    .local v4, media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    if-eqz v6, :cond_1ba

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasPhotoData()Z

    move-result v3

    if-eqz v3, :cond_1ba

    .line 498
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getPhotoData()Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media$GooglePhotoData;->getMediaTag()J

    move-result-wide v7

    .line 502
    .local v7, mediaTag:J
    :goto_149
    new-instance v3, Lcom/google/android/apps/plus/content/DbMedia;

    const/4 v5, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/apps/plus/content/DbMedia;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Media;Lcom/google/android/apps/plus/api/MediaRef;ZJ)V

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    add-int/lit8 v19, v19, 0x1

    goto :goto_127

    .line 432
    .end local v4           #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    .end local v6           #isPWA:Z
    .end local v7           #mediaTag:J
    .end local v15           #collapsedData:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    .end local v17           #expandedData:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    .end local v19           #i:I
    .end local v23           #mediaList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Media;>;"
    .end local v29           #source:Lcom/google/wireless/tacotruck/proto/Data$Source;
    :cond_157
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;->timestamp:J

    move-wide/from16 v33, v0

    cmp-long v3, v25, v33

    if-eqz v3, :cond_164

    .line 433
    const/4 v12, 0x1

    goto/16 :goto_89

    .line 434
    :cond_164
    move-object/from16 v0, v30

    iget v3, v0, Lcom/google/android/apps/plus/content/EsPostsData$ActivityStatus;->dataStatus:I

    if-nez v3, :cond_170

    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasExpandedData()Z

    move-result v3

    if-eqz v3, :cond_89

    .line 436
    :cond_170
    const/4 v12, 0x1

    goto/16 :goto_89

    .line 475
    .restart local v15       #collapsedData:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    .restart local v17       #expandedData:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    .restart local v29       #source:Lcom/google/wireless/tacotruck/proto/Data$Source;
    :cond_173
    const-string v3, "data_state"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 477
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasLocationName()Z

    move-result v3

    if-eqz v3, :cond_1b2

    .line 478
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    move-result-object v14

    .line 479
    .restart local v14       #builder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLocationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 480
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->hasLocationClusterId()Z

    move-result v3

    if-eqz v3, :cond_19d

    .line 481
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLocationClusterId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->setLocalClusterId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;

    .line 483
    :cond_19d
    const-string v3, "loc"

    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Location;->toByteArray()[B

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 488
    .end local v14           #builder:Lcom/google/wireless/tacotruck/proto/Data$Location$Builder;
    :goto_1ac
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getMediaList()Ljava/util/List;

    move-result-object v23

    .restart local v23       #mediaList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Media;>;"
    goto/16 :goto_118

    .line 485
    .end local v23           #mediaList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Media;>;"
    :cond_1b2
    const-string v3, "loc"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_1ac

    .line 500
    .restart local v4       #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    .restart local v6       #isPWA:Z
    .restart local v19       #i:I
    .restart local v23       #mediaList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Media;>;"
    :cond_1ba
    const-wide/16 v7, 0x0

    .restart local v7       #mediaTag:J
    goto :goto_149

    .line 506
    .end local v4           #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    .end local v6           #isPWA:Z
    .end local v7           #mediaTag:J
    .end local v19           #i:I
    :cond_1bd
    const-string v3, "media"

    invoke-static/range {v16 .. v16}, Lcom/google/android/apps/plus/content/DbMedia;->serialize(Ljava/util/List;)[B

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 508
    const-string v3, "total_comment_count"

    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getTotalCommentCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 510
    const-string v3, "public"

    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getIsPublic()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 511
    const-string v3, "acl_display"

    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getAclDisplay()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v3, "created"

    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getCreationMsec()J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 513
    const-string v3, "modified"

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 514
    const-string v3, "updated"

    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getCollapsedData()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getLastModifiedMsec()J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 517
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getCommentCount()I

    move-result v3

    if-lez v3, :cond_2ef

    .line 518
    const-string v3, "comments"

    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getCommentList()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/google/android/apps/plus/content/DbComment;->serialize(Ljava/util/List;Ljava/util/Map;)[B

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 524
    :goto_235
    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getActionState()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v9

    .line 525
    .local v9, actionState:Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    const-string v3, "can_comment"

    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getViewerCanComment()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 526
    const-string v3, "can_reshare"

    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getViewerCanReshare()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 527
    const-string v3, "has_muted"

    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getViewerHasMuted()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 529
    const-string v3, "explanations"

    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getExplanationList()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/content/DbExplanation;->serialize(Ljava/util/List;)[B

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 533
    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasPlusoneData()Z

    move-result v3

    if-eqz v3, :cond_300

    .line 534
    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v28

    .line 535
    .local v28, plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    if-eqz v28, :cond_2f8

    .line 536
    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsPostsData;->buildPlusOneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Ljava/util/Map;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v27

    .line 537
    .local v27, newPod:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    const-string v3, "plus_one_data"

    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 546
    .end local v27           #newPod:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .end local v28           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :goto_294
    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasHangoutData()Z

    move-result v3

    if-eqz v3, :cond_310

    .line 547
    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getHangoutData()Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    move-result-object v18

    .line 548
    .local v18, hangoutData:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;
    if-eqz v18, :cond_308

    .line 549
    const-string v3, "hangout_data"

    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->toByteArray()[B

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 557
    .end local v18           #hangoutData:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;
    :goto_2ab
    if-eqz v30, :cond_318

    .line 558
    const-string v3, "activities"

    const-string v5, "activity_id=?"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v13, v33, v34

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v3, v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 566
    :goto_2c6
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->clear()V

    .line 567
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :cond_2cd
    :goto_2cd
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_328

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/tacotruck/proto/Data$Media;

    .line 568
    .restart local v4       #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Media;->hasThumbnailUrl()Z

    move-result v3

    if-eqz v3, :cond_2cd

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2cd

    .line 569
    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2cd

    .line 521
    .end local v4           #media:Lcom/google/wireless/tacotruck/proto/Data$Media;
    .end local v9           #actionState:Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    .end local v21           #i$:Ljava/util/Iterator;
    :cond_2ef
    const-string v3, "comments"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_235

    .line 539
    .restart local v9       #actionState:Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    .restart local v28       #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_2f8
    const-string v3, "plus_one_data"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_294

    .line 542
    .end local v28           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_300
    const-string v3, "plus_one_data"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_294

    .line 551
    .restart local v18       #hangoutData:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;
    :cond_308
    const-string v3, "hangout_data"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_2ab

    .line 554
    .end local v18           #hangoutData:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;
    :cond_310
    const-string v3, "hangout_data"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_2ab

    .line 561
    :cond_318
    const-string v3, "activities"

    const-string v5, "activity_id"

    const/16 v33, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_2c6

    .line 573
    .restart local v21       #i$:Ljava/util/Iterator;
    :cond_328
    if-nez v30, :cond_346

    const/4 v3, 0x1

    :goto_32b
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v13, v1, v3}, Lcom/google/android/apps/plus/content/EsPostsData;->updateMediaInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Z)V

    .line 576
    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasExpandedData()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 577
    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getCommentList()Ljava/util/List;

    move-result-object v5

    if-nez v30, :cond_348

    const/4 v3, 0x1

    :goto_33f
    move-object/from16 v0, p0

    invoke-static {v0, v13, v5, v3}, Lcom/google/android/apps/plus/content/EsPostsData;->updateCommentsInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Z)V

    goto/16 :goto_1e

    .line 573
    :cond_346
    const/4 v3, 0x0

    goto :goto_32b

    .line 577
    :cond_348
    const/4 v3, 0x0

    goto :goto_33f
.end method

.method public static insertLocations(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/LocationQuery;Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;Ljava/util/List;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 1343
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1347
    invoke-virtual {p2}, Lcom/google/android/apps/plus/api/LocationQuery;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1349
    const-string v2, "location_queries"

    const-string v3, "key=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1352
    invoke-static {p2, p3, p4, p5}, Lcom/google/android/apps/plus/content/EsPostsData;->createLocations(Lcom/google/android/apps/plus/api/LocationQuery;Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1354
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_e4

    .line 1355
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1358
    const-string v4, "key"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    const-string v0, "location_queries"

    const-string v4, "key"

    invoke-virtual {v1, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 1362
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_e4

    .line 1363
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1366
    :try_start_3e
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_de

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 1367
    const-string v6, "EsPostsData"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_79

    .line 1368
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasName()Z

    move-result v6

    if-eqz v6, :cond_bd

    .line 1369
    const-string v6, "EsPostsData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>>>> Place name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :cond_79
    :goto_79
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1377
    const-string v6, "qrid"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1379
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasName()Z

    move-result v6

    if-eqz v6, :cond_94

    .line 1380
    const-string v6, "name"

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    :cond_94
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasDistanceInMetres()Z

    move-result v6

    if-eqz v6, :cond_a7

    .line 1384
    const-string v6, "dist"

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDistanceInMetres()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1387
    :cond_a7
    const-string v6, "location"

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1389
    const-string v0, "locations"

    const-string v6, "qrid"

    invoke-virtual {v1, v0, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_b7
    .catchall {:try_start_3e .. :try_end_b7} :catchall_b8

    goto :goto_42

    .line 1395
    :catchall_b8
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 1371
    :cond_bd
    :try_start_bd
    const-string v6, "EsPostsData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>>>> Address: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getReverseGeocode()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 1393
    :cond_de
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e1
    .catchall {:try_start_bd .. :try_end_e1} :catchall_b8

    .line 1395
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1400
    :cond_e4
    invoke-virtual {p2}, Lcom/google/android/apps/plus/api/LocationQuery;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/apps/plus/content/EsProvider;->buildLocationQueryUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1401
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1402
    return-void
.end method

.method public static insertMediaThumbnail(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[B)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1091
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1094
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1095
    const-string v2, "data"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1097
    const-string v2, "media"

    const-string v3, "thumbnail_url=?"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1099
    return-void
.end method

.method public static isSyncEnabled()Z
    .registers 1

    .prologue
    .line 116
    sget-boolean v0, Lcom/google/android/apps/plus/content/EsPostsData;->sSyncEnabled:Z

    return v0
.end method

.method public static muteActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "activityId"

    .prologue
    .line 958
    const-string v6, "EsPostsData"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 959
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

    .line 962
    :cond_21
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 965
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 968
    :try_start_2c
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 969
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "has_muted"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 970
    const-string v6, "activities"

    const-string v7, "activity_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-virtual {v0, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 972
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 975
    invoke-static {v0, p2}, Lcom/google/android/apps/plus/content/EsPostsData;->getActivityStreams(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 976
    .local v4, streamKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 977
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 978
    .local v3, streamKey:Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_6c
    .catchall {:try_start_2c .. :try_end_6c} :catchall_6d

    goto :goto_58

    .line 981
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #streamKey:Ljava/lang/String;
    .end local v4           #streamKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #values:Landroid/content/ContentValues;
    :catchall_6d
    move-exception v6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v4       #streamKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5       #values:Landroid/content/ContentValues;
    :cond_72
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 983
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

    .line 1576
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1578
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v6, Lcom/google/android/apps/plus/content/EsProvider;->ACTIVITY_VIEW_BY_ACTIVITY_ID_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1580
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1581
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1583
    invoke-static {p0, p3}, Lcom/google/android/apps/plus/content/EsPostsData;->getActivityStreams(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1584
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

    .line 1585
    .local v3, streamKey:Ljava/lang/String;
    invoke-static {p2, v3}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1586
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {v2, v5, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1d

    .line 1588
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
    .line 878
    const-string v2, "EsPostsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 879
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

    .line 883
    :cond_3b
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 887
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

    .line 890
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_60

    .line 891
    const/4 v12, 0x0

    .line 918
    :goto_5f
    return-object v12

    .line 894
    :cond_60
    const/4 v12, 0x0

    .line 896
    .local v12, poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :try_start_61
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 897
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_77

    .line 898
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v12

    .line 901
    :cond_77
    move/from16 v0, p4

    invoke-static {v12, v0}, Lcom/google/android/apps/plus/content/EsPostsData;->updatePlusOneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v9

    .line 903
    .local v9, builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    new-instance v13, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v13, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 904
    .local v13, values:Landroid/content/ContentValues;
    const-string v3, "plus_one_data"

    if-eqz v9, :cond_a8

    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v2

    :goto_8f
    invoke-virtual {v13, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 907
    const-string v2, "activity_comments"

    const-string v3, "comment_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-virtual {v1, v2, v13, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 910
    move-object/from16 v0, p2

    invoke-static {v1, p0, p1, v0}, Lcom/google/android/apps/plus/content/EsPostsData;->notifyActivityChange(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    :try_end_a4
    .catchall {:try_start_61 .. :try_end_a4} :catchall_b3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_61 .. :try_end_a4} :catch_aa

    .line 915
    .end local v9           #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_a4
    :goto_a4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_5f

    .line 904
    .restart local v9       #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .restart local v13       #values:Landroid/content/ContentValues;
    :cond_a8
    const/4 v2, 0x0

    goto :goto_8f

    .line 912
    .end local v9           #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .end local v13           #values:Landroid/content/ContentValues;
    :catch_aa
    move-exception v11

    .line 913
    .local v11, ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_ab
    const-string v2, "EsPostsData"

    const-string v3, "plusOneComment"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b2
    .catchall {:try_start_ab .. :try_end_b2} :catchall_b3

    goto :goto_a4

    .line 915
    .end local v11           #ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_b3
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

    .line 828
    const-string v2, "EsPostsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 829
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

    .line 839
    :cond_6e
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 842
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 843
    .local v1, values:Landroid/content/ContentValues;
    if-eqz p5, :cond_af

    .line 844
    if-eqz p4, :cond_a7

    .line 845
    const-string v2, "plus_one_data"

    invoke-virtual {p4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 857
    :goto_88
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_9d

    .line 858
    const-string v2, "activity_comments"

    const-string v3, "comment_id=?"

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 861
    invoke-static {v0, p0, p1, p2}, Lcom/google/android/apps/plus/content/EsPostsData;->notifyActivityChange(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 863
    :cond_9d
    return-void

    .line 829
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

    .line 847
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1       #values:Landroid/content/ContentValues;
    :cond_a7
    const-string v2, "EsPostsData"

    const-string v3, "plusOneComment did not receive PlusOneData for +1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 850
    :cond_af
    if-eqz p4, :cond_bb

    .line 851
    const-string v2, "plus_one_data"

    invoke-virtual {p4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_88

    .line 853
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
    .line 747
    const-string v2, "EsPostsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 748
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

    .line 751
    :cond_2f
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 755
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

    .line 758
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_54

    .line 759
    const/4 v12, 0x0

    .line 786
    :goto_53
    return-object v12

    .line 762
    :cond_54
    const/4 v12, 0x0

    .line 764
    .local v12, poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :try_start_55
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 765
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 766
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v12

    .line 769
    :cond_6b
    move/from16 v0, p3

    invoke-static {v12, v0}, Lcom/google/android/apps/plus/content/EsPostsData;->updatePlusOneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v9

    .line 771
    .local v9, builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    new-instance v13, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v13, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 772
    .local v13, values:Landroid/content/ContentValues;
    const-string v3, "plus_one_data"

    if-eqz v9, :cond_9c

    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v2

    :goto_83
    invoke-virtual {v13, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 775
    const-string v2, "activities"

    const-string v3, "activity_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v13, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 778
    move-object/from16 v0, p2

    invoke-static {v1, p0, p1, v0}, Lcom/google/android/apps/plus/content/EsPostsData;->notifyActivityChange(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    :try_end_98
    .catchall {:try_start_55 .. :try_end_98} :catchall_a7
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_55 .. :try_end_98} :catch_9e

    .line 783
    .end local v9           #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_98
    :goto_98
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_53

    .line 772
    .restart local v9       #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .restart local v13       #values:Landroid/content/ContentValues;
    :cond_9c
    const/4 v2, 0x0

    goto :goto_83

    .line 780
    .end local v9           #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .end local v13           #values:Landroid/content/ContentValues;
    :catch_9e
    move-exception v11

    .line 781
    .local v11, ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_9f
    const-string v2, "EsPostsData"

    const-string v3, "plusOnePost"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a6
    .catchall {:try_start_9f .. :try_end_a6} :catchall_a7

    goto :goto_98

    .line 783
    .end local v11           #ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_a7
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

    .line 699
    const-string v2, "EsPostsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 700
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

    .line 709
    :cond_64
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 712
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 713
    .local v1, values:Landroid/content/ContentValues;
    if-eqz p4, :cond_a5

    .line 714
    if-eqz p3, :cond_9d

    .line 715
    const-string v2, "plus_one_data"

    invoke-virtual {p3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 727
    :goto_7e
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_93

    .line 728
    const-string v2, "activities"

    const-string v3, "activity_id=?"

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 731
    invoke-static {v0, p0, p1, p2}, Lcom/google/android/apps/plus/content/EsPostsData;->notifyActivityChange(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 733
    :cond_93
    return-void

    .line 700
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

    .line 717
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1       #values:Landroid/content/ContentValues;
    :cond_9d
    const-string v2, "EsPostsData"

    const-string v3, "plusOnePost did not receive PlusOneData for +1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 720
    :cond_a5
    if-eqz p3, :cond_b1

    .line 721
    const-string v2, "plus_one_data"

    invoke-virtual {p3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_7e

    .line 723
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

    .line 932
    const-string v2, "EsPostsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 933
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

    .line 937
    :cond_2c
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 940
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 941
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "plus_one_data"

    if-eqz p4, :cond_54

    invoke-virtual {p4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v2

    :goto_41
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 944
    const-string v2, "activity_comments"

    const-string v3, "comment_id=?"

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 947
    invoke-static {v0, p0, p1, p2}, Lcom/google/android/apps/plus/content/EsPostsData;->notifyActivityChange(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 948
    return-void

    .line 941
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

    .line 799
    const-string v2, "EsPostsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 800
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

    .line 803
    :cond_22
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 806
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 807
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "plus_one_data"

    if-eqz p3, :cond_4a

    invoke-virtual {p3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v2

    :goto_37
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 810
    const-string v2, "activities"

    const-string v3, "activity_id=?"

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 813
    invoke-static {v0, p0, p1, p2}, Lcom/google/android/apps/plus/content/EsPostsData;->notifyActivityChange(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 814
    return-void

    .line 807
    :cond_4a
    const/4 v2, 0x0

    goto :goto_37
.end method

.method public static setSyncEnabled(Z)V
    .registers 1
    .parameter "enabled"

    .prologue
    .line 109
    sput-boolean p0, Lcom/google/android/apps/plus/content/EsPostsData;->sSyncEnabled:Z

    .line 110
    return-void
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
    .line 130
    sget-object v12, Lcom/google/android/apps/plus/content/EsPostsData;->mSyncLock:Ljava/lang/Object;

    monitor-enter v12

    .line 131
    :try_start_3
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_d

    sget-boolean v0, Lcom/google/android/apps/plus/content/EsPostsData;->sSyncEnabled:Z

    if-nez v0, :cond_f

    .line 132
    :cond_d
    monitor-exit v12

    .line 159
    :goto_e
    return-void

    .line 135
    :cond_f
    const-string v0, "Activities:Sync"

    invoke-virtual {p2, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 137
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v7, p3

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/content/EsPostsData;->doActivityStreamSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Lcom/google/android/apps/plus/service/ServiceResult;

    .line 140
    invoke-static {p0}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->getAllWidgetCircleIds(Landroid/content/Context;)Ljava/util/List;

    move-result-object v11

    .line 141
    .local v11, widgetCircleIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5c

    .line 142
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

    .line 145
    .local v10, widgetCircleId:Ljava/lang/String;
    const-string v0, "v.whatshot"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 146
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->WHATS_HOT:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 147
    .local v2, view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    const/4 v3, 0x0

    .line 152
    .local v3, circleId:Ljava/lang/String;
    :goto_48
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v7, p3

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/content/EsPostsData;->doActivityStreamSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Lcom/google/android/apps/plus/service/ServiceResult;

    goto :goto_31

    .line 158
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

    .line 149
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v10       #widgetCircleId:Ljava/lang/String;
    .restart local v11       #widgetCircleIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_58
    :try_start_58
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 150
    .restart local v2       #view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    move-object v3, v10

    .restart local v3       #circleId:Ljava/lang/String;
    goto :goto_48

    .line 157
    .end local v2           #view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    .end local v3           #circleId:Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #widgetCircleId:Ljava/lang/String;
    :cond_5c
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 158
    monitor-exit v12
    :try_end_60
    .catchall {:try_start_58 .. :try_end_60} :catchall_55

    goto :goto_e
.end method

.method private static updateCommentsInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Z)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 1159
    if-nez p3, :cond_f

    .line 1160
    const-string v0, "activity_comments"

    const-string v1, "activity_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1164
    :cond_f
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1196
    :cond_15
    return-void

    .line 1169
    :cond_16
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1170
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Comment;

    .line 1171
    const-string v3, "EsPostsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 1172
    const-string v3, "EsPostsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    >>>>> insertComments comment id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", author id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getAuthorGaiaId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", content: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getContentHtml()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", created: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getCreationTimestampMsec()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", truncated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getTruncated()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_88
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1181
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1182
    const-string v4, "activity_id"

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    const-string v4, "comment_id"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    const-string v3, "author_id"

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getAuthorGaiaId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1185
    const-string v3, "content"

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getContentHtml()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    const-string v3, "created"

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getCreationTimestampMsec()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1187
    const-string v3, "truncated"

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getTruncated()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1188
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasPlusoneData()Z

    move-result v3

    if-eqz v3, :cond_e6

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v0

    .line 1190
    :goto_d7
    const-string v3, "plus_one_data"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1192
    const-string v0, "activity_comments"

    const-string v3, "activity_id"

    const/4 v4, 0x5

    invoke-virtual {p0, v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto/16 :goto_1f

    .line 1188
    :cond_e6
    const/4 v0, 0x0

    goto :goto_d7
.end method

.method private static updateMediaInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Z)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
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
    const/4 v11, 0x2

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1035
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1036
    if-nez p3, :cond_37

    .line 1037
    const-string v1, "media"

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "thumbnail_url"

    aput-object v0, v2, v9

    const-string v3, "activity_id=?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v9

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1041
    :goto_20
    :try_start_20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1042
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_2f

    goto :goto_20

    .line 1045
    :catchall_2f
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_34
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1049
    :cond_37
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b0

    .line 1051
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 1052
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Media;

    .line 1053
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    .line 1054
    const-string v4, "EsPostsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_93

    .line 1055
    const-string v4, "EsPostsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    >>>>> insertMedia: , thumbnail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getCount()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_93
    invoke-virtual {v8, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 1062
    invoke-virtual {v8, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_46

    .line 1064
    :cond_9d
    const-string v0, "activity_id"

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const-string v0, "thumbnail_url"

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const-string v0, "media"

    const-string v3, "activity_id"

    const/4 v4, 0x4

    invoke-virtual {p0, v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_46

    .line 1074
    :cond_b0
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ce

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1075
    const-string v2, "media"

    const-string v3, "activity_id=? AND thumbnail_url=?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v9

    aput-object v0, v4, v10

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_b4

    .line 1079
    :cond_ce
    return-void
.end method

.method static updatePlusOneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 4
    .parameter "poData"
    .parameter "plusOne"

    .prologue
    const/4 v1, 0x1

    .line 1629
    if-eqz p0, :cond_36

    .line 1630
    if-eqz p1, :cond_19

    .line 1631
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    .line 1632
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setPlusonedByViewer(Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 1633
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->getTotalPlusoneCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setTotalPlusoneCount(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 1635
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->clearPlusoneId()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 1659
    :goto_18
    return-object v0

    .line 1637
    .end local v0           #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    :cond_19
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v1

    if-lez v1, :cond_34

    .line 1638
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    .line 1639
    .restart local v0       #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setPlusonedByViewer(Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 1640
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setTotalPlusoneCount(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 1642
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->clearPlusoneId()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    goto :goto_18

    .line 1644
    .end local v0           #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    :cond_34
    const/4 v0, 0x0

    .restart local v0       #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    goto :goto_18

    .line 1648
    .end local v0           #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    :cond_36
    if-eqz p1, :cond_43

    .line 1649
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    .line 1650
    .restart local v0       #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setPlusonedByViewer(Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 1651
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setTotalPlusoneCount(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    goto :goto_18

    .line 1655
    .end local v0           #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    :cond_43
    const/4 v0, 0x0

    .restart local v0       #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    goto :goto_18
.end method

.method public static updateStreamActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 23
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
            "Ljava/lang/Long;",
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
    .line 250
    .local p3, activities:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;>;"
    .local p4, personMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    .line 254
    .local v2, activitiesCount:I
    invoke-static/range {p5 .. p6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 255
    const/16 p6, 0x0

    .line 258
    :cond_c
    const-string v10, "EsPostsData"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_51

    .line 259
    const-string v10, "EsPostsData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateStreamActivities: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " received activities: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,new token: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,old token: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_51
    if-eqz p7, :cond_58

    .line 266
    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->incrementCount(I)V

    .line 270
    :cond_58
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 273
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 277
    :try_start_63
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b5

    .line 278
    const/4 v7, 0x0

    .line 280
    .local v7, sortIndex:I
    const-string v10, "activity_streams"

    const-string v11, "stream_key=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object p2, v12, v13

    invoke-virtual {v4, v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 290
    :goto_77
    new-instance v9, Landroid/content/ContentValues;

    const/4 v10, 0x5

    invoke-direct {v9, v10}, Landroid/content/ContentValues;-><init>(I)V

    .line 291
    .local v9, values:Landroid/content/ContentValues;
    add-int v10, v7, v2

    add-int/lit8 v6, v10, -0x1

    .line 292
    .local v6, lastSortIndex:I
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_85
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    .line 293
    .local v3, activity:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    const-string v10, "stream_key"

    move-object/from16 v0, p2

    invoke-virtual {v9, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v10, "activity_id"

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getActivityId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v10, "sort_index"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    const-string v10, "activity_streams"

    const-string v11, "activity_id"

    const/4 v12, 0x5

    invoke-virtual {v4, v10, v11, v9, v12}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 299
    add-int/lit8 v7, v7, 0x1

    goto :goto_85

    .line 283
    .end local v3           #activity:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #lastSortIndex:I
    .end local v7           #sortIndex:I
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_b5
    const-string v10, "SELECT count(*) FROM activity_streams WHERE stream_key=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p2, v11, v12

    invoke-static {v4, v10, v11}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v10

    long-to-int v7, v10

    .restart local v7       #sortIndex:I
    goto :goto_77

    .line 303
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #lastSortIndex:I
    .restart local v9       #values:Landroid/content/ContentValues;
    :cond_c3
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 304
    const-string v10, "token"

    move-object/from16 v0, p6

    invoke-virtual {v9, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v10, "activity_streams"

    const-string v11, "stream_key=? AND sort_index=0"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object p2, v12, v13

    invoke-virtual {v4, v10, v9, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 311
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_101

    .line 312
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 313
    const-string v10, "last_activity"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    const-string v10, "activity_streams"

    const-string v11, "stream_key=? AND sort_index=?"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object p2, v12, v13

    const/4 v13, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v4, v10, v9, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 320
    :cond_101
    if-lez v2, :cond_13b

    .line 321
    const-string v10, "EsPostsData"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_134

    .line 322
    const-string v10, "EsPostsData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateStreamActivities: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " inserting activities:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_134
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v4, v0, v1}, Lcom/google/android/apps/plus/content/EsPostsData;->insertActivitiesInTransaction(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/util/Map;)V

    .line 328
    :cond_13b
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_13e
    .catchall {:try_start_63 .. :try_end_13e} :catchall_14e

    .line 330
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 334
    invoke-static/range {p1 .. p2}, Lcom/google/android/apps/plus/content/EsProvider;->buildStreamUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 335
    .local v8, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 336
    return-void

    .line 330
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #lastSortIndex:I
    .end local v7           #sortIndex:I
    .end local v8           #uri:Landroid/net/Uri;
    .end local v9           #values:Landroid/content/ContentValues;
    :catchall_14e
    move-exception v10

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v10
.end method
