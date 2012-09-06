.class public final Lcom/google/android/picasasync/PhotoEntry;
.super Lcom/android/gallery3d/common/Entry;
.source "PhotoEntry.java"


# annotations
.annotation runtime Lcom/android/gallery3d/common/Entry$Table;
    value = "photos"
.end annotation


# static fields
.field public static final SCHEMA:Lcom/android/gallery3d/common/EntrySchema;


# instance fields
.field public albumId:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        indexed = true
        value = "album_id"
    .end annotation
.end field

.field cacheStatus:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        defaultValue = "0"
        value = "cache_status"
    .end annotation
.end field

.field cameraSync:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "camera_sync"
    .end annotation
.end field

.field public commentCount:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "comment_count"
    .end annotation
.end field

.field public contentType:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "content_type"
    .end annotation
.end field

.field public contentUrl:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "content_url"
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

.field public dateTaken:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "date_taken"
    .end annotation
.end field

.field public dateUpdated:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "date_updated"
    .end annotation
.end field

.field public displayIndex:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        indexed = true
        value = "display_index"
    .end annotation
.end field

.field public exifExposure:F
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "exif_exposure"
    .end annotation
.end field

.field public exifFlash:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "exif_flash"
    .end annotation
.end field

.field public exifFocalLength:F
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "exif_focal_length"
    .end annotation
.end field

.field public exifFstop:F
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "exif_fstop"
    .end annotation
.end field

.field public exifIso:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "exif_iso"
    .end annotation
.end field

.field public exifMake:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "exif_make"
    .end annotation
.end field

.field public exifModel:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "exif_model"
    .end annotation
.end field

.field public faceIds:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "face_ids"
    .end annotation
.end field

.field public faceNames:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "face_names"
    .end annotation
.end field

.field public faceRects:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "face_rectangles"
    .end annotation
.end field

.field public fingerprint:[B
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "fingerprint"
    .end annotation
.end field

.field fingerprintHash:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "fingerprint_hash"
    .end annotation
.end field

.field public height:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "height"
    .end annotation
.end field

.field public htmlPageUrl:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "html_page_url"
    .end annotation
.end field

.field public keywords:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "keywords"
    .end annotation
.end field

.field public latitude:D
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "latitude"
    .end annotation
.end field

.field public longitude:D
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "longitude"
    .end annotation
.end field

.field public rotation:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "rotation"
    .end annotation
.end field

.field public screennailUrl:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "screennail_url"
    .end annotation
.end field

.field public size:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "size"
    .end annotation
.end field

.field public summary:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "summary"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "title"
    .end annotation
.end field

.field public userId:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "user_id"
    .end annotation
.end field

.field public width:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "width"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31
    new-instance v0, Lcom/android/gallery3d/common/EntrySchema;

    const-class v1, Lcom/google/android/picasasync/PhotoEntry;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/common/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/picasasync/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/gallery3d/common/Entry;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 308
    instance-of v2, p1, Lcom/google/android/picasasync/PhotoEntry;

    if-nez v2, :cond_6

    .line 310
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 309
    check-cast v0, Lcom/google/android/picasasync/PhotoEntry;

    .line 310
    .local v0, p:Lcom/google/android/picasasync/PhotoEntry;
    iget-wide v2, p0, Lcom/google/android/picasasync/PhotoEntry;->albumId:J

    iget-wide v4, v0, Lcom/google/android/picasasync/PhotoEntry;->albumId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget v2, p0, Lcom/google/android/picasasync/PhotoEntry;->displayIndex:I

    iget v3, v0, Lcom/google/android/picasasync/PhotoEntry;->displayIndex:I

    if-ne v2, v3, :cond_5

    iget-wide v2, p0, Lcom/google/android/picasasync/PhotoEntry;->userId:J

    iget-wide v4, v0, Lcom/google/android/picasasync/PhotoEntry;->userId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoEntry;->title:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/picasasync/PhotoEntry;->title:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoEntry;->summary:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/picasasync/PhotoEntry;->summary:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/picasasync/PhotoEntry;->datePublished:J

    iget-wide v4, v0, Lcom/google/android/picasasync/PhotoEntry;->datePublished:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/picasasync/PhotoEntry;->dateUpdated:J

    iget-wide v4, v0, Lcom/google/android/picasasync/PhotoEntry;->dateUpdated:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/picasasync/PhotoEntry;->dateEdited:J

    iget-wide v4, v0, Lcom/google/android/picasasync/PhotoEntry;->dateEdited:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/picasasync/PhotoEntry;->dateTaken:J

    iget-wide v4, v0, Lcom/google/android/picasasync/PhotoEntry;->dateTaken:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget v2, p0, Lcom/google/android/picasasync/PhotoEntry;->commentCount:I

    iget v3, v0, Lcom/google/android/picasasync/PhotoEntry;->commentCount:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/picasasync/PhotoEntry;->width:I

    iget v3, v0, Lcom/google/android/picasasync/PhotoEntry;->width:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/picasasync/PhotoEntry;->height:I

    iget v3, v0, Lcom/google/android/picasasync/PhotoEntry;->height:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/picasasync/PhotoEntry;->rotation:I

    iget v3, v0, Lcom/google/android/picasasync/PhotoEntry;->rotation:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/picasasync/PhotoEntry;->size:I

    iget v3, v0, Lcom/google/android/picasasync/PhotoEntry;->size:I

    if-ne v2, v3, :cond_5

    iget-wide v2, p0, Lcom/google/android/picasasync/PhotoEntry;->latitude:D

    iget-wide v4, v0, Lcom/google/android/picasasync/PhotoEntry;->latitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/picasasync/PhotoEntry;->longitude:D

    iget-wide v4, v0, Lcom/google/android/picasasync/PhotoEntry;->longitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoEntry;->contentUrl:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/picasasync/PhotoEntry;->contentUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoEntry;->htmlPageUrl:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/picasasync/PhotoEntry;->htmlPageUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoEntry;->keywords:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/picasasync/PhotoEntry;->keywords:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoEntry;->faceNames:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/picasasync/PhotoEntry;->faceNames:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoEntry;->faceIds:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/picasasync/PhotoEntry;->faceIds:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoEntry;->faceRects:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/picasasync/PhotoEntry;->faceRects:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoEntry;->exifMake:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/picasasync/PhotoEntry;->exifMake:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoEntry;->exifModel:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/picasasync/PhotoEntry;->exifModel:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/google/android/picasasync/PhotoEntry;->exifExposure:F

    iget v3, v0, Lcom/google/android/picasasync/PhotoEntry;->exifExposure:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Lcom/google/android/picasasync/PhotoEntry;->exifFlash:I

    iget v3, v0, Lcom/google/android/picasasync/PhotoEntry;->exifFlash:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/picasasync/PhotoEntry;->exifFocalLength:F

    iget v3, v0, Lcom/google/android/picasasync/PhotoEntry;->exifFocalLength:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Lcom/google/android/picasasync/PhotoEntry;->exifFstop:F

    iget v3, v0, Lcom/google/android/picasasync/PhotoEntry;->exifFstop:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Lcom/google/android/picasasync/PhotoEntry;->exifIso:I

    iget v3, v0, Lcom/google/android/picasasync/PhotoEntry;->exifIso:I

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto/16 :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 341
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
