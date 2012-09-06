.class public Lcom/google/android/apps/unveil/history/SearchHistoryItemFactory;
.super Ljava/lang/Object;
.source "SearchHistoryItemFactory.java"


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/history/SearchHistoryItemFactory;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJsonObject(Lorg/json/JSONObject;)Lcom/google/android/apps/unveil/history/SearchHistoryItem;
    .registers 8
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    .line 36
    if-nez p0, :cond_a

    .line 37
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Null JSON object."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 40
    :cond_a
    const-string v5, "note"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    .line 41
    .local v0, hasNote:Z
    const/4 v4, 0x0

    .line 42
    .local v4, locationDescription:Ljava/lang/String;
    const/4 v1, 0x0

    .line 43
    .local v1, lat:Ljava/lang/Double;
    const/4 v2, 0x0

    .line 44
    .local v2, lng:Ljava/lang/Double;
    const-string v5, "location"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 45
    const-string v5, "location"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 46
    .local v3, location:Lorg/json/JSONObject;
    const-string v5, "description"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 47
    const-string v5, "description"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    :cond_31
    const-string v5, "lat"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55

    const-string v5, "lng"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 50
    const-string v5, "lat"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 51
    const-string v5, "lng"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 55
    .end local v3           #location:Lorg/json/JSONObject;
    :cond_55
    invoke-static {p0}, Lcom/google/android/apps/unveil/history/SearchHistoryItemFactory;->representsPuggleItem(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 56
    invoke-static {p0, v0, v4, v1, v2}, Lcom/google/android/apps/unveil/history/SearchHistoryItemFactory;->toPuggleItem(Lorg/json/JSONObject;ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Lcom/google/android/apps/unveil/history/SearchHistoryPuggleItem;

    move-result-object v5

    .line 58
    :goto_5f
    return-object v5

    :cond_60
    invoke-static {p0, v0, v4, v1, v2}, Lcom/google/android/apps/unveil/history/SearchHistoryItemFactory;->toItem(Lorg/json/JSONObject;ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Lcom/google/android/apps/unveil/history/SearchHistoryItem;

    move-result-object v5

    goto :goto_5f
.end method

.method static getSource(Ljava/lang/String;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;
    .registers 3
    .parameter "sourceString"

    .prologue
    .line 128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 129
    sget-object v1, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->LIVE:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    .line 135
    :goto_8
    return-object v1

    .line 133
    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->valueOf(Ljava/lang/String;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_c} :catch_e

    move-result-object v1

    goto :goto_8

    .line 134
    :catch_e
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->UNKNOWN:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    goto :goto_8
.end method

.method private static representsPuggleItem(Lorg/json/JSONObject;)Z
    .registers 4
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 120
    const-string v1, "querySource"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 121
    const-string v1, "querySource"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/unveil/history/SearchHistoryItemFactory;->getSource(Ljava/lang/String;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    move-result-object v1

    sget-object v2, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->PUGGLE:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    if-ne v1, v2, :cond_18

    const/4 v0, 0x1

    .line 124
    :cond_18
    return v0
.end method

.method private static toItem(Lorg/json/JSONObject;ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Lcom/google/android/apps/unveil/history/SearchHistoryItem;
    .registers 18
    .parameter "object"
    .parameter "hasNote"
    .parameter "locationDescription"
    .parameter "lat"
    .parameter "lng"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/google/android/apps/unveil/history/SearchHistoryItem;

    const-string v1, "momentId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bestTitle"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "creationTime"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "imageUrl"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_79

    const-string v7, "note"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_28
    const-string v8, "isShared"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "isSearchable"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v0 .. v12}, Lcom/google/android/apps/unveil/history/SearchHistoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 80
    .local v0, newItem:Lcom/google/android/apps/unveil/history/SearchHistoryItem;
    invoke-virtual {v0}, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->getMomentId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->getMomentUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/history/SearchHistoryItem;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 83
    :cond_60
    new-instance v1, Ljava/util/zip/DataFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON missing required fields: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    .end local v0           #newItem:Lcom/google/android/apps/unveil/history/SearchHistoryItem;
    :cond_79
    const/4 v7, 0x0

    goto :goto_28

    .line 86
    .restart local v0       #newItem:Lcom/google/android/apps/unveil/history/SearchHistoryItem;
    :cond_7b
    return-object v0
.end method

.method private static toPuggleItem(Lorg/json/JSONObject;ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Lcom/google/android/apps/unveil/history/SearchHistoryPuggleItem;
    .registers 24
    .parameter "object"
    .parameter "hasNote"
    .parameter "locationDescription"
    .parameter "lat"
    .parameter "lng"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 93
    const-string v1, "initialSegmentation"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    .line 94
    .local v18, hasBox:Z
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v16

    .line 95
    .local v16, boxBuilder:Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;
    if-eqz v18, :cond_4c

    .line 96
    const-string v1, "initialSegmentation"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/json/JSONObject;

    .line 97
    .local v17, boxJson:Lorg/json/JSONObject;
    const-string v1, "x"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->setX(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    .line 98
    const-string v1, "y"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->setY(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    .line 99
    const-string v1, "width"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->setWidth(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    .line 100
    const-string v1, "height"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->setHeight(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    .line 103
    .end local v17           #boxJson:Lorg/json/JSONObject;
    :cond_4c
    new-instance v1, Lcom/google/android/apps/unveil/history/SearchHistoryPuggleItem;

    const-string v2, "momentId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bestTitle"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "url"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "creationTime"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v7, "imageUrl"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz p1, :cond_b2

    const-string v8, "note"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_80
    const-string v9, "isShared"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "isSearchable"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "textRestrict"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b4

    const-string v11, "textRestrict"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :goto_a2
    if-eqz v18, :cond_b7

    invoke-virtual/range {v16 .. v16}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->build()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v15

    :goto_a8
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v1 .. v15}, Lcom/google/android/apps/unveil/history/SearchHistoryPuggleItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)V

    return-object v1

    :cond_b2
    const/4 v8, 0x0

    goto :goto_80

    :cond_b4
    const-string v14, ""

    goto :goto_a2

    :cond_b7
    const/4 v15, 0x0

    goto :goto_a8
.end method
