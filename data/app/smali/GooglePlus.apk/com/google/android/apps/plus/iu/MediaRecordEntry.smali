.class public Lcom/google/android/apps/plus/iu/MediaRecordEntry;
.super Lcom/android/gallery3d/common/Entry;
.source "MediaRecordEntry.java"


# annotations
.annotation runtime Lcom/android/gallery3d/common/Entry$Table;
    value = "media_record"
.end annotation


# static fields
.field public static final SCHEMA:Lcom/android/gallery3d/common/EntrySchema;


# instance fields
.field private mAlbumId:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "album_id"
    .end annotation
.end field

.field private mBytesTotal:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "bytes_total"
    .end annotation
.end field

.field private mBytesUploaded:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "bytes_uploaded"
    .end annotation
.end field

.field private mEventId:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "event_id"
    .end annotation
.end field

.field private mFingerprint:[B
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "fingerprint"
    .end annotation
.end field

.field private mFromCamera:Z
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        allowNull = false
        defaultValue = "0"
        value = "from_camera"
    .end annotation
.end field

.field private mIsImage:Z
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        allowNull = false
        defaultValue = "1"
        value = "is_image"
    .end annotation
.end field

.field private mMediaHash:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        allowNull = false
        value = "media_hash"
    .end annotation
.end field

.field private mMediaId:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        allowNull = false
        value = "media_id"
    .end annotation
.end field

.field private mMediaTime:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        allowNull = false
        value = "media_time"
    .end annotation
.end field

.field private mMediaUrl:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        allowNull = false
        value = "media_url"
    .end annotation
.end field

.field private mUploadError:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "upload_error"
    .end annotation
.end field

.field private mUploadReason:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        allowNull = false
        defaultValue = "0"
        value = "upload_reason"
    .end annotation
.end field

.field private mUploadState:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        allowNull = false
        defaultValue = "100"
        value = "upload_state"
    .end annotation
.end field

.field private mUploadTime:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "upload_time"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    new-instance v0, Lcom/android/gallery3d/common/EntrySchema;

    const-class v1, Lcom/google/android/apps/plus/iu/MediaRecordEntry;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/common/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/apps/plus/iu/MediaRecordEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/android/gallery3d/common/Entry;-><init>()V

    return-void
.end method

.method private getPercentageUploaded()I
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    .line 287
    iget-wide v1, p0, Lcom/google/android/apps/plus/iu/MediaRecordEntry;->mBytesTotal:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_e

    iget-wide v1, p0, Lcom/google/android/apps/plus/iu/MediaRecordEntry;->mBytesUploaded:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_10

    .line 288
    :cond_e
    const/4 v1, 0x0

    .line 292
    :goto_f
    return v1

    .line 291
    :cond_10
    iget-wide v1, p0, Lcom/google/android/apps/plus/iu/MediaRecordEntry;->mBytesUploaded:J

    long-to-float v1, v1

    iget-wide v2, p0, Lcom/google/android/apps/plus/iu/MediaRecordEntry;->mBytesTotal:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x4059

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v0, v1

    .line 292
    .local v0, percent:I
    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_f
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/apps/plus/iu/MediaRecordEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "album_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "event_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "upload_state"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "bytes_total"

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Lcom/android/gallery3d/common/EntrySchema;->toDebugString(Lcom/android/gallery3d/common/Entry;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/plus/iu/MediaRecordEntry;->getPercentageUploaded()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
