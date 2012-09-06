.class public Lcom/google/android/apps/plus/iu/UploadTaskEntry;
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

.field private mAlbumTitle:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "album_title"
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

.field private mDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/common/Entry$Column;
        value = "display_name"
    .end annotation
.end field

.field private mError:Ljava/lang/Throwable;

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
    .line 29
    new-instance v0, Lcom/android/gallery3d/common/EntrySchema;

    const-class v1, Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/common/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "content_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->REQUIRED_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/android/gallery3d/common/Entry;-><init>()V

    .line 210
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mState:I

    .line 231
    return-void
.end method

.method private static checkRequest(Landroid/content/ContentValues;)V
    .registers 9
    .parameter "values"

    .prologue
    .line 140
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v3, missingColumns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->REQUIRED_COLUMNS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_9
    if-ge v1, v2, :cond_19

    aget-object v4, v0, v1

    .line 142
    .local v4, requiredColumn:Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_16

    .line 143
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 146
    .end local v4           #requiredColumn:Ljava/lang/String;
    :cond_19
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_38

    .line 147
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

    .line 150
    :cond_38
    return-void
.end method

.method static createNew(Landroid/content/ContentValues;)Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    .registers 3
    .parameter "values"

    .prologue
    .line 130
    invoke-static {p0}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->checkRequest(Landroid/content/ContentValues;)V

    .line 131
    sget-object v0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    new-instance v1, Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-direct {v1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/android/gallery3d/common/EntrySchema;->valuesToObject(Landroid/content/ContentValues;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    return-object v0
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    .registers 3
    .parameter "cursor"

    .prologue
    .line 121
    sget-object v0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    new-instance v1, Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-direct {v1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/android/gallery3d/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    return-object v0
.end method

.method public static fromDb(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    .registers 5
    .parameter "db"
    .parameter "id"

    .prologue
    .line 125
    new-instance v0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-direct {v0}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;-><init>()V

    .line 126
    .local v0, task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    sget-object v1, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/android/gallery3d/common/EntrySchema;->queryWithId(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/gallery3d/common/Entry;)Z

    move-result v1

    if-eqz v1, :cond_e

    .end local v0           #task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    :goto_d
    return-object v0

    .restart local v0       #task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mAlbumTitle:Ljava/lang/String;

    return-object v0
.end method

.method getAuthTokenType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mAuthTokenType:Ljava/lang/String;

    return-object v0
.end method

.method public getBytesTotal()J
    .registers 3

    .prologue
    .line 319
    iget-wide v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mBytesTotal:J

    return-wide v0
.end method

.method public getBytesUploaded()J
    .registers 3

    .prologue
    .line 327
    iget-wide v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mBytesUploaded:J

    return-wide v0
.end method

.method getComponentName()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mRawComponentName:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 408
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mRawComponentName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mComponentName:Landroid/content/ComponentName;

    .line 410
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mContentUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mError:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mEventId:Ljava/lang/String;

    return-object v0
.end method

.method public getFingerprint()Lcom/android/gallery3d/common/Fingerprint;
    .registers 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mFingerprint:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Lcom/android/gallery3d/common/Fingerprint;

    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mFingerprint:[B

    invoke-direct {v0, v1}, Lcom/android/gallery3d/common/Fingerprint;-><init>([B)V

    goto :goto_5
.end method

.method getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentageUploaded()I
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/16 v1, 0x64

    .line 347
    iget-wide v2, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mBytesTotal:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    iget-wide v2, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mBytesUploaded:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    .line 348
    :cond_10
    const/4 v0, 0x0

    .line 353
    :cond_11
    :goto_11
    return v0

    .line 351
    :cond_12
    iget-wide v2, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mBytesUploaded:J

    long-to-float v2, v2

    iget-wide v3, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mBytesTotal:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 353
    .local v0, percent:I
    if-le v0, v1, :cond_11

    move v0, v1

    goto :goto_11
.end method

.method getRequestTemplate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mRequestTemplate:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 243
    iget v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mState:I

    return v0
.end method

.method getUploadUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mUploadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadedTime()J
    .registers 3

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mUploadedTime:J

    return-wide v0
.end method

.method public getUrl()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_5
.end method

.method public hasFingerprint()Z
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mFingerprint:[B

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

    .line 386
    iget v1, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mPriority:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    iget v1, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mPriority:I

    if-ne v1, v0, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isCancellable()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 365
    iget v1, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mState:I

    if-eq v1, v0, :cond_f

    iget v1, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    iget v1, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isReadyForUpload()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 357
    iget v1, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_a

    iget v1, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mState:I

    if-ne v1, v0, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isStartedYet()Z
    .registers 5

    .prologue
    .line 378
    iget-wide v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mBytesUploaded:J

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

    .line 374
    iget v1, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mState:I

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
    .line 263
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mAlbumId:Ljava/lang/String;

    .line 264
    return-void
.end method

.method setAuthTokenType(Ljava/lang/String;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mAuthTokenType:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public setBytesTotal(J)V
    .registers 3
    .parameter "bytesTotal"

    .prologue
    .line 323
    iput-wide p1, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mBytesTotal:J

    .line 324
    return-void
.end method

.method public setBytesUploaded(J)V
    .registers 3
    .parameter "bytes"

    .prologue
    .line 343
    iput-wide p1, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mBytesUploaded:J

    .line 344
    return-void
.end method

.method public setFingerprint(Lcom/android/gallery3d/common/Fingerprint;)V
    .registers 3
    .parameter "fingerprint"

    .prologue
    .line 339
    invoke-virtual {p1}, Lcom/android/gallery3d/common/Fingerprint;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mFingerprint:[B

    .line 340
    return-void
.end method

.method setMimeType(Ljava/lang/String;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mMimeType:Ljava/lang/String;

    .line 256
    return-void
.end method

.method setPriority(I)V
    .registers 2
    .parameter "priority"

    .prologue
    .line 398
    iput p1, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mPriority:I

    .line 399
    return-void
.end method

.method setRequestTemplate(Ljava/lang/String;)V
    .registers 2
    .parameter "template"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mRequestTemplate:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public setState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 234
    iput p1, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mState:I

    .line 235
    return-void
.end method

.method public setState(ILjava/lang/Throwable;)V
    .registers 3
    .parameter "state"
    .parameter "error"

    .prologue
    .line 238
    iput p1, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mState:I

    .line 239
    iput-object p2, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mError:Ljava/lang/Throwable;

    .line 240
    return-void
.end method

.method setUploadUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "uploadUrl"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mUploadUrl:Ljava/lang/String;

    .line 304
    return-void
.end method

.method setUploadedTime()V
    .registers 3

    .prologue
    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mUploadedTime:J

    .line 280
    return-void
.end method

.method setUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "url"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mUrl:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public shouldRetry()Z
    .registers 3

    .prologue
    .line 370
    iget v0, p0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->mState:I

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
    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "album_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "event_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "mime_type"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "state"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "bytes_total"

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Lcom/android/gallery3d/common/EntrySchema;->toDebugString(Lcom/android/gallery3d/common/Entry;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getPercentageUploaded()I

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
