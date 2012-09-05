.class Lcom/google/android/picasasync/PhotoCollectorJson;
.super Lcom/google/android/picasasync/AlbumCollectorJson;
.source "PhotoCollectorJson.java"


# static fields
.field private static final sMediaContentFieldMap:Ljava/util/Map;
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

.field private static final sPhotoEntryFieldMap:Ljava/util/Map;
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

.field private static final sShapeFieldMap:Ljava/util/Map;
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
    .registers 12

    .prologue
    const/16 v9, 0xa

    const/4 v11, 0x0

    .line 48
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lcom/google/android/picasasync/PhotoCollectorJson;->sPhotoEntryFieldMap:Ljava/util/Map;

    .line 53
    sget-object v3, Lcom/google/android/picasasync/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    .line 54
    .local v3, schema:Lcom/android/gallery3d/common/EntrySchema;
    sget-object v1, Lcom/google/android/picasasync/PhotoCollectorJson;->sPhotoEntryFieldMap:Ljava/util/Map;

    .line 57
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;>;"
    const-string v6, "gphoto$id"

    const-string v7, "_id"

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/picasasync/PhotoCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v6, "gphoto$albumid"

    const-string v7, "album_id"

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/picasasync/PhotoCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v6, "gphoto$timestamp"

    const-string v7, "date_taken"

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/picasasync/PhotoCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v6, "gphoto$width"

    const-string v7, "width"

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/picasasync/PhotoCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v6, "gphoto$height"

    const-string v7, "height"

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/picasasync/PhotoCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v6, "gphoto$size"

    const-string v7, "size"

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/picasasync/PhotoCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v6, "title"

    const-string v7, "title"

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/picasasync/PhotoCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v6, "summary"

    const-string v7, "summary"

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/picasasync/PhotoCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v6, "gphoto$commentCount"

    const-string v7, "comment_count"

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/picasasync/PhotoCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v6, "gphoto$rotation"

    const-string v7, "rotation"

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/picasasync/PhotoCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v6, "published"

    new-instance v7, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const-string v8, "date_published"

    invoke-direct {v7, v8, v9}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v6, "updated"

    new-instance v7, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const-string v8, "date_updated"

    invoke-direct {v7, v8, v9}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v6, "app$edited"

    new-instance v7, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const-string v8, "date_edited"

    invoke-direct {v7, v8, v9}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v6, "link"

    new-instance v7, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const/16 v8, 0xd

    invoke-direct {v7, v8}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(I)V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v6, "gphoto$streamId"

    new-instance v7, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const/16 v8, 0xf

    invoke-direct {v7, v8}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(I)V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v2, mediaGroupMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;>;"
    const-string v6, "media$group"

    new-instance v7, Lcom/google/android/picasasync/PicasaJsonReaderParser$NestedObjectField;

    invoke-direct {v7, v2}, Lcom/google/android/picasasync/PicasaJsonReaderParser$NestedObjectField;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v6, "media$content"

    new-instance v7, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const/16 v8, 0x11

    invoke-direct {v7, v8}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(I)V

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v6, "media$thumbnail"

    new-instance v7, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const/16 v8, 0x12

    invoke-direct {v7, v8}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(I)V

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v6, "media$keywords"

    const-string v7, "keywords"

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/picasasync/PhotoCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v4, shapesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;>;"
    const-string v6, "gphoto$shapes"

    new-instance v7, Lcom/google/android/picasasync/PicasaJsonReaderParser$NestedObjectField;

    invoke-direct {v7, v4}, Lcom/google/android/picasasync/PicasaJsonReaderParser$NestedObjectField;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v6, "gphoto$shape"

    new-instance v7, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const/16 v8, 0x10

    invoke-direct {v7, v8}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(I)V

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 91
    .local v5, whereMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;>;"
    const-string v6, "georss$where"

    new-instance v7, Lcom/google/android/picasasync/PicasaJsonReaderParser$NestedObjectField;

    invoke-direct {v7, v5}, Lcom/google/android/picasasync/PicasaJsonReaderParser$NestedObjectField;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v6, "gml$Point"

    new-instance v7, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const/16 v8, 0xe

    invoke-direct {v7, v8}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(I)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v0, exifMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;>;"
    const-string v6, "exif$tags"

    new-instance v7, Lcom/google/android/picasasync/PicasaJsonReaderParser$NestedObjectField;

    invoke-direct {v7, v0}, Lcom/google/android/picasasync/PicasaJsonReaderParser$NestedObjectField;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v6, "exif$make"

    const-string v7, "exif_make"

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/picasasync/PhotoCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v6, "exif$model"

    const-string v7, "exif_model"

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/picasasync/PhotoCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v6, "exif$exposure"

    const-string v7, "exif_exposure"

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/picasasync/PhotoCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v6, "exif$flash"

    new-instance v7, Lcom/google/android/picasasync/PicasaJsonReaderParser$BooleanObjectField;

    const-string v8, "exif_flash"

    const/4 v9, 0x1

    const/4 v10, 0x2

    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/picasasync/PicasaJsonReaderParser$BooleanObjectField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v6, "exif$focallength"

    const-string v7, "exif_focal_length"

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/picasasync/PhotoCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v6, "exif$iso"

    const-string v7, "exif_iso"

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/picasasync/PhotoCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v6, "exif$fstop"

    const-string v7, "exif_fstop"

    invoke-virtual {v3, v7}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/picasasync/PhotoCollectorJson;->newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lcom/google/android/picasasync/PhotoCollectorJson;->sMediaContentFieldMap:Ljava/util/Map;

    .line 162
    sget-object v6, Lcom/google/android/picasasync/PhotoCollectorJson;->sMediaContentFieldMap:Ljava/util/Map;

    const-string v7, "url"

    new-instance v8, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const-string v9, "url"

    invoke-direct {v8, v9, v11}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v6, Lcom/google/android/picasasync/PhotoCollectorJson;->sMediaContentFieldMap:Ljava/util/Map;

    const-string v7, "type"

    new-instance v8, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const-string v9, "type"

    invoke-direct {v8, v9, v11}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lcom/google/android/picasasync/PhotoCollectorJson;->sShapeFieldMap:Ljava/util/Map;

    .line 216
    sget-object v1, Lcom/google/android/picasasync/PhotoCollectorJson;->sShapeFieldMap:Ljava/util/Map;

    .line 217
    const-string v6, "personid"

    new-instance v7, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const-string v8, "personid"

    invoke-direct {v7, v8, v11}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v6, "name"

    new-instance v7, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const-string v8, "name"

    invoke-direct {v7, v8, v11}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v6, "upperLeft"

    new-instance v7, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const-string v8, "upperLeft"

    invoke-direct {v7, v8, v11}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v6, "lowerRight"

    new-instance v7, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    const-string v8, "lowerRight"

    invoke-direct {v7, v8, v11}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-void
