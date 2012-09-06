.class public Lcom/google/android/apps/plus/content/EsPhotosData;
.super Ljava/lang/Object;
.source "EsPhotosData.java"


# static fields
.field private static final FINGERPRINT_STREAM_PREFIX_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    const-string v0, "cs_01_"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/content/EsPhotosData;->FINGERPRINT_STREAM_PREFIX_LENGTH:I

    return-void
.end method

.method static cleanupData(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 29
    .parameter "db"
    .parameter "account"

    .prologue
    .line 2101
    const-string v24, "SELECT count(*) FROM photo"

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v13

    .line 2103
    .local v13, origPhotoCount:J
    const-string v24, "SELECT count(*) FROM album"

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v11

    .line 2106
    .local v11, origAlbumCount:J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v10

    .line 2109
    .local v10, gaiaId:Ljava/lang/String;
    const-string v23, "photo_of_user_id!=?"

    .line 2110
    .local v23, photosOfUserWhere:Ljava/lang/String;
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    aput-object v10, v22, v24

    .line 2111
    .local v22, photosOfUserArgs:[Ljava/lang/String;
    const-string v24, "photos_of_user"

    const-string v25, "photo_of_user_id!=?"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2114
    const-string v24, "photos_in_circle"

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2117
    const-string v20, "user_id!=?"

    .line 2118
    .local v20, photoStreamWhere:Ljava/lang/String;
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v24, 0x0

    aput-object v10, v19, v24

    .line 2119
    .local v19, photoStreamArgs:[Ljava/lang/String;
    const-string v24, "photos_in_stream"

    const-string v25, "user_id!=?"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2122
    const-string v17, "photo_id IN ( SELECT photo_id FROM photos_by_album_view WHERE owner_id!=? )"

    .line 2126
    .local v17, photoAlbumWhere:Ljava/lang/String;
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v24, 0x0

    aput-object v10, v16, v24

    .line 2127
    .local v16, photoAlbumArgs:[Ljava/lang/String;
    const-string v24, "photos_in_album"

    const-string v25, "photo_id IN ( SELECT photo_id FROM photos_by_album_view WHERE owner_id!=? )"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2130
    const-string v15, "activity_id NOT IN ( SELECT activity_id FROM activity_streams )"

    .line 2133
    .local v15, photoActivityWhere:Ljava/lang/String;
    const-string v24, "photos_in_activity"

    const-string v25, "activity_id NOT IN ( SELECT activity_id FROM activity_streams )"

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2136
    const-string v18, "event_id NOT IN ( SELECT event_id FROM events )"

    .line 2139
    .local v18, photoEventWhere:Ljava/lang/String;
    const-string v24, "photos_in_event"

    const-string v25, "event_id NOT IN ( SELECT event_id FROM events )"

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2142
    const-string v21, "photo_id NOT IN ( SELECT photo_id FROM photos_in_activity) AND photo_id NOT IN ( SELECT photo_id FROM photos_in_album) AND photo_id NOT IN ( SELECT photo_id FROM photos_in_circle) AND photo_id NOT IN ( SELECT photo_id FROM photos_in_event) AND photo_id NOT IN ( SELECT photo_id FROM photos_in_stream) AND photo_id NOT IN ( SELECT photo_id FROM photos_of_user)"

    .line 2161
    .local v21, photoWhere:Ljava/lang/String;
    const-string v24, "photo"

    const-string v25, "photo_id NOT IN ( SELECT photo_id FROM photos_in_activity) AND photo_id NOT IN ( SELECT photo_id FROM photos_in_album) AND photo_id NOT IN ( SELECT photo_id FROM photos_in_circle) AND photo_id NOT IN ( SELECT photo_id FROM photos_in_event) AND photo_id NOT IN ( SELECT photo_id FROM photos_in_stream) AND photo_id NOT IN ( SELECT photo_id FROM photos_of_user)"

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2164
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v4, v0, [Ljava/lang/String;

    const/16 v24, 0x0

    aput-object v10, v4, v24

    .line 2165
    .local v4, albumArgs:[Ljava/lang/String;
    const-string v5, "owner_id!=? AND album_id NOT IN (SELECT DISTINCT album_id FROM photo)"

    .line 2171
    .local v5, albumWhere:Ljava/lang/String;
    const-string v24, "album"

    const-string v25, "owner_id!=? AND album_id NOT IN (SELECT DISTINCT album_id FROM photo)"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2173
    const-string v24, "SELECT count(*) FROM photo"

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v8

    .line 2175
    .local v8, finalPhotoCount:J
    const-string v24, "SELECT count(*) FROM album"

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    .line 2178
    .local v6, finalAlbumCount:J
    const-string v24, "EsPhotosData"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_14c

    .line 2179
    const-string v24, "EsPhotosData"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "cleanupData removed dead photos; was: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", now: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    const-string v24, "EsPhotosData"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "cleanupData removed dead albums; was: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", now: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    :cond_14c
    return-void
.end method

.method public static deleteCirclePhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 18
    .parameter "context"
    .parameter "account"
    .parameter "circleId"

    .prologue
    .line 1191
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1193
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1195
    .local v7, startTime:J
    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/google/android/apps/plus/content/EsPhotosData;->getCurrentCircleMap(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 1197
    .local v1, circleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :try_start_12
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1199
    if-nez p2, :cond_a3

    const-string v10, "circle_id IS NULL"

    .line 1201
    .local v10, whereClause:Ljava/lang/String;
    :goto_19
    if-nez p2, :cond_a7

    const/4 v9, 0x0

    .line 1204
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

    .line 1205
    .local v5, photoId:J
    const-string v11, "EsPhotosData"

    const/4 v12, 0x3

    invoke-static {v11, v12}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_55

    .line 1206
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

    .line 1208
    :cond_55
    const-string v11, "photos_in_circle"

    invoke-virtual {v2, v11, v10, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_12 .. :try_end_5a} :catchall_5b

    goto :goto_24

    .line 1213
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #photoId:J
    .end local v9           #whereArgs:[Ljava/lang/String;
    .end local v10           #whereClause:Ljava/lang/String;
    :catchall_5b
    move-exception v11

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1214
    const-string v12, "EsPhotosData"

    const/4 v13, 0x4

    invoke-static {v12, v13}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_a2

    .line 1215
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

    :cond_a2
    throw v11

    .line 1199
    .restart local p2
    :cond_a3
    :try_start_a3
    const-string v10, "circle_id=?"

    goto/16 :goto_19

    .line 1201
    .restart local v10       #whereClause:Ljava/lang/String;
    :cond_a7
    const/4 v11, 0x1

    new-array v9, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p2, v9, v11

    goto/16 :goto_1c

    .line 1211
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v9       #whereArgs:[Ljava/lang/String;
    :cond_af
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b2
    .catchall {:try_start_a3 .. :try_end_b2} :catchall_5b

    .line 1213
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1214
    const-string v11, "EsPhotosData"

    const/4 v12, 0x4

    invoke-static {v11, v12}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_f6

    .line 1215
    const-string v12, "EsPhotosData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[REMOVE_CIRCLE_PHOTOS], circle ID: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez p2, :cond_109

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

    .line 1222
    :cond_f6
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v11

    if-lez v11, :cond_108

    .line 1224
    if-nez p2, :cond_10c

    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_NULL_CIRCLE_ID_URI:Landroid/net/Uri;

    .line 1227
    .local v4, notifyUri:Landroid/net/Uri;
    :goto_100
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v4, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1229
    .end local v4           #notifyUri:Landroid/net/Uri;
    :cond_108
    return-void

    :cond_109
    move-object/from16 v11, p2

    .line 1215
    goto :goto_cf

    .line 1224
    :cond_10c
    sget-object v11, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_CIRCLE_ID_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    goto :goto_100
.end method

.method public static deletePhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;J)V
    .registers 27
    .parameter "context"
    .parameter "account"
    .parameter "ownerGaiaId"
    .parameter "photoId"

    .prologue
    .line 1986
    const-string v17, "EsPhotosData"

    const/16 v18, 0x3

    invoke-static/range {v17 .. v18}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_26

    .line 1987
    const-string v17, "EsPhotosData"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ">> deletePhoto photo id: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    :cond_26
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 1993
    .local v7, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1996
    .local v14, startTime:J
    :try_start_32
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1999
    const-string v12, "photo_id=?"

    .line 2000
    .local v12, photoWhere:Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17
    :try_end_45
    .catchall {:try_start_32 .. :try_end_45} :catchall_162

    .line 2003
    .local v9, photoArgs:[Ljava/lang/String;
    :try_start_45
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 2004
    .local v13, query:Ljava/lang/StringBuilder;
    const-string v17, "SELECT "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "album_id"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " FROM "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "photo"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " WHERE "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "photo_id=?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2011
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v7, v0, v9}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_78
    .catchall {:try_start_45 .. :try_end_78} :catchall_162
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_45 .. :try_end_78} :catch_129

    move-result-wide v4

    .line 2018
    .end local v13           #query:Ljava/lang/StringBuilder;
    .local v4, albumId:J
    :goto_79
    :try_start_79
    const-string v6, "album_id=?"

    .line 2019
    .local v6, albumWhere:Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v3, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v3, v17
    :try_end_89
    .catchall {:try_start_79 .. :try_end_89} :catchall_162

    .line 2022
    .local v3, albumArgs:[Ljava/lang/String;
    :try_start_89
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 2023
    .restart local v13       #query:Ljava/lang/StringBuilder;
    const-string v17, "SELECT "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "photo_count"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " FROM "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "album"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " WHERE "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "album_id=?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2030
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v7, v0, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_bc
    .catchall {:try_start_89 .. :try_end_bc} :catchall_162
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_89 .. :try_end_bc} :catch_135

    move-result-wide v10

    .line 2037
    .end local v13           #query:Ljava/lang/StringBuilder;
    .local v10, photoCount:J
    :goto_bd
    const-wide/16 v17, 0x0

    cmp-long v17, v10, v17

    if-lez v17, :cond_d4

    .line 2038
    const-wide/16 v17, 0x1

    cmp-long v17, v10, v17

    if-nez v17, :cond_141

    .line 2040
    :try_start_c9
    const-string v17, "album"

    const-string v18, "album_id=?"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2050
    :cond_d4
    :goto_d4
    const-string v17, "photo"

    const-string v18, "photo_id=?"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2053
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_f4
    .catchall {:try_start_c9 .. :try_end_f4} :catchall_162

    .line 2055
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2056
    const-string v17, "EsPhotosData"

    const/16 v18, 0x4

    invoke-static/range {v17 .. v18}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_11d

    .line 2057
    const-string v17, "EsPhotosData"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[DELETE_PHOTO], duration: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v14, v15}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    :cond_11d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_URI:Landroid/net/Uri;

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2064
    return-void

    .line 2012
    .end local v3           #albumArgs:[Ljava/lang/String;
    .end local v4           #albumId:J
    .end local v6           #albumWhere:Ljava/lang/String;
    .end local v10           #photoCount:J
    :catch_129
    move-exception v8

    .line 2014
    .local v8, e:Landroid/database/sqlite/SQLiteDoneException;
    :try_start_12a
    const-string v17, "EsPhotosData"

    const-string v18, "Album ID not found; is this a user album?"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    const-wide/16 v4, 0x0

    .restart local v4       #albumId:J
    goto/16 :goto_79

    .line 2031
    .end local v8           #e:Landroid/database/sqlite/SQLiteDoneException;
    .restart local v3       #albumArgs:[Ljava/lang/String;
    .restart local v6       #albumWhere:Ljava/lang/String;
    :catch_135
    move-exception v8

    .line 2033
    .restart local v8       #e:Landroid/database/sqlite/SQLiteDoneException;
    const-string v17, "EsPhotosData"

    const-string v18, "Photo count not found; is this a user album?"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    const-wide/16 v10, -0x1

    .restart local v10       #photoCount:J
    goto/16 :goto_bd

    .line 2043
    .end local v8           #e:Landroid/database/sqlite/SQLiteDoneException;
    :cond_141
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 2044
    .local v16, values:Landroid/content/ContentValues;
    const-string v17, "photo_count"

    const-wide/16 v18, 0x1

    sub-long v18, v10, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2045
    const-string v17, "album"

    const-string v18, "album_id=?"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_160
    .catchall {:try_start_12a .. :try_end_160} :catchall_162

    goto/16 :goto_d4

    .line 2055
    .end local v3           #albumArgs:[Ljava/lang/String;
    .end local v4           #albumId:J
    .end local v6           #albumWhere:Ljava/lang/String;
    .end local v9           #photoArgs:[Ljava/lang/String;
    .end local v10           #photoCount:J
    .end local v12           #photoWhere:Ljava/lang/String;
    .end local v16           #values:Landroid/content/ContentValues;
    :catchall_162
    move-exception v17

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2056
    const-string v18, "EsPhotosData"

    const/16 v19, 0x4

    invoke-static/range {v18 .. v19}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_18c

    .line 2057
    const-string v18, "EsPhotosData"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[DELETE_PHOTO], duration: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v14, v15}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18c
    throw v17
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
    .line 1601
    .local p4, commentIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1603
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1606
    .local v9, startTime:J
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v11, 0x100

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1607
    .local v8, sb:Ljava/lang/StringBuilder;
    const-string v11, "comment_id"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " IN("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1608
    const/4 v4, 0x1

    .line 1609
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

    .line 1610
    .local v2, commentId:Ljava/lang/String;
    const-string v11, "EsPhotosData"

    const/4 v12, 0x3

    invoke-static {v11, v12}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_5c

    .line 1611
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

    .line 1614
    :cond_5c
    if-eqz v4, :cond_6f

    .line 1615
    const/4 v4, 0x0

    .line 1619
    :goto_5f
    const/16 v11, 0x27

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x27

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 1617
    :cond_6f
    const/16 v11, 0x2c

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5f

    .line 1622
    .end local v2           #commentId:Ljava/lang/String;
    :cond_75
    const/16 v11, 0x29

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1625
    :try_start_7a
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1628
    const-string v11, "photo_comment"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v3, v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1631
    .local v7, removeCount:I
    neg-int v11, v7

    move-wide/from16 v0, p2

    invoke-static {v3, v0, v1, v11}, Lcom/google/android/apps/plus/content/EsPhotosData;->updateCommentCount(Landroid/database/sqlite/SQLiteDatabase;JI)V

    .line 1633
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_91
    .catchall {:try_start_7a .. :try_end_91} :catchall_d4

    .line 1635
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1636
    const-string v11, "EsPhotosData"

    const/4 v12, 0x4

    invoke-static {v11, v12}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_b9

    .line 1637
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

    .line 1643
    :cond_b9
    sget-object v11, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_BY_PHOTO_ID_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v11, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1645
    .local v6, notifyUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v6, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1646
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_URI:Landroid/net/Uri;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1647
    return-void

    .line 1635
    .end local v6           #notifyUri:Landroid/net/Uri;
    .end local v7           #removeCount:I
    :catchall_d4
    move-exception v11

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1636
    const-string v12, "EsPhotosData"

    const/4 v13, 0x4

    invoke-static {v12, v13}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_fd

    .line 1637
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

    :cond_fd
    throw v11
.end method

.method private static getActionStateString(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Ljava/lang/String;
    .registers 4
    .parameter "state"

    .prologue
    .line 3086
    if-nez p0, :cond_5

    .line 3087
    const-string v1, ""

    .line 3102
    :goto_4
    return-object v1

    .line 3089
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3090
    .local v0, stateBuffer:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getViewerCanComment()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3091
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_6b

    const-string v1, ""

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "COMMENT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3093
    :cond_21
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getViewerCanTag()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 3094
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, ""

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TAG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3096
    :cond_38
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getViewerCanEdit()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 3097
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_71

    const-string v1, ""

    :goto_46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EDIT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3099
    :cond_4f
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getViewerCanApprove()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 3100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_74

    const-string v1, ""

    :goto_5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "APPROVE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3102
    :cond_66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 3091
    :cond_6b
    const-string v1, "|"

    goto :goto_18

    .line 3094
    :cond_6e
    const-string v1, "|"

    goto :goto_2f

    .line 3097
    :cond_71
    const-string v1, "|"

    goto :goto_46

    .line 3100
    :cond_74
    const-string v1, "|"

    goto :goto_5d
.end method

.method private static getAlbumContentValues(JLcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Z)Landroid/content/ContentValues;
    .registers 9
    .parameter "albumId"
    .parameter "album"
    .parameter "isActivity"

    .prologue
    .line 2301
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2302
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "album_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2303
    const-string v2, "is_activity"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2304
    const-string v2, "owner_id"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2305
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2306
    const-string v2, "title"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    :cond_2f
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasTimestampMsec()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 2309
    const-string v2, "timestamp"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getTimestampMsec()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2311
    :cond_42
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasStreamId()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 2312
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getStreamId()Ljava/lang/String;

    move-result-object v0

    .line 2313
    .local v0, streamId:Ljava/lang/String;
    const-string v2, "stream_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2323
    const-string v2, "updates"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 2324
    const-string v2, "sort_order"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2331
    :cond_63
    :goto_63
    const-string v2, "photo_count"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2338
    .end local v0           #streamId:Ljava/lang/String;
    :cond_68
    :goto_68
    return-object v1

    .line 2325
    .restart local v0       #streamId:Ljava/lang/String;
    :cond_69
    const-string v2, "bunch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 2326
    const-string v2, "sort_order"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_63

    .line 2327
    :cond_7c
    const-string v2, "profile_photos"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 2328
    const-string v2, "sort_order"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_63

    .line 2333
    .end local v0           #streamId:Ljava/lang/String;
    :cond_8f
    const-string v2, "sort_order"

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2334
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasTotalPhotos()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 2335
    const-string v2, "photo_count"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getTotalPhotos()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_68
.end method

.method private static getAlbumOutput(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;I)Ljava/lang/String;
    .registers 10
    .parameter "album"
    .parameter "indent"

    .prologue
    .line 3360
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3361
    .local v4, sb:Ljava/lang/StringBuilder;
    if-lez p1, :cond_12

    .line 3362
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, p1, :cond_12

    .line 3363
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3362
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3366
    .end local v0           #i:I
    :cond_12
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3367
    .local v2, indentString:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3369
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ALBUM ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "owner: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getTotalPhotos()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3380
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasStreamId()Z

    move-result v5

    if-eqz v5, :cond_82

    .line 3381
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "       "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "streamId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getStreamId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3388
    :cond_82
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasTitle()Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 3389
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "       "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "title: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3396
    :cond_ab
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getPreviewCount()I

    move-result v5

    if-lez v5, :cond_d5

    .line 3397
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getPreviewList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ee

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 3398
    .local v3, photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x2

    invoke-static {v3, v6}, Lcom/google/android/apps/plus/content/EsPhotosData;->getCoverPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b9

    .line 3401
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    :cond_d5
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasCover()Z

    move-result v5

    if-eqz v5, :cond_ee

    .line 3402
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getCover()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v6

    add-int/lit8 v7, p1, 0x2

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/content/EsPhotosData;->getCoverPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3405
    :cond_ee
    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3407
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static getAlbumRowId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/Long;
    .registers 12
    .parameter "db"
    .parameter "albumId"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2884
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

    move-result-object v8

    .line 2889
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_1c
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_2f

    move-result-object v5

    .line 2891
    :cond_2b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v5

    :catchall_2f
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

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

    .line 2897
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

    .line 2902
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

    .line 2904
    :cond_27
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v5

    :catchall_2b
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getCommentContentValues(Lcom/google/wireless/tacotruck/proto/Data$Comment;J)Landroid/content/ContentValues;
    .registers 7
    .parameter "comment"
    .parameter "photoId"

    .prologue
    .line 2406
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2407
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "photo_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2408
    const-string v1, "comment_id"

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    const-string v1, "author_id"

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getFocusObfuscatedAuthorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasContentHtml()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2411
    const-string v1, "content"

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getContentHtml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2413
    :cond_2f
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasCreationTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 2414
    const-string v1, "create_time"

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getCreationTimestampMsec()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2416
    :cond_42
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasTruncated()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 2417
    const-string v1, "truncated"

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getTruncated()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2419
    :cond_55
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasLastUpdateTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 2420
    const-string v1, "update_time"

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getLastUpdateTimestampMsec()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2422
    :cond_68
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasPlusoneData()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 2423
    const-string v1, "plusone_data"

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2425
    :cond_7b
    return-object v0
.end method

.method private static getCoverPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;
    .registers 14
    .parameter "photo"
    .parameter "indent"

    .prologue
    const-wide/16 v7, 0x0

    .line 3267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3268
    .local v4, sb:Ljava/lang/StringBuilder;
    if-lez p1, :cond_14

    .line 3269
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, p1, :cond_14

    .line 3270
    const/16 v9, 0x20

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3269
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3273
    .end local v1           #i:I
    :cond_14
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3274
    .local v3, indentString:Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3276
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasTimestampMsec()Z

    move-result v9

    if-eqz v9, :cond_83

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getTimestampMsec()J

    move-result-wide v5

    .line 3277
    .local v5, timestamp:J
    :goto_26
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "COVER PHOTO ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "owner: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3283
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasFocusObfuscatedOwnerId()Z

    move-result v9

    if-eqz v9, :cond_85

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v9

    :goto_53
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3285
    cmp-long v7, v5, v7

    if-eqz v7, :cond_74

    .line 3286
    const-string v2, "MMM dd, yyyy h:mmaa"

    .line 3287
    .local v2, inFormat:Ljava/lang/CharSequence;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3288
    .local v0, dateString:Ljava/lang/CharSequence;
    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "date: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3292
    .end local v0           #dateString:Ljava/lang/CharSequence;
    .end local v2           #inFormat:Ljava/lang/CharSequence;
    :cond_74
    const-string v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3293
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3295
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .end local v5           #timestamp:J
    :cond_83
    move-wide v5, v7

    .line 3276
    goto :goto_26

    .line 3283
    .restart local v5       #timestamp:J
    :cond_85
    const-string v9, "N/A"

    goto :goto_53
.end method

.method private static getCurrentAlbumMap(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Ljava/util/HashMap;
    .registers 14
    .parameter "db"
    .parameter "albumId"
    .parameter "gaiaId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J",
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
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2964
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 2965
    .local v9, returnMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-string v1, "photos_by_album_view"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "photo_id"

    aput-object v0, v2, v6

    const-string v0, "entity_version"

    aput-object v0, v2, v7

    const-string v3, "owner_id=? AND album_id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p3, v4, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2972
    .local v8, cursor:Landroid/database/Cursor;
    :goto_28
    :try_start_28
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2973
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catchall {:try_start_28 .. :try_end_43} :catchall_44

    goto :goto_28

    .line 2976
    :catchall_44
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_49
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2978
    return-object v9
.end method

.method private static getCurrentAlbumMap(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 16
    .parameter "db"
    .parameter "gaiaId"
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
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 2940
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 2941
    .local v11, returnMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-string v1, "album"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v0, "album_id"

    aput-object v0, v2, v4

    const-string v3, "owner_id=? AND title IS NOT NULL"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2947
    .local v10, cursor:Landroid/database/Cursor;
    :goto_22
    :try_start_22
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2948
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 2949
    .local v12, rowId:J
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2950
    .local v8, albumId:J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_22 .. :try_end_3d} :catchall_3e

    goto :goto_22

    .line 2953
    .end local v8           #albumId:J
    .end local v12           #rowId:J
    :catchall_3e
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_43
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2955
    return-object v11
.end method

.method private static getCurrentCircleMap(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 16
    .parameter "db"
    .parameter "circleId"
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
    .line 2987
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 2989
    .local v11, returnMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-nez p1, :cond_42

    .line 2990
    const-string v1, "photos_by_circle_view"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "photo_id"

    aput-object v3, v2, v0

    const-string v3, "circle_id IS NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3001
    .local v8, cursor:Landroid/database/Cursor;
    :goto_21
    :try_start_21
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 3002
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 3003
    .local v9, photoId:J
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 3004
    .local v12, rowId:J
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_21 .. :try_end_3c} :catchall_3d

    goto :goto_21

    .line 3007
    .end local v9           #photoId:J
    .end local v12           #rowId:J
    :catchall_3d
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2995
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_42
    const-string v1, "photos_by_circle_view"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "photo_id"

    aput-object v3, v2, v0

    const-string v3, "circle_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .restart local v8       #cursor:Landroid/database/Cursor;
    goto :goto_21

    .line 3007
    :cond_62
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3009
    return-object v11
.end method

.method private static getDeltaTime(J)Ljava/lang/String;
    .registers 9
    .parameter "startTime"

    .prologue
    const-wide/16 v5, 0x3e8

    .line 3412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3413
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, p0

    .line 3415
    .local v0, deltaTime:J
    div-long v3, v0, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    rem-long v4, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3420
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getFingerPrint(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)[B
    .registers 4
    .parameter "photo"

    .prologue
    .line 3112
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getStreamIdCount()I

    move-result v2

    if-lez v2, :cond_2d

    .line 3113
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getStreamIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3114
    .local v1, stream:Ljava/lang/String;
    const-string v2, "cs_01_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3115
    sget v2, Lcom/google/android/apps/plus/content/EsPhotosData;->FINGERPRINT_STREAM_PREFIX_LENGTH:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsPhotosData;->hexToBytes(Ljava/lang/CharSequence;)[B

    move-result-object v2

    .line 3119
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #stream:Ljava/lang/String;
    :goto_2c
    return-object v2

    :cond_2d
    const/4 v2, 0x0

    goto :goto_2c
.end method

.method public static getImageDataFromCloud(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)[B
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "photoId"

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 353
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 356
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "photo"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "url"

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

    .line 361
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_27

    .line 379
    :goto_26
    return-object v5

    .line 366
    :cond_27
    :try_start_27
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 367
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_49

    .line 368
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 369
    .local v11, url:Ljava/lang/String;
    new-instance v10, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;

    invoke-direct {v10, p0, p1, v11}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 371
    .local v10, op:Lcom/google/android/apps/plus/api/DownloadPhotoOperation;
    invoke-virtual {v10}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->start()V

    .line 372
    invoke-virtual {v10}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->getBytes()[B
    :try_end_44
    .catchall {:try_start_27 .. :try_end_44} :catchall_4d

    move-result-object v5

    .line 376
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_26

    .end local v10           #op:Lcom/google/android/apps/plus/api/DownloadPhotoOperation;
    .end local v11           #url:Ljava/lang/String;
    :cond_49
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_26

    :catchall_4d
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private static getMobileShapeOutput(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;I)Ljava/lang/String;
    .registers 13
    .parameter "shape"
    .parameter "indent"

    .prologue
    const/4 v10, 0x0

    .line 3320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3321
    .local v4, sb:Ljava/lang/StringBuilder;
    if-lez p1, :cond_13

    .line 3322
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    if-ge v2, p1, :cond_13

    .line 3323
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3322
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 3326
    .end local v2           #i:I
    :cond_13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3327
    .local v3, indentString:Ljava/lang/String;
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3329
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getNormalizedBounds()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v1

    .line 3330
    .local v1, bounds:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SHAPE ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%1.3f, %1.3f, %1.3f, %1.3f"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getLeft()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getTop()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getRight()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getBottom()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "subjectId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getFocusObfuscatedSubjectId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getStatus()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3343
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsPhotosData;->getActionStateString(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Ljava/lang/String;

    move-result-object v0

    .line 3344
    .local v0, actionState:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c4

    .line 3345
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "       "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3353
    :cond_c4
    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3355
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static getPhotoContentValues(JLcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Landroid/content/ContentValues;
    .registers 11
    .parameter "albumId"
    .parameter "photo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2344
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2345
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "photo_id"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2346
    const-string v5, "plus_one_key"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2347
    const-string v5, "album_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2348
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasUrl()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 2349
    const-string v5, "url"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2351
    :cond_34
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasTitle()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 2352
    const-string v5, "title"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2354
    :cond_43
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasDescription()Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 2355
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 2356
    .local v2, description:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5c

    .line 2358
    const-string v5, "description"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    .end local v2           #description:Ljava/lang/String;
    :cond_5c
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasPhotoActionState()Z

    move-result v5

    if-eqz v5, :cond_73

    .line 2362
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    .line 2363
    .local v0, actionState:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    const-string v5, "action_state"

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPhotoActionState;->getFlags(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2367
    .end local v0           #actionState:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    :cond_73
    const-string v5, "comment_count"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getTotalCommentCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2368
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasFocusObfuscatedOwnerId()Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 2369
    const-string v5, "owner_id"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2371
    :cond_8f
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasWidth()Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 2372
    const-string v5, "width"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2374
    :cond_a2
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasHeight()Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 2375
    const-string v5, "height"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2377
    :cond_b5
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getActivityIdCount()I

    move-result v5

    if-lez v5, :cond_c8

    .line 2378
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getActivityIdList()Ljava/util/List;

    move-result-object v1

    .line 2379
    .local v1, activityIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "activities"

    invoke-static {v1}, Lcom/google/android/apps/plus/content/DbSerializer;->serializeShortStringList(Ljava/util/List;)[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2382
    .end local v1           #activityIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_c8
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasTimestampMsec()Z

    move-result v5

    if-eqz v5, :cond_db

    .line 2383
    const-string v5, "timestamp"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getTimestampMsec()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2385
    :cond_db
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasEntityVersion()Z

    move-result v5

    if-eqz v5, :cond_ee

    .line 2386
    const-string v5, "entity_version"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getEntityVersion()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2388
    :cond_ee
    invoke-static {p2}, Lcom/google/android/apps/plus/content/EsPhotosData;->getFingerPrint(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)[B

    move-result-object v3

    .line 2389
    .local v3, fingerprint:[B
    if-eqz v3, :cond_f9

    .line 2390
    const-string v5, "fingerprint"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2392
    :cond_f9
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasVideoData()Z

    move-result v5

    if-eqz v5, :cond_10c

    .line 2393
    const-string v5, "video_data"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getVideoData()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2395
    :cond_10c
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasUploadStatus()Z

    move-result v5

    if-eqz v5, :cond_123

    .line 2396
    const-string v5, "upload_status"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUploadStatus()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->getNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2398
    :cond_123
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasIsDownloadable()Z

    move-result v5

    if-eqz v5, :cond_136

    .line 2399
    const-string v5, "downloadable"

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getIsDownloadable()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2401
    :cond_136
    return-object v4
.end method

.method private static getPhotoEntityMap(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/HashMap;
    .registers 18
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3019
    .local p1, photos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    .line 3020
    .local v10, numPhotos:I
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 3023
    .local v8, entityMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-nez v10, :cond_c

    .line 3056
    :cond_b
    :goto_b
    return-object v8

    .line 3027
    :cond_c
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 3028
    .local v13, photoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 3029
    .local v15, sb:Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .line 3031
    .local v12, photoAdded:Z
    const-string v0, "photo_id IN("

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3032
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 3033
    .local v11, photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasId()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3034
    const-string v0, "?,"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3035
    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3036
    const/4 v12, 0x1

    goto :goto_20

    .line 3039
    .end local v11           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    :cond_44
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3040
    const-string v0, ")"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3042
    if-eqz v12, :cond_b

    .line 3047
    const-string v1, "photo_view"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "photo_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "entity_version"

    aput-object v3, v2, v0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 3051
    .local v14, rowIdCursor:Landroid/database/Cursor;
    :goto_79
    :try_start_79
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 3052
    const/4 v0, 0x0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_94
    .catchall {:try_start_79 .. :try_end_94} :catchall_95

    goto :goto_79

    .line 3056
    :catchall_95
    move-exception v0

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_9a
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_b
.end method

.method private static getPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;
    .registers 19
    .parameter "photo"
    .parameter "indent"

    .prologue
    .line 3184
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 3185
    .local v8, sb:Ljava/lang/StringBuilder;
    if-lez p1, :cond_14

    .line 3186
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    move/from16 v0, p1

    if-ge v3, v0, :cond_14

    .line 3187
    const/16 v14, 0x20

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3186
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 3190
    .end local v3           #i:I
    :cond_14
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3191
    .local v6, indentString:Ljava/lang/String;
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3193
    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasPlusoneData()Z

    move-result v14

    if-eqz v14, :cond_18b

    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v7

    .line 3194
    .local v7, plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :goto_26
    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasVideoData()Z

    move-result v14

    if-eqz v14, :cond_18e

    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getVideoData()Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v13

    .line 3195
    .local v13, videoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    :goto_30
    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasTimestampMsec()Z

    move-result v14

    if-eqz v14, :cond_191

    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getTimestampMsec()J

    move-result-wide v11

    .line 3196
    .local v11, timestamp:J
    :goto_3a
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "PHOTO ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "id: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getId()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "owner: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3202
    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasFocusObfuscatedOwnerId()Z

    move-result v14

    if-eqz v14, :cond_195

    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getFocusObfuscatedOwnerId()Ljava/lang/String;

    move-result-object v14

    :goto_67
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3204
    const-string v14, ", "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "version: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getEntityVersion()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3207
    const-wide/16 v14, 0x0

    cmp-long v14, v11, v14

    if-eqz v14, :cond_9d

    .line 3208
    const-string v5, "MMM dd, yyyy h:mmaa"

    .line 3209
    .local v5, inFormat:Ljava/lang/CharSequence;
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-static {v5, v14}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3210
    .local v2, dateString:Ljava/lang/CharSequence;
    const-string v14, ", "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "date: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3214
    .end local v2           #dateString:Ljava/lang/CharSequence;
    .end local v5           #inFormat:Ljava/lang/CharSequence;
    :cond_9d
    const-string v14, ", "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3216
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "      "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "title: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasTitle()Z

    move-result v14

    if-eqz v14, :cond_199

    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getTitle()Ljava/lang/String;

    move-result-object v14

    :goto_c2
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "video? "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz v13, :cond_19d

    const/4 v14, 0x1

    :goto_dc
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "comments: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getCommentList()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "+1s: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz v7, :cond_1a0

    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_11f
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "by me: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz v7, :cond_1a4

    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    :goto_14a
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3230
    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getStreamIdList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_15f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1a7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 3231
    .local v10, stream:Ljava/lang/String;
    const-string v14, ", "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "      "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "stream: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15f

    .line 3193
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .end local v10           #stream:Ljava/lang/String;
    .end local v11           #timestamp:J
    .end local v13           #videoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    :cond_18b
    const/4 v7, 0x0

    goto/16 :goto_26

    .line 3194
    .restart local v7       #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_18e
    const/4 v13, 0x0

    goto/16 :goto_30

    .line 3195
    .restart local v13       #videoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    :cond_191
    const-wide/16 v11, 0x0

    goto/16 :goto_3a

    .line 3202
    .restart local v11       #timestamp:J
    :cond_195
    const-string v14, "N/A"

    goto/16 :goto_67

    .line 3216
    :cond_199
    const-string v14, "N/A"

    goto/16 :goto_c2

    :cond_19d
    const/4 v14, 0x0

    goto/16 :goto_dc

    :cond_1a0
    const-string v14, "0"

    goto/16 :goto_11f

    :cond_1a4
    const-string v14, "false"

    goto :goto_14a

    .line 3238
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_1a7
    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getActivityIdList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1af
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1db

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3239
    .local v1, activity:Ljava/lang/String;
    const-string v14, ", "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "      "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "activity: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1af

    .line 3246
    .end local v1           #activity:Ljava/lang/String;
    :cond_1db
    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasPlusoneData()Z

    move-result v14

    if-eqz v14, :cond_1f4

    .line 3247
    const-string v14, "\n"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v15

    add-int/lit8 v16, p1, 0x2

    invoke-static/range {v15 .. v16}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPlusOneOutput(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3250
    :cond_1f4
    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasAlbum()Z

    move-result v14

    if-eqz v14, :cond_20d

    .line 3251
    const-string v14, "\n"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v15

    add-int/lit8 v16, p1, 0x2

    invoke-static/range {v15 .. v16}, Lcom/google/android/apps/plus/content/EsPhotosData;->getAlbumOutput(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3254
    :cond_20d
    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getShapeList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_215
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_231

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    .line 3255
    .local v9, shape:Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
    const-string v14, "\n"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, p1, 0x2

    invoke-static {v9, v15}, Lcom/google/android/apps/plus/content/EsPhotosData;->getMobileShapeOutput(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_215

    .line 3258
    .end local v9           #shape:Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
    :cond_231
    const-string v14, "]"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3259
    const-string v14, "\n"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3260
    const-string v14, "\n"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3262
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14
.end method

.method private static getPhotoRowId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/Long;
    .registers 12
    .parameter "db"
    .parameter "photoId"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2910
    const-string v1, "photo"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v3, "photo_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2915
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_1c
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_2f

    move-result-object v5

    .line 2917
    :cond_2b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v5

    :catchall_2f
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getPhotosHomeRowId(Landroid/database/sqlite/SQLiteDatabase;I)J
    .registers 11
    .parameter "db"
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2923
    const-string v1, "photo_home"

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

    move-result-object v8

    .line 2929
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_1c
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_2e

    move-result-wide v0

    .line 2931
    :goto_27
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-wide v0

    .line 2929
    :cond_2b
    const-wide/16 v0, -0x1

    goto :goto_27

    .line 2931
    :catchall_2e
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getPlusOneOutput(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;I)Ljava/lang/String;
    .registers 7
    .parameter "plusOne"
    .parameter "indent"

    .prologue
    .line 3300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3301
    .local v2, sb:Ljava/lang/StringBuilder;
    if-lez p1, :cond_12

    .line 3302
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, p1, :cond_12

    .line 3303
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3302
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3306
    .end local v0           #i:I
    :cond_12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3307
    .local v1, indentString:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3309
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "PLUSONE ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3315
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getShapeContentValues(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;J)Landroid/content/ContentValues;
    .registers 7
    .parameter "shape"
    .parameter "photoId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2431
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2432
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "bounds"

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getNormalizedBounds()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/content/DbRect;->serialize(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2433
    const-string v1, "creator_id"

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getFocusObfuscatedNameTagCreatorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2434
    const-string v1, "photo_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2435
    const-string v1, "shape_id"

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2436
    const-string v1, "status"

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getStatus()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->getNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2437
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasFocusObfuscatedSubjectId()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 2438
    const-string v1, "subject_id"

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getFocusObfuscatedSubjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2440
    :cond_51
    return-object v0
.end method

.method private static final hexToBytes(Ljava/lang/CharSequence;)[B
    .registers 8
    .parameter "str"

    .prologue
    const/4 v5, 0x0

    .line 3146
    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_b

    .line 3147
    :cond_9
    const/4 v0, 0x0

    .line 3165
    :cond_a
    return-object v0

    .line 3150
    :cond_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 3151
    .local v0, bytes:[B
    aput-byte v5, v0, v5

    .line 3152
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    rem-int/lit8 v3, v4, 0x2

    .line 3153
    .local v3, nibbleIdx:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 3154
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 3155
    .local v1, c:C
    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsPhotosData;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_36

    .line 3156
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "string contains non-hex chars"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3158
    :cond_36
    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_4a

    .line 3159
    shr-int/lit8 v4, v3, 0x1

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsPhotosData;->hexValue(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 3163
    :goto_45
    add-int/lit8 v3, v3, 0x1

    .line 3153
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 3161
    :cond_4a
    shr-int/lit8 v4, v3, 0x1

    aget-byte v5, v0, v4

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsPhotosData;->hexValue(C)I

    move-result v6

    int-to-byte v6, v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    goto :goto_45
.end method

.method private static final hexValue(C)I
    .registers 2
    .parameter "c"

    .prologue
    .line 3130
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 3131
    add-int/lit8 v0, p0, -0x30

    .line 3135
    :goto_a
    return v0

    .line 3132
    :cond_b
    const/16 v0, 0x61

    if-lt p0, v0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    .line 3133
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 3135
    :cond_18
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a
.end method

.method public static insertActivityAlbum(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 20
    .parameter "context"
    .parameter "account"
    .parameter "ownerGaiaId"
    .parameter "album"
    .parameter "syncState"

    .prologue
    .line 393
    if-eqz p4, :cond_5

    .line 394
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->incrementCount()V

    .line 397
    :cond_5
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 399
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getId()J

    move-result-wide v1

    .line 400
    .local v1, albumId:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 402
    .local v6, startTime:J
    :try_start_15
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 405
    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-static {v4, v0, v9, v10}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertOrUpdateAlbumRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;ZZ)Ljava/lang/Long;

    move-result-object v3

    .line 406
    .local v3, albumRowId:Ljava/lang/Long;
    if-nez v3, :cond_75

    .line 408
    const-string v9, "EsPhotosData"

    const/4 v10, 0x5

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_32

    .line 409
    const-string v9, "EsPhotosData"

    const-string v10, "Could not insert album row"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_15 .. :try_end_32} :catchall_132

    .line 437
    :cond_32
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 438
    const-string v9, "EsPhotosData"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4f

    .line 439
    const-string v9, "EsPhotosData"

    const-string v10, ">> insertAlbum"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v9}, Lcom/google/android/apps/plus/content/EsPhotosData;->getAlbumOutput(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    .line 443
    :cond_4f
    const-string v9, "EsPhotosData"

    const/4 v10, 0x4

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_74

    .line 444
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

    .line 450
    :cond_74
    :goto_74
    return-void

    .line 415
    :cond_75
    :try_start_75
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasCover()Z

    move-result v9

    if-eqz v9, :cond_e6

    .line 417
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

    .line 421
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getCover()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v5

    .line 422
    .local v5, photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    const-string v9, "EsPhotosData"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_a5

    .line 423
    const/4 v9, 0x0

    invoke-static {v5, v9}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    .line 425
    :cond_a5
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 426
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "album_key"

    invoke-virtual {v8, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 427
    const-string v9, "url"

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v9, "width"

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 429
    const-string v9, "height"

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 430
    const-string v9, "size"

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 431
    const-string v9, "album_cover"

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {v4, v9, v10, v8, v11}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 435
    .end local v5           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_e6
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e9
    .catchall {:try_start_75 .. :try_end_e9} :catchall_132

    .line 437
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 438
    const-string v9, "EsPhotosData"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_106

    .line 439
    const-string v9, "EsPhotosData"

    const-string v10, ">> insertAlbum"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v9}, Lcom/google/android/apps/plus/content/EsPhotosData;->getAlbumOutput(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    .line 443
    :cond_106
    const-string v9, "EsPhotosData"

    const/4 v10, 0x4

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_12b

    .line 444
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

    .line 449
    :cond_12b
    move-object/from16 v0, p1

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/apps/plus/content/EsPhotosData;->notifyAlbumChange(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    goto/16 :goto_74

    .line 437
    .end local v3           #albumRowId:Ljava/lang/Long;
    :catchall_132
    move-exception v9

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 438
    const-string v10, "EsPhotosData"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_150

    .line 439
    const-string v10, "EsPhotosData"

    const-string v11, ">> insertAlbum"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v10}, Lcom/google/android/apps/plus/content/EsPhotosData;->getAlbumOutput(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    .line 443
    :cond_150
    const-string v10, "EsPhotosData"

    const/4 v11, 0x4

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_175

    .line 444
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

    :cond_175
    throw v9
.end method

.method public static insertActivityPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 37
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter
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
    .line 926
    .local p3, photos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 928
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 929
    .local v30, startTime:J
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 930
    .local v20, existingPhotos:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 931
    .local v13, notificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v6, v3

    .line 932
    .local v6, activityArgs:[Ljava/lang/String;
    const/16 v22, 0x0

    .line 935
    .local v22, insertedPhoto:Z
    :try_start_1e
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 937
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 940
    .local v12, albumSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-string v3, "photos_in_activity"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "photo_id"

    aput-object v7, v4, v5

    const-string v5, "activity_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_39
    .catchall {:try_start_1e .. :try_end_39} :catchall_56

    move-result-object v17

    .line 945
    .local v17, cursor:Landroid/database/Cursor;
    :goto_3a
    :try_start_3a
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 946
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_3a .. :try_end_50} :catchall_51

    goto :goto_3a

    .line 949
    :catchall_51
    move-exception v3

    :try_start_52
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_56

    .line 1017
    .end local v12           #albumSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v17           #cursor:Landroid/database/Cursor;
    :catchall_56
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1018
    const-string v4, "EsPhotosData"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 1019
    const-string v4, "EsPhotosData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[GET_ACTIVITY_PHOTOS], activity: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", num photos: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", duration: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v30 .. v31}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_99
    throw v3

    .line 949
    .restart local v12       #albumSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v17       #cursor:Landroid/database/Cursor;
    :cond_9a
    :try_start_9a
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 952
    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoEntityMap(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v18

    .line 954
    .local v18, entityMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 955
    .local v15, activityValues:Landroid/content/ContentValues;
    const-string v3, "activity_id"

    move-object/from16 v0, p2

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :cond_b3
    :goto_b3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_189

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 958
    .local v10, photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    const-string v3, "EsPhotosData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 959
    const/4 v3, 0x0

    invoke-static {v10, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    .line 963
    :cond_d0
    const-string v3, "photo_id"

    invoke-virtual {v15, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 964
    const-string v3, "media_url"

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasId()Z

    move-result v3

    if-eqz v3, :cond_15d

    .line 967
    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getId()J

    move-result-wide v26

    .line 968
    .local v26, photoId:J
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v19

    .line 970
    .local v19, existingPhoto:Z
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    .line 971
    .local v25, oldEntity:Ljava/lang/Long;
    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasEntityVersion()Z

    move-result v3

    if-eqz v3, :cond_14b

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getEntityVersion()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    .line 974
    .local v23, newEntity:Ljava/lang/Long;
    :goto_10c
    if-eqz v25, :cond_118

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_165

    .line 976
    :cond_118
    const/4 v11, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v9, v2

    move-object/from16 v14, p4

    invoke-static/range {v7 .. v14}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;ZLjava/util/Set;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_14e

    .line 979
    const-string v3, "EsPhotosData"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 980
    const-string v3, "EsPhotosData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not insert row for photo of me; id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b3

    .line 971
    .end local v23           #newEntity:Ljava/lang/Long;
    :cond_14b
    const/16 v23, 0x0

    goto :goto_10c

    .line 985
    .restart local v23       #newEntity:Ljava/lang/Long;
    :cond_14e
    if-nez v22, :cond_154

    if-nez v19, :cond_154

    .line 986
    const/16 v22, 0x1

    .line 994
    :cond_154
    :goto_154
    const-string v3, "photo_id"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 996
    .end local v19           #existingPhoto:Z
    .end local v23           #newEntity:Ljava/lang/Long;
    .end local v25           #oldEntity:Ljava/lang/Long;
    .end local v26           #photoId:J
    :cond_15d
    const-string v3, "photos_in_activity"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_b3

    .line 989
    .restart local v19       #existingPhoto:Z
    .restart local v23       #newEntity:Ljava/lang/Long;
    .restart local v25       #oldEntity:Ljava/lang/Long;
    .restart local v26       #photoId:J
    :cond_165
    const-string v3, "EsPhotosData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_154

    .line 990
    const-string v3, "EsPhotosData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Photo not updated; id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_154

    .line 1000
    .end local v10           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .end local v19           #existingPhoto:Z
    .end local v23           #newEntity:Ljava/lang/Long;
    .end local v25           #oldEntity:Ljava/lang/Long;
    .end local v26           #photoId:J
    :cond_189
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_1f1

    .line 1001
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    .line 1002
    .local v29, sb:Ljava/lang/StringBuilder;
    new-instance v28, Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->size()I

    move-result v3

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1003
    .local v28, removedIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "photo_id IN("

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1aa
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1cb

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    .line 1005
    .local v26, photoId:Ljava/lang/Long;
    const-string v3, "?,"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1aa

    .line 1008
    .end local v26           #photoId:Ljava/lang/Long;
    :cond_1cb
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1009
    const-string v3, ")"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    const-string v4, "photos_in_activity"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1015
    .end local v28           #removedIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v29           #sb:Ljava/lang/StringBuilder;
    :cond_1f1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1f4
    .catchall {:try_start_9a .. :try_end_1f4} :catchall_56

    .line 1017
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1018
    const-string v3, "EsPhotosData"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_236

    .line 1019
    const-string v3, "EsPhotosData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GET_ACTIVITY_PHOTOS], activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", num photos: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v30 .. v31}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_236
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_23a
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_251

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/net/Uri;

    .line 1028
    .local v24, notifyUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_23a

    .line 1031
    .end local v24           #notifyUri:Landroid/net/Uri;
    :cond_251
    if-nez v22, :cond_259

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_275

    .line 1032
    :cond_259
    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_ACTIVITY_ID_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v16

    .line 1033
    .local v16, builder:Landroid/net/Uri$Builder;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v24

    .line 1034
    .restart local v24       #notifyUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1036
    .end local v16           #builder:Landroid/net/Uri$Builder;
    .end local v24           #notifyUri:Landroid/net/Uri;
    :cond_275
    return-void
.end method

.method public static insertAlbum(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "ownerGaiaId"
    .parameter "album"
    .parameter "syncState"

    .prologue
    const/4 v8, 0x4

    .line 463
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 465
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 466
    .local v4, startTime:J
    invoke-virtual {p3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getId()J

    move-result-wide v0

    .line 469
    .local v0, albumId:J
    :try_start_11
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 470
    const-string v6, "EsPhotosData"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 471
    const/4 v6, 0x0

    invoke-static {p3, v6}, Lcom/google/android/apps/plus/content/EsPhotosData;->getAlbumOutput(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    .line 474
    :cond_25
    if-eqz p4, :cond_2a

    .line 475
    invoke-virtual {p4}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->incrementCount()V

    .line 479
    :cond_2a
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, p3, v6, v7}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertOrUpdateAlbumRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;ZZ)Ljava/lang/Long;

    move-result-object v2

    .line 480
    .local v2, albumRowId:Ljava/lang/Long;
    if-nez v2, :cond_6a

    .line 482
    const-string v6, "EsPhotosData"

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 483
    const-string v6, "EsPhotosData"

    const-string v7, "Could not insert album row"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_11 .. :try_end_42} :catchall_98

    .line 490
    :cond_42
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 491
    const-string v6, "EsPhotosData"

    invoke-static {v6, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 492
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

    .line 498
    :cond_69
    :goto_69
    return-void

    .line 488
    :cond_6a
    :try_start_6a
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_98

    .line 490
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 491
    const-string v6, "EsPhotosData"

    invoke-static {v6, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 492
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

    .line 497
    :cond_94
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/apps/plus/content/EsPhotosData;->notifyAlbumChange(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    goto :goto_69

    .line 490
    .end local v2           #albumRowId:Ljava/lang/Long;
    :catchall_98
    move-exception v6

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 491
    const-string v7, "EsPhotosData"

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_c0

    .line 492
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

    :cond_c0
    throw v6
.end method

.method public static insertAlbumList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 25
    .parameter "context"
    .parameter "account"
    .parameter "ownerGaiaId"
    .parameter
    .parameter "syncState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;",
            ">;",
            "Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 511
    .local p3, albums:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 513
    .local v7, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 515
    .local v11, startTime:J
    move-object/from16 v0, p2

    invoke-static {v7, v0}, Lcom/google/android/apps/plus/content/EsPhotosData;->getCurrentAlbumMap(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 518
    .local v5, albumMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :try_start_12
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 519
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_19
    :goto_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_164

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 520
    .local v2, album:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    const-string v14, "EsPhotosData"

    const/4 v15, 0x3

    invoke-static {v14, v15}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_36

    .line 521
    const/4 v14, 0x0

    invoke-static {v2, v14}, Lcom/google/android/apps/plus/content/EsPhotosData;->getAlbumOutput(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    .line 524
    :cond_36
    if-eqz p4, :cond_3b

    .line 525
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->incrementCount()V

    .line 528
    :cond_3b
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getId()J

    move-result-wide v3

    .line 531
    .local v3, albumId:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v7, v2, v14, v15}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertOrUpdateAlbumRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;ZZ)Ljava/lang/Long;

    move-result-object v6

    .line 533
    .local v6, albumRowId:Ljava/lang/Long;
    if-nez v6, :cond_98

    .line 535
    const-string v14, "EsPhotosData"

    const/4 v15, 0x5

    invoke-static {v14, v15}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 536
    const-string v14, "EsPhotosData"

    const-string v15, "Could not insert album row"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_12 .. :try_end_5e} :catchall_5f

    goto :goto_19

    .line 584
    .end local v2           #album:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .end local v3           #albumId:J
    .end local v6           #albumRowId:Ljava/lang/Long;
    :catchall_5f
    move-exception v14

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 585
    const-string v15, "EsPhotosData"

    const/16 v16, 0x4

    invoke-static/range {v15 .. v16}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_97

    .line 586
    const-string v15, "EsPhotosData"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[GET_ALBUM_LIST], num albums: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

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

    :cond_97
    throw v14

    .line 542
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

    .line 547
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getPreviewCount()I

    move-result v14

    if-lez v14, :cond_114

    .line 549
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

    .line 550
    .local v10, photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 551
    .local v13, values:Landroid/content/ContentValues;
    const-string v14, "album_key"

    invoke-virtual {v13, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 552
    const-string v14, "url"

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v14, "width"

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getWidth()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 554
    const-string v14, "height"

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getHeight()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 555
    const-string v14, "size"

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getSize()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 556
    const-string v14, "album_cover"

    const/4 v15, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v7, v14, v15, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_c3

    .line 559
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_114
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->hasCover()Z

    move-result v14

    if-eqz v14, :cond_19

    .line 560
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getCover()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v10

    .line 562
    .restart local v10       #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 563
    .restart local v13       #values:Landroid/content/ContentValues;
    const-string v14, "album_key"

    invoke-virtual {v13, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 564
    const-string v14, "url"

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v14, "width"

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getWidth()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 566
    const-string v14, "height"

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getHeight()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 567
    const-string v14, "size"

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getSize()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 568
    const-string v14, "album_cover"

    const/4 v15, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v7, v14, v15, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto/16 :goto_19

    .line 574
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

    .line 575
    .restart local v3       #albumId:J
    const-string v14, "EsPhotosData"

    const/4 v15, 0x3

    invoke-static {v14, v15}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_19d

    .line 576
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

    .line 578
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

    .line 582
    .end local v3           #albumId:J
    :cond_1b7
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1ba
    .catchall {:try_start_98 .. :try_end_1ba} :catchall_5f

    .line 584
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 585
    const-string v14, "EsPhotosData"

    const/4 v15, 0x4

    invoke-static {v14, v15}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_1f0

    .line 586
    const-string v14, "EsPhotosData"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[GET_ALBUM_LIST], num albums: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

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

    .line 592
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

    .line 593
    .restart local v3       #albumId:J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v3, v4}, Lcom/google/android/apps/plus/content/EsPhotosData;->notifyAlbumChange(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    goto :goto_1f8

    .line 595
    .end local v3           #albumId:J
    :cond_210
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    if-gtz v14, :cond_21c

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v14

    if-lez v14, :cond_21f

    .line 596
    :cond_21c
    invoke-static/range {p0 .. p2}, Lcom/google/android/apps/plus/content/EsPhotosData;->notifyAllAlbumChange(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 598
    :cond_21f
    return-void
.end method

.method public static insertAlbumPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 31
    .parameter "context"
    .parameter "account"
    .parameter "albumId"
    .parameter "ownerGaiaId"
    .parameter
    .parameter "syncState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "J",
            "Ljava/lang/String;",
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
    .line 629
    .local p5, photos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 631
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 632
    .local v21, startTime:J
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 633
    .local v8, albumSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 636
    .local v9, notificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :try_start_16
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 637
    .local v11, albumValues:Landroid/content/ContentValues;
    const-string v3, "album_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 640
    move-wide/from16 v0, p2

    move-object/from16 v2, p4

    invoke-static {v5, v0, v1, v2}, Lcom/google/android/apps/plus/content/EsPhotosData;->getCurrentAlbumMap(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Ljava/util/HashMap;

    move-result-object v18

    .line 641
    .local v18, photoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 643
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_33
    :goto_33
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_123

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 644
    .local v6, photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    const-string v3, "EsPhotosData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 645
    const/4 v3, 0x0

    invoke-static {v6, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    .line 648
    :cond_50
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getId()J

    move-result-wide v16

    .line 649
    .local v16, photoId:J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    .line 650
    .local v15, oldEntity:Ljava/lang/Long;
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasEntityVersion()Z

    move-result v3

    if-eqz v3, :cond_eb

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getEntityVersion()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 652
    .local v13, newEntity:Ljava/lang/Long;
    :goto_6e
    if-eqz v15, :cond_76

    invoke-virtual {v15, v13}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ed

    .line 654
    :cond_76
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v10, p6

    invoke-static/range {v3 .. v10}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;ZLjava/util/Set;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_110

    .line 657
    const-string v3, "EsPhotosData"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 658
    const-string v3, "EsPhotosData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not insert row for photo of me; id: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_16 .. :try_end_a6} :catchall_a7

    goto :goto_33

    .line 702
    .end local v6           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .end local v11           #albumValues:Landroid/content/ContentValues;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #newEntity:Ljava/lang/Long;
    .end local v15           #oldEntity:Ljava/lang/Long;
    .end local v16           #photoId:J
    .end local v18           #photoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catchall_a7
    move-exception v3

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 703
    const-string v4, "EsPhotosData"

    const/4 v7, 0x4

    invoke-static {v4, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_ea

    .line 704
    const-string v4, "EsPhotosData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GET_ALBUM_PHOTOS], album ID: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", num photos: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", duration: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v21 .. v22}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ea
    throw v3

    .line 650
    .restart local v6       #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .restart local v11       #albumValues:Landroid/content/ContentValues;
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v15       #oldEntity:Ljava/lang/Long;
    .restart local v16       #photoId:J
    .restart local v18       #photoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_eb
    const/4 v13, 0x0

    goto :goto_6e

    .line 663
    .restart local v13       #newEntity:Ljava/lang/Long;
    :cond_ed
    :try_start_ed
    const-string v3, "EsPhotosData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_110

    .line 664
    const-string v3, "EsPhotosData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Photo not updated; id: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_110
    if-nez v15, :cond_33

    .line 669
    const-string v3, "photo_id"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 670
    const-string v3, "photos_in_album"

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_33

    .line 675
    .end local v6           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .end local v13           #newEntity:Ljava/lang/Long;
    .end local v15           #oldEntity:Ljava/lang/Long;
    .end local v16           #photoId:J
    :cond_123
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_12b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_170

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 676
    .restart local v16       #photoId:J
    const-string v3, "EsPhotosData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_15e

    .line 677
    const-string v3, "EsPhotosData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">> remove photo ID: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_15e
    const-string v3, "photo"

    const-string v4, "photo_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v7, v10

    invoke-virtual {v5, v3, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_12b

    .line 683
    .end local v16           #photoId:J
    :cond_170
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1e2

    .line 684
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 685
    .local v20, sb:Ljava/lang/StringBuilder;
    new-instance v19, Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    move-result v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 687
    .local v19, removedIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "photo_id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IN("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_19b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1bc

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    .line 690
    .local v16, photoId:Ljava/lang/Long;
    const-string v3, "?,"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19b

    .line 693
    .end local v16           #photoId:Ljava/lang/Long;
    :cond_1bc
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 694
    const-string v3, ")"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    const-string v4, "photo"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v5, v4, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 700
    .end local v19           #removedIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20           #sb:Ljava/lang/StringBuilder;
    :cond_1e2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1e5
    .catchall {:try_start_ed .. :try_end_1e5} :catchall_a7

    .line 702
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 703
    const-string v3, "EsPhotosData"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_227

    .line 704
    const-string v3, "EsPhotosData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[GET_ALBUM_PHOTOS], album ID: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", num photos: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", duration: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v21 .. v22}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_227
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_22b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_240

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    .line 713
    .local v14, notifyUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v14, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_22b

    .line 715
    .end local v14           #notifyUri:Landroid/net/Uri;
    :cond_240
    invoke-static/range {p0 .. p3}, Lcom/google/android/apps/plus/content/EsPhotosData;->notifyAlbumChange(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 716
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
    .line 1243
    .local p3, photos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1245
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 1247
    .local v21, startTime:J
    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/google/android/apps/plus/content/EsPhotosData;->getCurrentCircleMap(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v10

    .line 1248
    .local v10, circleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1251
    .local v8, notificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :try_start_17
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1252
    .local v7, albumSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1254
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 1255
    .local v23, values:Landroid/content/ContentValues;
    const-string v2, "circle_id"

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    move/from16 v19, p4

    .line 1257
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

    .line 1258
    .local v5, photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    const-string v2, "EsPhotosData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 1259
    const/4 v2, 0x0

    invoke-static {v5, v2}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    .line 1262
    :cond_52
    const/4 v6, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v9, p5

    invoke-static/range {v2 .. v9}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;ZLjava/util/Set;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_b8

    .line 1265
    const-string v2, "EsPhotosData"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1266
    const-string v2, "EsPhotosData"

    const-string v3, "Could not insert photo row"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_17 .. :try_end_6f} :catchall_70

    goto :goto_35

    .line 1310
    .end local v5           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .end local v7           #albumSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v20           #showOrder:I
    .end local v23           #values:Landroid/content/ContentValues;
    :catchall_70
    move-exception v2

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1311
    const-string v3, "EsPhotosData"

    const/4 v6, 0x4

    invoke-static {v3, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 1312
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

    :cond_b7
    throw v2

    .line 1271
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

    .line 1272
    .local v16, photoId:J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 1274
    .local v11, circleRowId:Ljava/lang/Long;
    const-string v2, "photo_id"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1275
    const-string v2, "show_order"

    add-int/lit8 v19, v20, 0x1

    .end local v20           #showOrder:I
    .restart local v19       #showOrder:I
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1276
    if-nez v11, :cond_10c

    .line 1278
    const-string v2, "photos_in_circle"

    const/4 v3, 0x0

    const/4 v6, 0x4

    move-object/from16 v0, v23

    invoke-virtual {v4, v2, v3, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 1287
    :goto_ee
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v24, -0x1

    cmp-long v2, v2, v24

    if-nez v2, :cond_132

    .line 1289
    const-string v2, "EsPhotosData"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1e6

    .line 1290
    const-string v2, "EsPhotosData"

    const-string v3, "Could not insert circle row"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v20, v19

    .end local v19           #showOrder:I
    .restart local v20       #showOrder:I
    goto/16 :goto_35

    .line 1282
    .end local v20           #showOrder:I
    .restart local v19       #showOrder:I
    :cond_10c
    const-string v2, "photos_in_circle"

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

    .line 1285
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

    .line 1294
    .end local v19           #showOrder:I
    .restart local v20       #showOrder:I
    goto/16 :goto_35

    .line 1299
    .end local v5           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .end local v11           #circleRowId:Ljava/lang/Long;
    .end local v16           #photoId:J
    :cond_136
    if-nez p2, :cond_1a9

    .line 1300
    const-string v13, "circle_id IS NULL AND show_order >=?"

    .line 1301
    .local v13, deleteWhere:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    .line 1306
    .local v12, deleteArgs:[Ljava/lang/String;
    :goto_144
    const-string v2, "photos_in_circle"

    invoke-virtual {v4, v2, v13, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1308
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_14c
    .catchall {:try_start_b8 .. :try_end_14c} :catchall_70

    .line 1310
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1311
    const-string v2, "EsPhotosData"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_190

    .line 1312
    const-string v3, "EsPhotosData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GET_PHOTO_CONSUMPTION_STREAM], circle ID: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p2, :cond_1b9

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

    .line 1320
    :cond_190
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_194
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1bc

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/Uri;

    .line 1321
    .local v15, notifyUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_194

    .line 1303
    .end local v12           #deleteArgs:[Ljava/lang/String;
    .end local v13           #deleteWhere:Ljava/lang/String;
    .end local v15           #notifyUri:Landroid/net/Uri;
    :cond_1a9
    :try_start_1a9
    const-string v13, "circle_id=? AND show_order >=?"

    .line 1304
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

    :cond_1b9
    move-object/from16 v2, p2

    .line 1312
    goto :goto_169

    .line 1324
    :cond_1bc
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1c8

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1d4

    .line 1325
    :cond_1c8
    if-nez p2, :cond_1d5

    sget-object v15, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_NULL_CIRCLE_ID_URI:Landroid/net/Uri;

    .line 1328
    .restart local v15       #notifyUri:Landroid/net/Uri;
    :goto_1cc
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1330
    .end local v15           #notifyUri:Landroid/net/Uri;
    :cond_1d4
    return-void

    .line 1325
    :cond_1d5
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_CIRCLE_ID_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15

    goto :goto_1cc

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

.method public static insertEventPhotoInTransaction(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/util/Set;Ljava/util/List;)V
    .registers 23
    .parameter "context"
    .parameter "db"
    .parameter "eventId"
    .parameter "photo"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1048
    .local p4, seenPhotoAlbums:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p5, pendingNotification:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 1050
    .local v15, startTime:J
    :try_start_4
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1051
    .local v11, eventValues:Landroid/content/ContentValues;
    const-string v1, "event_id"

    move-object/from16 v0, p2

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    const-string v1, "EsPhotosData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1054
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    .line 1057
    :cond_23
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getId()J

    move-result-wide v12

    .line 1061
    .local v12, photoId:J
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v1 .. v8}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;ZLjava/util/Set;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_5b

    .line 1064
    const-string v1, "EsPhotosData"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 1065
    const-string v1, "EsPhotosData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not insert row for photo of me; id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_5b
    const-string v1, "photo_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1072
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    const/4 v1, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 1073
    .local v5, eventArgs:[Ljava/lang/String;
    const-string v2, "photos_in_event"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const-string v4, "event_id=? AND photo_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_85
    .catchall {:try_start_4 .. :try_end_85} :catchall_120
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_85} :catch_dc

    move-result-object v9

    .line 1077
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 1079
    .local v14, rowId:Ljava/lang/Long;
    :try_start_87
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_d5

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_95
    .catchall {:try_start_87 .. :try_end_95} :catchall_d7

    move-result-object v14

    .line 1081
    :goto_96
    :try_start_96
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1084
    if-nez v14, :cond_116

    .line 1085
    const-string v1, "photos_in_event"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_a3
    .catchall {:try_start_96 .. :try_end_a3} :catchall_120
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_a3} :catch_dc

    .line 1094
    :goto_a3
    const-string v1, "EsPhotosData"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 1095
    const-string v1, "EsPhotosData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GET_EVENT_PHOTO], event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v15 .. v16}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    .end local v5           #eventArgs:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #eventValues:Landroid/content/ContentValues;
    .end local v12           #photoId:J
    .end local v14           #rowId:Ljava/lang/Long;
    :cond_d4
    :goto_d4
    return-void

    .line 1079
    .restart local v5       #eventArgs:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v11       #eventValues:Landroid/content/ContentValues;
    .restart local v12       #photoId:J
    .restart local v14       #rowId:Ljava/lang/Long;
    :cond_d5
    const/4 v14, 0x0

    goto :goto_96

    .line 1081
    :catchall_d7
    move-exception v1

    :try_start_d8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_dc
    .catchall {:try_start_d8 .. :try_end_dc} :catchall_120
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_dc} :catch_dc

    .line 1091
    .end local v5           #eventArgs:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #eventValues:Landroid/content/ContentValues;
    .end local v12           #photoId:J
    .end local v14           #rowId:Ljava/lang/Long;
    :catch_dc
    move-exception v10

    .line 1092
    .local v10, e:Ljava/io/IOException;
    :try_start_dd
    const-string v1, "EsPhotosData"

    const-string v2, "Could not insert photo"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e4
    .catchall {:try_start_dd .. :try_end_e4} :catchall_120

    .line 1094
    const-string v1, "EsPhotosData"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 1095
    const-string v1, "EsPhotosData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GET_EVENT_PHOTO], event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v15 .. v16}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    .line 1087
    .end local v10           #e:Ljava/io/IOException;
    .restart local v5       #eventArgs:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v11       #eventValues:Landroid/content/ContentValues;
    .restart local v12       #photoId:J
    .restart local v14       #rowId:Ljava/lang/Long;
    :cond_116
    :try_start_116
    const-string v1, "photos_in_event"

    const-string v2, "event_id=? AND photo_id=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v11, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_11f
    .catchall {:try_start_116 .. :try_end_11f} :catchall_120
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_11f} :catch_dc

    goto :goto_a3

    .line 1094
    .end local v5           #eventArgs:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #eventValues:Landroid/content/ContentValues;
    .end local v12           #photoId:J
    .end local v14           #rowId:Ljava/lang/Long;
    :catchall_120
    move-exception v1

    const-string v2, "EsPhotosData"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_152

    .line 1095
    const-string v2, "EsPhotosData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GET_EVENT_PHOTO], event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v15 .. v16}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_152
    throw v1
.end method

.method private static insertOrUpdateAlbumRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;ZZ)Ljava/lang/Long;
    .registers 21
    .parameter "db"
    .parameter "album"
    .parameter "isActivity"
    .parameter "forceUpdate"

    .prologue
    .line 2650
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getId()J

    move-result-wide v2

    .line 2651
    .local v2, albumId:J
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/apps/plus/content/EsPhotosData;->getAlbumContentValues(JLcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;Z)Landroid/content/ContentValues;

    move-result-object v11

    .line 2654
    .local v11, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->getAlbumRowId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/Long;

    move-result-object v9

    .line 2656
    .local v9, rowId:Ljava/lang/Long;
    if-nez v9, :cond_2e

    .line 2658
    const-string v12, "album"

    const/4 v13, 0x0

    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v11, v14}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 2660
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-nez v12, :cond_2d

    .line 2661
    const/4 v9, 0x0

    .line 2684
    :cond_2d
    :goto_2d
    return-object v9

    .line 2664
    :cond_2e
    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->getAlbumStreamId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v4

    .line 2665
    .local v4, curStreamId:Ljava/lang/String;
    const-string v12, "stream_id"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2668
    .local v8, newStreamId:Ljava/lang/String;
    if-eqz v4, :cond_6f

    const/4 v5, 0x1

    .line 2670
    .local v5, isMetaAlbum:Z
    :goto_3d
    if-eqz v5, :cond_71

    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_71

    const/4 v7, 0x1

    .line 2672
    .local v7, isMetaUpdate:Z
    :goto_46
    if-nez v5, :cond_73

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_73

    const/4 v6, 0x1

    .line 2674
    .local v6, isMetaNew:Z
    :goto_4f
    if-eqz v5, :cond_57

    if-nez v6, :cond_57

    if-nez v7, :cond_57

    if-eqz p3, :cond_2d

    .line 2676
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

    .line 2679
    .local v10, rowsUpdated:I
    if-nez v10, :cond_2d

    .line 2680
    const/4 v9, 0x0

    goto :goto_2d

    .line 2668
    .end local v5           #isMetaAlbum:Z
    .end local v6           #isMetaNew:Z
    .end local v7           #isMetaUpdate:Z
    .end local v10           #rowsUpdated:I
    :cond_6f
    const/4 v5, 0x0

    goto :goto_3d

    .line 2670
    .restart local v5       #isMetaAlbum:Z
    :cond_71
    const/4 v7, 0x0

    goto :goto_46

    .line 2672
    .restart local v7       #isMetaUpdate:Z
    :cond_73
    const/4 v6, 0x0

    goto :goto_4f
.end method

.method private static insertOrUpdatePhotoCommentRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$Comment;J)Z
    .registers 16
    .parameter "db"
    .parameter "comment"
    .parameter "photoId"

    .prologue
    .line 2772
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2773
    .local v0, commentId:Ljava/lang/String;
    invoke-static {p1, p2, p3}, Lcom/google/android/apps/plus/content/EsPhotosData;->getCommentContentValues(Lcom/google/wireless/tacotruck/proto/Data$Comment;J)Landroid/content/ContentValues;

    move-result-object v7

    .line 2776
    .local v7, values:Landroid/content/ContentValues;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2777
    .local v1, query:Ljava/lang/StringBuilder;
    const-string v8, "SELECT count(*) FROM "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "photo_comment"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " WHERE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "comment_id=?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2782
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-static {p0, v8, v9}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    .line 2785
    .local v2, rowCount:J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-nez v8, :cond_4a

    .line 2787
    const-string v8, "photo_comment"

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-virtual {p0, v8, v9, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    .line 2789
    .local v4, rowId:J
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_48

    const/4 v8, 0x1

    .line 2795
    .end local v4           #rowId:J
    :goto_47
    return v8

    .line 2789
    .restart local v4       #rowId:J
    :cond_48
    const/4 v8, 0x0

    goto :goto_47

    .line 2792
    .end local v4           #rowId:J
    :cond_4a
    const-string v8, "photo_comment"

    const-string v9, "comment_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-virtual {p0, v8, v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 2795
    .local v6, rowsUpdated:I
    if-eqz v6, :cond_5c

    const/4 v8, 0x1

    goto :goto_47

    :cond_5c
    const/4 v8, 0x0

    goto :goto_47
.end method

.method private static insertOrUpdatePhotoRow(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Ljava/lang/Long;
    .registers 11
    .parameter "db"
    .parameter "photoId"
    .parameter "values"

    .prologue
    .line 2740
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoRowId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/Long;

    move-result-object v0

    .line 2742
    .local v0, rowId:Ljava/lang/Long;
    if-nez v0, :cond_1e

    .line 2744
    const-string v2, "photo"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {p0, v2, v3, p3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2746
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1d

    .line 2747
    const/4 v0, 0x0

    .line 2758
    :cond_1d
    :goto_1d
    return-object v0

    .line 2751
    :cond_1e
    const-string v2, "photo"

    const-string v3, "photo_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v2, p3, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2754
    .local v1, rowsUpdated:I
    if-nez v1, :cond_1d

    .line 2755
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private static insertOrUpdatePhotoShapeRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$MobileShape;J)Z
    .registers 18
    .parameter "db"
    .parameter "shape"
    .parameter "photoId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2810
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getId()J

    move-result-wide v6

    .line 2811
    .local v6, shapeId:J
    invoke-static/range {p1 .. p3}, Lcom/google/android/apps/plus/content/EsPhotosData;->getShapeContentValues(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;J)Landroid/content/ContentValues;

    move-result-object v8

    .line 2814
    .local v8, values:Landroid/content/ContentValues;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2815
    .local v0, query:Ljava/lang/StringBuilder;
    const-string v9, "SELECT count(*) FROM "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "photo_shape"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " WHERE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "shape_id=?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2820
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {p0, v9, v10}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    .line 2823
    .local v1, rowCount:J
    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-nez v9, :cond_4e

    .line 2825
    const-string v9, "photo_shape"

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {p0, v9, v10, v8, v11}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v3

    .line 2827
    .local v3, rowId:J
    const-wide/16 v9, -0x1

    cmp-long v9, v3, v9

    if-eqz v9, :cond_4c

    const/4 v9, 0x1

    .line 2833
    .end local v3           #rowId:J
    :goto_4b
    return v9

    .line 2827
    .restart local v3       #rowId:J
    :cond_4c
    const/4 v9, 0x0

    goto :goto_4b

    .line 2830
    .end local v3           #rowId:J
    :cond_4e
    const-string v9, "photo_shape"

    const-string v10, "shape_id=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v9, v8, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 2833
    .local v5, rowsUpdated:I
    if-eqz v5, :cond_64

    const/4 v9, 0x1

    goto :goto_4b

    :cond_64
    const/4 v9, 0x0

    goto :goto_4b
.end method

.method private static insertOrUpdatePlusOneRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;J)Z
    .registers 15
    .parameter "db"
    .parameter "plusOneData"
    .parameter "photoId"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 2694
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2695
    .local v3, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->hasPlusonedByViewer()Z

    move-result v7

    if-eqz v7, :cond_62

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v0

    .line 2697
    .local v0, byMe:Z
    :goto_12
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->hasTotalPlusoneCount()Z

    move-result v7

    if-eqz v7, :cond_64

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v2

    .line 2699
    .local v2, totalCount:I
    :goto_1c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->hasPlusoneId()Z

    move-result v7

    if-eqz v7, :cond_66

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;

    move-result-object v1

    .line 2702
    .local v1, id:Ljava/lang/String;
    :goto_26
    const-string v7, "plusone_data"

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2703
    const-string v7, "plusone_by_me"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2704
    const-string v7, "plusone_count"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2705
    const-string v7, "plusone_id"

    invoke-virtual {v3, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2706
    const-string v7, "photo_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2709
    const-string v7, "photo_plusone"

    const-string v8, "photo_id=?"

    new-array v9, v6, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {p0, v7, v3, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_68

    .line 2714
    :goto_61
    return v6

    .end local v0           #byMe:Z
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #totalCount:I
    :cond_62
    move v0, v4

    .line 2695
    goto :goto_12

    .restart local v0       #byMe:Z
    :cond_64
    move v2, v4

    .line 2697
    goto :goto_1c

    .restart local v2       #totalCount:I
    :cond_66
    move-object v1, v5

    .line 2699
    goto :goto_26

    .line 2714
    .restart local v1       #id:Ljava/lang/String;
    :cond_68
    const-string v7, "photo_plusone"

    invoke-virtual {p0, v7, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v5, v7, v9

    if-eqz v5, :cond_75

    move v4, v6

    :cond_75
    move v6, v4

    goto :goto_61
.end method

.method private static insertPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;ZLjava/util/Set;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/Long;
    .registers 44
    .parameter "context"
    .parameter "account"
    .parameter "db"
    .parameter "photo"
    .parameter "updateShapes"
    .parameter
    .parameter
    .parameter "syncState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
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
    .line 2461
    .local p5, albumSeen:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p6, pendingNotification:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getId()J

    move-result-wide v25

    .line 2463
    .local v25, photoId:J
    if-eqz p7, :cond_9

    .line 2464
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->incrementSubCount()V

    .line 2470
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasAlbum()Z

    move-result v4

    if-eqz v4, :cond_d4

    .line 2471
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v13

    .line 2472
    .local v13, album:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    invoke-virtual {v13}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 2473
    .local v14, albumId:Ljava/lang/Long;
    if-eqz p5, :cond_25

    move-object/from16 v0, p5

    invoke-interface {v0, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e

    .line 2474
    :cond_25
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v13, v4, v5}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertOrUpdateAlbumRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;ZZ)Ljava/lang/Long;

    move-result-object v16

    .line 2475
    .local v16, albumRowId:Ljava/lang/Long;
    if-nez v16, :cond_57

    .line 2477
    const-string v4, "EsPhotosData"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 2478
    const-string v4, "EsPhotosData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not insert album row; album id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    :cond_54
    const/16 v28, 0x0

    .line 2593
    .end local v13           #album:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .end local v14           #albumId:Ljava/lang/Long;
    .end local v16           #albumRowId:Ljava/lang/Long;
    :cond_56
    :goto_56
    return-object v28

    .line 2482
    .restart local v13       #album:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .restart local v14       #albumId:Ljava/lang/Long;
    .restart local v16       #albumRowId:Ljava/lang/Long;
    :cond_57
    if-eqz p5, :cond_5e

    .line 2483
    move-object/from16 v0, p5

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2494
    .end local v16           #albumRowId:Ljava/lang/Long;
    :cond_5e
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasPlusoneData()Z

    move-result v4

    if-eqz v4, :cond_fb

    .line 2495
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v29

    .line 2496
    .local v29, plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move-wide/from16 v2, v25

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertOrUpdatePlusOneRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;J)Z

    .line 2503
    .end local v29           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :goto_71
    invoke-virtual {v13}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getId()J

    move-result-wide v14

    .line 2504
    .local v14, albumId:J
    move-object/from16 v0, p3

    invoke-static {v14, v15, v0}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoContentValues(JLcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Landroid/content/ContentValues;

    move-result-object v35

    .line 2507
    .local v35, values:Landroid/content/ContentValues;
    move-object/from16 v0, p2

    move-wide/from16 v1, v25

    move-object/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertOrUpdatePhotoRow(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Ljava/lang/Long;

    move-result-object v28

    .line 2513
    .local v28, photoRowId:Ljava/lang/Long;
    const/16 v20, 0x0

    .line 2514
    .local v20, commentsAdded:Z
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 2515
    .local v22, existingComments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v5, "photo_comment"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "comment_id"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "update_time"

    aput-object v7, v6, v4

    const-string v7, "photo_id=?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 2520
    .local v21, cursor:Landroid/database/Cursor;
    :goto_b1
    :try_start_b1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_104

    .line 2521
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ce
    .catchall {:try_start_b1 .. :try_end_ce} :catchall_cf

    goto :goto_b1

    .line 2524
    :catchall_cf
    move-exception v4

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    throw v4

    .line 2487
    .end local v13           #album:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .end local v14           #albumId:J
    .end local v20           #commentsAdded:Z
    .end local v21           #cursor:Landroid/database/Cursor;
    .end local v22           #existingComments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v28           #photoRowId:Ljava/lang/Long;
    .end local v35           #values:Landroid/content/ContentValues;
    :cond_d4
    const-string v4, "EsPhotosData"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_f7

    .line 2488
    const-string v4, "EsPhotosData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot add photo that has no album; photo id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v25

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    :cond_f7
    const/16 v28, 0x0

    goto/16 :goto_56

    .line 2498
    .restart local v13       #album:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .local v14, albumId:Ljava/lang/Long;
    :cond_fb
    move-object/from16 v0, p2

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsPhotosData;->removePlusOneRow(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto/16 :goto_71

    .line 2524
    .local v14, albumId:J
    .restart local v20       #commentsAdded:Z
    .restart local v21       #cursor:Landroid/database/Cursor;
    .restart local v22       #existingComments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v28       #photoRowId:Ljava/lang/Long;
    .restart local v35       #values:Landroid/content/ContentValues;
    :cond_104
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2527
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getCommentList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :cond_10f
    :goto_10f
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_150

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/wireless/tacotruck/proto/Data$Comment;

    .line 2528
    .local v17, comment:Lcom/google/wireless/tacotruck/proto/Data$Comment;
    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Long;

    .line 2529
    .local v34, updateTimestamp:Ljava/lang/Long;
    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasLastUpdateTimestampMsec()Z

    move-result v4

    if-eqz v4, :cond_14d

    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getLastUpdateTimestampMsec()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    .line 2533
    .local v24, lastTimestamp:Ljava/lang/Long;
    :goto_135
    if-eqz v34, :cond_141

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10f

    .line 2534
    :cond_141
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-wide/from16 v2, v25

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertOrUpdatePhotoCommentRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$Comment;J)Z

    .line 2535
    const/16 v20, 0x1

    goto :goto_10f

    .line 2529
    .end local v24           #lastTimestamp:Ljava/lang/Long;
    :cond_14d
    const/16 v24, 0x0

    goto :goto_135

    .line 2540
    .end local v17           #comment:Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .end local v34           #updateTimestamp:Ljava/lang/Long;
    :cond_150
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_1b8

    .line 2541
    new-instance v30, Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2542
    .local v30, removedIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    .line 2544
    .local v31, sb:Ljava/lang/StringBuilder;
    const-string v4, "comment_id IN("

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2545
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_175
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_190

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 2546
    .local v18, commentId:Ljava/lang/String;
    const-string v4, "?,"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2547
    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_175

    .line 2549
    .end local v18           #commentId:Ljava/lang/String;
    :cond_190
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2550
    const-string v4, ")"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2552
    const-string v5, "photo_comment"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2556
    .end local v30           #removedIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v31           #sb:Ljava/lang/StringBuilder;
    :cond_1b8
    if-nez v20, :cond_1c0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_1d1

    .line 2557
    :cond_1c0
    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_BY_PHOTO_ID_URI:Landroid/net/Uri;

    move-wide/from16 v0, v25

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 2559
    .local v19, commentNotifyUri:Landroid/net/Uri;
    if-eqz p6, :cond_204

    .line 2560
    move-object/from16 v0, p6

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2568
    .end local v19           #commentNotifyUri:Landroid/net/Uri;
    :cond_1d1
    :goto_1d1
    if-eqz p4, :cond_220

    .line 2569
    const-string v4, "photo_shape"

    const-string v5, "photo_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2572
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getShapeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_1ee
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    .line 2573
    .local v32, shape:Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
    move-object/from16 v0, p2

    move-object/from16 v1, v32

    move-wide/from16 v2, v25

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertOrUpdatePhotoShapeRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$MobileShape;J)Z

    goto :goto_1ee

    .line 2562
    .end local v32           #shape:Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
    .restart local v19       #commentNotifyUri:Landroid/net/Uri;
    :cond_204
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1d1

    .line 2575
    .end local v19           #commentNotifyUri:Landroid/net/Uri;
    :cond_20f
    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_SHAPES_BY_PHOTO_ID_URI:Landroid/net/Uri;

    move-wide/from16 v0, v25

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v33

    .line 2577
    .local v33, shapeNotifyUri:Landroid/net/Uri;
    if-eqz p6, :cond_235

    .line 2578
    move-object/from16 v0, p6

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2584
    .end local v33           #shapeNotifyUri:Landroid/net/Uri;
    :cond_220
    :goto_220
    if-eqz v28, :cond_56

    .line 2585
    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_PHOTO_ID_URI:Landroid/net/Uri;

    move-wide/from16 v0, v25

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v27

    .line 2587
    .local v27, photoNotifyUri:Landroid/net/Uri;
    if-eqz p6, :cond_240

    .line 2588
    move-object/from16 v0, p6

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_56

    .line 2580
    .end local v27           #photoNotifyUri:Landroid/net/Uri;
    .restart local v33       #shapeNotifyUri:Landroid/net/Uri;
    :cond_235
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_220

    .line 2590
    .end local v33           #shapeNotifyUri:Landroid/net/Uri;
    .restart local v27       #photoNotifyUri:Landroid/net/Uri;
    :cond_240
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_56
.end method

.method private static insertPhotoOfUser(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/lang/String;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 20
    .parameter "context"
    .parameter "account"
    .parameter "db"
    .parameter "accountGaiaId"
    .parameter "photo"
    .parameter "photoOfUserId"
    .parameter
    .parameter "syncState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            "Ljava/lang/String;",
            "Ljava/util/List",
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
    .line 2610
    .local p6, pendingNotification:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual/range {p4 .. p4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getId()J

    move-result-wide v9

    .line 2611
    .local v9, photoId:J
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 2614
    .local v6, albumSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;ZLjava/util/Set;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_3b

    .line 2617
    const-string v1, "EsPhotosData"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 2618
    const-string v1, "EsPhotosData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not insert row for photo of me; id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    :cond_3a
    :goto_3a
    return-void

    .line 2623
    :cond_3b
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2624
    .local v11, values:Landroid/content/ContentValues;
    const-string v1, "photo_id"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2625
    const-string v1, "photo_of_user_id"

    move-object/from16 v0, p5

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2627
    const-string v1, "photos_of_user"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {p2, v1, v2, v11, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_3a
.end method

.method public static insertPhotosOfUser(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 21
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"
    .parameter
    .parameter
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
    .line 1115
    .local p3, approvedPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    .local p4, unapprovedPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1117
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1118
    .local v12, startTime:J
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1121
    .local v7, notificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :try_start_11
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v4

    .line 1122
    .local v4, accountId:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1123
    const-string v1, "EsPhotosData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1124
    const-string v1, "EsPhotosData"

    const-string v2, ">>>>> approved photos"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_28
    const-string v1, "photos_of_user"

    const-string v2, "photo_of_user_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v6, v8

    invoke-virtual {v3, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1131
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 1132
    .local v5, photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    const-string v1, "EsPhotosData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1133
    const/4 v1, 0x0

    invoke-static {v5, v1}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    :cond_56
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p5

    .line 1135
    invoke-static/range {v1 .. v8}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertPhotoOfUser(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/lang/String;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    :try_end_60
    .catchall {:try_start_11 .. :try_end_60} :catchall_61

    goto :goto_39

    .line 1162
    .end local v4           #accountId:Ljava/lang/String;
    .end local v5           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_61
    move-exception v1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1163
    const-string v2, "EsPhotosData"

    const/4 v6, 0x4

    invoke-static {v2, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 1164
    const-string v2, "EsPhotosData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GET_PHOTOS_OF_USER], userId: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", approved: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", unapproved: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", duration: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v12, v13}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b2
    throw v1

    .line 1139
    .restart local v4       #accountId:Ljava/lang/String;
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_b3
    :try_start_b3
    const-string v1, "EsPhotosData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 1140
    const-string v1, "EsPhotosData"

    const-string v2, ">>>>> unapproved photos"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_c3
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ef

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 1143
    .restart local v5       #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    const-string v1, "EsPhotosData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 1144
    const/4 v1, 0x0

    invoke-static {v5, v1}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    :cond_e4
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p5

    .line 1146
    invoke-static/range {v1 .. v8}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertPhotoOfUser(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Ljava/lang/String;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    goto :goto_c7

    .line 1151
    .end local v5           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    :cond_ef
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/apps/plus/content/EsAccount;->isMyGaiaId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_111

    .line 1152
    const-string v11, "type=1"

    .line 1154
    .local v11, photosWhere:Ljava/lang/String;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1155
    .local v14, values:Landroid/content/ContentValues;
    const-string v1, "notification_count"

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1157
    const-string v1, "photo_home"

    const-string v2, "type=1"

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v14, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1160
    .end local v11           #photosWhere:Ljava/lang/String;
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_111
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_114
    .catchall {:try_start_b3 .. :try_end_114} :catchall_61

    .line 1162
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1163
    const-string v1, "EsPhotosData"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_164

    .line 1164
    const-string v1, "EsPhotosData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GET_PHOTOS_OF_USER], userId: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", approved: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", unapproved: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", duration: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12, v13}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :cond_164
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_168
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 1174
    .local v10, notifyUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v10, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_168

    .line 1177
    .end local v10           #notifyUri:Landroid/net/Uri;
    :cond_17d
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_189

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_199

    .line 1178
    :cond_189
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_OF_USER_ID_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 1179
    .restart local v10       #notifyUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v10, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1181
    .end local v10           #notifyUri:Landroid/net/Uri;
    :cond_199
    return-void
.end method

.method public static insertProfileAlbumList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"
    .parameter
    .parameter "syncState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;",
            ">;",
            "Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 611
    .local p3, albums:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;>;"
    const-string v0, "EsPhotosData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 612
    const-string v0, "EsPhotosData"

    const-string v1, ">> insertProfileAlbumList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_10
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertAlbumList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 615
    return-void
.end method

.method public static insertSinglePhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 19
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
    .line 729
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 731
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 732
    .local v13, startTime:J
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getId()J

    move-result-wide v11

    .line 733
    .local v11, photoId:J
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v7, notificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :try_start_15
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 738
    const-string v1, "EsPhotosData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 739
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    .line 743
    :cond_2b
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v8, p3

    invoke-static/range {v1 .. v8}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;ZLjava/util/Set;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_5b

    .line 746
    const-string v1, "EsPhotosData"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 747
    const-string v1, "EsPhotosData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not insert row for photo of me; id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_5b
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5e
    .catchall {:try_start_15 .. :try_end_5e} :catchall_a9

    .line 753
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 754
    const-string v1, "EsPhotosData"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 755
    const-string v1, "EsPhotosData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GET_PHOTO], photo ID: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", duration: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13, v14}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_90
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_94
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_dd

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 763
    .local v10, notifyUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v10, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_94

    .line 753
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #notifyUri:Landroid/net/Uri;
    :catchall_a9
    move-exception v1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 754
    const-string v2, "EsPhotosData"

    const/4 v4, 0x4

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 755
    const-string v2, "EsPhotosData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GET_PHOTO], photo ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13, v14}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dc
    throw v1

    .line 766
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_dd
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 767
    return-void
.end method

.method public static insertStreamPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 39
    .parameter "context"
    .parameter "account"
    .parameter "streamId"
    .parameter "ownerGaiaId"
    .parameter
    .parameter "offset"
    .parameter "syncState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
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
    .line 783
    .local p4, photos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 785
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    .line 786
    .local v29, startTime:J
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 787
    .local v16, existingPhotos:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 788
    .local v21, notificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/16 v19, 0x0

    .line 791
    .local v19, insertedPhoto:Z
    :try_start_18
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 793
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 796
    .local v11, albumSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-string v3, "photos_in_stream"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "photo_id"

    aput-object v7, v4, v5

    const-string v5, "stream_id=? AND user_id=?"

    const/4 v7, 0x2

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    aput-object p3, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3c
    .catchall {:try_start_18 .. :try_end_3c} :catchall_57

    move-result-object v13

    .line 802
    .local v13, cursor:Landroid/database/Cursor;
    :goto_3d
    :try_start_3d
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 803
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_3d .. :try_end_51} :catchall_52

    goto :goto_3d

    .line 806
    :catchall_52
    move-exception v3

    :try_start_53
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_57

    .line 892
    .end local v11           #albumSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v13           #cursor:Landroid/database/Cursor;
    :catchall_57
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 893
    const-string v4, "EsPhotosData"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 894
    const-string v4, "EsPhotosData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[GET_STREAM_PHOTOS], stream: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", num photos: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", duration: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v29 .. v30}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9a
    throw v3

    .line 806
    .restart local v11       #albumSeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v13       #cursor:Landroid/database/Cursor;
    :cond_9b
    :try_start_9b
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 809
    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoEntityMap(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v14

    .line 811
    .local v14, entityMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v31, Landroid/content/ContentValues;

    invoke-direct/range {v31 .. v31}, Landroid/content/ContentValues;-><init>()V

    .line 812
    .local v31, streamValues:Landroid/content/ContentValues;
    const-string v3, "user_id"

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const-string v3, "stream_id"

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_bf
    :goto_bf
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 816
    .local v6, photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    const-string v3, "EsPhotosData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 817
    const/4 v3, 0x0

    invoke-static {v6, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    .line 821
    :cond_dc
    const-string v3, "photo_id"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1c0

    .line 824
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getId()J

    move-result-wide v24

    .line 825
    .local v24, photoId:J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v15

    .line 827
    .local v15, existingPhoto:Z
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    .line 828
    .local v23, oldEntity:Ljava/lang/Long;
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasEntityVersion()Z

    move-result v3

    if-eqz v3, :cond_151

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getEntityVersion()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 831
    .local v20, newEntity:Ljava/lang/Long;
    :goto_10f
    if-eqz v23, :cond_11b

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19c

    .line 833
    :cond_11b
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v2

    move-object v8, v11

    move-object/from16 v9, v21

    move-object/from16 v10, p6

    invoke-static/range {v3 .. v10}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;ZLjava/util/Set;Ljava/util/List;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_154

    .line 836
    const-string v3, "EsPhotosData"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 837
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

    goto/16 :goto_bf

    .line 828
    .end local v20           #newEntity:Ljava/lang/Long;
    :cond_151
    const/16 v20, 0x0

    goto :goto_10f

    .line 842
    .restart local v20       #newEntity:Ljava/lang/Long;
    :cond_154
    if-nez v19, :cond_15a

    if-nez v15, :cond_15a

    .line 843
    const/16 v19, 0x1

    .line 851
    :cond_15a
    :goto_15a
    const-string v3, "photo_id"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 856
    const-string v3, "photos_in_stream"

    const-string v4, "photo_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 861
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getStreamIdList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_17e
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bf

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 862
    .local v26, photoStream:Ljava/lang/String;
    const-string v3, "stream_id"

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v3, "photos_in_stream"

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_17e

    .line 846
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v26           #photoStream:Ljava/lang/String;
    :cond_19c
    const-string v3, "EsPhotosData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_15a

    .line 847
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

    goto :goto_15a

    .line 867
    .end local v15           #existingPhoto:Z
    .end local v20           #newEntity:Ljava/lang/Long;
    .end local v23           #oldEntity:Ljava/lang/Long;
    .end local v24           #photoId:J
    :cond_1c0
    const-string v3, "EsPhotosData"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 868
    const-string v3, "EsPhotosData"

    const-string v4, "Received non activity photo without an ID"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bf

    .line 875
    .end local v6           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    :cond_1d2
    if-nez p5, :cond_23c

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_23c

    .line 876
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 877
    .local v28, sb:Ljava/lang/StringBuilder;
    new-instance v27, Ljava/util/ArrayList;

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->size()I

    move-result v3

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 878
    .local v27, removedIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "photo_id IN("

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_1f5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_216

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    .line 880
    .local v24, photoId:Ljava/lang/Long;
    const-string v3, "?,"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f5

    .line 883
    .end local v24           #photoId:Ljava/lang/Long;
    :cond_216
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 884
    const-string v3, ")"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    const-string v4, "photos_in_stream"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 890
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v27           #removedIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28           #sb:Ljava/lang/StringBuilder;
    :cond_23c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_23f
    .catchall {:try_start_9b .. :try_end_23f} :catchall_57

    .line 892
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 893
    const-string v3, "EsPhotosData"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_281

    .line 894
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

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

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

    .line 902
    :cond_281
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17       #i$:Ljava/util/Iterator;
    :goto_285
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/Uri;

    .line 903
    .local v22, notifyUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_285

    .line 906
    .end local v22           #notifyUri:Landroid/net/Uri;
    :cond_29c
    if-nez v19, :cond_2a4

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_2c4

    .line 907
    :cond_2a4
    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_STREAM_ID_AND_OWNER_ID_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    .line 908
    .local v12, builder:Landroid/net/Uri$Builder;
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 910
    .restart local v22       #notifyUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 912
    .end local v12           #builder:Landroid/net/Uri$Builder;
    .end local v22           #notifyUri:Landroid/net/Uri;
    :cond_2c4
    return-void
.end method

.method private static final isHex(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 3124
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

.method public static loadLocalBitmap(Landroid/content/Context;Lcom/google/android/apps/plus/content/LocalImageRequest;)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "context"
    .parameter "request"

    .prologue
    .line 311
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/LocalImageRequest;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 312
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/LocalImageRequest;->getWidth()I

    move-result v6

    .line 313
    .local v6, width:I
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/LocalImageRequest;->getHeight()I

    move-result v1

    .line 315
    .local v1, height:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 316
    .local v4, resolver:Landroid/content/ContentResolver;
    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->safeGetMimeType(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, mimeType:Ljava/lang/String;
    :try_start_14
    invoke-static {v2}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isImageMimeType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 321
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v4, v5, v7}, Lcom/google/android/apps/plus/util/ImageUtils;->createLocalBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 340
    :goto_22
    return-object v0

    .line 323
    :cond_23
    invoke-static {v2}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isVideoMimeType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 324
    invoke-static {p0, v5, v6, v1}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->getThumbnail(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_22

    .line 327
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_2e
    const-string v7, "EsPhotosData"

    const/4 v8, 0x5

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 328
    const-string v7, "EsPhotosData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LocalImageRequest#loadBytes: unknown mimeType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_4f} :catch_51

    .line 330
    :cond_4f
    const/4 v0, 0x0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_22

    .line 334
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_51
    move-exception v3

    .line 335
    .local v3, oome:Ljava/lang/OutOfMemoryError;
    const-string v7, "EsPhotosData"

    const/4 v8, 0x6

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 336
    const-string v7, "EsPhotosData"

    const-string v8, "Could not load image"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    :cond_62
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public static loadLocalImageBytes(Landroid/content/Context;Lcom/google/android/apps/plus/content/LocalImageRequest;)[B
    .registers 13
    .parameter "context"
    .parameter "request"

    .prologue
    const/4 v2, 0x0

    .line 272
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/LocalImageRequest;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 273
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/LocalImageRequest;->getWidth()I

    move-result v7

    .line 274
    .local v7, width:I
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/LocalImageRequest;->getHeight()I

    move-result v1

    .line 276
    .local v1, height:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 277
    .local v5, resolver:Landroid/content/ContentResolver;
    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->safeGetMimeType(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, mimeType:Ljava/lang/String;
    :try_start_15
    invoke-static {v3}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isImageMimeType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 282
    invoke-static {v5, v6, v7, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->createCroppedBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 295
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_1f
    if-nez v0, :cond_50

    .line 303
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_21
    :goto_21
    return-object v2

    .line 284
    :cond_22
    invoke-static {v3}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isVideoMimeType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 285
    invoke-static {p0, v6, v7, v1}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->getThumbnail(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1f

    .line 288
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_2d
    const-string v8, "EsPhotosData"

    const/4 v9, 0x5

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 289
    const-string v8, "EsPhotosData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LocalImageRequest#loadBytes: unknown mimeType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_4e
    const/4 v0, 0x0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1f

    .line 295
    :cond_50
    invoke-static {v0}, Lcom/google/android/apps/plus/util/ImageUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B
    :try_end_53
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_53} :catch_55

    move-result-object v2

    goto :goto_21

    .line 297
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_55
    move-exception v4

    .line 298
    .local v4, oome:Ljava/lang/OutOfMemoryError;
    const-string v8, "EsPhotosData"

    const/4 v9, 0x6

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 299
    const-string v8, "EsPhotosData"

    const-string v9, "Could not load image"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method public static loadPicasaImageBytes(Landroid/content/Context;JLjava/lang/String;III)[B
    .registers 35
    .parameter "context"
    .parameter "photoId"
    .parameter "remoteUrl"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"

    .prologue
    .line 178
    invoke-static/range {p0 .. p0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaFacade;->getPhotosUri()Landroid/net/Uri;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    .line 180
    .local v23, photoUri:Landroid/net/Uri;
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v27

    .line 182
    .local v27, uriBuilder:Landroid/net/Uri$Builder;
    if-eqz p3, :cond_27

    const-string v3, "content:"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 183
    const-string v3, "content_url"

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 186
    :cond_27
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 187
    .local v22, maxDimension:I
    const/16 v3, 0x12c

    move/from16 v0, v22

    if-le v0, v3, :cond_101

    const-string v19, "screennail"

    .line 190
    .local v19, imageType:Ljava/lang/String;
    :goto_33
    const-string v3, "type"

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 192
    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v24

    .line 194
    .local v24, queryUri:Landroid/net/Uri;
    const/16 v3, 0x12c

    move/from16 v0, v22

    if-le v0, v3, :cond_105

    const v20, 0x19000

    .line 195
    .local v20, initialStreamSize:I
    :goto_49
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    move/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 196
    .local v12, baos:Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 198
    .local v25, startTime:J
    const/16 v16, 0x2800

    .line 199
    .local v16, downloadBufferSize:I
    const/16 v3, 0x2800

    :try_start_58
    new-array v11, v3, [B

    .line 202
    .local v11, array:[B
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_63
    .catchall {:try_start_58 .. :try_end_63} :catchall_248
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_63} :catch_114
    .catch Ljava/lang/OutOfMemoryError; {:try_start_58 .. :try_end_63} :catch_1ed

    move-result-object v21

    .line 206
    .local v21, is:Ljava/io/InputStream;
    :goto_64
    :try_start_64
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .line 207
    .local v13, bytesRead:I
    const/4 v3, -0x1

    if-ne v13, v3, :cond_109

    .line 212
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    .line 213
    .local v18, imageArray:[B
    const-string v3, "EsPhotosData"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_af

    .line 214
    const-string v5, "EsPhotosData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "]; size: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    array-length v6, v0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", url: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p3, :cond_197

    const-string v3, "<< NULL >>"

    :goto_a4
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catchall {:try_start_64 .. :try_end_af} :catchall_10f

    .line 220
    :cond_af
    :try_start_af
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_248
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_298
    .catch Ljava/lang/OutOfMemoryError; {:try_start_af .. :try_end_b2} :catch_1ed

    .line 237
    :goto_b2
    const-string v3, "EsPhotosData"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_fd

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v14, v5, v25

    .line 239
    .local v14, deltaTime:J
    const-string v3, "EsPhotosData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]; Done in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    div-long v6, v14, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    rem-long v6, v14, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " seconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v14           #deltaTime:J
    :cond_fd
    :try_start_fd
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_100} :catch_29b

    .line 246
    .end local v11           #array:[B
    .end local v13           #bytesRead:I
    .end local v18           #imageArray:[B
    .end local v21           #is:Ljava/io/InputStream;
    :goto_100
    return-object v18

    .line 187
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v16           #downloadBufferSize:I
    .end local v19           #imageType:Ljava/lang/String;
    .end local v20           #initialStreamSize:I
    .end local v24           #queryUri:Landroid/net/Uri;
    .end local v25           #startTime:J
    :cond_101
    const-string v19, "thumbnail"

    goto/16 :goto_33

    .line 194
    .restart local v19       #imageType:Ljava/lang/String;
    .restart local v24       #queryUri:Landroid/net/Uri;
    :cond_105
    const/16 v20, 0x2800

    goto/16 :goto_49

    .line 210
    .restart local v11       #array:[B
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #bytesRead:I
    .restart local v16       #downloadBufferSize:I
    .restart local v20       #initialStreamSize:I
    .restart local v21       #is:Ljava/io/InputStream;
    .restart local v25       #startTime:J
    :cond_109
    const/4 v3, 0x0

    :try_start_10a
    invoke-virtual {v12, v11, v3, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_10f

    goto/16 :goto_64

    .line 219
    .end local v13           #bytesRead:I
    :catchall_10f
    move-exception v3

    .line 220
    :try_start_110
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_113
    .catchall {:try_start_110 .. :try_end_113} :catchall_248
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_113} :catch_29e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_110 .. :try_end_113} :catch_1ed

    .line 221
    :goto_113
    :try_start_113
    throw v3
    :try_end_114
    .catchall {:try_start_113 .. :try_end_114} :catchall_248
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_114} :catch_114
    .catch Ljava/lang/OutOfMemoryError; {:try_start_113 .. :try_end_114} :catch_1ed

    .line 223
    .end local v11           #array:[B
    .end local v21           #is:Ljava/io/InputStream;
    :catch_114
    move-exception v17

    .line 224
    .local v17, e:Ljava/io/IOException;
    :try_start_115
    const-string v3, "EsPhotosData"

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    if-eqz p3, :cond_19b

    const-string v3, "content:"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19b

    .line 227
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v4

    .line 228
    .local v4, account:Lcom/google/android/apps/plus/content/EsAccount;
    new-instance v2, Lcom/google/android/apps/plus/api/DownloadPicasaPhotoOperation;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v2 .. v10}, Lcom/google/android/apps/plus/api/DownloadPicasaPhotoOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;IIILandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 231
    .local v2, op:Lcom/google/android/apps/plus/api/DownloadPicasaPhotoOperation;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/DownloadPicasaPhotoOperation;->start()V

    .line 232
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/DownloadPicasaPhotoOperation;->getBytes()[B
    :try_end_143
    .catchall {:try_start_115 .. :try_end_143} :catchall_248

    move-result-object v18

    .line 237
    const-string v3, "EsPhotosData"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_18f

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v14, v5, v25

    .line 239
    .restart local v14       #deltaTime:J
    const-string v3, "EsPhotosData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]; Done in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    div-long v6, v14, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    rem-long v6, v14, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " seconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v14           #deltaTime:J
    :cond_18f
    :try_start_18f
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_192} :catch_194

    goto/16 :goto_100

    .line 244
    :catch_194
    move-exception v3

    goto/16 :goto_100

    .end local v2           #op:Lcom/google/android/apps/plus/api/DownloadPicasaPhotoOperation;
    .end local v4           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v17           #e:Ljava/io/IOException;
    .restart local v11       #array:[B
    .restart local v13       #bytesRead:I
    .restart local v18       #imageArray:[B
    .restart local v21       #is:Ljava/io/InputStream;
    :cond_197
    move-object/from16 v3, p3

    .line 214
    goto/16 :goto_a4

    .line 237
    .end local v11           #array:[B
    .end local v13           #bytesRead:I
    .end local v18           #imageArray:[B
    .end local v21           #is:Ljava/io/InputStream;
    .restart local v17       #e:Ljava/io/IOException;
    :cond_19b
    const-string v3, "EsPhotosData"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1e6

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v14, v5, v25

    .line 239
    .restart local v14       #deltaTime:J
    const-string v3, "EsPhotosData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]; Done in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    div-long v6, v14, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    rem-long v6, v14, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " seconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v14           #deltaTime:J
    :cond_1e6
    :try_start_1e6
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1e9
    .catch Ljava/io/IOException; {:try_start_1e6 .. :try_end_1e9} :catch_2a1

    .line 246
    .end local v17           #e:Ljava/io/IOException;
    :goto_1e9
    const/16 v18, 0x0

    goto/16 :goto_100

    .line 234
    :catch_1ed
    move-exception v17

    .line 235
    .local v17, e:Ljava/lang/OutOfMemoryError;
    :try_start_1ee
    const-string v3, "EsPhotosData"

    const-string v5, "#loadPicasaImageBytes"

    move-object/from16 v0, v17

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f7
    .catchall {:try_start_1ee .. :try_end_1f7} :catchall_248

    .line 237
    const-string v3, "EsPhotosData"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_242

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v14, v5, v25

    .line 239
    .restart local v14       #deltaTime:J
    const-string v3, "EsPhotosData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]; Done in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    div-long v6, v14, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    rem-long v6, v14, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " seconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v14           #deltaTime:J
    :cond_242
    :try_start_242
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_245
    .catch Ljava/io/IOException; {:try_start_242 .. :try_end_245} :catch_246

    goto :goto_1e9

    .line 244
    :catch_246
    move-exception v3

    goto :goto_1e9

    .line 237
    .end local v17           #e:Ljava/lang/OutOfMemoryError;
    :catchall_248
    move-exception v3

    const-string v5, "EsPhotosData"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_294

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v14, v5, v25

    .line 239
    .restart local v14       #deltaTime:J
    const-string v5, "EsPhotosData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]; Done in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    div-long v7, v14, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    rem-long v7, v14, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v14           #deltaTime:J
    :cond_294
    :try_start_294
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_297
    .catch Ljava/io/IOException; {:try_start_294 .. :try_end_297} :catch_2a4

    .line 244
    :goto_297
    throw v3

    .line 221
    .restart local v11       #array:[B
    .restart local v13       #bytesRead:I
    .restart local v18       #imageArray:[B
    .restart local v21       #is:Ljava/io/InputStream;
    :catch_298
    move-exception v3

    goto/16 :goto_b2

    .line 244
    :catch_29b
    move-exception v3

    goto/16 :goto_100

    .line 221
    .end local v13           #bytesRead:I
    .end local v18           #imageArray:[B
    :catch_29e
    move-exception v5

    goto/16 :goto_113

    .line 244
    .end local v11           #array:[B
    .end local v21           #is:Ljava/io/InputStream;
    .local v17, e:Ljava/io/IOException;
    :catch_2a1
    move-exception v3

    goto/16 :goto_1e9

    .end local v17           #e:Ljava/io/IOException;
    :catch_2a4
    move-exception v5

    goto :goto_297
.end method

.method public static loadRemoteImageBytes(Landroid/content/Context;Lcom/google/android/apps/plus/content/RemoteImageRequest;)[B
    .registers 13
    .parameter "context"
    .parameter "request"

    .prologue
    .line 254
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/RemoteImageRequest;->getPhotoId()J

    move-result-wide v9

    .line 255
    .local v9, photoId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-eqz v0, :cond_21

    .line 256
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/RemoteImageRequest;->getPhotoId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/RemoteImageRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/RemoteImageRequest;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/RemoteImageRequest;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsPhotosData;->loadPicasaImageBytes(Landroid/content/Context;JLjava/lang/String;III)[B

    move-result-object v0

    .line 263
    :goto_20
    return-object v0

    .line 259
    :cond_21
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v7

    .line 260
    .local v7, account:Lcom/google/android/apps/plus/content/EsAccount;
    new-instance v8, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/RemoteImageRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, p0, v7, v0}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 262
    .local v8, op:Lcom/google/android/apps/plus/api/DownloadPhotoOperation;
    invoke-virtual {v8}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->start()V

    .line 263
    invoke-virtual {v8}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->getBytes()[B

    move-result-object v0

    goto :goto_20
.end method

.method private static notifyAlbumChange(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "albumId"

    .prologue
    .line 3071
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_ALBUM_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3073
    .local v0, notifyUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3074
    return-void
.end method

.method private static notifyAllAlbumChange(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"

    .prologue
    .line 3064
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->ALBUM_VIEW_BY_OWNER_URI:Landroid/net/Uri;

    invoke-static {v1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3065
    .local v0, notifyUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3066
    return-void
.end method

.method private static notifyPhotoChange(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "photoId"

    .prologue
    .line 3079
    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_PHOTO_ID_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3081
    .local v0, notifyUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3082
    return-void
.end method

.method public static plusOnePhotoComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 24
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentId"
    .parameter "plusOne"

    .prologue
    .line 1749
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1750
    .local v16, startTime:J
    const-wide/16 v13, 0x0

    .line 1752
    .local v13, photoId:J
    const-string v2, "EsPhotosData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1753
    const-string v2, "EsPhotosData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> plusOnePhotoComment activity id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", comment id: "

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

    .line 1757
    :cond_41
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1760
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v15, 0x0

    .line 1763
    .local v15, poData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v5, v2

    .line 1764
    .local v5, queryArgs:[Ljava/lang/String;
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

    move-result-object v10

    .line 1769
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_68
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1771
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 1772
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1774
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_7a
    .catchall {:try_start_68 .. :try_end_7a} :catchall_104

    move-result v2

    if-nez v2, :cond_86

    .line 1776
    const/4 v2, 0x1

    :try_start_7e
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :try_end_85
    .catchall {:try_start_7e .. :try_end_85} :catchall_104
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_7e .. :try_end_85} :catch_fb

    move-result-object v15

    .line 1782
    :cond_86
    :goto_86
    :try_start_86
    move/from16 v0, p4

    invoke-static {v15, v0}, Lcom/google/android/apps/plus/content/EsPostsData;->updatePlusOneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v9

    .line 1784
    .local v9, builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    new-instance v18, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1785
    .local v18, values:Landroid/content/ContentValues;
    const-string v3, "plusone_data"

    if-eqz v9, :cond_131

    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v2

    :goto_a0
    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1788
    const-string v2, "photo_comment"

    const-string v3, "comment_id=?"

    move-object/from16 v0, v18

    invoke-virtual {v1, v2, v0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1791
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b1
    .catchall {:try_start_86 .. :try_end_b1} :catchall_104

    .line 1794
    .end local v9           #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_b1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1796
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1797
    const-string v2, "EsPhotosData"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 1798
    const-string v2, "EsPhotosData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PLUSONE_PHOTO_COMMENT], duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v16 .. v17}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    :cond_dc
    const-wide/16 v2, 0x0

    cmp-long v2, v13, v2

    if-eqz v2, :cond_f0

    .line 1805
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_BY_PHOTO_ID_URI:Landroid/net/Uri;

    invoke-static {v2, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 1807
    .local v12, notifyUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1809
    .end local v12           #notifyUri:Landroid/net/Uri;
    :cond_f0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1811
    return-object v15

    .line 1777
    :catch_fb
    move-exception v11

    .line 1778
    .local v11, ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_fc
    const-string v2, "EsPhotosData"

    const-string v3, "Could not parse protobuf"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_103
    .catchall {:try_start_fc .. :try_end_103} :catchall_104

    goto :goto_86

    .line 1794
    .end local v11           #ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_104
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1796
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1797
    const-string v3, "EsPhotosData"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_130

    .line 1798
    const-string v3, "EsPhotosData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PLUSONE_PHOTO_COMMENT], duration: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v16 .. v17}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_130
    throw v2

    .line 1785
    .restart local v9       #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .restart local v18       #values:Landroid/content/ContentValues;
    :cond_131
    const/4 v2, 0x0

    goto/16 :goto_a0
.end method

.method public static plusOnePhotoComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Z)V
    .registers 21
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentId"
    .parameter "plusOneData"
    .parameter "plusOne"

    .prologue
    .line 1661
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1663
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1664
    .local v8, startTime:J
    const-wide/16 v4, 0x0

    .line 1666
    .local v4, photoId:J
    const-string v11, "EsPhotosData"

    const/4 v12, 0x3

    invoke-static {v11, v12}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_81

    .line 1667
    const-string v12, "EsPhotosData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ">> plusOnePhotoComment activity id: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", comment id: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", plus one id: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz p4, :cond_117

    invoke-virtual/range {p4 .. p4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;

    move-result-object v11

    :goto_42
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", local plus one: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", server plus one: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz p4, :cond_11b

    invoke-virtual/range {p4 .. p4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    :goto_62
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", total plus ones: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz p4, :cond_11f

    invoke-virtual/range {p4 .. p4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :goto_76
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    :cond_81
    :try_start_81
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1680
    const/4 v11, 0x1

    new-array v7, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p3, v7, v11
    :try_end_8a
    .catchall {:try_start_81 .. :try_end_8a} :catchall_179

    .line 1683
    .local v7, queryArgs:[Ljava/lang/String;
    :try_start_8a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1684
    .local v6, query:Ljava/lang/StringBuilder;
    const-string v11, "SELECT photo_id FROM "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "photo_comment"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " WHERE "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "comment_id=?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1689
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11, v7}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_ad
    .catchall {:try_start_8a .. :try_end_ad} :catchall_179
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_8a .. :try_end_ad} :catch_123

    move-result-wide v4

    .line 1698
    :try_start_ae
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1699
    .local v10, values:Landroid/content/ContentValues;
    if-eqz p5, :cond_1a3

    .line 1700
    if-eqz p4, :cond_170

    .line 1701
    const-string v11, "plusone_data"

    invoke-virtual/range {p4 .. p4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1713
    :goto_c0
    invoke-virtual {v10}, Landroid/content/ContentValues;->size()I

    move-result v11

    if-lez v11, :cond_d0

    .line 1714
    const-string v11, "photo_comment"

    const-string v12, "comment_id=?"

    invoke-virtual {v1, v11, v10, v12, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1717
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d0
    .catchall {:try_start_ae .. :try_end_d0} :catchall_179

    .line 1720
    :cond_d0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1721
    const-string v11, "EsPhotosData"

    const/4 v12, 0x4

    invoke-static {v11, v12}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_f8

    .line 1722
    const-string v11, "EsPhotosData"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[PLUSONE_PHOTO_COMMENT], duration: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :cond_f8
    const-wide/16 v11, 0x0

    cmp-long v11, v4, v11

    if-eqz v11, :cond_10c

    .line 1729
    sget-object v11, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_BY_PHOTO_ID_URI:Landroid/net/Uri;

    invoke-static {v11, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1731
    .local v3, notifyUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v3, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1733
    .end local v3           #notifyUri:Landroid/net/Uri;
    :cond_10c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_URI:Landroid/net/Uri;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1734
    .end local v6           #query:Ljava/lang/StringBuilder;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_116
    :goto_116
    return-void

    .line 1667
    .end local v7           #queryArgs:[Ljava/lang/String;
    :cond_117
    const-string v11, "no data"

    goto/16 :goto_42

    :cond_11b
    const-string v11, "no data"

    goto/16 :goto_62

    :cond_11f
    const-string v11, "no data"

    goto/16 :goto_76

    .line 1690
    .restart local v7       #queryArgs:[Ljava/lang/String;
    :catch_123
    move-exception v2

    .line 1692
    .local v2, e:Landroid/database/sqlite/SQLiteDoneException;
    :try_start_124
    const-string v11, "EsPhotosData"

    const/4 v12, 0x3

    invoke-static {v11, v12}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_147

    .line 1693
    const-string v11, "EsPhotosData"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not find photo for comment id: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_147
    .catchall {:try_start_124 .. :try_end_147} :catchall_179

    .line 1720
    :cond_147
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1721
    const-string v11, "EsPhotosData"

    const/4 v12, 0x4

    invoke-static {v11, v12}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_116

    .line 1722
    const-string v11, "EsPhotosData"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[PLUSONE_PHOTO_COMMENT], duration: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_116

    .line 1703
    .end local v2           #e:Landroid/database/sqlite/SQLiteDoneException;
    .restart local v6       #query:Ljava/lang/StringBuilder;
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_170
    :try_start_170
    const-string v11, "EsPhotosData"

    const-string v12, "plusOne did not receive PlusOneData for +1"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_177
    .catchall {:try_start_170 .. :try_end_177} :catchall_179

    goto/16 :goto_c0

    .line 1720
    .end local v6           #query:Ljava/lang/StringBuilder;
    .end local v7           #queryArgs:[Ljava/lang/String;
    .end local v10           #values:Landroid/content/ContentValues;
    :catchall_179
    move-exception v11

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1721
    const-string v12, "EsPhotosData"

    const/4 v13, 0x4

    invoke-static {v12, v13}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_1a2

    .line 1722
    const-string v12, "EsPhotosData"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[PLUSONE_PHOTO_COMMENT], duration: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a2
    throw v11

    .line 1706
    .restart local v6       #query:Ljava/lang/StringBuilder;
    .restart local v7       #queryArgs:[Ljava/lang/String;
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_1a3
    if-eqz p4, :cond_1b0

    .line 1707
    :try_start_1a5
    const-string v11, "plusone_data"

    invoke-virtual/range {p4 .. p4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_c0

    .line 1709
    :cond_1b0
    const-string v11, "EsPhotosData"

    const-string v12, "plusOne did not receive PlusOneData for +1"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b7
    .catchall {:try_start_1a5 .. :try_end_1b7} :catchall_179

    goto/16 :goto_c0
.end method

.method private static removePlusOneRow(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 8
    .parameter "db"
    .parameter "photoId"

    .prologue
    .line 2725
    const-string v0, "photo_plusone"

    const-string v1, "photo_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2727
    return-void
.end method

.method public static setPhotoAbuseReported(Ljava/lang/String;J)V
    .registers 6
    .parameter "ownerGaiaId"
    .parameter "photoId"

    .prologue
    .line 2073
    const-string v0, "EsPhotosData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2074
    const-string v0, "EsPhotosData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> setPhotoAbuseReported photo id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    :cond_21
    return-void
.end method

.method public static setPhotoCommentPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V
    .registers 19
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentId"
    .parameter "plusOneData"

    .prologue
    .line 1825
    const-string v2, "EsPhotosData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1826
    const-string v2, "EsPhotosData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>> setPhotoCommentPostPlusOne activity id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", comment id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :cond_2f
    const-wide/16 v11, 0x0

    .line 1831
    .local v11, photoId:J
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1835
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v5, v2

    .line 1836
    .local v5, queryArgs:[Ljava/lang/String;
    const-string v2, "photo_comment"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "photo_id"

    aput-object v6, v3, v4

    const-string v4, "comment_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1841
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_52
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1843
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 1844
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1846
    new-instance v13, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v13, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1847
    .local v13, values:Landroid/content/ContentValues;
    const-string v3, "plusone_data"

    if-eqz p4, :cond_a0

    invoke-virtual/range {p4 .. p4}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->toByteArray()[B

    move-result-object v2

    :goto_6e
    invoke-virtual {v13, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1850
    const-string v2, "photo_comment"

    const-string v3, "comment_id=?"

    invoke-virtual {v1, v2, v13, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1853
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7b
    .catchall {:try_start_52 .. :try_end_7b} :catchall_a2

    .line 1856
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_7b
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1858
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1862
    const-wide/16 v2, 0x0

    cmp-long v2, v11, v2

    if-eqz v2, :cond_95

    .line 1863
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_COMMENTS_BY_PHOTO_ID_URI:Landroid/net/Uri;

    invoke-static {v2, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 1865
    .local v10, notifyUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v10, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1867
    .end local v10           #notifyUri:Landroid/net/Uri;
    :cond_95
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1868
    return-void

    .line 1847
    .restart local v13       #values:Landroid/content/ContentValues;
    :cond_a0
    const/4 v2, 0x0

    goto :goto_6e

    .line 1856
    .end local v13           #values:Landroid/content/ContentValues;
    :catchall_a2
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1858
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public static syncPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 3
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    .line 2196
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/content/EsPhotosData;->syncTopLevel(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z

    .line 2197
    return-void
.end method

.method private static syncTopLevel(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    const/4 v3, 0x0

    const/16 v9, 0x1f4

    const/4 v8, 0x3

    const/4 v5, 0x0

    .line 2206
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2238
    :goto_b
    return v5

    .line 2210
    :cond_c
    const-string v1, "EsPhotosData"

    invoke-static {v1, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2211
    const-string v1, "EsPhotosData"

    const-string v2, "    #syncTopLevel(); start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    :cond_1b
    const-string v1, "Photos:TopLevel"

    invoke-virtual {p2, v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 2215
    new-instance v0, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;ZLcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 2219
    .local v0, eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->photosHome()V

    .line 2220
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getAlbumList()V

    .line 2221
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "camera_sync_created"

    invoke-virtual {v0, v1, v2, v5, v9}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getStreamPhotos(Ljava/lang/String;Ljava/lang/String;II)V

    .line 2223
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "updates"

    invoke-virtual {v0, v1, v2, v5, v9}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getStreamPhotos(Ljava/lang/String;Ljava/lang/String;II)V

    .line 2225
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPhotosOfUser(Ljava/lang/String;)V

    .line 2226
    new-instance v1, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-direct {v1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;-><init>()V

    invoke-virtual {v0, p2, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    .line 2227
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->hasError()Z

    move-result v1

    if-nez v1, :cond_6d

    const/4 v7, 0x1

    .line 2229
    .local v7, success:Z
    :goto_57
    if-eqz v7, :cond_6f

    .line 2230
    const-string v1, "EsPhotosData"

    invoke-static {v1, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 2231
    const-string v1, "EsPhotosData"

    const-string v2, "    #syncTopLevel(); completed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    :cond_68
    :goto_68
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    move v5, v7

    .line 2238
    goto :goto_b

    .end local v7           #success:Z
    :cond_6d
    move v7, v5

    .line 2227
    goto :goto_57

    .line 2234
    .restart local v7       #success:Z
    :cond_6f
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

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68
.end method

.method private static updateCommentCount(Landroid/database/sqlite/SQLiteDatabase;JI)V
    .registers 15
    .parameter "db"
    .parameter "photoId"
    .parameter "delta"

    .prologue
    .line 2847
    if-nez p3, :cond_3

    .line 2880
    :cond_2
    :goto_2
    return-void

    .line 2852
    :cond_3
    const-string v7, "photo_id=?"

    .line 2853
    .local v7, where:Ljava/lang/String;
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 2856
    .local v8, whereArgs:[Ljava/lang/String;
    :try_start_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2857
    .local v5, query:Ljava/lang/StringBuilder;
    const-string v9, "SELECT "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "comment_count"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " FROM "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "photo"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " WHERE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "photo_id=?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2864
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9, v8}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_3e
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_f .. :try_end_3e} :catch_64

    move-result-wide v0

    .line 2870
    .end local v5           #query:Ljava/lang/StringBuilder;
    .local v0, commentCount:J
    :goto_3f
    const-wide/16 v9, 0x0

    cmp-long v9, v0, v9

    if-ltz v9, :cond_2

    .line 2871
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2872
    .local v6, values:Landroid/content/ContentValues;
    int-to-long v9, p3

    add-long v3, v0, v9

    .line 2875
    .local v3, finalCount:J
    const-wide/16 v9, 0x0

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 2877
    const-string v9, "comment_count"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2878
    const-string v9, "photo"

    const-string v10, "photo_id=?"

    invoke-virtual {p0, v9, v6, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 2865
    .end local v0           #commentCount:J
    .end local v3           #finalCount:J
    .end local v6           #values:Landroid/content/ContentValues;
    :catch_64
    move-exception v2

    .line 2867
    .local v2, e:Landroid/database/sqlite/SQLiteDoneException;
    const-wide/16 v0, -0x1

    .restart local v0       #commentCount:J
    goto :goto_3f
.end method

.method public static updatePhotoPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;JJZ)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 25
    .parameter "context"
    .parameter "account"
    .parameter "ownerGaiaId"
    .parameter "photoId"
    .parameter "albumId"
    .parameter "plusOned"

    .prologue
    .line 1476
    const-string v5, "EsPhotosData"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 1477
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1478
    .local v15, logBuffer:Ljava/lang/StringBuilder;
    const-string v5, ">> updatePhotoPlusOne owner id: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    const-wide/16 v5, 0x0

    cmp-long v5, p5, v5

    if-eqz v5, :cond_2a

    .line 1481
    const-string v5, ", album id: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1484
    :cond_2a
    const-string v5, ", photo id: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", +1 by me: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1488
    const-string v5, "EsPhotosData"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    .end local v15           #logBuffer:Ljava/lang/StringBuilder;
    :cond_4a
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1494
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v16, 0x0

    .line 1495
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

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1501
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_71
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_87

    .line 1502
    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_7b
    .catchall {:try_start_71 .. :try_end_7b} :catchall_b0

    move-result v5

    if-nez v5, :cond_87

    .line 1504
    const/4 v5, 0x0

    :try_start_7f
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_b0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_7f .. :try_end_86} :catch_a7

    move-result-object v16

    .line 1512
    :cond_87
    :goto_87
    :try_start_87
    move-object/from16 v0, v16

    move/from16 v1, p7

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsPostsData;->updatePlusOneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v12

    .line 1513
    .local v12, builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    if-eqz v12, :cond_b5

    .line 1514
    invoke-virtual {v12}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-static {v4, v5, v0, v1}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertOrUpdatePlusOneRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;J)Z

    .line 1519
    :goto_9a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->notifyPhotoChange(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V
    :try_end_a3
    .catchall {:try_start_87 .. :try_end_a3} :catchall_b0

    .line 1521
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1524
    return-object v16

    .line 1505
    .end local v12           #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    :catch_a7
    move-exception v14

    .line 1506
    .local v14, ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_a8
    const-string v5, "EsPhotosData"

    const-string v6, "updatePhotoPlusOne"

    invoke-static {v5, v6, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_af
    .catchall {:try_start_a8 .. :try_end_af} :catchall_b0

    goto :goto_87

    .line 1521
    .end local v14           #ex:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_b0
    move-exception v5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1516
    .restart local v12       #builder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    :cond_b5
    :try_start_b5
    move-wide/from16 v0, p3

    invoke-static {v4, v0, v1}, Lcom/google/android/apps/plus/content/EsPhotosData;->removePlusOneRow(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_ba
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_b0

    goto :goto_9a
.end method

.method public static updatePhotoShapeApproval(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJZ)V
    .registers 31
    .parameter "context"
    .parameter "account"
    .parameter "shapeId"
    .parameter "photoId"
    .parameter "approve"

    .prologue
    .line 1881
    const-string v20, "EsPhotosData"

    const/16 v21, 0x3

    invoke-static/range {v20 .. v21}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_34

    .line 1882
    const-string v20, "EsPhotosData"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, ">> updatePhotoShape photo id: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", approved? "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    :cond_34
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1887
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 1890
    .local v13, startTime:J
    :try_start_40
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1893
    const-string v9, "type=1"
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_1c9

    .line 1897
    .local v9, photosWhere:Ljava/lang/String;
    :try_start_45
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1898
    .local v10, query:Ljava/lang/StringBuilder;
    const-string v20, "SELECT "

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "notification_count"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " FROM "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "photo_home"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " WHERE "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "type=1"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1905
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v4, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_7c
    .catchall {:try_start_45 .. :try_end_7c} :catchall_1c9
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_45 .. :try_end_7c} :catch_196

    move-result-wide v6

    .line 1914
    .end local v10           #query:Ljava/lang/StringBuilder;
    .local v6, notificationCount:J
    :goto_7d
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-lez v20, :cond_a6

    .line 1915
    :try_start_83
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 1916
    .local v19, values:Landroid/content/ContentValues;
    const-string v20, "notification_count"

    const-wide/16 v21, 0x1

    sub-long v21, v6, v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1917
    const-string v20, "photo_home"

    const-string v21, "type=1"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1921
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_a6
    if-nez p6, :cond_10d

    .line 1922
    const-string v17, "shape_id=?"

    .line 1924
    .local v17, subjectWhere:Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v15, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v15, v20
    :try_end_b8
    .catchall {:try_start_83 .. :try_end_b8} :catchall_1c9

    .line 1927
    .local v15, subjectArgs:[Ljava/lang/String;
    :try_start_b8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1928
    .restart local v10       #query:Ljava/lang/StringBuilder;
    const-string v20, "SELECT "

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "subject_id"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " FROM "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "photo_shape"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " WHERE "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "shape_id=?"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1935
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v4, v0, v15}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_eb
    .catchall {:try_start_b8 .. :try_end_eb} :catchall_1c9
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_b8 .. :try_end_eb} :catch_1b0

    move-result-object v16

    .line 1942
    .end local v10           #query:Ljava/lang/StringBuilder;
    .local v16, subjectGaiaId:Ljava/lang/String;
    :goto_ec
    const/16 v20, 0x2

    :try_start_ee
    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    aput-object v16, v18, v20

    const/16 v20, 0x1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v18, v20

    .line 1944
    .local v18, userArgs:[Ljava/lang/String;
    const-string v20, "photos_of_user"

    const-string v21, "photo_of_user_id=? AND photo_id=?"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1949
    .end local v15           #subjectArgs:[Ljava/lang/String;
    .end local v16           #subjectGaiaId:Ljava/lang/String;
    .end local v17           #subjectWhere:Ljava/lang/String;
    .end local v18           #userArgs:[Ljava/lang/String;
    :cond_10d
    const-string v12, "shape_id=? AND status=4"

    .line 1951
    .local v12, shapeWhere:Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v11, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v20

    .line 1953
    .local v11, shapeArgs:[Ljava/lang/String;
    if-eqz p6, :cond_1bc

    .line 1954
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 1955
    .restart local v19       #values:Landroid/content/ContentValues;
    const-string v20, "status"

    const/16 v21, 0x5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1956
    const-string v20, "photo_shape"

    const-string v21, "shape_id=? AND status=4"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v4, v0, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1961
    .end local v19           #values:Landroid/content/ContentValues;
    :goto_13c
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_13f
    .catchall {:try_start_ee .. :try_end_13f} :catchall_1c9

    .line 1963
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1964
    const-string v20, "EsPhotosData"

    const/16 v21, 0x4

    invoke-static/range {v20 .. v21}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_168

    .line 1965
    const-string v20, "EsPhotosData"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[UPDATE_SHAPE_APPROVAL], duration: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v13, v14}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    :cond_168
    sget-object v20, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_SHAPES_BY_PHOTO_ID_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 1973
    .local v8, notifyUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1974
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    sget-object v21, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_HOME_URI:Landroid/net/Uri;

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1975
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    sget-object v21, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_URI:Landroid/net/Uri;

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1976
    return-void

    .line 1906
    .end local v6           #notificationCount:J
    .end local v8           #notifyUri:Landroid/net/Uri;
    .end local v11           #shapeArgs:[Ljava/lang/String;
    .end local v12           #shapeWhere:Ljava/lang/String;
    :catch_196
    move-exception v5

    .line 1908
    .local v5, e:Landroid/database/sqlite/SQLiteDoneException;
    :try_start_197
    const-string v20, "EsPhotosData"

    const/16 v21, 0x4

    invoke-static/range {v20 .. v21}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_1ac

    .line 1909
    const-string v20, "EsPhotosData"

    const-string v21, "Notification count not found; have you sync\'d?"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1911
    :cond_1ac
    const-wide/16 v6, -0x1

    .restart local v6       #notificationCount:J
    goto/16 :goto_7d

    .line 1936
    .end local v5           #e:Landroid/database/sqlite/SQLiteDoneException;
    .restart local v15       #subjectArgs:[Ljava/lang/String;
    .restart local v17       #subjectWhere:Ljava/lang/String;
    :catch_1b0
    move-exception v5

    .line 1938
    .restart local v5       #e:Landroid/database/sqlite/SQLiteDoneException;
    const-string v20, "EsPhotosData"

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1939
    const/16 v16, 0x0

    .restart local v16       #subjectGaiaId:Ljava/lang/String;
    goto/16 :goto_ec

    .line 1958
    .end local v5           #e:Landroid/database/sqlite/SQLiteDoneException;
    .end local v15           #subjectArgs:[Ljava/lang/String;
    .end local v16           #subjectGaiaId:Ljava/lang/String;
    .end local v17           #subjectWhere:Ljava/lang/String;
    .restart local v11       #shapeArgs:[Ljava/lang/String;
    .restart local v12       #shapeWhere:Ljava/lang/String;
    :cond_1bc
    const-string v20, "photo_shape"

    const-string v21, "shape_id=? AND status=4"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1c7
    .catchall {:try_start_197 .. :try_end_1c7} :catchall_1c9

    goto/16 :goto_13c

    .line 1963
    .end local v6           #notificationCount:J
    .end local v9           #photosWhere:Ljava/lang/String;
    .end local v11           #shapeArgs:[Ljava/lang/String;
    .end local v12           #shapeWhere:Ljava/lang/String;
    :catchall_1c9
    move-exception v20

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1964
    const-string v21, "EsPhotosData"

    const/16 v22, 0x4

    invoke-static/range {v21 .. v22}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_1f3

    .line 1965
    const-string v21, "EsPhotosData"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[UPDATE_SHAPE_APPROVAL], duration: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v13, v14}, Lcom/google/android/apps/plus/content/EsPhotosData;->getDeltaTime(J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f3
    throw v20
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
    .line 1341
    .local p2, sections:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;>;"
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1343
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1345
    .local v8, startTime:J
    :try_start_c
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1346
    .local v11, values:Landroid/content/ContentValues;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1347
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1dd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    .line 1348
    .local v6, section:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;
    const-string v12, "EsPhotosData"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_8b

    .line 1349
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->getType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    move-result-object v7

    .line 1350
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

    .line 1357
    .end local v7           #sectionType:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;
    :cond_8b
    if-eqz p3, :cond_90

    .line 1358
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->incrementCount()V

    .line 1361
    :cond_90
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->getType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->getNumber()I

    move-result v10

    .line 1362
    .local v10, type:I
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 1363
    const-string v12, "type"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1364
    const/4 v12, 0x3

    if-ne v10, v12, :cond_12d

    .line 1366
    const-string v12, "photo_count"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1367
    const-string v12, "sort_order"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1372
    :goto_b6
    const-string v12, "timestamp"

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->getTimestampMsec()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1373
    const-string v12, "notification_count"

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->getNotificationCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1376
    invoke-static {v0, v10}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotosHomeRowId(Landroid/database/sqlite/SQLiteDatabase;I)J

    move-result-wide v4

    .line 1377
    .local v4, rowId:J
    const-wide/16 v12, -0x1

    cmp-long v12, v4, v12

    if-eqz v12, :cond_147

    .line 1378
    const-string v12, "photo_home"

    const-string v13, "type=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v0, v12, v11, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1385
    :goto_eb
    const-wide/16 v12, -0x1

    cmp-long v12, v4, v12

    if-nez v12, :cond_150

    .line 1387
    const-string v12, "EsPhotosData"

    const/4 v13, 0x5

    invoke-static {v12, v13}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 1388
    const-string v12, "EsPhotosData"

    const-string v13, "Could not find or create photos home row"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_101
    .catchall {:try_start_c .. :try_end_101} :catchall_103

    goto/16 :goto_18

    .line 1418
    .end local v4           #rowId:J
    .end local v6           #section:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;
    .end local v10           #type:I
    .end local v11           #values:Landroid/content/ContentValues;
    :catchall_103
    move-exception v12

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1419
    const-string v13, "EsPhotosData"

    const/4 v14, 0x4

    invoke-static {v13, v14}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_12c

    .line 1420
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

    :cond_12c
    throw v12

    .line 1369
    .restart local v6       #section:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;
    .restart local v10       #type:I
    .restart local v11       #values:Landroid/content/ContentValues;
    :cond_12d
    :try_start_12d
    const-string v12, "photo_count"

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->getTotalCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1370
    const-string v12, "sort_order"

    const/16 v13, 0x32

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_b6

    .line 1382
    .restart local v4       #rowId:J
    :cond_147
    const-string v12, "photo_home"

    const/4 v13, 0x0

    const/4 v14, 0x4

    invoke-virtual {v0, v12, v13, v11, v14}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    goto :goto_eb

    .line 1394
    :cond_150
    const-string v12, "photo_home_cover"

    const-string v13, "photo_home_key=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v0, v12, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1399
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->getCoverList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_169
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 1400
    .local v3, photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    const-string v12, "EsPhotosData"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_186

    .line 1401
    const/4 v12, 0x0

    invoke-static {v3, v12}, Lcom/google/android/apps/plus/content/EsPhotosData;->getPhotoOutput(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/apps/plus/content/EsPhotosData;->writeToLog(Ljava/lang/String;)V

    .line 1403
    :cond_186
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 1404
    const-string v12, "photo_home_key"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1405
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->hasId()Z

    move-result v12

    if-eqz v12, :cond_1a5

    .line 1406
    const-string v12, "photo_id"

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getId()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1408
    :cond_1a5
    const-string v12, "url"

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    const-string v12, "width"

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getWidth()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1410
    const-string v12, "height"

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getHeight()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1411
    const-string v12, "size"

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getSize()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1412
    const-string v12, "photo_home_cover"

    const/4 v13, 0x0

    const/4 v14, 0x4

    invoke-virtual {v0, v12, v13, v11, v14}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_169

    .line 1416
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .end local v4           #rowId:J
    .end local v6           #section:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;
    .end local v10           #type:I
    :cond_1dd
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1e0
    .catchall {:try_start_12d .. :try_end_1e0} :catchall_103

    .line 1418
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1419
    const-string v12, "EsPhotosData"

    const/4 v13, 0x4

    invoke-static {v12, v13}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_208

    .line 1420
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

    .line 1426
    :cond_208
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_HOME_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1427
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_OF_USER_ID_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1428
    return-void
.end method

.method private static writeToLog(Ljava/lang/String;)V
    .registers 6
    .parameter "logEntry"

    .prologue
    const/16 v4, 0xa

    .line 3172
    const/4 v1, 0x0

    .line 3173
    .local v1, lastIndex:I
    const/4 v2, 0x0

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 3174
    .local v0, index:I
    :goto_8
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1b

    .line 3175
    const-string v2, "EsPhotosData"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    add-int/lit8 v1, v0, 0x1

    .line 3177
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_8

    .line 3179
    :cond_1b
    const-string v2, "EsPhotosData"

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    return-void
.end method
