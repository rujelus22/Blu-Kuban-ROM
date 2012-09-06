.class Lcom/google/android/picasasync/AlbumCollectorJson;
.super Lcom/google/android/picasasync/PicasaJsonReaderParser;
.source "AlbumCollectorJson.java"


# static fields
.field private static final sAlbumEntryFieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLinkFieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 41
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/picasasync/AlbumCollectorJson;->sAlbumEntryFieldMap:Ljava/util/Map;

    .line 46
    sget-object v2, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    .line 47
    .local v2, schema:Lcom/android/gallery3d/common/EntrySchema;
    sget-object v0, Lcom/google/android/picasasync/AlbumCollectorJson;->sAlbumEntryFieldMap:Ljava/util/Map;

    .line 50
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;>;"
    const-string v3, "gphoto$id"

    const-string v4, "_id"

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasasync/AlbumCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v3, "gphoto$albumType"

    const-string v4, "album_type"

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasasync/AlbumCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v3, "gphoto$user"

    const-string v4, "user"

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasasync/AlbumCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v3, "gphoto$bytesUsed"

    const-string v4, "bytes_used"

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasasync/AlbumCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v3, "title"

    const-string v4, "title"

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasasync/AlbumCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v3, "summary"

    const-string v4, "summary"

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasasync/AlbumCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v3, "gphoto$numphotos"

    const-string v4, "num_photos"

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasasync/AlbumCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v3, "published"

    new-instance v4, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const-string v5, "date_published"

    invoke-direct {v4, v5, v7}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v3, "updated"

    new-instance v4, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const-string v5, "date_updated"

    invoke-direct {v4, v5, v7}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v3, "app$edited"

    new-instance v4, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const-string v5, "date_edited"

    invoke-direct {v4, v5, v7}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v3, "link"

    new-instance v4, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const/16 v5, 0xd

    invoke-direct {v4, v5}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(I)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v1, mediaGroupMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;>;"
    const-string v3, "media$group"

    new-instance v4, Lcom/google/android/picasasync/PicasaJsonReaderParser$NestedObjectField;

    invoke-direct {v4, v1}, Lcom/google/android/picasasync/PicasaJsonReaderParser$NestedObjectField;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v3, "media$thumbnail"

    new-instance v4, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const/16 v5, 0xe

    invoke-direct {v4, v5}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(I)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/picasasync/AlbumCollectorJson;->sLinkFieldMap:Ljava/util/Map;

    .line 105
    sget-object v0, Lcom/google/android/picasasync/AlbumCollectorJson;->sLinkFieldMap:Ljava/util/Map;

    .line 106
    const-string v3, "rel"

    new-instance v4, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const-string v5, "rel"

    invoke-direct {v4, v5, v6}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v3, "type"

    new-instance v4, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const-string v5, "type"

    invoke-direct {v4, v5, v6}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v3, "href"

    new-instance v4, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const-string v5, "href"

    invoke-direct {v4, v5, v6}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/google/android/picasasync/PicasaApi$EntryHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaJsonReaderParser;-><init>(Lcom/google/android/picasasync/PicasaApi$EntryHandler;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected final addHtmlPageUrl(Lcom/google/android/apps/plus/json/JsonReader;Landroid/content/ContentValues;)V
    .registers 8
    .parameter "reader"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->beginArray()V

    .line 118
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 119
    .local v0, linkValues:Landroid/content/ContentValues;
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 120
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 122
    sget-object v3, Lcom/google/android/picasasync/AlbumCollectorJson;->sLinkFieldMap:Ljava/util/Map;

    invoke-virtual {p0, p1, v3, v0}, Lcom/google/android/picasasync/AlbumCollectorJson;->parseObject(Lcom/google/android/apps/plus/json/JsonReader;Ljava/util/Map;Landroid/content/ContentValues;)V

    .line 124
    const-string v3, "rel"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, rel:Ljava/lang/String;
    const-string v3, "type"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, type:Ljava/lang/String;
    const-string v3, "alternate"

    invoke-static {v1, v3}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "text/html"

    invoke-static {v2, v3}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 127
    const-string v3, "html_page_url"

    const-string v4, "href"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_3d
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->skipValue()V

    goto :goto_3d

    .line 134
    .end local v1           #rel:Ljava/lang/String;
    .end local v2           #type:Ljava/lang/String;
    :cond_47
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->endArray()V

    .line 135
    return-void
.end method

.method protected final addThumbnailUrl(Lcom/google/android/apps/plus/json/JsonReader;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 6
    .parameter "reader"
    .parameter "values"
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->beginArray()V

    .line 144
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 145
    const-string v1, "url"

    invoke-virtual {p0, p1, v1}, Lcom/google/android/picasasync/AlbumCollectorJson;->parseObject(Lcom/google/android/apps/plus/json/JsonReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, url:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 148
    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_14
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->skipValue()V

    goto :goto_14

    .line 155
    .end local v0           #url:Ljava/lang/String;
    :cond_1e
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->endArray()V

    .line 156
    return-void
.end method

.method protected getEntryFieldMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lcom/google/android/picasasync/AlbumCollectorJson;->sAlbumEntryFieldMap:Ljava/util/Map;

    return-object v0
.end method

.method protected handleComplexValue(Lcom/google/android/apps/plus/json/JsonReader;ILandroid/content/ContentValues;)V
    .registers 5
    .parameter "reader"
    .parameter "type"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    packed-switch p2, :pswitch_data_12

    .line 90
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->skipValue()V

    .line 92
    :goto_6
    return-void

    .line 84
    :pswitch_7
    invoke-virtual {p0, p1, p3}, Lcom/google/android/picasasync/AlbumCollectorJson;->addHtmlPageUrl(Lcom/google/android/apps/plus/json/JsonReader;Landroid/content/ContentValues;)V

    goto :goto_6

    .line 87
    :pswitch_b
    const-string v0, "thumbnail_url"

    invoke-virtual {p0, p1, p3, v0}, Lcom/google/android/picasasync/AlbumCollectorJson;->addThumbnailUrl(Lcom/google/android/apps/plus/json/JsonReader;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_6

    .line 82
    nop

    :pswitch_data_12
    .packed-switch 0xd
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method