.end method

.method public constructor <init>(Lcom/google/android/picasasync/PicasaApi$EntryHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/AlbumCollectorJson;-><init>(Lcom/google/android/picasasync/PicasaApi$EntryHandler;)V

    .line 110
    return-void
.end method

.method private addLocation(Lcom/google/android/picasasync/JsonReader;Landroid/content/ContentValues;)V
    .registers 7
    .parameter "reader"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    const-string v2, "gml$pos"

    invoke-virtual {p0, p1, v2}, Lcom/google/android/picasasync/PhotoCollectorJson;->parseObject(Lcom/google/android/picasasync/JsonReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, latlon:Ljava/lang/String;
    if-eqz v0, :cond_26

    .line 195
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 196
    .local v1, spaceIndex:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_26

    .line 197
    const-string v2, "latitude"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v2, "longitude"

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .end local v1           #spaceIndex:I
    :cond_26
    return-void
.end method

.method private addMediaContent(Lcom/google/android/picasasync/JsonReader;Landroid/content/ContentValues;)V
    .registers 7
    .parameter "reader"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->beginArray()V

    .line 174
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 175
    .local v0, mediaContentValues:Landroid/content/ContentValues;
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 176
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 177
    sget-object v2, Lcom/google/android/picasasync/PhotoCollectorJson;->sMediaContentFieldMap:Ljava/util/Map;

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/picasasync/PhotoCollectorJson;->parseObject(Lcom/google/android/picasasync/JsonReader;Ljava/util/Map;Landroid/content/ContentValues;)V

    .line 178
    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, type:Ljava/lang/String;
    const-string v2, "content_url"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 180
    :cond_2c
    const-string v2, "content_url"

    const-string v3, "url"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v2, "content_type"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 185
    .end local v1           #type:Ljava/lang/String;
    :cond_3d
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->endArray()V

    .line 186
    return-void
.end method

.method private getFaces(Lcom/google/android/picasasync/JsonReader;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    .registers 14
    .parameter "reader"
    .parameter "faceNames"
    .parameter "faceIds"
    .parameter "faceRects"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x2c

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, faceCount:I
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->beginArray()V

    .line 231
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 232
    .local v4, shapeValues:Landroid/content/ContentValues;
    :cond_b
    :goto_b
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 233
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 234
    sget-object v6, Lcom/google/android/picasasync/PhotoCollectorJson;->sShapeFieldMap:Ljava/util/Map;

    invoke-virtual {p0, p1, v6, v4}, Lcom/google/android/picasasync/PhotoCollectorJson;->parseObject(Lcom/google/android/picasasync/JsonReader;Ljava/util/Map;Landroid/content/ContentValues;)V

    .line 235
    const-string v6, "name"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, name:Ljava/lang/String;
    const-string v6, "personid"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, personId:Ljava/lang/String;
    const-string v6, "upperLeft"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 238
    .local v5, upperLeft:Ljava/lang/String;
    const-string v6, "lowerRight"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, lowerRight:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 241
    add-int/lit8 v0, v0, 0x1

    .line 242
    const/4 v6, 0x1

    if-le v0, v6, :cond_57

    .line 243
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    :cond_57
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 252
    .end local v1           #lowerRight:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #personId:Ljava/lang/String;
    .end local v5           #upperLeft:Ljava/lang/String;
    :cond_6b
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->endArray()V

    .line 253
    return v0
.end method

.method private parseStreamIds(Lcom/google/android/picasasync/JsonReader;Landroid/content/ContentValues;)V
    .registers 8
    .parameter "reader"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v2, streamIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->beginArray()V

    .line 277
    :cond_8
    :goto_8
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 278
    const-string v3, "$t"

    invoke-virtual {p0, p1, v3}, Lcom/google/android/picasasync/PhotoCollectorJson;->parseObject(Lcom/google/android/picasasync/JsonReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, streamId:Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 280
    const-string v3, "camera_sync_created"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 283
    const-string v3, "camera_sync"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_8

    .line 285
    :cond_29
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 289
    .end local v1           #streamId:Ljava/lang/String;
    :cond_2d
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->endArray()V

    .line 292
    invoke-static {v2}, Lcom/android/gallery3d/common/Fingerprint;->extractFingerprint(Ljava/util/List;)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v0

    .line 293
    .local v0, fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    if-eqz v0, :cond_4c

    .line 294
    const-string v3, "fingerprint"

    invoke-virtual {v0}, Lcom/android/gallery3d/common/Fingerprint;->getBytes()[B

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 295
    const-string v3, "fingerprint_hash"

    invoke-virtual {v0}, Lcom/android/gallery3d/common/Fingerprint;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    :cond_4c
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
            "Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    sget-object v0, Lcom/google/android/picasasync/PhotoCollectorJson;->sPhotoEntryFieldMap:Ljava/util/Map;

    return-object v0
.end method

.method protected handleComplexValue(Lcom/google/android/picasasync/JsonReader;ILandroid/content/ContentValues;)V
    .registers 9
    .parameter "reader"
    .parameter "type"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    packed-switch p2, :pswitch_data_4e

    .line 147
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->skipValue()V

    .line 149
    :cond_6
    :goto_6
    return-void

    .line 122
    :pswitch_7
    invoke-virtual {p0, p1, p3}, Lcom/google/android/picasasync/PhotoCollectorJson;->addHtmlPageUrl(Lcom/google/android/picasasync/JsonReader;Landroid/content/ContentValues;)V

    goto :goto_6

    .line 125
    :pswitch_b
    invoke-direct {p0, p1, p3}, Lcom/google/android/picasasync/PhotoCollectorJson;->addMediaContent(Lcom/google/android/picasasync/JsonReader;Landroid/content/ContentValues;)V

    goto :goto_6

    .line 128
    :pswitch_f
    const-string v3, "screennail_url"

    invoke-virtual {p0, p1, p3, v3}, Lcom/google/android/picasasync/PhotoCollectorJson;->addThumbnailUrl(Lcom/google/android/picasasync/JsonReader;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_6

    .line 131
    :pswitch_15
    invoke-direct {p0, p1, p3}, Lcom/google/android/picasasync/PhotoCollectorJson;->addLocation(Lcom/google/android/picasasync/JsonReader;Landroid/content/ContentValues;)V

    goto :goto_6

    .line 134
    :pswitch_19
    invoke-direct {p0, p1, p3}, Lcom/google/android/picasasync/PhotoCollectorJson;->parseStreamIds(Lcom/google/android/picasasync/JsonReader;Landroid/content/ContentValues;)V

    goto :goto_6

    .line 137
    :pswitch_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v1, faceNames:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v0, faceIds:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v2, faceRects:Ljava/lang/StringBuilder;
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/android/picasasync/PhotoCollectorJson;->getFaces(Lcom/google/android/picasasync/JsonReader;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v3

    if-lez v3, :cond_6

    .line 141
    const-string v3, "face_names"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v3, "face_ids"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v3, "face_rectangles"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 120
    :pswitch_data_4e
    .packed-switch 0xd
        :pswitch_7
        :pswitch_15
        :pswitch_19
        :pswitch_1d
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
