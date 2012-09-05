.class public Lcom/google/android/picasasync/UploadTaskEntry;
.super Lcom/android/gallery3d/common/Entry;
.source "UploadTaskEntry.java"


# annotations
.annotation runtime Lcom/android/gallery3d/common/Entry$Table;
    value = "upload_tasks"
.end annotation


# static fields
.field private static final REQUIRED_COLUMNS:[Ljava/lang/String;

.field public static final SCHEMA:Lcom/android/gallery3d/common/EntrySchema;


# instance fields
.field private mAccount:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "account"
    .end annotation
.end field

.field private mAlbumId:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "album_id"
    .end annotation
.end field

.field private mAuthTokenType:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "auth_token_type"
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

.field private mComponentName:Landroid/content/ComponentName;

.field private mContentUri:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "content_uri"
    .end annotation
.end field

.field private mFingerprint:[B
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "fingerprint"
    .end annotation
.end field

.field private mMimeType:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "mime_type"
    .end annotation
.end field

.field private mPriority:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "priority"
    .end annotation
.end field

.field private mRawComponentName:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "component_name"
    .end annotation
.end field

.field private mRequestTemplate:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "request_template"
    .end annotation
.end field

.field private mState:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "state"
    .end annotation
.end field

.field private mUid:I
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "uid"
    .end annotation
.end field

.field private mUploadUrl:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "upload_url"
    .end annotation
.end field

.field private mUploadedTime:J
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "uploaded_time"
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "url"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 43
    new-instance v0, Lcom/android/gallery3d/common/EntrySchema;

    const-class v1, Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/common/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/picasasync/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    .line 144
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "content_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/picasasync/UploadTaskEntry;->REQUIRED_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/android/gallery3d/common/Entry;-><init>()V

    .line 216
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mState:I

    .line 230
    return-void
.end method

.method private static checkRequest(Landroid/content/ContentValues;)V
    .registers 9
    .parameter "values"

    .prologue
    .line 150
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v3, missingColumns:Ljava/util/ArrayList;
    sget-object v0, Lcom/google/android/picasasync/UploadTaskEntry;->REQUIRED_COLUMNS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_9
    if-ge v1, v2, :cond_19

    aget-object v4, v0, v1

    .line 152
    .local v4, requiredColumn:Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 153
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 156
    .end local v4           #requiredColumn:Ljava/lang/String;
    :cond_19
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_38

    .line 157
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "missing fields in upload request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 160
    :cond_38
    return-void
.end method

.method static createNew(Landroid/content/ContentValues;)Lcom/google/android/picasasync/UploadTaskEntry;
    .registers 3
    .parameter "values"

    .prologue
    .line 140
    invoke-static {p0}, Lcom/google/android/picasasync/UploadTaskEntry;->checkRequest(Landroid/content/ContentValues;)V

    .line 141
    sget-object v0, Lcom/google/android/picasasync/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    new-instance v1, Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-direct {v1}, Lcom/google/android/picasasync/UploadTaskEntry;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/android/gallery3d/common/EntrySchema;->valuesToObject(Landroid/content/ContentValues;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/UploadTaskEntry;

    return-object v0
.end method

.method static createNew(Landroid/content/ContentValues;I)Lcom/google/android/picasasync/UploadTaskEntry;
    .registers 4
    .parameter "values"
    .parameter "uid"

    .prologue
    .line 135
    const-string v0, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    invoke-static {p0}, Lcom/google/android/picasasync/UploadTaskEntry;->createNew(Landroid/content/ContentValues;)Lcom/google/android/picasasync/UploadTaskEntry;

    move-result-object v0

    return-object v0
.end method

.method static fromCursor(Landroid/database/Cursor;)Lcom/google/android/picasasync/UploadTaskEntry;
    .registers 3
    .parameter "cursor"

    .prologue
    .line 131
    sget-object v0, Lcom/google/android/picasasync/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    new-instance v1, Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-direct {v1}, Lcom/google/android/picasasync/UploadTaskEntry;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/android/gallery3d/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/UploadTaskEntry;

    return-object v0
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method getAuthTokenType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mAuthTokenType:Ljava/lang/String;

    return-object v0
.end method

.method public getBytesTotal()J
    .registers 3

    .prologue
    .line 305
    iget-wide v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mBytesTotal:J

    return-wide v0
.end method

.method public getBytesUploaded()J
    .registers 3

    .prologue
    .line 313
    iget-wide v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mBytesUploaded:J

    return-wide v0
.end method

.method getComponentName()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mRawComponentName:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 391
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mRawComponentName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mComponentName:Landroid/content/ComponentName;

    .line 393
    :cond_10
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mContentUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getFingerprint()Lcom/android/gallery3d/common/Fingerprint;
    .registers 3

    .prologue
    .line 321
    new-instance v0, Lcom/android/gallery3d/common/Fingerprint;

    iget-object v1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mFingerprint:[B

    invoke-direct {v0, v1}, Lcom/android/gallery3d/common/Fingerprint;-><init>([B)V

    return-object v0
.end method

.method getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentageUploaded()I
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/16 v1, 0x64

    .line 333
    iget-wide v2, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mBytesTotal:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    iget-wide v2, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mBytesUploaded:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    .line 334
    :cond_10
    const/4 v0, 0x0

    .line 339
    :cond_11
    :goto_11
    return v0

    .line 337
    :cond_12
    iget-wide v2, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mBytesUploaded:J

    long-to-float v2, v2

    iget-wide v3, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mBytesTotal:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 339
    .local v0, percent:I
    if-le v0, v1, :cond_11

    move v0, v1

    goto :goto_11
.end method

.method getRequestTemplate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mRequestTemplate:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 237
    iget v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mState:I

    return v0
.end method

.method getUid()I
    .registers 2

    .prologue
    .line 397
    iget v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mUid:I

    return v0
.end method

.method getUploadUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mUploadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadedTime()J
    .registers 3

    .prologue
    .line 261
    iget-wide v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mUploadedTime:J

    return-wide v0
.end method

.method public getUrl()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hasFingerprint()Z
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mFingerprint:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasPriority()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 381
    iget v1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mPriority:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    iget v1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mPriority:I

    if-ne v1, v0, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public declared-synchronized isCancellable()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 361
    monitor-enter p0

    :try_start_2
    iget v1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mState:I

    if-eq v1, v0, :cond_b

    iget v1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mState:I
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_f

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    :cond_b
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isReadyForUpload()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 353
    monitor-enter p0

    :try_start_2
    iget v1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b

    iget v1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mState:I
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_f

    if-ne v1, v0, :cond_d

    :cond_b
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isStartedYet()Z
    .registers 5

    .prologue
    .line 373
    iget-wide v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mBytesUploaded:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isUploading()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 369
    iget v1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mState:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .registers 2
    .parameter "albumId"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mAlbumId:Ljava/lang/String;

    .line 258
    return-void
.end method

.method setAuthTokenType(Ljava/lang/String;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mAuthTokenType:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setBytesTotal(J)V
    .registers 3
    .parameter "bytesTotal"

    .prologue
    .line 309
    iput-wide p1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mBytesTotal:J

    .line 310
    return-void
.end method

.method public setBytesUploaded(J)V
    .registers 3
    .parameter "bytes"

    .prologue
    .line 329
    iput-wide p1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mBytesUploaded:J

    .line 330
    return-void
.end method

.method public setFingerprint(Lcom/android/gallery3d/common/Fingerprint;)V
    .registers 3
    .parameter "fingerprint"

    .prologue
    .line 325
    invoke-virtual {p1}, Lcom/android/gallery3d/common/Fingerprint;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mFingerprint:[B

    .line 326
    return-void
.end method

.method setMimeType(Ljava/lang/String;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mMimeType:Ljava/lang/String;

    .line 250
    return-void
.end method

.method setPriority(I)V
    .registers 2
    .parameter "priority"

    .prologue
    .line 385
    iput p1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mPriority:I

    .line 386
    return-void
.end method

.method setRequestTemplate(Ljava/lang/String;)V
    .registers 2
    .parameter "template"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mRequestTemplate:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 233
    iput p1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mState:I

    .line 234
    return-void
.end method

.method setUploadUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "uploadUrl"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mUploadUrl:Ljava/lang/String;

    .line 290
    return-void
.end method

.method setUploadedTime()V
    .registers 3

    .prologue
    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mUploadedTime:J

    .line 266
    return-void
.end method

.method public declared-synchronized setUploadingIfReady()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 345
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/picasasync/UploadTaskEntry;->isReadyForUpload()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 346
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mState:I
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_f

    .line 349
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 345
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "url"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mUrl:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public shouldRetry()Z
    .registers 3

    .prologue
    .line 365
    iget v0, p0, Lcom/google/android/picasasync/UploadTaskEntry;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/picasasync/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "content_uri"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "state"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "bytes_total"

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Lcom/android/gallery3d/common/EntrySchema;->toDebugString(Lcom/android/gallery3d/common/Entry;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/picasasync/UploadTaskEntry;->getPercentageUploaded()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
