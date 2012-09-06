.class public Lcom/google/android/apps/plus/iu/UploadedEntry;
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

.field public final albumTitle:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "album_title"
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

.field public final displayName:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "display_name"
    .end annotation
.end field

.field public final error:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "error"
    .end annotation
.end field

.field public final eventId:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "event_id"
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
    .line 19
    new-instance v0, Lcom/android/gallery3d/common/EntrySchema;

    const-class v1, Lcom/google/android/apps/plus/iu/UploadedEntry;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/common/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/apps/plus/iu/UploadedEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-direct {p0}, Lcom/android/gallery3d/common/Entry;-><init>()V

    .line 170
    iput-object v2, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->error:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->eventId:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->albumId:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->url:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->contentUri:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->account:Ljava/lang/String;

    .line 171
    iput-object v2, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->fingerprint:[B

    .line 172
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->timestamp:J

    iput-wide v0, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->bytesTotal:J

    iput-wide v0, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->idFromServer:J

    iput-wide v0, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->uploadedTime:J

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->fingerprintHash:I

    iput v0, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->state:I

    .line 174
    iput-object v2, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->displayName:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->albumTitle:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V
    .registers 7
    .parameter "task"

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-direct {p0}, Lcom/android/gallery3d/common/Entry;-><init>()V

    .line 130
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->account:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getUploadedTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->uploadedTime:J

    .line 132
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->contentUri:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->albumId:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getEventId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->eventId:Ljava/lang/String;

    .line 135
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->idFromServer:J

    .line 136
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->bytesTotal:J

    .line 137
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getUploadedTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->timestamp:J

    .line 138
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getUrl()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_67

    move-object v1, v2

    :goto_3d
    iput-object v1, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->url:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getFingerprint()Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v0

    .line 140
    .local v0, fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    if-nez v0, :cond_70

    .line 141
    iput-object v2, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->fingerprint:[B

    .line 142
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->fingerprintHash:I

    .line 147
    :goto_4a
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getState()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->state:I

    .line 148
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getError()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/iu/UploadedEntry;->getFullErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->error:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getAlbumTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->albumTitle:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->displayName:Ljava/lang/String;

    .line 151
    return-void

    .line 138
    .end local v0           #fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    :cond_67
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3d

    .line 144
    .restart local v0       #fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    :cond_70
    invoke-virtual {v0}, Lcom/android/gallery3d/common/Fingerprint;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->fingerprint:[B

    .line 145
    invoke-virtual {v0}, Lcom/android/gallery3d/common/Fingerprint;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->fingerprintHash:I

    goto :goto_4a
.end method

.method public constructor <init>(Lcom/google/android/apps/plus/iu/UploadTaskEntry;JJJLjava/lang/String;[B)V
    .registers 12
    .parameter "task"
    .parameter "idFromServer"
    .parameter "size"
    .parameter "timestamp"
    .parameter "url"
    .parameter "fingerprint"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/gallery3d/common/Entry;-><init>()V

    .line 111
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->account:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getUploadedTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->uploadedTime:J

    .line 113
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->contentUri:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->albumId:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getEventId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->eventId:Ljava/lang/String;

    .line 116
    iput-wide p2, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->idFromServer:J

    .line 117
    iput-wide p4, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->bytesTotal:J

    .line 118
    iput-wide p6, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->timestamp:J

    .line 119
    iput-object p8, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->url:Ljava/lang/String;

    .line 120
    iput-object p9, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->fingerprint:[B

    .line 121
    new-instance v0, Lcom/android/gallery3d/common/Fingerprint;

    invoke-direct {v0, p9}, Lcom/android/gallery3d/common/Fingerprint;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/gallery3d/common/Fingerprint;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->fingerprintHash:I

    .line 122
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->state:I

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->error:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getAlbumTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->albumTitle:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/iu/UploadedEntry;->displayName:Ljava/lang/String;

    .line 126
    return-void
.end method

.method private static getFullErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 9
    .parameter "t"

    .prologue
    .line 154
    if-nez p0, :cond_4

    const/4 v6, 0x0

    .line 165
    :goto_3
    return-object v6

    .line 155
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 157
    .local v1, cause:Ljava/lang/Throwable;
    :goto_a
    if-eqz p0, :cond_1b

    .line 158
    move-object v1, p0

    .line 159
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_a

    .line 162
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_21
    if-ge v3, v4, :cond_31

    aget-object v2, v0, v3

    .line 163
    .local v2, e:Ljava/lang/StackTraceElement;
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 165
    .end local v2           #e:Ljava/lang/StackTraceElement;
    :cond_31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 179
    sget-object v0, Lcom/google/android/apps/plus/iu/UploadedEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

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
