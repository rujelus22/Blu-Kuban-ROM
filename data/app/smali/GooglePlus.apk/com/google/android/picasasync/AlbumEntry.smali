.class public Lcom/google/android/picasasync/AlbumEntry;
.super Lcom/android/gallery3d/common/Entry;
.source "AlbumEntry.java"


# annotations
.annotation runtime Lcom/android/gallery3d/common/Entry$Table;
    value = "albums"
.end annotation


# static fields
.field public static final SCHEMA:Lcom/android/gallery3d/common/EntrySchema;


# instance fields
.field public albumType:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "album_type"
    .end annotation
.end field

.field public bytesUsed:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "bytes_used"
    .end annotation
.end field

.field public cacheFlag:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        defaultValue = "1"
        value = "cache_flag"
    .end annotation
.end field

.field public cacheStatus:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        defaultValue = "0"
        value = "cache_status"
    .end annotation
.end field

.field public dateEdited:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "date_edited"
    .end annotation
.end field

.field public datePublished:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "date_published"
    .end annotation
.end field

.field public dateUpdated:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "date_updated"
    .end annotation
.end field

.field public htmlPageUrl:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "html_page_url"
    .end annotation
.end field

.field public locationString:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "location_string"
    .end annotation
.end field

.field public numPhotos:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "num_photos"
    .end annotation
.end field

.field public photosDirty:Z
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "photos_dirty"
    .end annotation
.end field

.field public photosEtag:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "photos_etag"
    .end annotation
.end field

.field public summary:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "summary"
    .end annotation
.end field

.field public thumbnailUrl:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "thumbnail_url"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "title"
    .end annotation
.end field

.field public user:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "user"
    .end annotation
.end field

.field public userId:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        indexed = true
        value = "user_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28
    new-instance v0, Lcom/android/gallery3d/common/EntrySchema;

    const-class v1, Lcom/google/android/picasasync/AlbumEntry;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/common/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/gallery3d/common/Entry;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasasync/AlbumEntry;->photosEtag:Ljava/lang/String;

    .line 145
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 167
    instance-of v2, p1, Lcom/google/android/picasasync/AlbumEntry;

    if-nez v2, :cond_6

    .line 169
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 168
    check-cast v0, Lcom/google/android/picasasync/AlbumEntry;

    .line 169
    .local v0, p:Lcom/google/android/picasasync/AlbumEntry;
    iget-wide v2, p0, Lcom/google/android/picasasync/AlbumEntry;->userId:J

    iget-wide v4, v0, Lcom/google/android/picasasync/AlbumEntry;->userId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget v2, p0, Lcom/google/android/picasasync/AlbumEntry;->cacheFlag:I

    iget v3, v0, Lcom/google/android/picasasync/AlbumEntry;->cacheFlag:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/picasasync/AlbumEntry;->cacheStatus:I

    iget v3, v0, Lcom/google/android/picasasync/AlbumEntry;->cacheStatus:I

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/google/android/picasasync/AlbumEntry;->photosDirty:Z

    iget-boolean v3, v0, Lcom/google/android/picasasync/AlbumEntry;->photosDirty:Z

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/picasasync/AlbumEntry;->albumType:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/picasasync/AlbumEntry;->albumType:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/picasasync/AlbumEntry;->user:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/picasasync/AlbumEntry;->user:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/picasasync/AlbumEntry;->title:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/picasasync/AlbumEntry;->title:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/picasasync/AlbumEntry;->summary:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/picasasync/AlbumEntry;->summary:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/picasasync/AlbumEntry;->datePublished:J

    iget-wide v4, v0, Lcom/google/android/picasasync/AlbumEntry;->datePublished:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/picasasync/AlbumEntry;->dateUpdated:J

    iget-wide v4, v0, Lcom/google/android/picasasync/AlbumEntry;->dateUpdated:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/picasasync/AlbumEntry;->dateEdited:J

    iget-wide v4, v0, Lcom/google/android/picasasync/AlbumEntry;->dateEdited:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget v2, p0, Lcom/google/android/picasasync/AlbumEntry;->numPhotos:I

    iget v3, v0, Lcom/google/android/picasasync/AlbumEntry;->numPhotos:I

    if-ne v2, v3, :cond_5

    iget-wide v2, p0, Lcom/google/android/picasasync/AlbumEntry;->bytesUsed:J

    iget-wide v4, v0, Lcom/google/android/picasasync/AlbumEntry;->bytesUsed:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/picasasync/AlbumEntry;->locationString:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/picasasync/AlbumEntry;->locationString:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/picasasync/AlbumEntry;->thumbnailUrl:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/picasasync/AlbumEntry;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/picasasync/AlbumEntry;->htmlPageUrl:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/picasasync/AlbumEntry;->htmlPageUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto/16 :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 189
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
