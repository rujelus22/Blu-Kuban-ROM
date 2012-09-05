.class public Lcom/google/android/picasasync/UploadedEntry;
.super Lcom/android/gallery3d/common/Entry;
.source "UploadedEntry.java"


# annotations
.annotation runtime Lcom/android/gallery3d/common/Entry$Table;
    value = "upload_records"
.end annotation


# static fields
.field public static final SCHEMA:Lcom/android/gallery3d/common/EntrySchema;


# instance fields
.field public final account:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "account"
    .end annotation
.end field

.field public final albumId:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "album_id"
    .end annotation
.end field

.field public final bytesTotal:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "bytes_total"
    .end annotation
.end field

.field public final contentUri:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "content_uri"
    .end annotation
.end field

.field public final error:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "error"
    .end annotation
.end field

.field public final fingerprint:[B
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "fingerprint"
    .end annotation
.end field

.field final fingerprintHash:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        indexed = true
        value = "fingerprint_hash"
    .end annotation
.end field

.field public final idFromServer:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "id_from_server"
    .end annotation
.end field

.field public final state:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "state"
    .end annotation
.end field

.field public final timestamp:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "timestamp"
    .end annotation
.end field

.field uid:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "uid"
    .end annotation
.end field

.field public final uploadedTime:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "uploaded_time"
    .end annotation
.end field

.field public final url:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "url"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    new-instance v0, Lcom/android/gallery3d/common/EntrySchema;

    const-class v1, Lcom/google/android/picasasync/UploadedEntry;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/common/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/picasasync/UploadedEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-direct {p0}, Lcom/android/gallery3d/common/Entry;-><init>()V

    .line 134
    iput-object v0, p0, Lcom/google/android/picasasync/UploadedEntry;->error:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/picasasync/UploadedEntry;->albumId:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/picasasync/UploadedEntry;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/picasasync/UploadedEntry;->contentUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/picasasync/UploadedEntry;->account:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lcom/google/android/picasasync/UploadedEntry;->fingerprint:[B

    .line 136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/picasasync/UploadedEntry;->timestamp:J

    iput-wide v0, p0, Lcom/google/android/picasasync/UploadedEntry;->bytesTotal:J

    iput-wide v0, p0, Lcom/google/android/picasasync/UploadedEntry;->idFromServer:J

    iput-wide v0, p0, Lcom/google/android/picasasync/UploadedEntry;->uploadedTime:J

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/picasasync/UploadedEntry;->fingerprintHash:I

    iput v0, p0, Lcom/google/android/picasasync/UploadedEntry;->state:I

    .line 138
    return-void
.end method

.method public constructor <init>(Lcom/google/android/picasasync/UploadTaskEntry;JJJLjava/lang/String;[B)V
    .registers 12
    .parameter "task"
    .parameter "idFromServer"
    .parameter "size"
    .parameter "timestamp"
    .parameter "url"
    .parameter "fingerprint"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/gallery3d/common/Entry;-><init>()V

    .line 118
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/UploadedEntry;->account:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getUploadedTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/picasasync/UploadedEntry;->uploadedTime:J

    .line 120
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/UploadedEntry;->contentUri:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/UploadedEntry;->albumId:Ljava/lang/String;

    .line 122
    iput-wide p2, p0, Lcom/google/android/picasasync/UploadedEntry;->idFromServer:J

    .line 123
    iput-wide p4, p0, Lcom/google/android/picasasync/UploadedEntry;->bytesTotal:J

    .line 124
    iput-wide p6, p0, Lcom/google/android/picasasync/UploadedEntry;->timestamp:J

    .line 125
    iput-object p8, p0, Lcom/google/android/picasasync/UploadedEntry;->url:Ljava/lang/String;

    .line 126
    iput-object p9, p0, Lcom/google/android/picasasync/UploadedEntry;->fingerprint:[B

    .line 127
    new-instance v0, Lcom/android/gallery3d/common/Fingerprint;

    invoke-direct {v0, p9}, Lcom/android/gallery3d/common/Fingerprint;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/gallery3d/common/Fingerprint;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/picasasync/UploadedEntry;->fingerprintHash:I

    .line 128
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/picasasync/UploadedEntry;->state:I

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasasync/UploadedEntry;->error:Ljava/lang/String;

    .line 130
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 142
    sget-object v0, Lcom/google/android/picasasync/UploadedEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "id_from_server"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "content_uri"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "bytes_total"

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/gallery3d/common/EntrySchema;->toDebugString(Lcom/android/gallery3d/common/Entry;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
