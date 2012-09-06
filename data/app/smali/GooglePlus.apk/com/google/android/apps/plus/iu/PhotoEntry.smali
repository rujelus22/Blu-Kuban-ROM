.class public final Lcom/google/android/apps/plus/iu/PhotoEntry;
.super Lcom/android/gallery3d/common/Entry;
.source "PhotoEntry.java"


# annotations
.annotation runtime Lcom/android/gallery3d/common/Entry$Table;
    value = "photos"
.end annotation


# static fields
.field public static final SCHEMA:Lcom/android/gallery3d/common/EntrySchema;


# instance fields
.field public albumId:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        indexed = true
        value = "album_id"
    .end annotation
.end field

.field public contentType:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "content_type"
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

.field public size:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "size"
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
    .line 17
    new-instance v0, Lcom/android/gallery3d/common/EntrySchema;

    const-class v1, Lcom/google/android/apps/plus/iu/PhotoEntry;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/common/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/apps/plus/iu/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/gallery3d/common/Entry;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 115
    instance-of v2, p1, Lcom/google/android/apps/plus/iu/PhotoEntry;

    if-nez v2, :cond_6

    .line 117
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 116
    check-cast v0, Lcom/google/android/apps/plus/iu/PhotoEntry;

    .line 117
    .local v0, p:Lcom/google/android/apps/plus/iu/PhotoEntry;
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/PhotoEntry;->albumId:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/apps/plus/iu/PhotoEntry;->albumId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/apps/plus/iu/PhotoEntry;->userId:J

    iget-wide v4, v0, Lcom/google/android/apps/plus/iu/PhotoEntry;->userId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/apps/plus/iu/PhotoEntry;->title:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/apps/plus/iu/PhotoEntry;->title:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/apps/plus/iu/PhotoEntry;->datePublished:J

    iget-wide v4, v0, Lcom/google/android/apps/plus/iu/PhotoEntry;->datePublished:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/apps/plus/iu/PhotoEntry;->dateUpdated:J

    iget-wide v4, v0, Lcom/google/android/apps/plus/iu/PhotoEntry;->dateUpdated:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/apps/plus/iu/PhotoEntry;->dateEdited:J

    iget-wide v4, v0, Lcom/google/android/apps/plus/iu/PhotoEntry;->dateEdited:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/apps/plus/iu/PhotoEntry;->dateTaken:J

    iget-wide v4, v0, Lcom/google/android/apps/plus/iu/PhotoEntry;->dateTaken:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget v2, p0, Lcom/google/android/apps/plus/iu/PhotoEntry;->width:I

    iget v3, v0, Lcom/google/android/apps/plus/iu/PhotoEntry;->width:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/apps/plus/iu/PhotoEntry;->height:I

    iget v3, v0, Lcom/google/android/apps/plus/iu/PhotoEntry;->height:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/apps/plus/iu/PhotoEntry;->size:I

    iget v3, v0, Lcom/google/android/apps/plus/iu/PhotoEntry;->size:I

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 130
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
