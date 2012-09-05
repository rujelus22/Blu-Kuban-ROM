.class public Lcom/google/android/apps/plus/content/EsPhotosData;
.super Ljava/lang/Object;
.source "EsPhotosData.java"


# static fields
.field private static final FINGERPRINT_STREAM_PREFIX_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    const-string v0, "cs_01_"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/content/EsPhotosData;->FINGERPRINT_STREAM_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cleanupData(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1741
    const-string v0, "SELECT count(*) FROM photo"

    invoke-static {p0, v0, v10}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 1743
    const-string v2, "SELECT count(*) FROM album"

    invoke-static {p0, v2, v10}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    .line 1746
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v4

    .line 1749
    const-string v6, "photo_of_user_id!=?"

    .line 1750
    new-array v6, v12, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    .line 1751
    const-string v7, "photos_of_user"

    const-string v8, "photo_of_user_id!=?"

    invoke-virtual {p0, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1754
    const-string v6, "circle_id IS NOT NULL"

    .line 1755
    const-string v6, "photos_from_circle"

    const-string v7, "circle_id IS NOT NULL"

    invoke-virtual {p0, v6, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1758
    const-string v6, "circle_id IS NULL AND show_order >=?"

    .line 1759
    const-string v6, "photos_from_circle"

    const-string v7, "circle_id IS NULL AND show_order >=?"

    new-array v8, v12, [Ljava/lang/String;

    const/16 v9, 0x32

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1763
    const-string v6, "user_id!=?"

    .line 1764
    new-array v6, v12, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    .line 1765
    const-string v7, "photo_stream"

    const-string v8, "user_id!=?"

    invoke-virtual {p0, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1768
    new-array v6, v12, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    .line 1769
    const-string v7, "owner_id!=? AND type=1"

    .line 1773
    const-string v7, "photo"

    const-string v8, "owner_id!=? AND type=1"

    invoke-virtual {p0, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1775
    const-string v6, "type=3 AND photo_id NOT IN (SELECT DISTINCT photo_id FROM photo_stream)"

    .line 1780
    const-string v6, "photo"

    const-string v7, "type=3 AND photo_id NOT IN (SELECT DISTINCT photo_id FROM photo_stream)"

    invoke-virtual {p0, v6, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1782
    const-string v6, "type=5 AND photo_id NOT IN (SELECT DISTINCT photo_id FROM photo_stream)"

    .line 1787
    const-string v6, "photo"

    const-string v7, "type=5 AND photo_id NOT IN (SELECT DISTINCT photo_id FROM photo_stream)"

    invoke-virtual {p0, v6, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1789
    const-string v6, "type=2 AND photo_id NOT IN (SELECT DISTINCT photo_id FROM photos_from_circle)"

    .line 1794
    const-string v6, "photo"

    const-string v7, "type=2 AND photo_id NOT IN (SELECT DISTINCT photo_id FROM photos_from_circle)"

    invoke-virtual {p0, v6, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1796
    const-string v6, "type=4 AND photo_id NOT IN (SELECT DISTINCT photo_id FROM photos_of_user)"

    .line 1801
    const-string v6, "photo"

    const-string v7, "type=4 AND photo_id NOT IN (SELECT DISTINCT photo_id FROM photos_of_user)"

    invoke-virtual {p0, v6, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1804
    const-string v6, "photo_id NOT IN (SELECT DISTINCT photo_id FROM photo)"

    .line 1808
    const-string v6, "photo_shape"

    const-string v7, "photo_id NOT IN (SELECT DISTINCT photo_id FROM photo)"

    invoke-virtual {p0, v6, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1811
    const-string v6, "photo_id NOT IN (SELECT DISTINCT photo_id FROM photo)"

    .line 1815
    const-string v6, "photo_comment"

    const-string v7, "photo_id NOT IN (SELECT DISTINCT photo_id FROM photo)"

    invoke-virtual {p0, v6, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1818
    new-array v6, v12, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v11

    .line 1819
    const-string v4, "owner_id!=? AND album_id NOT IN (SELECT DISTINCT album_id FROM photo)"

    .line 1825
    const-string v4, "album"

    const-string v5, "owner_id!=? AND album_id NOT IN (SELECT DISTINCT album_id FROM photo)"

    invoke-virtual {p0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1827
    const-string v4, "SELECT count(*) FROM photo"

    invoke-static {p0, v4, v10}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    .line 1829
    const-string v6, "SELECT count(*) FROM album"

    invoke-static {p0, v6, v10}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    .line 1832
    const-string v8, "EsPhotosData"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_102

    .line 1833
    const-string v8, "EsPhotosData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cleanupData removed dead photos; was: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", now: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    const-string v0, "EsPhotosData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanupData removed dead albums; was: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    :cond_102
    return-void
.end method

.method public static deleteCirclePhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 18
    .parameter "context"
    .parameter "account"
    .parameter "circleId"

    .prologue
    .line 808
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 810
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 812
    .local v7, startTime:J
    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/google/android/apps/plus/content/EsPhotosData;->getCurrentCircleMap(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 814
    .local v1, circleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :try_start_12
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 816
    if-nez p2, :cond_a3

    const-string v10, "circle_id IS NULL"

    .line 818
    .local v10, whereClause:Ljava/lang/String;
    :goto_19
    if-nez p2, :cond_a7

    const/4 v9, 0x0

    .line 821
    .local v9, whereArgs:[Ljava/lang/String;
    :goto_1c
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_af

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 822
    .local v5, photoId:J
    const-string v11, "EsPhotosData"

    const/4 v12, 0x3

    invoke-static {v11, v12}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_55

    .line 823
    const-string v11, "EsPhotosData"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ">> remove photo ID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_55
    const-string v11, "photos_from_circle"

    invoke-virtual {v2, v11, v10, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_12 .. :try_end_5a} :catchall_5b

    goto :goto_24

    .line 830
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #photoId:J
    .end local v9           #whereArgs:[Ljava/lang/String;
    .end local v10           #whereClause:Ljava/lang/String;
    :catchall_5b
    move-exception v11

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 831
    const-string v12, "EsPhotosData"

    const/4 v13, 0x4

    invoke-static {v12, v13}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_a2

    .line 832
    const-string v12, "EsPhotosData"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[REMOVE_CIRCLE_PHOTOS], circle ID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez p2, :cond_79

    const-string p2, "N/A"

    .end local p2
    :cond_79
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", num photos: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", duration: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_a2
    throw v11

    .line 816
    .restart local p2
    :cond_a3
    :try_start_a3
    const-string v10, "circle_id=?"

    goto/16 :goto_19

    .line 818
    .restart local v10       #whereClause:Ljava/lang/String;
    :cond_a7
    const/4 v11, 0x1

    new-array v9, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p2, v9, v11

    goto/16 :goto_1c

    .line 828
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v9       #whereArgs:[Ljava/lang/String;
    :cond_af
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b2
    .catchall {:try_start_a3 .. :try_end_b2} :catchall_5b

    .line 830
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 831
    const-string v11, "EsPhotosData"

    const/4 v12, 0x4

    invoke-static {v11, v12}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_f6

    .line 832
    const-string v12, "EsPhotosData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[REMOVE_CIRCLE_PHOTOS], circle ID: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez p2, :cond_11a

    const-string v11, "N/A"

    :goto_cf
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", num photos: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", duration: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_f6
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v11

    if-lez v11, :cond_108

    .line 841
    if-nez p2, :cond_109

    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_NULL_CIRCLE_ID_URI:Landroid/net/Uri;

    .line 844
    .local v4, notifyUri:Landroid/net/Uri;
    :goto_100
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v4, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 846
    .end local v4           #notifyUri:Landroid/net/Uri;
    :cond_108
    return-void

    .line 841
    :cond_109
    sget-object v11, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_CIRCLE_ID_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    goto :goto_100

    :cond_11a
    move-object/from16 v11, p2

    .line 832
    goto :goto_cf
.end method

.method public static deletePhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJ)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1627
    const-string v0, "EsPhotosData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1628
    const-string v0, "EsPhotosData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> deletePhoto photo id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    :cond_21
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1637
    :try_start_2d
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1640
    const-string v0, "photo_id=?"

    .line 1641
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_132

    .line 1644
    :try_start_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1645
    const-string v5, "SELECT "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "album_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " FROM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "photo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " WHERE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "photo_id=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_6b
    .catchall {:try_start_3c .. :try_end_6b} :catchall_132
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_3c .. :try_end_6b} :catch_102

    move-result-wide v0

    .line 1659
    :goto_6c
    :try_start_6c
    const-string v5, "album_id=?"

    .line 1660
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6
    :try_end_78
    .catchall {:try_start_6c .. :try_end_78} :catchall_132

    .line 1663
    :try_start_78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1664
    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "photo_count"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " FROM "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "album"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " WHERE "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "album_id=?"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1671
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v5}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_a7
    .catchall {:try_start_78 .. :try_end_a7} :catchall_132
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_78 .. :try_end_a7} :catch_10e

    move-result-wide v0

    .line 1678
    :goto_a8
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_bb

    .line 1679
    const-wide/16 v6, 0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_119

    .line 1681
    :try_start_b4
    const-string v0, "album"

    const-string v1, "album_id=?"

    invoke-virtual {v2, v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1691
    :cond_bb
    :goto_bb
    const-string v0, "photo"

    const-string v1, "photo_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1694
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_cf
    .catchall {:try_start_b4 .. :try_end_cf} :catchall_132

    .line 1696
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1697
    const-string v0, "EsPhotosData"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 1698
    const-string v0, "EsPhotosData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DELETE_PHOTO], duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    :cond_f7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1705
    return-void

    .line 1653
    :catch_102
    move-exception v0

    .line 1655
    :try_start_103
    const-string v0, "EsPhotosData"

    const-string v1, "Album ID not found; is this a user album?"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    const-wide/16 v0, 0x0

    goto/16 :goto_6c

    .line 1672
    :catch_10e
    move-exception v0

    .line 1674
    const-string v0, "EsPhotosData"

    const-string v1, "Photo count not found; is this a user album?"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    const-wide/16 v0, -0x1

    goto :goto_a8

    .line 1684
    :cond_119
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1685
    const-string v7, "photo_count"

    const-wide/16 v8, 0x1

    sub-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1686
    const-string v0, "album"

    const-string v1, "album_id=?"

    invoke-virtual {v2, v0, v6, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_131
    .catchall {:try_start_103 .. :try_end_131} :catchall_132

    goto :goto_bb

    .line 1696
    :catchall_132
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1697
    const-string v1, "EsPhotosData"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_15b

    .line 1698
    const-string v1, "EsPhotosData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DELETE_PHOTO], duration: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    :cond_15b
    throw v0
.end method

.method public static deletePhotoComments(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/util/List;)V
    .registers 20
    .parameter "context"
    .parameter "account"
    .parameter "photoId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1242
    .local p4, commentIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1244
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1247
    .local v9, startTime:J
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v11, 0x100

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1248
    .local v8, sb:Ljava/lang/StringBuilder;
    const-string v11, "comment_id"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " IN("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    const/4 v4, 0x1

    .line 1250
    .local v4, first:Z
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_75

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1251
    .local v2, commentId:Ljava/lang/String;
    const-string v11, "EsPhotosData"

    const/4 v12, 0x3

    invoke-static {v11, v12}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_5c

    .line 1252
    const-string v11, "EsPhotosData"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ">> deletePhotoComments: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " for photo: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_5c
    if-eqz v4, :cond_6f

    .line 1256
    const/4 v4, 0x0

    .line 1260
    :goto_5f
    const/16 v11, 0x27

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x27

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 1258
    :cond_6f
    const/16 v11, 0x2c

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5f

    .line 1263
    .end local v2           #commentId:Ljava/lang/String;
    :cond_75
    const/16 v11, 0x29

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1266
    :try_start_7a
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1269
    const-string v11, "photo_comment"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v3, v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1272
    .local v7, removeCount:I
    neg-int v11, v7

    move-wide/from16 v0, p2

    invoke-static {v3, v0, v1, v11}, Lcom/google/android/apps/plus/content/EsPhotosData;->updateCommentCount(Landroid/database/sqlite/SQLiteDatabase;JI)V

    .line 1274
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_91
    .catchall {:try_start_7a .. :try_end_91} :catchall_d4

    .line 1276
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1277
    const-string v11, "EsPhotosData"

    const/4 v12, 0x4

    invoke-static {v11, v12}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_b9

    .line 1278
    const-string v11, "EsPhotosData"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[DELETE_PHOTO_COMMENT], duration: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_b9
    sget-object v11, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_BY_PHOTO_ID_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v11, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1286
    .local v6, notifyUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v6, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1287
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_URI:Landroid/net/Uri;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1288
    return-void

    .line 1276
    .end local v6           #notifyUri:Landroid/net/Uri;
    .end local v7           #removeCount:I
    :catchall_d4
    move-exception v11

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1277
    const-string v12, "EsPhotosData"

    const/4 v13, 0x4

    invoke-static {v12, v13}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_fd

    .line 1278
    const-string v12, "EsPhotosData"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[DELETE_PHOTO_COMMENT], duration: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_fd
    throw v11
.end method

.method private static getActionStateString(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 2743
    if-nez p0, :cond_5

    .line 2744
    const-string v0, ""

    .line 2759
    :goto_4
    return-object v0

    .line 2746
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2747
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getViewerCanComment()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2748
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_6b

    const-string v0, ""

    :goto_18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "COMMENT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2750
    :cond_21
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getViewerCanTag()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2751
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_6e

    const-string v0, ""

    :goto_2f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "TAG"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2753
    :cond_38
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getViewerCanEdit()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 2754
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_71

    const-string v0, ""

    :goto_46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "EDIT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2756
    :cond_4f
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getViewerCanApprove()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 2757
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_74

    const-string v0, ""

    :goto_5d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "APPROVE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2759
    :cond_66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 2748
    :cond_6b
    const-string v0, "|"

    goto :goto_18

    .line 2751
    :cond_6e
    const-string v0, "|"

    goto :goto_2f

    .line 2754
    :cond_71
    const-string v0, "|"

    goto :goto_46

    .line 2757
    :cond_74
    const-string v0, "|"

    goto :goto_5d
.end method

.method private static getAlbumContentValues(JLcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Z)Landroid/content/ContentValues;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1956
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1957
    const-string v1, "album_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1958
    const-string v1, "is_activity"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1959
    const-string v1, "owner_id"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getOwnerGaiaId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1960
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1961
    const-string v1, "title"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    :cond_33
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1964
    const-string v1, "timestamp"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getTimestampMsec()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1966
    :cond_46
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasStreamId()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 1967
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getStreamId()Ljava/lang/String;

    move-result-object v1

    .line 1968
    const-string v2, "stream_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    const-string v2, "updates"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 1979
    const-string v1, "sort_order"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1986
    :cond_67
    :goto_67
    const-string v1, "photo_count"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1993
    :cond_6c
    :goto_6c
    return-object v0

    .line 1980
    :cond_6d
    const-string v2, "bunch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 1981
    const-string v1, "sort_order"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_67

    .line 1982
    :cond_80
    const-string v2, "profile_photos"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 1983
    const-string v1, "sort_order"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_67

    .line 1988
    :cond_93
    const-string v1, "sort_order"

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1989
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasTotalPhotos()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 1990
    const-string v1, "photo_count"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getTotalPhotos()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_6c
.end method

.method private static getAlbumOutput(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;I)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3015
    if-lez p1, :cond_13

    move v0, v1

    .line 3016
    :goto_9
    if-ge v0, p1, :cond_13

    .line 3017
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3016
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 3020
    :cond_13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3021
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3023
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "ALBUM ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "owner: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getOwnerGaiaId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "count: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getTotalPhotos()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3034
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasStreamId()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 3035
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "       "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "streamId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getStreamId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3042
    :cond_82
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 3043
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "       "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3050
    :cond_ab
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getPreviewCount()I

    move-result v0

    if-lez v0, :cond_d5

    .line 3051
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getPreviewList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ee

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 3052
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x2

    invoke-static {v0, v4}, Lcom/google/android/apps/plus/content/EsPhotosData;->getCoverPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b9

    .line 3055
    :cond_d5
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasCover()Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 3056
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getCover()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    add-int/lit8 v3, p1, 0x2

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->getCoverPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3059
    :cond_ee
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3061
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAlbumRowId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/Long;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2540
    const-string v1, "album"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v3, "album_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2545
    :try_start_1c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_2f

    move-result-object v5

    .line 2547
    :cond_2b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2545
    return-object v5

    .line 2547
    :catchall_2f
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getAlbumStreamId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;
    .registers 12
    .parameter "db"
    .parameter "albumId"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2553
    const-string v1, "album"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "stream_id"

    aput-object v0, v2, v6

    const-string v3, "album_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2558
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_1c
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_2b

    move-result-object v5

    .line 2560
    :cond_27
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2558
    return-object v5

    .line 2560
    :catchall_2b
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getCommentContentValues(Lcom/google/wireless/tacotruck/proto/Data$Comment;J)Landroid/content/ContentValues;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 2058
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2059
    const-string v1, "photo_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2060
    const-string v1, "comment_id"

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    const-string v1, "author_id"

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getAuthorGaiaId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2062
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasContentHtml()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 2063
    const-string v1, "content"

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getContentHtml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    :cond_33
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasCreationTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 2066
    const-string v1, "create_time"

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getCreationTimestampMsec()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2068
    :cond_46
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasTruncated()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 2069
    const-string v1, "truncated"

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getTruncated()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2071
    :cond_59
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasLastUpdateTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 2072
    const-string v1, "update_time"

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getLastUpdateTimestampMsec()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2074
    :cond_6c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasPlusoneData()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 2075
    const-string v1, "plusone_data"

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2077
    :cond_7f
    return-object v0
.end method

.method private static getCoverPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 2922
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2923
    if-lez p1, :cond_15

    move v0, v1

    .line 2924
    :goto_b
    if-ge v0, p1, :cond_15

    .line 2925
    const/16 v4, 0x20

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2924
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2928
    :cond_15
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2929
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2931
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getTimestampMsec()J

    move-result-wide v0

    .line 2932
    :goto_26
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "COVER PHOTO ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "id: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "owner: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasOwnerGaiaId()Z

    move-result v4

    if-eqz v4, :cond_8a

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getOwnerGaiaId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_58
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2939
    cmp-long v2, v0, v2

    if-eqz v2, :cond_79

    .line 2940
    const-string v2, "MMM dd, yyyy h:mmaa"

    .line 2941
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2942
    const-string v1, ", "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2946
    :cond_79
    const-string v0, "]"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2947
    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2949
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_88
    move-wide v0, v2

    .line 2931
    goto :goto_26

    .line 2932
    :cond_8a
    const-string v4, "N/A"

    goto :goto_58
.end method

.method private static getCurrentAlbumMap(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/util/HashMap;
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 2596
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 2597
    const-string v1, "album"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v0, "album_id"

    aput-object v0, v2, v4

    const-string v3, "owner_id=? AND title IS NOT NULL"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2603
    :goto_26
    :try_start_26
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2604
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2605
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2606
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catchall {:try_start_26 .. :try_end_41} :catchall_42

    goto :goto_26

    .line 2609
    :catchall_42
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_47
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2611
    return-object v8
.end method

.method private static getCurrentAlbumMap(Landroid/database/sqlite/SQLiteDatabase;JJ)Ljava/util/HashMap;
    .registers 14
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "JJ)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2620
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 2621
    const-string v1, "photo"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "photo_id"

    aput-object v0, v2, v6

    const-string v0, "entity_version"

    aput-object v0, v2, v7

    const-string v3, "owner_id=? AND album_id=? AND type=1"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2628
    :goto_2c
    :try_start_2c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 2629
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_2c .. :try_end_47} :catchall_48

    goto :goto_2c

    .line 2632
    :catchall_48
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2634
    return-object v8
.end method

.method private static getCurrentCircleMap(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2643
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 2645
    if-nez p1, :cond_43

    .line 2646
    const-string v1, "photos_from_circle"

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v0, "photo_id"

    aput-object v0, v2, v5

    const-string v3, "circle_id IS NULL"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    .line 2657
    :goto_22
    :try_start_22
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 2658
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2659
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2660
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_22 .. :try_end_3d} :catchall_3e

    goto :goto_22

    .line 2663
    :catchall_3e
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2651
    :cond_43
    const-string v6, "photos_from_circle"

    new-array v7, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v7, v3

    const-string v0, "photo_id"

    aput-object v0, v7, v5

    const-string v8, "circle_id=?"

    new-array v9, v5, [Ljava/lang/String;

    aput-object p1, v9, v3

    move-object v5, p0

    move-object v10, v4

    move-object v11, v4

    move-object v12, v4

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    goto :goto_22

    .line 2663
    :cond_5f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2665
    return-object v13
.end method

.method private static getDeltaTime(J)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const-wide/16 v5, 0x3e8

    .line 3066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3067
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p0

    .line 3069
    div-long v3, v1, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    rem-long/2addr v1, v5

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3074
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFingerPrint(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)[B
    .registers 4
    .parameter

    .prologue
    .line 2769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getStreamIdCount()I

    move-result v0

    if-lez v0, :cond_2d

    .line 2770
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getStreamIdList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2771
    const-string v2, "cs_01_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2772
    sget v1, Lcom/google/android/apps/plus/content/EsPhotosData;->FINGERPRINT_STREAM_PREFIX_LENGTH:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPhotosData;->hexToBytes(Ljava/lang/CharSequence;)[B

    move-result-object v0

    .line 2776
    :goto_2c
    return-object v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method private static getMobileShapeOutput(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;I)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2974
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2975
    if-lez p1, :cond_13

    move v0, v1

    .line 2976
    :goto_9
    if-ge v0, p1, :cond_13

    .line 2977
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2976
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2980
    :cond_13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2981
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2983
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getNormalizedBounds()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v3

    .line 2984
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SHAPE ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%1.3f, %1.3f, %1.3f, %1.3f"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getLeft()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x1

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getTop()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x2

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getRight()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getBottom()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "subjectId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getSubjectGaiaId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getStatus()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2997
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsPhotosData;->getActionStateString(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Ljava/lang/String;

    move-result-object v1

    .line 2998
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c4

    .line 2999
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "       "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "state: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3007
    :cond_c4
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3009
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPhotoContentValues(JLcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Landroid/content/ContentValues;
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1999
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2000
    const-string v1, "photo_id"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2001
    const-string v1, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2002
    const-string v1, "plus_one_key"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2003
    const-string v1, "album_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2004
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 2005
    const-string v1, "url"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    :cond_3d
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 2008
    const-string v1, "title"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    :cond_4c
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasDescription()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 2011
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 2012
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 2014
    const-string v1, "description"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    :cond_65
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasPhotoActionState()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 2018
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v1

    .line 2019
    const-string v2, "action_state"

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsPhotoActionState;->getFlags(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2023
    :cond_7c
    const-string v1, "comment_count"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getTotalCommentCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2024
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasOwnerGaiaId()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 2025
    const-string v1, "owner_id"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getOwnerGaiaId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2027
    :cond_9c
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasWidth()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 2028
    const-string v1, "width"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2030
    :cond_af
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasHeight()Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 2031
    const-string v1, "height"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2033
    :cond_c2
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getActivityIdCount()I

    move-result v1

    if-lez v1, :cond_d5

    .line 2034
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getActivityIdList()Ljava/util/List;

    move-result-object v1

    .line 2035
    const-string v2, "activities"

    invoke-static {v1}, Lcom/google/android/apps/plus/content/DbSerializer;->serializeShortStringList(Ljava/util/List;)[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2038
    :cond_d5
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 2039
    const-string v1, "timestamp"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getTimestampMsec()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2041
    :cond_e8
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasEntityVersion()Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 2042
    const-string v1, "entity_version"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getEntityVersion()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2044
    :cond_fb
    invoke-static {p2}, Lcom/google/android/apps/plus/content/EsPhotosData;->getFingerPrint(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)[B

    move-result-object v1

    .line 2045
    if-eqz v1, :cond_106

    .line 2046
    const-string v2, "fingerprint"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2048
    :cond_106
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasVideoData()Z

    move-result v1

    if-eqz v1, :cond_119

    .line 2051
    const-string v1, "video_data"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getVideoData()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/content/DbVideo;->serialize(Lcom/google/wireless/tacotruck/proto/Data$VideoData;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2053
    :cond_119
    return-object v0
.end method

.method private static getPhotoEntityMap(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;I)Ljava/util/HashMap;
    .registers 13
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2675
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2676
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 2679
    if-nez v0, :cond_10

    move-object v0, v8

    .line 2711
    :goto_f
    return-object v0

    .line 2683
    :cond_10
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2684
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2687
    const-string v0, "type"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2688
    const-string v0, "photo_id IN("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2689
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v4

    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 2690
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasId()Z

    move-result v9

    if-eqz v9, :cond_b7

    .line 2691
    const-string v1, "?,"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2692
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v3

    :goto_5c
    move v1, v0

    .line 2693
    goto :goto_39

    .line 2696
    :cond_5e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2697
    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2699
    if-nez v1, :cond_70

    move-object v0, v8

    .line 2701
    goto :goto_f

    .line 2704
    :cond_70
    const-string v1, "photo_view"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "photo_id"

    aput-object v0, v2, v4

    const-string v0, "entity_version"

    aput-object v0, v2, v3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2708
    :goto_90
    :try_start_90
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 2709
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ab
    .catchall {:try_start_90 .. :try_end_ab} :catchall_ac

    goto :goto_90

    .line 2713
    :catchall_ac
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_b1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    .line 2711
    goto/16 :goto_f

    :cond_b7
    move v0, v1

    goto :goto_5c
.end method

.method private static getPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;
    .registers 15
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 2841
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2842
    if-lez p1, :cond_16

    move v0, v7

    .line 2843
    :goto_c
    if-ge v0, p1, :cond_16

    .line 2844
    const/16 v2, 0x20

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2843
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2847
    :cond_16
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2848
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2850
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasPlusoneData()Z

    move-result v0

    if-eqz v0, :cond_184

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    .line 2851
    :goto_27
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasVideoData()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getVideoData()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v1

    .line 2852
    :cond_31
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasTimestampMsec()Z

    move-result v2

    if-eqz v2, :cond_187

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getTimestampMsec()J

    move-result-wide v2

    .line 2853
    :goto_3b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "PHOTO ["

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "id: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getId()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ", "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "owner: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasOwnerGaiaId()Z

    move-result v6

    if-eqz v6, :cond_18a

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getOwnerGaiaId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :goto_6d
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ", "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "version: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getEntityVersion()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2863
    cmp-long v4, v2, v4

    if-eqz v4, :cond_a2

    .line 2864
    const-string v4, "MMM dd, yyyy h:mmaa"

    .line 2865
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2866
    const-string v3, ", "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2870
    :cond_a2
    const-string v2, ", "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2872
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "      "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "title: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_18e

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getTitle()Ljava/lang/String;

    move-result-object v2

    :goto_c7
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_192

    const/4 v1, 0x1

    :goto_df
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "comments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getCommentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+1s: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_195

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_11e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "by me: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_198

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_145
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2885
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getStreamIdList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_158
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2886
    const-string v2, ", "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "      "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_158

    :cond_184
    move-object v0, v1

    .line 2850
    goto/16 :goto_27

    :cond_187
    move-wide v2, v4

    .line 2852
    goto/16 :goto_3b

    .line 2853
    :cond_18a
    const-string v6, "N/A"

    goto/16 :goto_6d

    .line 2872
    :cond_18e
    const-string v2, "N/A"

    goto/16 :goto_c7

    :cond_192
    move v1, v7

    goto/16 :goto_df

    :cond_195
    const-string v1, "0"

    goto :goto_11e

    :cond_198
    const-string v0, "false"

    goto :goto_145

    .line 2893
    :cond_19b
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getActivityIdList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1cf

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2894
    const-string v2, ", "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "      "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a3

    .line 2901
    :cond_1cf
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasPlusoneData()Z

    move-result v0

    if-eqz v0, :cond_1e8

    .line 2902
    const-string v0, "\n"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v1

    add-int/lit8 v2, p1, 0x2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPlusOneOutput(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2905
    :cond_1e8
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasAlbum()Z

    move-result v0

    if-eqz v0, :cond_201

    .line 2906
    const-string v0, "\n"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v1

    add-int/lit8 v2, p1, 0x2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/content/EsPhotosData;->getAlbumOutput(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2909
    :cond_201
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getShapeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_209
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_225

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    .line 2910
    const-string v2, "\n"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x2

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->getMobileShapeOutput(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_209

    .line 2913
    :cond_225
    const-string v0, "]"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2914
    const-string v0, "\n"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2915
    const-string v0, "\n"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2917
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPhotoRowId(Landroid/database/sqlite/SQLiteDatabase;JI)Ljava/lang/Long;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2566
    const-string v1, "photo"

    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v3, "photo_id=? AND type=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2571
    :try_start_23
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_36

    move-result-object v5

    .line 2573
    :cond_32
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2571
    return-object v5

    .line 2573
    :catchall_36
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getPhotoTypeList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)Ljava/util/List;
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "photoId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 1085
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1086
    .local v10, photoList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1088
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "photo"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v7

    const-string v3, "photo_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1094
    .local v9, photoCursor:Landroid/database/Cursor;
    :goto_29
    :try_start_29
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1095
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_29 .. :try_end_3b} :catchall_3c

    goto :goto_29

    .line 1098
    :catchall_3c
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_41
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1100
    return-object v10
.end method

.method private static getPhotosHomeRowId(Landroid/database/sqlite/SQLiteDatabase;I)J
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2579
    const-string v1, "photos_home"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v3, "type=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2585
    :try_start_1c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_2e

    move-result-wide v0

    .line 2587
    :goto_27
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2585
    return-wide v0

    :cond_2b
    const-wide/16 v0, -0x1

    goto :goto_27

    .line 2587
    :catchall_2e
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getPlusOneOutput(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;I)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2954
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2955
    if-lez p1, :cond_13

    move v0, v1

    .line 2956
    :goto_9
    if-ge v0, p1, :cond_13

    .line 2957
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2956
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2960
    :cond_13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2961
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2963
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PLUSONE ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2969
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getShapeContentValues(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;J)Landroid/content/ContentValues;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2083
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2084
    const-string v1, "bounds"

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getNormalizedBounds()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/content/DbRect;->serialize(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2085
    const-string v1, "creator_id"

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getNameTagCreatorGaiaId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2086
    const-string v1, "photo_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2087
    const-string v1, "shape_id"

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2088
    const-string v1, "status"

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getStatus()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->getNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2089
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasSubjectGaiaId()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 2090
    const-string v1, "subject_id"

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getSubjectGaiaId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2092
    :cond_59
    return-object v0
.end method

.method private static final hexToBytes(Ljava/lang/CharSequence;)[B
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2803
    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_b

    .line 2804
    :cond_9
    const/4 v0, 0x0

    .line 2822
    :goto_a
    return-object v0

    .line 2807
    :cond_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    .line 2808
    aput-byte v0, v2, v0

    .line 2809
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    .line 2810
    :goto_1d
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_57

    .line 2811
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 2812
    invoke-static {v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_35

    .line 2813
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string contains non-hex chars"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2815
    :cond_35
    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_49

    .line 2816
    shr-int/lit8 v4, v1, 0x1

    invoke-static {v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->hexValue(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 2820
    :goto_44
    add-int/lit8 v1, v1, 0x1

    .line 2810
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 2818
    :cond_49
    shr-int/lit8 v4, v1, 0x1

    aget-byte v5, v2, v4

    invoke-static {v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->hexValue(C)I

    move-result v3

    int-to-byte v3, v3

    add-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    goto :goto_44

    :cond_57
    move-object v0, v2

    .line 2822
    goto :goto_a
.end method

.method private static final hexValue(C)I
    .registers 2
    .parameter "c"

    .prologue
    .line 2787
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 2788
    add-int/lit8 v0, p0, -0x30

    .line 2792
    :goto_a
    return v0

    .line 2789
    :cond_b
    const/16 v0, 0x61

    if-lt p0, v0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    .line 2790
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 2792
    :cond_18
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a
.end method

.method public static insertActivityAlbum(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 21
    .parameter "context"
    .parameter "account"
    .parameter "ownerUserId"
    .parameter "album"
    .parameter "syncState"

    .prologue
    .line 170
    if-eqz p5, :cond_5

    .line 171
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->incrementCount()V

    .line 174
    :cond_5
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 176
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual/range {p4 .. p4}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getId()J

    move-result-wide v1

    .line 177
    .local v1, albumId:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 179
    .local v6, startTime:J
    :try_start_15
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 182
    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-static {v4, v0, v9, v10}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertOrUpdateAlbumRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;ZZ)Ljava/lang/Long;

    move-result-object v3

    .line 183
    .local v3, albumRowId:Ljava/lang/Long;
    if-nez v3, :cond_75

    .line 185
    const-string v9, "EsPhotosData"

    const/4 v10, 0x5

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_32

    .line 186
    const-string v9, "EsPhotosData"

    const-string v10, "Could not insert album row"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_15 .. :try_end_32} :catchall_132

    .line 214
    :cond_32
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 215
    const-string v9, "EsPhotosData"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4f

    .line 216
    const-string v9, "EsPhotosData"

    const-string v10, ">> insertAlbum"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v9, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v9}, Lcom/google/android/apps/plus/content/EsPhotosData;->getAlbumOutput(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    .line 220
    :cond_4f
    const-string v9, "EsPhotosData"

    const/4 v10, 0x4

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_74

    .line 221
    const-string v9, "EsPhotosData"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GET_ALBUM], duration: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_74
    :goto_74
    return-void

    .line 192
    :cond_75
    :try_start_75
    invoke-virtual/range {p4 .. p4}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasCover()Z

    move-result v9

    if-eqz v9, :cond_e6

    .line 194
    const-string v9, "album_cover"

    const-string v10, "album_key=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v4, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 198
    invoke-virtual/range {p4 .. p4}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getCover()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v5

    .line 199
    .local v5, photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    const-string v9, "EsPhotosData"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_a5

    .line 200
    const/4 v9, 0x0

    invoke-static {v5, v9}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    .line 202
    :cond_a5
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 203
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "album_key"

    invoke-virtual {v8, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 204
    const-string v9, "url"

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v9, "width"

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const-string v9, "height"

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const-string v9, "size"

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 208
    const-string v9, "album_cover"

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {v4, v9, v10, v8, v11}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 212
    .end local v5           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_e6
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e9
    .catchall {:try_start_75 .. :try_end_e9} :catchall_132

    .line 214
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 215
    const-string v9, "EsPhotosData"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_106

    .line 216
    const-string v9, "EsPhotosData"

    const-string v10, ">> insertAlbum"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v9, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v9}, Lcom/google/android/apps/plus/content/EsPhotosData;->getAlbumOutput(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    .line 220
    :cond_106
    const-string v9, "EsPhotosData"

    const/4 v10, 0x4

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_12b

    .line 221
    const-string v9, "EsPhotosData"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GET_ALBUM], duration: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_12b
    move-object/from16 v0, p1

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/apps/plus/content/EsPhotosData;->notifyAlbumChange(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    goto/16 :goto_74

    .line 214
    .end local v3           #albumRowId:Ljava/lang/Long;
    :catchall_132
    move-exception v9

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 215
    const-string v10, "EsPhotosData"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_150

    .line 216
    const-string v10, "EsPhotosData"

    const-string v11, ">> insertAlbum"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v10}, Lcom/google/android/apps/plus/content/EsPhotosData;->getAlbumOutput(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    .line 220
    :cond_150
    const-string v10, "EsPhotosData"

    const/4 v11, 0x4

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_175

    .line 221
    const-string v10, "EsPhotosData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[GET_ALBUM], duration: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_175
    throw v9
.end method

.method public static insertAlbum(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "ownerUserId"
    .parameter "album"
    .parameter "syncState"

    .prologue
    const/4 v8, 0x4

    .line 240
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 242
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 243
    .local v4, startTime:J
    invoke-virtual {p4}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getId()J

    move-result-wide v0

    .line 246
    .local v0, albumId:J
    :try_start_11
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 247
    const-string v6, "EsPhotosData"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 248
    const/4 v6, 0x0

    invoke-static {p4, v6}, Lcom/google/android/apps/plus/content/EsPhotosData;->getAlbumOutput(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    .line 251
    :cond_25
    if-eqz p5, :cond_2a

    .line 252
    invoke-virtual {p5}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->incrementCount()V

    .line 256
    :cond_2a
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, p4, v6, v7}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertOrUpdateAlbumRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;ZZ)Ljava/lang/Long;

    move-result-object v2

    .line 257
    .local v2, albumRowId:Ljava/lang/Long;
    if-nez v2, :cond_6a

    .line 259
    const-string v6, "EsPhotosData"

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 260
    const-string v6, "EsPhotosData"

    const-string v7, "Could not insert album row"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_11 .. :try_end_42} :catchall_98

    .line 267
    :cond_42
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 268
    const-string v6, "EsPhotosData"

    invoke-static {v6, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 269
    const-string v6, "EsPhotosData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GET_ALBUM], duration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_69
    :goto_69
    return-void

    .line 265
    :cond_6a
    :try_start_6a
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_98

    .line 267
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 268
    const-string v6, "EsPhotosData"

    invoke-static {v6, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 269
    const-string v6, "EsPhotosData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GET_ALBUM], duration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_94
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/apps/plus/content/EsPhotosData;->notifyAlbumChange(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    goto :goto_69

    .line 267
    .end local v2           #albumRowId:Ljava/lang/Long;
    :catchall_98
    move-exception v6

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 268
    const-string v7, "EsPhotosData"

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_c0

    .line 269
    const-string v7, "EsPhotosData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[GET_ALBUM], duration: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_c0
    throw v6
.end method

.method public static insertAlbumList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 26
    .parameter "context"
    .parameter "account"
    .parameter "ownerUserId"
    .parameter
    .parameter "syncState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;",
            ">;",
            "Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 288
    .local p4, albums:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 290
    .local v7, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 292
    .local v11, startTime:J
    move-wide/from16 v0, p2

    invoke-static {v7, v0, v1}, Lcom/google/android/apps/plus/content/EsPhotosData;->getCurrentAlbumMap(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/util/HashMap;

    move-result-object v5

    .line 295
    .local v5, albumMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :try_start_12
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 296
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_19
    :goto_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_164

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 297
    .local v2, album:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    const-string v14, "EsPhotosData"

    const/4 v15, 0x3

    invoke-static {v14, v15}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_36

    .line 298
    const/4 v14, 0x0

    invoke-static {v2, v14}, Lcom/google/android/apps/plus/content/EsPhotosData;->getAlbumOutput(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    .line 301
    :cond_36
    if-eqz p5, :cond_3b

    .line 302
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->incrementCount()V

    .line 305
    :cond_3b
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getId()J

    move-result-wide v3

    .line 308
    .local v3, albumId:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v7, v2, v14, v15}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertOrUpdateAlbumRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;ZZ)Ljava/lang/Long;

    move-result-object v6

    .line 310
    .local v6, albumRowId:Ljava/lang/Long;
    if-nez v6, :cond_98

    .line 312
    const-string v14, "EsPhotosData"

    const/4 v15, 0x5

    invoke-static {v14, v15}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 313
    const-string v14, "EsPhotosData"

    const-string v15, "Could not insert album row"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_12 .. :try_end_5e} :catchall_5f

    goto :goto_19

    .line 361
    .end local v2           #album:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .end local v3           #albumId:J
    .end local v6           #albumRowId:Ljava/lang/Long;
    :catchall_5f
    move-exception v14

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 362
    const-string v15, "EsPhotosData"

    const/16 v16, 0x4

    invoke-static/range {v15 .. v16}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_97

    .line 363
    const-string v15, "EsPhotosData"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[GET_ALBUM_LIST], num albums: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", duration: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v11, v12}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_97
    throw v14

    .line 319
    .restart local v2       #album:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .restart local v3       #albumId:J
    .restart local v6       #albumRowId:Ljava/lang/Long;
    :cond_98
    :try_start_98
    const-string v14, "album_cover"

    const-string v15, "album_key=?"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v7, v14, v15, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 324
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getPreviewCount()I

    move-result v14

    if-lez v14, :cond_114

    .line 326
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getPreviewList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_c3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_19

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 327
    .local v10, photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 328
    .local v13, values:Landroid/content/ContentValues;
    const-string v14, "album_key"

    invoke-virtual {v13, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 329
    const-string v14, "url"

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v14, "width"

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getWidth()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    const-string v14, "height"

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getHeight()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    const-string v14, "size"

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getSize()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 333
    const-string v14, "album_cover"

    const/4 v15, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v7, v14, v15, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_c3

    .line 336
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_114
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasCover()Z

    move-result v14

    if-eqz v14, :cond_19

    .line 337
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getCover()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v10

    .line 339
    .restart local v10       #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 340
    .restart local v13       #values:Landroid/content/ContentValues;
    const-string v14, "album_key"

    invoke-virtual {v13, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 341
    const-string v14, "url"

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v14, "width"

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getWidth()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    const-string v14, "height"

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getHeight()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 344
    const-string v14, "size"

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getSize()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 345
    const-string v14, "album_cover"

    const/4 v15, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v7, v14, v15, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto/16 :goto_19

    .line 351
    .end local v2           #album:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .end local v3           #albumId:J
    .end local v6           #albumRowId:Ljava/lang/Long;
    .end local v10           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_164
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_16c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1b7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 352
    .restart local v3       #albumId:J
    const-string v14, "EsPhotosData"

    const/4 v15, 0x3

    invoke-static {v14, v15}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_19d

    .line 353
    const-string v14, "EsPhotosData"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ">> remove album ID: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_19d
    const-string v14, "album"

    const-string v15, "album_id=?"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v7, v14, v15, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_16c

    .line 359
    .end local v3           #albumId:J
    :cond_1b7
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1ba
    .catchall {:try_start_98 .. :try_end_1ba} :catchall_5f

    .line 361
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 362
    const-string v14, "EsPhotosData"

    const/4 v15, 0x4

    invoke-static {v14, v15}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_1f0

    .line 363
    const-string v14, "EsPhotosData"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[GET_ALBUM_LIST], num albums: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", duration: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v11, v12}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_1f0
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1f8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_210

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 370
    .restart local v3       #albumId:J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v3, v4}, Lcom/google/android/apps/plus/content/EsPhotosData;->notifyAlbumChange(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    goto :goto_1f8

    .line 372
    .end local v3           #albumId:J
    :cond_210
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v14

    if-gtz v14, :cond_21c

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v14

    if-lez v14, :cond_21f

    .line 373
    :cond_21c
    invoke-static/range {p0 .. p3}, Lcom/google/android/apps/plus/content/EsPhotosData;->notifyAllAlbumChange(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 375
    :cond_21f
    return-void
.end method

.method public static insertAlbumPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJLjava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 32
    .parameter "context"
    .parameter "account"
    .parameter "albumId"
    .parameter "albumOwnerId"
    .parameter
    .parameter "syncState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "JJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;",
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
    .line 406
    .local p6, photos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 408
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 409
    .local v21, startTime:J
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 410
    .local v9, albumSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v10, notificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :try_start_16
    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    invoke-static {v6, v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->getCurrentAlbumMap(Landroid/database/sqlite/SQLiteDatabase;JJ)Ljava/util/HashMap;

    move-result-object v18

    .line 415
    .local v18, photoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 417
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_104

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 418
    .local v7, photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    const-string v4, "EsPhotosData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 419
    const/4 v4, 0x0

    invoke-static {v7, v4}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    .line 422
    :cond_42
    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getId()J

    move-result-wide v16

    .line 423
    .local v16, photoId:J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    .line 424
    .local v15, oldEntity:Ljava/lang/Long;
    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasEntityVersion()Z

    move-result v4

    if-eqz v4, :cond_dd

    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getEntityVersion()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 426
    .local v13, newEntity:Ljava/lang/Long;
    :goto_60
    if-eqz v15, :cond_68

    invoke-virtual {v15, v13}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_df

    .line 428
    :cond_68
    const/4 v8, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v11, p7

    invoke-static/range {v4 .. v11}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;ILjava/util/HashSet;Ljava/util/ArrayList;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_25

    .line 431
    const-string v4, "EsPhotosData"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 432
    const-string v4, "EsPhotosData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not insert row for photo of me; id: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_16 .. :try_end_98} :catchall_99

    goto :goto_25

    .line 474
    .end local v7           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #newEntity:Ljava/lang/Long;
    .end local v15           #oldEntity:Ljava/lang/Long;
    .end local v16           #photoId:J
    .end local v18           #photoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catchall_99
    move-exception v4

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 475
    const-string v5, "EsPhotosData"

    const/4 v8, 0x4

    invoke-static {v5, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 476
    const-string v5, "EsPhotosData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GET_ALBUM_PHOTOS], album ID: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", num photos: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", duration: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {v21 .. v22}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_dc
    throw v4

    .line 424
    .restart local v7       #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v15       #oldEntity:Ljava/lang/Long;
    .restart local v16       #photoId:J
    .restart local v18       #photoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_dd
    const/4 v13, 0x0

    goto :goto_60

    .line 437
    .restart local v13       #newEntity:Ljava/lang/Long;
    :cond_df
    :try_start_df
    const-string v4, "EsPhotosData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 438
    const-string v4, "EsPhotosData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Photo not updated; id: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 444
    .end local v7           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .end local v13           #newEntity:Ljava/lang/Long;
    .end local v15           #oldEntity:Ljava/lang/Long;
    .end local v16           #photoId:J
    :cond_104
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_10c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 445
    .restart local v16       #photoId:J
    const-string v4, "EsPhotosData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_13f

    .line 446
    const-string v4, "EsPhotosData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">> remove photo ID: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_13f
    const-string v4, "photo"

    const-string v5, "photo_id=? AND type=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v8, v11

    const/4 v11, 0x1

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v8, v11

    invoke-virtual {v6, v4, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_10c

    .line 452
    .end local v16           #photoId:J
    :cond_15a
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_1e2

    .line 453
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .local v20, sb:Ljava/lang/StringBuilder;
    new-instance v19, Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 456
    .local v19, removedIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "type"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=? AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "photo_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IN("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_19b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1bc

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    .line 462
    .local v16, photoId:Ljava/lang/Long;
    const-string v4, "?,"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19b

    .line 465
    .end local v16           #photoId:Ljava/lang/Long;
    :cond_1bc
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 466
    const-string v4, ")"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const-string v5, "photo"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v6, v5, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 472
    .end local v19           #removedIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20           #sb:Ljava/lang/StringBuilder;
    :cond_1e2
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1e5
    .catchall {:try_start_df .. :try_end_1e5} :catchall_99

    .line 474
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 475
    const-string v4, "EsPhotosData"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_227

    .line 476
    const-string v4, "EsPhotosData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GET_ALBUM_PHOTOS], album ID: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", num photos: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", duration: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v21 .. v22}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_227
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_22b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_240

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    .line 485
    .local v14, notifyUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v14, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_22b

    .line 487
    .end local v14           #notifyUri:Landroid/net/Uri;
    :cond_240
    invoke-static/range {p0 .. p3}, Lcom/google/android/apps/plus/content/EsPhotosData;->notifyAlbumChange(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 488
    return-void
.end method

.method public static insertCirclePhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;ILcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 32
    .parameter "context"
    .parameter "account"
    .parameter "circleId"
    .parameter
    .parameter "offset"
    .parameter "syncState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;I",
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
    .line 860
    .local p3, photos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 862
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 864
    .local v21, startTime:J
    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/google/android/apps/plus/content/EsPhotosData;->getCurrentCircleMap(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v10

    .line 865
    .local v10, circleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 868
    .local v8, notificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :try_start_17
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 869
    .local v7, albumSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 871
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 872
    .local v23, values:Landroid/content/ContentValues;
    const-string v2, "circle_id"

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    move/from16 v19, p4

    .line 874
    .local v19, showOrder:I
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    move/from16 v20, v19

    .end local v19           #showOrder:I
    .local v20, showOrder:I
    :cond_35
    :goto_35
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_136

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 875
    .local v5, photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    const-string v2, "EsPhotosData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 876
    const/4 v2, 0x0

    invoke-static {v5, v2}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    .line 879
    :cond_52
    const/4 v6, 0x2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v9, p5

    invoke-static/range {v2 .. v9}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;ILjava/util/HashSet;Ljava/util/ArrayList;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_b8

    .line 882
    const-string v2, "EsPhotosData"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 883
    const-string v2, "EsPhotosData"

    const-string v3, "Could not insert photo row"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_17 .. :try_end_6f} :catchall_70

    goto :goto_35

    .line 927
    .end local v5           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .end local v7           #albumSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v20           #showOrder:I
    .end local v23           #values:Landroid/content/ContentValues;
    :catchall_70
    move-exception v2

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 928
    const-string v3, "EsPhotosData"

    const/4 v6, 0x4

    invoke-static {v3, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 929
    const-string v3, "EsPhotosData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[GET_PHOTO_CONSUMPTION_STREAM], circle ID: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p2, :cond_8e

    const-string p2, "N/A"

    .end local p2
    :cond_8e
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", num photos: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", duration: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v21 .. v22}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_b7
    throw v2

    .line 888
    .restart local v5       #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .restart local v7       #albumSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v20       #showOrder:I
    .restart local v23       #values:Landroid/content/ContentValues;
    .restart local p2
    :cond_b8
    :try_start_b8
    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getId()J

    move-result-wide v16

    .line 889
    .local v16, photoId:J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 891
    .local v11, circleRowId:Ljava/lang/Long;
    const-string v2, "photo_id"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 892
    const-string v2, "show_order"

    add-int/lit8 v19, v20, 0x1

    .end local v20           #showOrder:I
    .restart local v19       #showOrder:I
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 893
    if-nez v11, :cond_10c

    .line 895
    const-string v2, "photos_from_circle"

    const/4 v3, 0x0

    const/4 v6, 0x4

    move-object/from16 v0, v23

    invoke-virtual {v4, v2, v3, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 904
    :goto_ee
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v24, -0x1

    cmp-long v2, v2, v24

    if-nez v2, :cond_132

    .line 906
    const-string v2, "EsPhotosData"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1e6

    .line 907
    const-string v2, "EsPhotosData"

    const-string v3, "Could not insert circle row"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v20, v19

    .end local v19           #showOrder:I
    .restart local v20       #showOrder:I
    goto/16 :goto_35

    .line 899
    .end local v20           #showOrder:I
    .restart local v19       #showOrder:I
    :cond_10c
    const-string v2, "photos_from_circle"

    const-string v3, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v6, v9

    move-object/from16 v0, v23

    invoke-virtual {v4, v2, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 902
    .local v18, rowsUpdated:I
    if-nez v18, :cond_12d

    const-wide/16 v2, -0x1

    :goto_128
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_ee

    :cond_12d
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_128

    .end local v18           #rowsUpdated:I
    :cond_132
    move/from16 v20, v19

    .line 911
    .end local v19           #showOrder:I
    .restart local v20       #showOrder:I
    goto/16 :goto_35

    .line 916
    .end local v5           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .end local v11           #circleRowId:Ljava/lang/Long;
    .end local v16           #photoId:J
    :cond_136
    if-nez p2, :cond_1a9

    .line 917
    const-string v13, "circle_id IS NULL AND show_order >=?"

    .line 918
    .local v13, deleteWhere:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    .line 923
    .local v12, deleteArgs:[Ljava/lang/String;
    :goto_144
    const-string v2, "photos_from_circle"

    invoke-virtual {v4, v2, v13, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 925
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_14c
    .catchall {:try_start_b8 .. :try_end_14c} :catchall_70

    .line 927
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 928
    const-string v2, "EsPhotosData"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_190

    .line 929
    const-string v3, "EsPhotosData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GET_PHOTO_CONSUMPTION_STREAM], circle ID: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p2, :cond_1e3

    const-string v2, "N/A"

    :goto_169
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", num photos: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", duration: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v21 .. v22}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :cond_190
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_194
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/Uri;

    .line 938
    .local v15, notifyUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_194

    .line 920
    .end local v12           #deleteArgs:[Ljava/lang/String;
    .end local v13           #deleteWhere:Ljava/lang/String;
    .end local v15           #notifyUri:Landroid/net/Uri;
    :cond_1a9
    :try_start_1a9
    const-string v13, "circle_id=? AND show_order >=?"

    .line 921
    .restart local v13       #deleteWhere:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v12, v2

    const/4 v2, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2
    :try_end_1b8
    .catchall {:try_start_1a9 .. :try_end_1b8} :catchall_70

    .restart local v12       #deleteArgs:[Ljava/lang/String;
    goto :goto_144

    .line 941
    :cond_1b9
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1c5

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1d1

    .line 942
    :cond_1c5
    if-nez p2, :cond_1d2

    sget-object v15, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_NULL_CIRCLE_ID_URI:Landroid/net/Uri;

    .line 945
    .restart local v15       #notifyUri:Landroid/net/Uri;
    :goto_1c9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 947
    .end local v15           #notifyUri:Landroid/net/Uri;
    :cond_1d1
    return-void

    .line 942
    :cond_1d2
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_CIRCLE_ID_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15

    goto :goto_1c9

    :cond_1e3
    move-object/from16 v2, p2

    .line 929
    goto :goto_169

    .end local v12           #deleteArgs:[Ljava/lang/String;
    .end local v13           #deleteWhere:Ljava/lang/String;
    .end local v20           #showOrder:I
    .restart local v5       #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .restart local v11       #circleRowId:Ljava/lang/Long;
    .restart local v16       #photoId:J
    .restart local v19       #showOrder:I
    :cond_1e6
    move/from16 v20, v19

    .end local v19           #showOrder:I
    .restart local v20       #showOrder:I
    goto/16 :goto_35
.end method

.method private static insertOrUpdateAlbumRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;ZZ)Ljava/lang/Long;
    .registers 21
    .parameter "db"
    .parameter "album"
    .parameter "isActivity"
    .parameter "forceUpdate"

    .prologue
    .line 2305
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getId()J

    move-result-wide v2

    .line 2306
    .local v2, albumId:J
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/apps/plus/content/EsPhotosData;->getAlbumContentValues(JLcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Z)Landroid/content/ContentValues;

    move-result-object v11

    .line 2309
    .local v11, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->getAlbumRowId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/Long;

    move-result-object v9

    .line 2311
    .local v9, rowId:Ljava/lang/Long;
    if-nez v9, :cond_2e

    .line 2313
    const-string v12, "album"

    const/4 v13, 0x0

    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v11, v14}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 2315
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-nez v12, :cond_2d

    .line 2316
    const/4 v9, 0x0

    .line 2339
    :cond_2d
    :goto_2d
    return-object v9

    .line 2319
    :cond_2e
    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->getAlbumStreamId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v4

    .line 2320
    .local v4, curStreamId:Ljava/lang/String;
    const-string v12, "stream_id"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2323
    .local v8, newStreamId:Ljava/lang/String;
    if-eqz v4, :cond_6f

    const/4 v5, 0x1

    .line 2325
    .local v5, isMetaAlbum:Z
    :goto_3d
    if-eqz v5, :cond_71

    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_71

    const/4 v7, 0x1

    .line 2327
    .local v7, isMetaUpdate:Z
    :goto_46
    if-nez v5, :cond_73

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_73

    const/4 v6, 0x1

    .line 2329
    .local v6, isMetaNew:Z
    :goto_4f
    if-eqz v5, :cond_57

    if-nez v6, :cond_57

    if-nez v7, :cond_57

    if-eqz p3, :cond_2d

    .line 2331
    :cond_57
    const-string v12, "album"

    const-string v13, "album_id=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 2334
    .local v10, rowsUpdated:I
    if-nez v10, :cond_2d

    .line 2335
    const/4 v9, 0x0

    goto :goto_2d

    .line 2323
    .end local v5           #isMetaAlbum:Z
    .end local v6           #isMetaNew:Z
    .end local v7           #isMetaUpdate:Z
    .end local v10           #rowsUpdated:I
    :cond_6f
    const/4 v5, 0x0

    goto :goto_3d

    .line 2325
    .restart local v5       #isMetaAlbum:Z
    :cond_71
    const/4 v7, 0x0

    goto :goto_46

    .line 2327
    .restart local v7       #isMetaUpdate:Z
    :cond_73
    const/4 v6, 0x0

    goto :goto_4f
.end method

.method private static insertOrUpdatePhotoCommentRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$Comment;J)Z
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2428
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getId()Ljava/lang/String;

    move-result-object v2

    .line 2429
    invoke-static {p1, p2, p3}, Lcom/google/android/apps/plus/content/EsPhotosData;->getCommentContentValues(Lcom/google/wireless/tacotruck/proto/Data$Comment;J)Landroid/content/ContentValues;

    move-result-object v3

    .line 2432
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2433
    const-string v5, "SELECT count(*) FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "photo_comment"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " WHERE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "comment_id=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2438
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/String;

    aput-object v2, v5, v1

    invoke-static {p0, v4, v5}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    .line 2441
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_49

    .line 2443
    const-string v2, "photo_comment"

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {p0, v2, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 2445
    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_47

    .line 2451
    :cond_46
    :goto_46
    return v0

    :cond_47
    move v0, v1

    .line 2445
    goto :goto_46

    .line 2448
    :cond_49
    const-string v4, "photo_comment"

    const-string v5, "comment_id=?"

    new-array v6, v0, [Ljava/lang/String;

    aput-object v2, v6, v1

    invoke-virtual {p0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 2451
    if-nez v2, :cond_46

    move v0, v1

    goto :goto_46
.end method

.method private static insertOrUpdatePhotoRow(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;I)Ljava/lang/Long;
    .registers 12
    .parameter "db"
    .parameter "photoId"
    .parameter "values"
    .parameter "type"

    .prologue
    .line 2396
    invoke-static {p0, p1, p2, p4}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoRowId(Landroid/database/sqlite/SQLiteDatabase;JI)Ljava/lang/Long;

    move-result-object v0

    .line 2398
    .local v0, rowId:Ljava/lang/Long;
    if-nez v0, :cond_1e

    .line 2400
    const-string v2, "photo"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {p0, v2, v3, p3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2402
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1d

    .line 2403
    const/4 v0, 0x0

    .line 2414
    :cond_1d
    :goto_1d
    return-object v0

    .line 2407
    :cond_1e
    const-string v2, "photo"

    const-string v3, "photo_id=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v2, p3, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2410
    .local v1, rowsUpdated:I
    if-nez v1, :cond_1d

    .line 2411
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private static insertOrUpdatePhotoShapeRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$MobileShape;J)Z
    .registers 13
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2466
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getId()J

    move-result-wide v2

    .line 2467
    invoke-static {p1, p2, p3}, Lcom/google/android/apps/plus/content/EsPhotosData;->getShapeContentValues(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;J)Landroid/content/ContentValues;

    move-result-object v4

    .line 2470
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2471
    const-string v6, "SELECT count(*) FROM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "photo_shape"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "shape_id=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2476
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {p0, v5, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v5

    .line 2479
    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_4d

    .line 2481
    const-string v2, "photo_shape"

    const/4 v3, 0x0

    const/4 v5, 0x4

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 2483
    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4b

    .line 2489
    :cond_4a
    :goto_4a
    return v0

    :cond_4b
    move v0, v1

    .line 2483
    goto :goto_4a

    .line 2486
    :cond_4d
    const-string v5, "photo_shape"

    const-string v6, "shape_id=?"

    new-array v7, v0, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-virtual {p0, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 2489
    if-nez v2, :cond_4a

    move v0, v1

    goto :goto_4a
.end method

.method private static insertOrUpdatePlusOneRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;J)Z
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 2349
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2350
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->hasPlusonedByViewer()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v0

    .line 2352
    :goto_12
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->hasTotalPlusoneCount()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v2

    .line 2354
    :goto_1c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->hasPlusoneId()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;

    move-result-object v3

    .line 2357
    :goto_26
    const-string v7, "plusone_data"

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2358
    const-string v7, "plusone_by_me"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2359
    const-string v0, "plusone_count"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2360
    const-string v0, "plusone_id"

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    const-string v0, "photo_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2364
    const-string v0, "photo_plusone"

    const-string v2, "photo_id=?"

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v1

    invoke-virtual {p0, v0, v6, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_68

    .line 2369
    :goto_61
    return v5

    :cond_62
    move v0, v1

    .line 2350
    goto :goto_12

    :cond_64
    move v2, v1

    .line 2352
    goto :goto_1c

    :cond_66
    move-object v3, v4

    .line 2354
    goto :goto_26

    .line 2369
    :cond_68
    const-string v0, "photo_plusone"

    invoke-virtual {p0, v0, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v6, -0x1

    cmp-long v0, v2, v6

    if-eqz v0, :cond_75

    move v1, v5

    :cond_75
    move v5, v1

    goto :goto_61
.end method

.method private static insertPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;ILjava/util/HashSet;Ljava/util/ArrayList;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/Long;
    .registers 24
    .parameter
    .parameter
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
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            "I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2113
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getId()J

    move-result-wide v13

    .line 2115
    if-eqz p7, :cond_9

    .line 2116
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->incrementSubCount()V

    .line 2122
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasAlbum()Z

    move-result v2

    if-eqz v2, :cond_10d

    .line 2123
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v2

    .line 2124
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2125
    if-eqz p5, :cond_25

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    .line 2126
    :cond_25
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v2, v4, v5}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertOrUpdateAlbumRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;ZZ)Ljava/lang/Long;

    move-result-object v4

    .line 2127
    if-nez v4, :cond_56

    .line 2129
    const-string v3, "EsPhotosData"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 2130
    const-string v3, "EsPhotosData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not insert album row; album id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    :cond_54
    const/4 v2, 0x0

    .line 2248
    :goto_55
    return-object v2

    .line 2134
    :cond_56
    if-eqz p5, :cond_5d

    .line 2135
    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2146
    :cond_5d
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasPlusoneData()Z

    move-result v3

    if-eqz v3, :cond_131

    .line 2147
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v3

    .line 2148
    move-object/from16 v0, p2

    invoke-static {v0, v3, v13, v14}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertOrUpdatePlusOneRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;J)Z

    .line 2155
    :goto_6c
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getId()J

    move-result-wide v2

    .line 2156
    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoContentValues(JLcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Landroid/content/ContentValues;

    move-result-object v2

    .line 2159
    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v0, v13, v14, v2, v1}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertOrUpdatePhotoRow(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;I)Ljava/lang/Long;

    move-result-object v12

    .line 2165
    const/4 v11, 0x0

    .line 2166
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 2167
    const-string v3, "photo_comment"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "comment_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "update_time"

    aput-object v5, v4, v2

    const-string v5, "photo_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2172
    :try_start_ab
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 2174
    :cond_b1
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2175
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_c9
    .catchall {:try_start_ab .. :try_end_c9} :catchall_138

    move-result v2

    if-nez v2, :cond_b1

    .line 2178
    :cond_cc
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2181
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getCommentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v11

    :goto_d8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/wireless/tacotruck/proto/Data$Comment;

    .line 2182
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 2183
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasLastUpdateTimestampMsec()Z

    move-result v5

    if-eqz v5, :cond_13d

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getLastUpdateTimestampMsec()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2187
    :goto_fd
    if-eqz v2, :cond_105

    invoke-virtual {v2, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_225

    .line 2188
    :cond_105
    move-object/from16 v0, p2

    invoke-static {v0, v3, v13, v14}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertOrUpdatePhotoCommentRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$Comment;J)Z

    .line 2189
    const/4 v2, 0x1

    :goto_10b
    move v4, v2

    .line 2191
    goto :goto_d8

    .line 2139
    :cond_10d
    const-string v2, "EsPhotosData"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_12e

    .line 2140
    const-string v2, "EsPhotosData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot add photo that has no album; photo id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    :cond_12e
    const/4 v2, 0x0

    goto/16 :goto_55

    .line 2150
    :cond_131
    move-object/from16 v0, p2

    invoke-static {v0, v13, v14}, Lcom/google/android/apps/plus/content/EsPhotosData;->removePlusOneRow(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto/16 :goto_6c

    .line 2178
    :catchall_138
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2183
    :cond_13d
    const/4 v5, 0x0

    goto :goto_fd

    .line 2194
    :cond_13f
    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_19f

    .line 2195
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2198
    const-string v2, "comment_id IN("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2199
    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_160
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 2200
    const-string v7, "?,"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2201
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_160

    .line 2203
    :cond_17d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2204
    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2206
    const-string v6, "photo_comment"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2210
    :cond_19f
    if-nez v4, :cond_1a7

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1b4

    .line 2211
    :cond_1a7
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_BY_PHOTO_ID_URI:Landroid/net/Uri;

    invoke-static {v2, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 2213
    if-eqz p6, :cond_1eb

    .line 2214
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2223
    :cond_1b4
    :goto_1b4
    const/4 v2, 0x3

    move/from16 v0, p4

    if-eq v0, v2, :cond_201

    const/4 v2, 0x5

    move/from16 v0, p4

    if-eq v0, v2, :cond_201

    .line 2224
    const-string v2, "photo_shape"

    const-string v3, "photo_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2227
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getShapeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    .line 2228
    move-object/from16 v0, p2

    invoke-static {v0, v2, v13, v14}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertOrUpdatePhotoShapeRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$MobileShape;J)Z

    goto :goto_1d9

    .line 2216
    :cond_1eb
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1b4

    .line 2230
    :cond_1f4
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_SHAPES_BY_PHOTO_ID_URI:Landroid/net/Uri;

    invoke-static {v2, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 2232
    if-eqz p6, :cond_213

    .line 2233
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2239
    :cond_201
    :goto_201
    if-eqz v12, :cond_210

    .line 2240
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_PHOTO_ID_URI:Landroid/net/Uri;

    invoke-static {v2, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 2242
    if-eqz p6, :cond_21c

    .line 2243
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_210
    :goto_210
    move-object v2, v12

    .line 2248
    goto/16 :goto_55

    .line 2235
    :cond_213
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_201

    .line 2245
    :cond_21c
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_210

    :cond_225
    move v2, v4

    goto/16 :goto_10b
.end method

.method private static insertPhotoOfUser(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;JLcom/google/wireless/tacotruck/proto/Data$MobilePhoto;JLjava/util/ArrayList;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 20
    .parameter
    .parameter
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
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
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
    .line 2265
    invoke-virtual {p5}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getId()J

    move-result-wide v8

    .line 2266
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2269
    const/4 v4, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;ILjava/util/HashSet;Ljava/util/ArrayList;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 2272
    const-string v0, "EsPhotosData"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2273
    const-string v0, "EsPhotosData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not insert row for photo of me; id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    :cond_39
    :goto_39
    return-void

    .line 2278
    :cond_3a
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2279
    const-string v1, "photo_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2280
    const-string v1, "photo_of_user_id"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2282
    const-string v1, "photos_of_user"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {p2, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_39
.end method

.method public static insertPhotosOfUser(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/util/List;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 25
    .parameter "context"
    .parameter "account"
    .parameter "userId"
    .parameter
    .parameter
    .parameter "syncState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;",
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
    .line 732
    .local p4, approvedPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    .local p5, unapprovedPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 734
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 735
    .local v15, startTime:J
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 738
    .local v10, notificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :try_start_11
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v5

    .line 739
    .local v5, accountId:J
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 740
    const-string v2, "EsPhotosData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 741
    const-string v2, "EsPhotosData"

    const-string v3, ">>>>> approved photos"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_28
    const-string v2, "photos_of_user"

    const-string v3, "photo_of_user_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v4, v2, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 748
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 749
    .local v7, photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    const-string v2, "EsPhotosData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 750
    const/4 v2, 0x0

    invoke-static {v7, v2}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    :cond_5a
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v8, p2

    move-object/from16 v11, p6

    .line 752
    invoke-static/range {v2 .. v11}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertPhotoOfUser(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;JLcom/google/wireless/tacotruck/proto/Data$MobilePhoto;JLjava/util/ArrayList;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    :try_end_65
    .catchall {:try_start_11 .. :try_end_65} :catchall_66

    goto :goto_3d

    .line 779
    .end local v5           #accountId:J
    .end local v7           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .end local v12           #i$:Ljava/util/Iterator;
    :catchall_66
    move-exception v2

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 780
    const-string v3, "EsPhotosData"

    const/4 v8, 0x4

    invoke-static {v3, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 781
    const-string v3, "EsPhotosData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[GET_PHOTOS_OF_USER], userId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", approved: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", unapproved: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", duration: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {v15 .. v16}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_b7
    throw v2

    .line 756
    .restart local v5       #accountId:J
    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_b8
    :try_start_b8
    const-string v2, "EsPhotosData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 757
    const-string v2, "EsPhotosData"

    const-string v3, ">>>>> unapproved photos"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_c8
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_cc
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 760
    .restart local v7       #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    const-string v2, "EsPhotosData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 761
    const/4 v2, 0x0

    invoke-static {v7, v2}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    :cond_e9
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v8, p2

    move-object/from16 v11, p6

    .line 763
    invoke-static/range {v2 .. v11}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertPhotoOfUser(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;JLcom/google/wireless/tacotruck/proto/Data$MobilePhoto;JLjava/util/ArrayList;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    goto :goto_cc

    .line 768
    .end local v7           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    :cond_f5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-nez v2, :cond_11d

    .line 769
    const-string v14, "type=1"

    .line 771
    .local v14, photosWhere:Ljava/lang/String;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 772
    .local v17, values:Landroid/content/ContentValues;
    const-string v2, "notification_count"

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 774
    const-string v2, "photos_home"

    const-string v3, "type=1"

    const/4 v8, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v4, v2, v0, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 777
    .end local v14           #photosWhere:Ljava/lang/String;
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_11d
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_120
    .catchall {:try_start_b8 .. :try_end_120} :catchall_66

    .line 779
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 780
    const-string v2, "EsPhotosData"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_170

    .line 781
    const-string v2, "EsPhotosData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GET_PHOTOS_OF_USER], userId: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", approved: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", unapproved: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", duration: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v15 .. v16}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_170
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_174
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_189

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    .line 791
    .local v13, notifyUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v13, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_174

    .line 794
    .end local v13           #notifyUri:Landroid/net/Uri;
    :cond_189
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_195

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1a5

    .line 795
    :cond_195
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_OF_USER_ID_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 796
    .restart local v13       #notifyUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v13, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 798
    .end local v13           #notifyUri:Landroid/net/Uri;
    :cond_1a5
    return-void
.end method

.method public static insertProfileAlbumList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "userId"
    .parameter
    .parameter "syncState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;",
            ">;",
            "Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 388
    .local p4, albums:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;>;"
    const-string v0, "EsPhotosData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 389
    const-string v0, "EsPhotosData"

    const-string v1, ">> insertProfileAlbumList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_10
    invoke-static/range {p0 .. p5}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertAlbumList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 392
    return-void
.end method

.method public static insertSinglePhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 22
    .parameter "context"
    .parameter "account"
    .parameter "photo"
    .parameter "syncState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 503
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 504
    .local v15, startTime:J
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getId()J

    move-result-wide v13

    .line 505
    .local v13, photoId:J
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v8, notificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v12, 0x0

    .line 509
    .local v12, photoCount:I
    :try_start_16
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 511
    const-string v2, "EsPhotosData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 512
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    .line 515
    :cond_2c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v13, v14}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoTypeList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)Ljava/util/List;

    move-result-object v17

    .line 516
    .local v17, typeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v12

    .line 518
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_3c
    :goto_3c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bb

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 520
    .local v6, type:I
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v9, p3

    invoke-static/range {v2 .. v9}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;ILjava/util/HashSet;Ljava/util/ArrayList;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_3c

    .line 523
    const-string v2, "EsPhotosData"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 524
    const-string v2, "EsPhotosData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not insert row for photo of me; id: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_16 .. :try_end_7c} :catchall_7d

    goto :goto_3c

    .line 532
    .end local v6           #type:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v17           #typeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_7d
    move-exception v2

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 533
    const-string v3, "EsPhotosData"

    const/4 v5, 0x4

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 534
    const-string v3, "EsPhotosData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[GET_PHOTO], photo ID: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", num photos: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", duration: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v15 .. v16}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_ba
    throw v2

    .line 530
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v17       #typeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_bb
    :try_start_bb
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_7d

    .line 532
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 533
    const-string v2, "EsPhotosData"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 534
    const-string v2, "EsPhotosData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GET_PHOTO], photo ID: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", num photos: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", duration: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v15 .. v16}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_fa
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_fe
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_113

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    .line 543
    .local v11, notifyUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v11, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_fe

    .line 546
    .end local v11           #notifyUri:Landroid/net/Uri;
    :cond_113
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 547
    return-void
.end method

.method public static insertStreamPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;JLjava/util/List;IZLcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 41
    .parameter "context"
    .parameter "account"
    .parameter "streamId"
    .parameter "ownerId"
    .parameter
    .parameter "offset"
    .parameter "isActivity"
    .parameter "syncState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;IZ",
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
    .line 568
    .local p5, photos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 570
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    .line 571
    .local v29, startTime:J
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 572
    .local v16, existingPhotos:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v21, notificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/16 v19, 0x0

    .line 576
    .local v19, insertedPhoto:Z
    :try_start_18
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 578
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 581
    .local v11, albumSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-string v3, "photo_stream"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "photo_id"

    aput-object v8, v4, v5

    const-string v5, "stream_id=? AND user_id=?"

    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v6, v8

    const/4 v8, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_40
    .catchall {:try_start_18 .. :try_end_40} :catchall_13d

    move-result-object v13

    .line 587
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_41
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 589
    :cond_47
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 590
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_58
    .catchall {:try_start_41 .. :try_end_58} :catchall_181

    move-result v3

    if-nez v3, :cond_47

    .line 593
    :cond_5b
    :try_start_5b
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 597
    if-eqz p7, :cond_74

    .line 598
    const-string v3, "photo_stream"

    const-string v4, "stream_id=? AND user_id=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v5, v8

    const/4 v8, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 603
    :cond_74
    if-eqz p7, :cond_186

    const/4 v7, 0x5

    .line 605
    .local v7, photoType:I
    :goto_77
    move-object/from16 v0, p5

    invoke-static {v2, v0, v7}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoEntityMap(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;I)Ljava/util/HashMap;

    move-result-object v14

    .line 607
    .local v14, entityMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v31, Landroid/content/ContentValues;

    invoke-direct/range {v31 .. v31}, Landroid/content/ContentValues;-><init>()V

    .line 608
    .local v31, streamValues:Landroid/content/ContentValues;
    const-string v3, "user_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 609
    const-string v3, "stream_id"

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-string v3, "type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 612
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_a5
    :goto_a5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22e

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 613
    .local v6, photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    const-string v3, "EsPhotosData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 614
    const/4 v3, 0x0

    invoke-static {v6, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    .line 618
    :cond_c2
    const-string v3, "photo_id"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 619
    const-string v3, "url"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasId()Z

    move-result v3

    if-eqz v3, :cond_205

    .line 622
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getId()J

    move-result-wide v24

    .line 623
    .local v24, photoId:J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v15

    .line 625
    .local v15, existingPhoto:Z
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    .line 626
    .local v23, oldEntity:Ljava/lang/Long;
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasEntityVersion()Z

    move-result v3

    if-eqz v3, :cond_189

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getEntityVersion()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 629
    .local v20, newEntity:Ljava/lang/Long;
    :goto_fc
    if-eqz v23, :cond_108

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1aa

    :cond_108
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v2

    move-object v8, v11

    move-object/from16 v9, v21

    move-object/from16 v10, p8

    .line 631
    invoke-static/range {v3 .. v10}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;ILjava/util/HashSet;Ljava/util/ArrayList;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_18d

    .line 634
    const-string v3, "EsPhotosData"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 635
    const-string v3, "EsPhotosData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not insert row for photo of me; id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13b
    .catchall {:try_start_5b .. :try_end_13b} :catchall_13d

    goto/16 :goto_a5

    .line 697
    .end local v6           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .end local v7           #photoType:I
    .end local v11           #albumSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v14           #entityMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v15           #existingPhoto:Z
    .end local v20           #newEntity:Ljava/lang/Long;
    .end local v23           #oldEntity:Ljava/lang/Long;
    .end local v24           #photoId:J
    .end local v31           #streamValues:Landroid/content/ContentValues;
    :catchall_13d
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 698
    const-string v4, "EsPhotosData"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_180

    .line 699
    const-string v4, "EsPhotosData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GET_STREAM_PHOTOS], stream: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", num photos: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", duration: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v29 .. v30}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_180
    throw v3

    .line 593
    .restart local v11       #albumSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v13       #cursor:Landroid/database/Cursor;
    :catchall_181
    move-exception v3

    :try_start_182
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    .line 603
    :cond_186
    const/4 v7, 0x3

    goto/16 :goto_77

    .line 626
    .restart local v6       #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .restart local v7       #photoType:I
    .restart local v14       #entityMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v15       #existingPhoto:Z
    .restart local v23       #oldEntity:Ljava/lang/Long;
    .restart local v24       #photoId:J
    .restart local v31       #streamValues:Landroid/content/ContentValues;
    :cond_189
    const/16 v20, 0x0

    goto/16 :goto_fc

    .line 640
    .restart local v20       #newEntity:Ljava/lang/Long;
    :cond_18d
    if-nez v19, :cond_193

    if-nez v15, :cond_193

    .line 641
    const/16 v19, 0x1

    .line 649
    :cond_193
    :goto_193
    const-string v3, "photo_id"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 650
    if-eqz p7, :cond_1ce

    .line 651
    const-string v3, "photo_stream"

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_a5

    .line 644
    :cond_1aa
    const-string v3, "EsPhotosData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_193

    .line 645
    const-string v3, "EsPhotosData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Photo not updated; id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_193

    .line 655
    :cond_1ce
    const-string v3, "photo_stream"

    const-string v4, "photo_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 660
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getStreamIdList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_1e7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 661
    .local v26, photoStream:Ljava/lang/String;
    const-string v3, "stream_id"

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v3, "photo_stream"

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1e7

    .line 665
    .end local v15           #existingPhoto:Z
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v20           #newEntity:Ljava/lang/Long;
    .end local v23           #oldEntity:Ljava/lang/Long;
    .end local v24           #photoId:J
    .end local v26           #photoStream:Ljava/lang/String;
    :cond_205
    if-eqz p7, :cond_21c

    .line 668
    const-string v3, "url"

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUrl()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v3, "photo_stream"

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_a5

    .line 672
    :cond_21c
    const-string v3, "EsPhotosData"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 673
    const-string v3, "EsPhotosData"

    const-string v4, "Received non activity photo without an ID"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a5

    .line 680
    .end local v6           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    :cond_22e
    if-nez p6, :cond_298

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_298

    .line 681
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 682
    .local v28, sb:Ljava/lang/StringBuilder;
    new-instance v27, Ljava/util/ArrayList;

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->size()I

    move-result v3

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 683
    .local v27, removedIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "photo_id IN("

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_251
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_272

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    .line 685
    .local v24, photoId:Ljava/lang/Long;
    const-string v3, "?,"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_251

    .line 688
    .end local v24           #photoId:Ljava/lang/Long;
    :cond_272
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 689
    const-string v3, ")"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    const-string v4, "photo_stream"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 695
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v27           #removedIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28           #sb:Ljava/lang/StringBuilder;
    :cond_298
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_29b
    .catchall {:try_start_182 .. :try_end_29b} :catchall_13d

    .line 697
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 698
    const-string v3, "EsPhotosData"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2dd

    .line 699
    const-string v3, "EsPhotosData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GET_STREAM_PHOTOS], stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", num photos: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v29 .. v30}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_2dd
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17       #i$:Ljava/util/Iterator;
    :goto_2e1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/Uri;

    .line 708
    .local v22, notifyUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_2e1

    .line 711
    .end local v22           #notifyUri:Landroid/net/Uri;
    :cond_2f8
    if-nez v19, :cond_300

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_320

    .line 712
    :cond_300
    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_STREAM_ID_AND_OWNER_ID_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    .line 713
    .local v12, builder:Landroid/net/Uri$Builder;
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    .line 715
    .restart local v22       #notifyUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 717
    .end local v12           #builder:Landroid/net/Uri$Builder;
    .end local v22           #notifyUri:Landroid/net/Uri;
    :cond_320
    return-void
.end method

.method private static final isHex(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2781
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_10

    const/16 v0, 0x66

    if-le p0, v0, :cond_18

    :cond_10
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static notifyAlbumChange(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "albumId"

    .prologue
    .line 2728
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_ALBUM_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2730
    .local v0, notifyUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2731
    return-void
.end method

.method private static notifyAllAlbumChange(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "ownerUserId"

    .prologue
    .line 2720
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_BY_OWNER_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2722
    .local v0, notifyUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2723
    return-void
.end method

.method private static notifyPhotoChange(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "photoId"

    .prologue
    .line 2736
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_PHOTO_ID_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2738
    .local v0, notifyUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2739
    return-void
.end method

.method public static plusOnePhotoComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1391
    const-wide/16 v10, 0x0

    .line 1393
    const-string v1, "EsPhotosData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1394
    const-string v1, "EsPhotosData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> plusOnePhotoComment activity id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", comment id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :cond_41
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1401
    const/4 v9, 0x0

    .line 1404
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v5, v2

    .line 1405
    const-string v2, "photo_comment"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "photo_id"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    const-string v6, "plusone_data"

    aput-object v6, v3, v4

    const-string v4, "comment_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1410
    :try_start_68
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1412
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 1413
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1415
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_7a
    .catchall {:try_start_68 .. :try_end_7a} :catchall_102

    move-result v2

    if-nez v2, :cond_fe

    .line 1417
    const/4 v2, 0x1

    :try_start_7e
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :try_end_85
    .catchall {:try_start_7e .. :try_end_85} :catchall_102
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_7e .. :try_end_85} :catch_f6

    move-result-object v9

    move-object v2, v9

    .line 1423
    :goto_87
    :try_start_87
    move/from16 v0, p4

    invoke-static {v2, v0}, Lcom/google/android/apps/plus/content/EsPostsData;->updatePlusOneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v6

    .line 1425
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 1426
    const-string v9, "plusone_data"

    if-eqz v6, :cond_100

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v6

    :goto_9f
    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1429
    const-string v6, "photo_comment"

    const-string v9, "comment_id=?"

    invoke-virtual {v1, v6, v8, v9, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1432
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_ac
    .catchall {:try_start_87 .. :try_end_ac} :catchall_102

    .line 1435
    :goto_ac
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1437
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1438
    const-string v1, "EsPhotosData"

    const/4 v5, 0x4

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 1439
    const-string v1, "EsPhotosData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PLUSONE_PHOTO_COMMENT], duration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v12, v13}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :cond_d7
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_eb

    .line 1446
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_BY_PHOTO_ID_URI:Landroid/net/Uri;

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1448
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1450
    :cond_eb
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1452
    return-object v2

    .line 1418
    :catch_f6
    move-exception v2

    .line 1419
    :try_start_f7
    const-string v6, "EsPhotosData"

    const-string v8, "Could not parse protobuf"

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_fe
    .catchall {:try_start_f7 .. :try_end_fe} :catchall_102

    :cond_fe
    move-object v2, v9

    goto :goto_87

    .line 1426
    :cond_100
    const/4 v6, 0x0

    goto :goto_9f

    .line 1435
    :catchall_102
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1437
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1438
    const-string v1, "EsPhotosData"

    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 1439
    const-string v1, "EsPhotosData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PLUSONE_PHOTO_COMMENT], duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v12, v13}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :cond_12e
    throw v2

    :cond_12f
    move-object v2, v9

    move-wide v3, v10

    goto/16 :goto_ac
.end method

.method public static plusOnePhotoComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Z)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1302
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1307
    const-string v0, "EsPhotosData"

    const/4 v4, 0x3

    invoke-static {v0, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 1308
    const-string v4, "EsPhotosData"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> plusOnePhotoComment activity id: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", comment id: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", plus one id: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p4, :cond_10f

    invoke-virtual {p4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;

    move-result-object v0

    :goto_3c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", local plus one: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", server plus one: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p4, :cond_113

    invoke-virtual {p4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_5a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", total plus ones: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p4, :cond_117

    invoke-virtual {p4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_6e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    :cond_79
    :try_start_79
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1321
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v0, v4
    :try_end_82
    .catchall {:try_start_79 .. :try_end_82} :catchall_16f

    .line 1324
    :try_start_82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1325
    const-string v5, "SELECT photo_id FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "photo_comment"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " WHERE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "comment_id=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_a5
    .catchall {:try_start_82 .. :try_end_a5} :catchall_16f
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_82 .. :try_end_a5} :catch_11b

    move-result-wide v4

    .line 1339
    :try_start_a6
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1340
    if-eqz p5, :cond_199

    .line 1341
    if-eqz p4, :cond_166

    .line 1342
    const-string v7, "plusone_data"

    invoke-virtual {p4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1354
    :goto_b8
    invoke-virtual {v6}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-lez v7, :cond_c8

    .line 1355
    const-string v7, "photo_comment"

    const-string v8, "comment_id=?"

    invoke-virtual {v1, v7, v6, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1358
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c8
    .catchall {:try_start_a6 .. :try_end_c8} :catchall_16f

    .line 1361
    :cond_c8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1362
    const-string v0, "EsPhotosData"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 1363
    const-string v0, "EsPhotosData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PLUSONE_PHOTO_COMMENT], duration: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :cond_f0
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_104

    .line 1370
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_BY_PHOTO_ID_URI:Landroid/net/Uri;

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1372
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1374
    :cond_104
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1375
    :cond_10e
    :goto_10e
    return-void

    .line 1308
    :cond_10f
    const-string v0, "no data"

    goto/16 :goto_3c

    :cond_113
    const-string v0, "no data"

    goto/16 :goto_5a

    :cond_117
    const-string v0, "no data"

    goto/16 :goto_6e

    .line 1331
    :catch_11b
    move-exception v0

    .line 1333
    :try_start_11c
    const-string v4, "EsPhotosData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_13d

    .line 1334
    const-string v4, "EsPhotosData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find photo for comment id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13d
    .catchall {:try_start_11c .. :try_end_13d} :catchall_16f

    .line 1361
    :cond_13d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1362
    const-string v0, "EsPhotosData"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 1363
    const-string v0, "EsPhotosData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PLUSONE_PHOTO_COMMENT], duration: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10e

    .line 1344
    :cond_166
    :try_start_166
    const-string v7, "EsPhotosData"

    const-string v8, "plusOne did not receive PlusOneData for +1"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16d
    .catchall {:try_start_166 .. :try_end_16d} :catchall_16f

    goto/16 :goto_b8

    .line 1361
    :catchall_16f
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1362
    const-string v1, "EsPhotosData"

    const/4 v4, 0x4

    invoke-static {v1, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_198

    .line 1363
    const-string v1, "EsPhotosData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PLUSONE_PHOTO_COMMENT], duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :cond_198
    throw v0

    .line 1347
    :cond_199
    if-eqz p4, :cond_1a6

    .line 1348
    :try_start_19b
    const-string v7, "plusone_data"

    invoke-virtual {p4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_b8

    .line 1350
    :cond_1a6
    const-string v7, "EsPhotosData"

    const-string v8, "plusOne did not receive PlusOneData for +1"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ad
    .catchall {:try_start_19b .. :try_end_1ad} :catchall_16f

    goto/16 :goto_b8
.end method

.method private static removePlusOneRow(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 8
    .parameter "db"
    .parameter "photoId"

    .prologue
    .line 2380
    const-string v0, "photo_plusone"

    const-string v1, "photo_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2382
    return-void
.end method

.method public static setPhotoAbuseReported(JJ)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1714
    const-string v0, "EsPhotosData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1715
    const-string v0, "EsPhotosData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> setPhotoAbuseReported photo id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    :cond_21
    return-void
.end method

.method public static setPhotoCommentPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1466
    const-string v0, "EsPhotosData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1467
    const-string v0, "EsPhotosData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> setPhotoCommentPostPlusOne activity id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", comment id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_30
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1476
    new-array v4, v3, [Ljava/lang/String;

    aput-object p3, v4, v6

    .line 1477
    const-string v1, "photo_comment"

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "photo_id"

    aput-object v3, v2, v6

    const-string v3, "comment_id=?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1482
    :try_start_4c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1484
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 1485
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1487
    new-instance v7, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v7, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1488
    const-string v10, "plusone_data"

    if-eqz p4, :cond_96

    invoke-virtual {p4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v3

    :goto_68
    invoke-virtual {v7, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1491
    const-string v3, "photo_comment"

    const-string v10, "comment_id=?"

    invoke-virtual {v0, v3, v7, v10, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1494
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_75
    .catchall {:try_start_4c .. :try_end_75} :catchall_98

    .line 1497
    :goto_75
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1499
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1503
    cmp-long v0, v1, v8

    if-eqz v0, :cond_8c

    .line 1504
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_BY_PHOTO_ID_URI:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1506
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1508
    :cond_8c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1509
    return-void

    :cond_96
    move-object v3, v5

    .line 1488
    goto :goto_68

    .line 1497
    :catchall_98
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1499
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1497
    throw v1

    :cond_a0
    move-wide v1, v8

    goto :goto_75
.end method

.method public static setPhotoPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "photoId"
    .parameter "plusOneData"

    .prologue
    .line 1178
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1180
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p4, :cond_11

    .line 1181
    invoke-static {v0, p4, p2, p3}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertOrUpdatePlusOneRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;J)Z

    .line 1185
    :goto_d
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/plus/content/EsPhotosData;->notifyPhotoChange(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 1186
    return-void

    .line 1183
    :cond_11
    invoke-static {v0, p2, p3}, Lcom/google/android/apps/plus/content/EsPhotosData;->removePlusOneRow(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_d
.end method

.method public static syncPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 3
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    .line 1850
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/content/EsPhotosData;->syncTopLevel(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z

    .line 1851
    return-void
.end method

.method private static syncTopLevel(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x1f4

    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1860
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1893
    :goto_b
    return v5

    .line 1864
    :cond_c
    const-string v0, "EsPhotosData"

    invoke-static {v0, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1865
    const-string v0, "EsPhotosData"

    const-string v1, "    #syncTopLevel(); start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    :cond_1b
    const-string v0, "Photos:TopLevel"

    invoke-virtual {p2, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 1869
    new-instance v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;ZLcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 1872
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->photosHome()V

    .line 1873
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getAlbumList()V

    .line 1874
    const/16 v1, 0x32

    invoke-virtual {v0, v3, v1, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPhotoConsumptionStream(Ljava/lang/String;II)V

    .line 1875
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v2

    const-string v4, "camera_sync_created"

    move-object v1, v0

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getStreamPhotos(JLjava/lang/String;II)V

    .line 1877
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v2

    const-string v4, "updates"

    move-object v1, v0

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getStreamPhotos(JLjava/lang/String;II)V

    .line 1879
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPhotosOfUser(J)V

    .line 1881
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->getHttpTransactionMetrics()Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start(Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    .line 1882
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->hasError()Z

    move-result v1

    if-nez v1, :cond_5f

    const/4 v5, 0x1

    .line 1884
    :cond_5f
    if-eqz v5, :cond_74

    .line 1885
    const-string v0, "EsPhotosData"

    invoke-static {v0, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1886
    const-string v0, "EsPhotosData"

    const-string v1, "    #syncTopLevel(); completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    :cond_70
    :goto_70
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    goto :goto_b

    .line 1889
    :cond_74
    const-string v1, "EsPhotosData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    #syncTopLevel(); failed; code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70
.end method

.method private static updateCommentCount(Landroid/database/sqlite/SQLiteDatabase;JI)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    .line 2503
    if-nez p3, :cond_5

    .line 2536
    :cond_4
    :goto_4
    return-void

    .line 2508
    :cond_5
    const-string v0, "photo_id=?"

    .line 2509
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 2512
    :try_start_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2513
    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "comment_count"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " FROM "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "photo"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " WHERE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "photo_id=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2520
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_40
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_11 .. :try_end_40} :catch_61

    move-result-wide v0

    .line 2526
    :goto_41
    cmp-long v3, v0, v6

    if-ltz v3, :cond_4

    .line 2527
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2528
    int-to-long v4, p3

    add-long/2addr v0, v4

    .line 2531
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 2533
    const-string v4, "comment_count"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2534
    const-string v0, "photo"

    const-string v1, "photo_id=?"

    invoke-virtual {p0, v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_4

    .line 2521
    :catch_61
    move-exception v0

    .line 2523
    const-wide/16 v0, -0x1

    goto :goto_41
.end method

.method public static updatePhotoPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJJZ)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 26
    .parameter "context"
    .parameter "account"
    .parameter "ownerId"
    .parameter "photoId"
    .parameter "albumId"
    .parameter "plusOned"

    .prologue
    .line 1117
    const-string v5, "EsPhotosData"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 1118
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1119
    .local v15, logBuffer:Ljava/lang/StringBuilder;
    const-string v5, ">> updatePhotoPlusOne owner id: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1121
    const-wide/16 v5, 0x0

    cmp-long v5, p6, v5

    if-eqz v5, :cond_2a

    .line 1122
    const-string v5, ", album id: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p6

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1125
    :cond_2a
    const-string v5, ", photo id: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", +1 by me: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1129
    const-string v5, "EsPhotosData"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    .end local v15           #logBuffer:Ljava/lang/StringBuilder;
    :cond_4a
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1135
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v16, 0x0

    .line 1136
    .local v16, poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    const-string v5, "photo_plusone"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "plusone_data"

    aput-object v8, v6, v7

    const-string v7, "photo_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1142
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_71
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_87

    .line 1143
    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_7b
    .catchall {:try_start_71 .. :try_end_7b} :catchall_b0

    move-result v5

    if-nez v5, :cond_87

    .line 1145
    const/4 v5, 0x0

    :try_start_7f
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_b0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_7f .. :try_end_86} :catch_a7

    move-result-object v16

    .line 1153
    :cond_87
    :goto_87
    :try_start_87
    move-object/from16 v0, v16

    move/from16 v1, p8

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsPostsData;->updatePlusOneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v12

    .line 1154
    .local v12, builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    if-eqz v12, :cond_b5

    .line 1155
    invoke-virtual {v12}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-static {v4, v5, v0, v1}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertOrUpdatePlusOneRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;J)Z

    .line 1160
    :goto_9a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->notifyPhotoChange(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V
    :try_end_a3
    .catchall {:try_start_87 .. :try_end_a3} :catchall_b0

    .line 1162
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1165
    return-object v16

    .line 1146
    .end local v12           #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    :catch_a7
    move-exception v14

    .line 1147
    .local v14, ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_a8
    const-string v5, "EsPhotosData"

    const-string v6, "updatePhotoPlusOne"

    invoke-static {v5, v6, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_af
    .catchall {:try_start_a8 .. :try_end_af} :catchall_b0

    goto :goto_87

    .line 1162
    .end local v14           #ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_b0
    move-exception v5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1157
    .restart local v12       #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    :cond_b5
    :try_start_b5
    move-wide/from16 v0, p4

    invoke-static {v4, v0, v1}, Lcom/google/android/apps/plus/content/EsPhotosData;->removePlusOneRow(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_ba
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_b0

    goto :goto_9a
.end method

.method public static updatePhotoShapeApproval(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJZ)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1522
    const-string v0, "EsPhotosData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1523
    const-string v0, "EsPhotosData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> updatePhotoShape photo id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", approved? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    :cond_2b
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1531
    :try_start_37
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1534
    const-string v0, "type=1"
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_17b

    .line 1538
    :try_start_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1539
    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "notification_count"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " FROM "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "photos_home"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " WHERE "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "type=1"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_6c
    .catchall {:try_start_3c .. :try_end_6c} :catchall_17b
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_3c .. :try_end_6c} :catch_154

    move-result-wide v0

    .line 1555
    :goto_6d
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_8c

    .line 1556
    :try_start_73
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1557
    const-string v6, "notification_count"

    const-wide/16 v7, 0x1

    sub-long/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1558
    const-string v0, "photos_home"

    const-string v1, "type=1"

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v5, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1562
    :cond_8c
    if-nez p6, :cond_e2

    .line 1563
    const-string v0, "shape_id=?"

    .line 1565
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1
    :try_end_9a
    .catchall {:try_start_73 .. :try_end_9a} :catchall_17b

    .line 1568
    :try_start_9a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1569
    const-string v5, "SELECT "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "subject_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " FROM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "photo_shape"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " WHERE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "shape_id=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_c9
    .catchall {:try_start_9a .. :try_end_c9} :catchall_17b
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_9a .. :try_end_c9} :catch_169

    move-result-wide v0

    .line 1583
    :goto_ca
    const/4 v5, 0x2

    :try_start_cb
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 1585
    const-string v0, "photos_of_user"

    const-string v1, "photo_of_user_id=? AND photo_id=?"

    invoke-virtual {v2, v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1590
    :cond_e2
    const-string v0, "shape_id=? AND status=4"

    .line 1592
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 1594
    if-eqz p6, :cond_173

    .line 1595
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1596
    const-string v5, "status"

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1597
    const-string v5, "photo_shape"

    const-string v6, "shape_id=? AND status=4"

    invoke-virtual {v2, v5, v1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1602
    :goto_106
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_109
    .catchall {:try_start_cb .. :try_end_109} :catchall_17b

    .line 1604
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1605
    const-string v0, "EsPhotosData"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 1606
    const-string v0, "EsPhotosData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UPDATE_SHAPE_APPROVAL], duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    :cond_131
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_SHAPES_BY_PHOTO_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1614
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1615
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTOS_HOME_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1616
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1617
    return-void

    .line 1547
    :catch_154
    move-exception v0

    .line 1549
    :try_start_155
    const-string v1, "EsPhotosData"

    const/4 v5, 0x4

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 1550
    const-string v1, "EsPhotosData"

    const-string v5, "Notification count not found; have you sync\'d?"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1552
    :cond_165
    const-wide/16 v0, -0x1

    goto/16 :goto_6d

    .line 1577
    :catch_169
    move-exception v0

    .line 1579
    const-string v1, "EsPhotosData"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1580
    const-wide/16 v0, 0x0

    goto/16 :goto_ca

    .line 1599
    :cond_173
    const-string v1, "photo_shape"

    const-string v5, "shape_id=? AND status=4"

    invoke-virtual {v2, v1, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_17a
    .catchall {:try_start_155 .. :try_end_17a} :catchall_17b

    goto :goto_106

    .line 1604
    :catchall_17b
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1605
    const-string v1, "EsPhotosData"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1a4

    .line 1606
    const-string v1, "EsPhotosData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[UPDATE_SHAPE_APPROVAL], duration: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    :cond_1a4
    throw v0
.end method

.method public static updatePhotosHome(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 21
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter "syncState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;",
            ">;",
            "Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 958
    .local p2, sections:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 960
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 962
    .local v8, startTime:J
    :try_start_c
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 963
    .local v11, values:Landroid/content/ContentValues;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 964
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1c8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    .line 965
    .local v6, section:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;
    const-string v12, "EsPhotosData"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_8b

    .line 966
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->getType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    move-result-object v7

    .line 967
    .local v7, sectionType:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;
    const-string v12, "EsPhotosData"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ">> updatePhotosHome type: type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->getNumber()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", num photos: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->getTotalCount()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", num notifications: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->getNotificationCount()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", timestamp: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->getTimestampMsec()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    .end local v7           #sectionType:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;
    :cond_8b
    if-eqz p3, :cond_90

    .line 975
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->incrementCount()V

    .line 978
    :cond_90
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->getType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->getNumber()I

    move-result v10

    .line 979
    .local v10, type:I
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 980
    const-string v12, "type"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 981
    const/4 v12, 0x3

    if-ne v10, v12, :cond_123

    .line 983
    const-string v12, "photo_count"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 987
    :goto_ac
    const-string v12, "timestamp"

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->getTimestampMsec()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 988
    const-string v12, "notification_count"

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->getNotificationCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 991
    invoke-static {v0, v10}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotosHomeRowId(Landroid/database/sqlite/SQLiteDatabase;I)J

    move-result-wide v4

    .line 992
    .local v4, rowId:J
    const-wide/16 v12, -0x1

    cmp-long v12, v4, v12

    if-eqz v12, :cond_132

    .line 993
    const-string v12, "photos_home"

    const-string v13, "type=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v0, v12, v11, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1000
    :goto_e1
    const-wide/16 v12, -0x1

    cmp-long v12, v4, v12

    if-nez v12, :cond_13b

    .line 1002
    const-string v12, "EsPhotosData"

    const/4 v13, 0x5

    invoke-static {v12, v13}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 1003
    const-string v12, "EsPhotosData"

    const-string v13, "Could not find or create photos home row"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catchall {:try_start_c .. :try_end_f7} :catchall_f9

    goto/16 :goto_18

    .line 1033
    .end local v4           #rowId:J
    .end local v6           #section:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;
    .end local v10           #type:I
    .end local v11           #values:Landroid/content/ContentValues;
    :catchall_f9
    move-exception v12

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1034
    const-string v13, "EsPhotosData"

    const/4 v14, 0x4

    invoke-static {v13, v14}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_122

    .line 1035
    const-string v13, "EsPhotosData"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[PHOTOS_HOME], duration: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_122
    throw v12

    .line 985
    .restart local v6       #section:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;
    .restart local v10       #type:I
    .restart local v11       #values:Landroid/content/ContentValues;
    :cond_123
    :try_start_123
    const-string v12, "photo_count"

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->getTotalCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_ac

    .line 997
    .restart local v4       #rowId:J
    :cond_132
    const-string v12, "photos_home"

    const/4 v13, 0x0

    const/4 v14, 0x4

    invoke-virtual {v0, v12, v13, v11, v14}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    goto :goto_e1

    .line 1009
    :cond_13b
    const-string v12, "photos_home_cover"

    const-string v13, "photos_home_key=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v0, v12, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1014
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->getCoverList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_154
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 1015
    .local v3, photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    const-string v12, "EsPhotosData"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_171

    .line 1016
    const/4 v12, 0x0

    invoke-static {v3, v12}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    .line 1018
    :cond_171
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 1019
    const-string v12, "photos_home_key"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1020
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasId()Z

    move-result v12

    if-eqz v12, :cond_190

    .line 1021
    const-string v12, "photo_id"

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getId()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1023
    :cond_190
    const-string v12, "url"

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    const-string v12, "width"

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getWidth()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1025
    const-string v12, "height"

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getHeight()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1026
    const-string v12, "size"

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getSize()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1027
    const-string v12, "photos_home_cover"

    const/4 v13, 0x0

    const/4 v14, 0x4

    invoke-virtual {v0, v12, v13, v11, v14}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_154

    .line 1031
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .end local v4           #rowId:J
    .end local v6           #section:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;
    .end local v10           #type:I
    :cond_1c8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1cb
    .catchall {:try_start_123 .. :try_end_1cb} :catchall_f9

    .line 1033
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1034
    const-string v12, "EsPhotosData"

    const/4 v13, 0x4

    invoke-static {v12, v13}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_1f3

    .line 1035
    const-string v12, "EsPhotosData"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[PHOTOS_HOME], duration: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_1f3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/google/android/apps/plus/content/EsProvider;->PHOTOS_HOME_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1042
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_OF_USER_ID_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1043
    return-void
.end method

.method private static writeToLog(Ljava/lang/String;)V
    .registers 6
    .parameter "logEntry"

    .prologue
    const/16 v4, 0xa

    .line 2829
    const/4 v1, 0x0

    .line 2830
    .local v1, lastIndex:I
    const/4 v2, 0x0

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2831
    .local v0, index:I
    :goto_8
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1b

    .line 2832
    const-string v2, "EsPhotosData"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    add-int/lit8 v1, v0, 0x1

    .line 2834
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_8

    .line 2836
    :cond_1b
    const-string v2, "EsPhotosData"

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    return-void
.end method
