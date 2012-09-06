.class Lcom/google/android/apps/plus/iu/PhotoCollectorJson;
.super Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser;
.source "PhotoCollectorJson.java"


# static fields
.field private static final sMediaContentFieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPhotoEntryFieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v6, 0xa

    .line 28
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/apps/plus/iu/PhotoCollectorJson;->sPhotoEntryFieldMap:Ljava/util/Map;

    .line 33
    sget-object v2, Lcom/google/android/apps/plus/iu/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    .line 34
    .local v2, schema:Lcom/android/gallery3d/common/EntrySchema;
    sget-object v0, Lcom/google/android/apps/plus/iu/PhotoCollectorJson;->sPhotoEntryFieldMap:Ljava/util/Map;

    .line 37
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;>;"
    const-string v3, "gphoto$id"

    const-string v4, "_id"

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/iu/PhotoCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v3, "gphoto$albumid"

    const-string v4, "album_id"

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/iu/PhotoCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v3, "gphoto$timestamp"

    const-string v4, "date_taken"

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/iu/PhotoCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v3, "gphoto$width"

    const-string v4, "width"

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/iu/PhotoCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v3, "gphoto$height"

    const-string v4, "height"

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/iu/PhotoCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v3, "gphoto$size"

    const-string v4, "size"

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/iu/PhotoCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v3, "title"

    const-string v4, "title"

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/iu/PhotoCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v3, "published"

    new-instance v4, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;

    const-string v5, "date_published"

    invoke-direct {v4, v5, v6}, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v3, "updated"

    new-instance v4, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;

    const-string v5, "date_updated"

    invoke-direct {v4, v5, v6}, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v3, "app$edited"

    new-instance v4, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;

    const-string v5, "date_edited"

    invoke-direct {v4, v5, v6}, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v3, "gphoto$streamId"

    new-instance v4, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;

    const/16 v5, 0xd

    invoke-direct {v4, v5}, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;-><init>(I)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v1, mediaGroupMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;>;"
    const-string v3, "media$group"

    new-instance v4, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$NestedObjectField;

    invoke-direct {v4, v1}, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$NestedObjectField;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v3, "media$content"

    new-instance v4, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;

    const/16 v5, 0xe

    invoke-direct {v4, v5}, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;-><init>(I)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/apps/plus/iu/PhotoCollectorJson;->sMediaContentFieldMap:Ljava/util/Map;

    .line 92
    sget-object v3, Lcom/google/android/apps/plus/iu/PhotoCollectorJson;->sMediaContentFieldMap:Ljava/util/Map;

    const-string v4, "type"

    new-instance v5, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;

    const-string v6, "type"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/plus/iu/PicasaApi$EntryHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser;-><init>(Lcom/google/android/apps/plus/iu/PicasaApi$EntryHandler;)V

    .line 60
    return-void
.end method

.method private addMediaContent(Lcom/google/android/apps/plus/json/JsonReader;Landroid/content/ContentValues;)V
    .registers 6
    .parameter "reader"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->beginArray()V

    .line 102
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 103
    .local v0, mediaContentValues:Landroid/content/ContentValues;
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 104
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 105
    sget-object v2, Lcom/google/android/apps/plus/iu/PhotoCollectorJson;->sMediaContentFieldMap:Ljava/util/Map;

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/apps/plus/iu/PhotoCollectorJson;->parseObject(Lcom/google/android/apps/plus/json/JsonReader;Ljava/util/Map;Landroid/content/ContentValues;)V

    .line 106
    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, type:Ljava/lang/String;
    if-eqz v1, :cond_8

    const-string v2, "content_type"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 109
    .end local v1           #type:Ljava/lang/String;
    :cond_24
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->endArray()V

    .line 110
    return-void
.end method

.method private parseStreamIds(Lcom/google/android/apps/plus/json/JsonReader;Landroid/content/ContentValues;)V
    .registers 8
    .parameter "reader"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v2, streamIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->beginArray()V

    .line 131
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 132
    const-string v3, "$t"

    invoke-virtual {p0, p1, v3}, Lcom/google/android/apps/plus/iu/PhotoCollectorJson;->parseObject(Lcom/google/android/apps/plus/json/JsonReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, streamId:Ljava/lang/String;
    if-eqz v1, :cond_8

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 135
    .end local v1           #streamId:Ljava/lang/String;
    :cond_1a
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->endArray()V

    .line 138
    invoke-static {v2}, Lcom/android/gallery3d/common/Fingerprint;->extractFingerprint(Ljava/util/List;)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v0

    .line 139
    .local v0, fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    if-eqz v0, :cond_39

    .line 140
    const-string v3, "fingerprint"

    invoke-virtual {v0}, Lcom/android/gallery3d/common/Fingerprint;->getBytes()[B

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 141
    const-string v3, "fingerprint_hash"

    invoke-virtual {v0}, Lcom/android/gallery3d/common/Fingerprint;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    :cond_39
    return-void
.end method


# virtual methods
.method protected getEntryFieldMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    sget-object v0, Lcom/google/android/apps/plus/iu/PhotoCollectorJson;->sPhotoEntryFieldMap:Ljava/util/Map;

    return-object v0
.end method

.method protected handleComplexValue(Lcom/google/android/apps/plus/json/JsonReader;ILandroid/content/ContentValues;)V
    .registers 4
    .parameter "reader"
    .parameter "type"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    packed-switch p2, :pswitch_data_10

    .line 78
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->skipValue()V

    .line 80
    :goto_6
    return-void

    .line 72
    :pswitch_7
    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/plus/iu/PhotoCollectorJson;->addMediaContent(Lcom/google/android/apps/plus/json/JsonReader;Landroid/content/ContentValues;)V

    goto :goto_6

    .line 75
    :pswitch_b
    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/plus/iu/PhotoCollectorJson;->parseStreamIds(Lcom/google/android/apps/plus/json/JsonReader;Landroid/content/ContentValues;)V

    goto :goto_6

    .line 70
    nop

    :pswitch_data_10
    .packed-switch 0xd
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method
