.class Lcom/google/android/picasasync/PhotoTracker;
.super Ljava/lang/Object;
.source "PhotoTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/PhotoTracker$TrackRecord;,
        Lcom/google/android/picasasync/PhotoTracker$Config;
    }
.end annotation


# static fields
.field private static final ALL_CONFIGS:[Lcom/google/android/picasasync/PhotoTracker$Config;

.field private static final PROJECTION_COUNT:[Ljava/lang/String;

.field private static final PROJECTION_ID:[Ljava/lang/String;

.field private static final PROJECTION_MAX_ID:[Ljava/lang/String;

.field private static final UPLOAD_TASK_TABLE_NAME:Ljava/lang/String;


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mOldMediaCount:I

.field private mOldMediaProgress:I

.field private final mTrackRecords:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

.field private final mTrackingNewMedia:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 56
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "MAX(_id)"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/picasasync/PhotoTracker;->PROJECTION_MAX_ID:[Ljava/lang/String;

    .line 57
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "COUNT(*)"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/picasasync/PhotoTracker;->PROJECTION_COUNT:[Ljava/lang/String;

    .line 58
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/picasasync/PhotoTracker;->PROJECTION_ID:[Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/google/android/picasasync/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PhotoTracker;->UPLOAD_TASK_TABLE_NAME:Ljava/lang/String;

    .line 131
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/picasasync/PhotoTracker$Config;

    new-instance v1, Lcom/google/android/picasasync/PhotoTracker$Config;

    const-string v2, "photo"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "external"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/picasasync/PhotoTracker$Config;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/google/android/picasasync/PhotoTracker$Config;

    const-string v2, "photo"

    const-string v3, "phoneStorage"

    invoke-static {v3}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "phoneStorage"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/picasasync/PhotoTracker$Config;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-instance v2, Lcom/google/android/picasasync/PhotoTracker$Config;

    const-string v3, "video"

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "external"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/picasasync/PhotoTracker$Config;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/picasasync/PhotoTracker$Config;

    const-string v3, "video"

    const-string v4, "phoneStorage"

    invoke-static {v4}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "phoneStorage"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/picasasync/PhotoTracker$Config;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/picasasync/PhotoTracker;->ALL_CONFIGS:[Lcom/google/android/picasasync/PhotoTracker$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "trackingNewPhoto"

    .prologue
    .line 290
    sget-object v0, Lcom/google/android/picasasync/PhotoTracker;->ALL_CONFIGS:[Lcom/google/android/picasasync/PhotoTracker$Config;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/picasasync/PhotoTracker;-><init>(Landroid/content/Context;Ljava/lang/String;Z[Lcom/google/android/picasasync/PhotoTracker$Config;)V

    .line 291
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Z[Lcom/google/android/picasasync/PhotoTracker$Config;)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "trackingNewMedia"
    .parameter "configs"

    .prologue
    .line 295
    invoke-static {p1, p4, p3}, Lcom/google/android/picasasync/PhotoTracker;->createTrackRecords(Landroid/content/Context;[Lcom/google/android/picasasync/PhotoTracker$Config;Z)[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/picasasync/PhotoTracker;-><init>(Landroid/content/Context;Ljava/lang/String;Z[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;)V

    .line 297
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Z[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "trackingNewMedia"
    .parameter "records"

    .prologue
    const/4 v5, 0x0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p1, p0, Lcom/google/android/picasasync/PhotoTracker;->mContext:Landroid/content/Context;

    .line 302
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/picasasync/PhotoTracker;->mAccount:Ljava/lang/String;

    .line 303
    iput-boolean p3, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackingNewMedia:Z

    .line 304
    iput-object p4, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackRecords:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

    .line 305
    if-nez p3, :cond_30

    .line 306
    iput v5, p0, Lcom/google/android/picasasync/PhotoTracker;->mOldMediaProgress:I

    .line 307
    iput v5, p0, Lcom/google/android/picasasync/PhotoTracker;->mOldMediaCount:I

    .line 308
    move-object v0, p4

    .local v0, arr$:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1b
    if-ge v1, v2, :cond_30

    aget-object v3, v0, v1

    .line 309
    .local v3, record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    iget v4, p0, Lcom/google/android/picasasync/PhotoTracker;->mOldMediaProgress:I

    iget v5, v3, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaProgress:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/picasasync/PhotoTracker;->mOldMediaProgress:I

    .line 310
    iget v4, p0, Lcom/google/android/picasasync/PhotoTracker;->mOldMediaCount:I

    iget v5, v3, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaCount:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/picasasync/PhotoTracker;->mOldMediaCount:I

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 313
    .end local v0           #arr$:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    :cond_30
    return-void
.end method

.method public static createFromStates(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/android/picasasync/UploadsDatabaseHelper;)Lcom/google/android/picasasync/PhotoTracker;
    .registers 4
    .parameter "context"
    .parameter "prefs"
    .parameter "dbHelper"

    .prologue
    .line 213
    sget-object v0, Lcom/google/android/picasasync/PhotoTracker;->ALL_CONFIGS:[Lcom/google/android/picasasync/PhotoTracker$Config;

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/picasasync/PhotoTracker;->createFromStates(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/android/picasasync/UploadsDatabaseHelper;[Lcom/google/android/picasasync/PhotoTracker$Config;)Lcom/google/android/picasasync/PhotoTracker;

    move-result-object v0

    return-object v0
.end method

.method private static createFromStates(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/android/picasasync/UploadsDatabaseHelper;[Lcom/google/android/picasasync/PhotoTracker$Config;)Lcom/google/android/picasasync/PhotoTracker;
    .registers 10
    .parameter "context"
    .parameter "prefs"
    .parameter "dbHelper"
    .parameter "configs"

    .prologue
    const/4 v3, 0x0

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, p3, v5

    iget-object v5, v5, Lcom/google/android/picasasync/PhotoTracker$Config;->keyAccount:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "new_media"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, account:Ljava/lang/String;
    if-nez v0, :cond_20

    .line 232
    :goto_1f
    return-object v3

    .line 228
    :cond_20
    array-length v3, p3

    new-array v2, v3, [Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

    .line 229
    .local v2, records:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_24
    array-length v3, v2

    if-ge v1, v3, :cond_32

    .line 230
    aget-object v3, p3, v1

    invoke-static {v3, p1, p2}, Lcom/google/android/picasasync/PhotoTracker;->createNewMediaTrackRecordFromStates(Lcom/google/android/picasasync/PhotoTracker$Config;Landroid/content/SharedPreferences;Lcom/google/android/picasasync/UploadsDatabaseHelper;)Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

    move-result-object v3

    aput-object v3, v2, v1

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 232
    :cond_32
    new-instance v3, Lcom/google/android/picasasync/PhotoTracker;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v0, v4, v2}, Lcom/google/android/picasasync/PhotoTracker;-><init>(Landroid/content/Context;Ljava/lang/String;Z[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;)V

    goto :goto_1f
.end method

.method public static createFromStates(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/google/android/picasasync/UploadsDatabaseHelper;)Lcom/google/android/picasasync/PhotoTracker;
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "prefs"
    .parameter "dbHelper"

    .prologue
    .line 218
    sget-object v0, Lcom/google/android/picasasync/PhotoTracker;->ALL_CONFIGS:[Lcom/google/android/picasasync/PhotoTracker$Config;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/picasasync/PhotoTracker;->createFromStates(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/google/android/picasasync/UploadsDatabaseHelper;[Lcom/google/android/picasasync/PhotoTracker$Config;)Lcom/google/android/picasasync/PhotoTracker;

    move-result-object v0

    return-object v0
.end method

.method private static createFromStates(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/google/android/picasasync/UploadsDatabaseHelper;[Lcom/google/android/picasasync/PhotoTracker$Config;)Lcom/google/android/picasasync/PhotoTracker;
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "prefs"
    .parameter "dbHelper"
    .parameter "configs"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 247
    move-object v1, p1

    .line 250
    .local v1, id:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p4, v6

    iget-object v5, v5, Lcom/google/android/picasasync/PhotoTracker$Config;->keyAccount:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 251
    const-string v4, "UploadsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no setting found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_3e
    return-object v3

    .line 255
    :cond_3f
    array-length v3, p4

    new-array v2, v3, [Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

    .line 256
    .local v2, records:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_43
    array-length v3, v2

    if-ge v0, v3, :cond_51

    .line 257
    aget-object v3, p4, v0

    invoke-static {v3, p1, p2, p3}, Lcom/google/android/picasasync/PhotoTracker;->createOldMediaTrackRecordFromStates(Lcom/google/android/picasasync/PhotoTracker$Config;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/google/android/picasasync/UploadsDatabaseHelper;)Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

    move-result-object v3

    aput-object v3, v2, v0

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 259
    :cond_51
    new-instance v3, Lcom/google/android/picasasync/PhotoTracker;

    invoke-direct {v3, p0, p1, v6, v2}, Lcom/google/android/picasasync/PhotoTracker;-><init>(Landroid/content/Context;Ljava/lang/String;Z[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;)V

    goto :goto_3e
.end method

.method private static createNewMediaTrackRecordFromStates(Lcom/google/android/picasasync/PhotoTracker$Config;Landroid/content/SharedPreferences;Lcom/google/android/picasasync/UploadsDatabaseHelper;)Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    .registers 8
    .parameter "config"
    .parameter "prefs"
    .parameter "dbHelper"

    .prologue
    const-wide/16 v3, 0x0

    .line 237
    new-instance v0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;-><init>(Lcom/google/android/picasasync/PhotoTracker$Config;)V

    .line 238
    .local v0, record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoTracker$Config;->keyCurrentTaskId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "new_media"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {p2, v1, v2}, Lcom/google/android/picasasync/PhotoTracker;->getCurrentTask(Lcom/google/android/picasasync/UploadsDatabaseHelper;J)Lcom/google/android/picasasync/UploadTaskEntry;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->currentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoTracker$Config;->keyNewMediaLastUploadedId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "new_media"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->newMediaLastUploadedId:J

    .line 242
    return-object v0
.end method

.method private static createOldMediaTrackRecordFromStates(Lcom/google/android/picasasync/PhotoTracker$Config;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/google/android/picasasync/UploadsDatabaseHelper;)Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    .registers 11
    .parameter "config"
    .parameter "id"
    .parameter "prefs"
    .parameter "dbHelper"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 264
    new-instance v0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;-><init>(Lcom/google/android/picasasync/PhotoTracker$Config;)V

    .line 265
    .local v0, record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoTracker$Config;->keyCurrentTaskId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {p3, v1, v2}, Lcom/google/android/picasasync/PhotoTracker;->getCurrentTask(Lcom/google/android/picasasync/UploadsDatabaseHelper;J)Lcom/google/android/picasasync/UploadTaskEntry;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->currentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoTracker$Config;->keyOldMediaLastUploadedId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaLastUploadedId:J

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoTracker$Config;->keyOldMediaLastId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {p2, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaLastId:J

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoTracker$Config;->keyOldMediaProgress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaProgress:I

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoTracker$Config;->keyOldMediaCount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaCount:I

    .line 272
    return-object v0
.end method

.method private static createTrackRecords(Landroid/content/Context;[Lcom/google/android/picasasync/PhotoTracker$Config;Z)[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    .registers 11
    .parameter "context"
    .parameter "configs"
    .parameter "trackingNewMedia"

    .prologue
    .line 317
    array-length v4, p1

    new-array v3, v4, [Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

    .line 318
    .local v3, records:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    if-eqz p2, :cond_1b

    .line 319
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    array-length v4, p1

    if-ge v1, v4, :cond_45

    .line 320
    aget-object v0, p1, v1

    .line 321
    .local v0, config:Lcom/google/android/picasasync/PhotoTracker$Config;
    new-instance v2, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

    invoke-direct {v2, v0}, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;-><init>(Lcom/google/android/picasasync/PhotoTracker$Config;)V

    aput-object v2, v3, v1

    .line 322
    .local v2, record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    invoke-static {p0, v0}, Lcom/google/android/picasasync/PhotoTracker;->findLatestIdInMediaStore(Landroid/content/Context;Lcom/google/android/picasasync/PhotoTracker$Config;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->newMediaLastUploadedId:J

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 325
    .end local v0           #config:Lcom/google/android/picasasync/PhotoTracker$Config;
    .end local v1           #i:I
    .end local v2           #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    :cond_1b
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1c
    array-length v4, p1

    if-ge v1, v4, :cond_45

    .line 326
    aget-object v0, p1, v1

    .line 327
    .restart local v0       #config:Lcom/google/android/picasasync/PhotoTracker$Config;
    new-instance v2, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

    invoke-direct {v2, v0}, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;-><init>(Lcom/google/android/picasasync/PhotoTracker$Config;)V

    aput-object v2, v3, v1

    .line 328
    .restart local v2       #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    invoke-static {p0, v0}, Lcom/google/android/picasasync/PhotoTracker;->findLatestIdInMediaStore(Landroid/content/Context;Lcom/google/android/picasasync/PhotoTracker$Config;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaLastId:J

    .line 329
    const-wide/16 v4, -0x1

    iput-wide v4, v2, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaLastUploadedId:J

    .line 330
    iget-wide v4, v2, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaLastId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_42

    .line 331
    iget-wide v4, v2, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaLastId:J

    invoke-static {p0, v0, v4, v5}, Lcom/google/android/picasasync/PhotoTracker;->getTotalOldMediaCount(Landroid/content/Context;Lcom/google/android/picasasync/PhotoTracker$Config;J)I

    move-result v4

    iput v4, v2, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaCount:I

    .line 325
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 336
    .end local v0           #config:Lcom/google/android/picasasync/PhotoTracker$Config;
    .end local v2           #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    :cond_45
    return-object v3
.end method

.method private static findLatestIdInMediaStore(Landroid/content/Context;Lcom/google/android/picasasync/PhotoTracker$Config;)J
    .registers 11
    .parameter "context"
    .parameter "config"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v3, 0x0

    .line 535
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/picasasync/PhotoTracker$Config;->mediaStoreUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/picasasync/PhotoTracker;->PROJECTION_MAX_ID:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 537
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_25

    .line 538
    iget-object v0, p1, Lcom/google/android/picasasync/PhotoTracker$Config;->storage:Ljava/lang/String;

    const-string v1, "phoneStorage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 539
    const-string v0, "UploadsManager"

    const-string v1, " ***** findLatestIdInMediaStore returns null cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_24
    :goto_24
    return-wide v7

    .line 545
    :cond_25
    :try_start_25
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_37

    move-result-wide v0

    .line 547
    :goto_30
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-wide v7, v0

    goto :goto_24

    :cond_35
    move-wide v0, v7

    .line 545
    goto :goto_30

    .line 547
    :catchall_37
    move-exception v0

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private findNextNewMediaFor(Ljava/lang/String;Lcom/google/android/picasasync/PhotoTracker$TrackRecord;)Lcom/google/android/picasasync/UploadTaskEntry;
    .registers 18
    .parameter "account"
    .parameter "record"

    .prologue
    .line 623
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->config:Lcom/google/android/picasasync/PhotoTracker$Config;

    .line 624
    .local v7, config:Lcom/google/android/picasasync/PhotoTracker$Config;
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v7, Lcom/google/android/picasasync/PhotoTracker$Config;->mediaStoreUriLimit1:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/picasasync/PhotoTracker;->PROJECTION_ID:[Ljava/lang/String;

    const-string v4, "_id > ? AND _data LIKE \'%/DCIM/%\'"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->newMediaLastUploadedId:J

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v6

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 627
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_28

    const/4 v1, 0x0

    .line 640
    :goto_27
    return-object v1

    .line 630
    :cond_28
    :try_start_28
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 631
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 632
    .local v9, mediaId:J
    iget-object v1, v7, Lcom/google/android/picasasync/PhotoTracker$Config;->mediaStoreUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 634
    .local v11, uri:Landroid/net/Uri;
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/google/android/picasasync/PicasaUploadHelper;->createBackgroundUploadTask(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;

    move-result-object v12

    .line 636
    .local v12, values:Landroid/content/ContentValues;
    const/4 v1, 0x0

    invoke-static {v12, v1}, Lcom/google/android/picasasync/UploadTaskEntry;->createNew(Landroid/content/ContentValues;I)Lcom/google/android/picasasync/UploadTaskEntry;
    :try_end_4f
    .catchall {:try_start_28 .. :try_end_4f} :catchall_59

    move-result-object v1

    .line 640
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_27

    .line 638
    .end local v9           #mediaId:J
    .end local v11           #uri:Landroid/net/Uri;
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_54
    const/4 v1, 0x0

    .line 640
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_27

    :catchall_59
    move-exception v1

    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method private findNextOldMediaFor(Ljava/lang/String;Lcom/google/android/picasasync/PhotoTracker$TrackRecord;Ljava/util/Set;Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;)Lcom/google/android/picasasync/UploadTaskEntry;
    .registers 22
    .parameter "account"
    .parameter "record"
    .parameter
    .parameter "syncContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/picasasync/PhotoTracker$TrackRecord;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/gallery3d/common/Fingerprint;",
            ">;",
            "Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;",
            ")",
            "Lcom/google/android/picasasync/UploadTaskEntry;"
        }
    .end annotation

    .prologue
    .line 567
    .local p3, fingerprintSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/gallery3d/common/Fingerprint;>;"
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->config:Lcom/google/android/picasasync/PhotoTracker$Config;

    .line 568
    .local v9, config:Lcom/google/android/picasasync/PhotoTracker$Config;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/picasasync/PhotoTracker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/picasasync/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/UploadsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/picasasync/UploadsManager;->getFingerprintManager()Lcom/google/android/picasasync/FingerprintManager;

    move-result-object v11

    .line 570
    .local v11, fingerprintManager:Lcom/google/android/picasasync/FingerprintManager;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaLastId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaLastUploadedId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 572
    .local v5, args:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/picasasync/PhotoTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/picasasync/PhotoTracker$Config;->mediaStoreUri:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/picasasync/PhotoTracker;->PROJECTION_ID:[Ljava/lang/String;

    const-string v4, "_id <= ? AND _id > ? AND _data LIKE \'%/DCIM/%\'"

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 574
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_41

    const/4 v14, 0x0

    .line 618
    :goto_40
    return-object v14

    .line 576
    :cond_41
    if-nez p3, :cond_48

    new-instance p3, Ljava/util/HashSet;

    .end local p3           #fingerprintSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/gallery3d/common/Fingerprint;>;"
    invoke-direct/range {p3 .. p3}, Ljava/util/HashSet;-><init>()V

    .line 578
    .restart local p3       #fingerprintSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/gallery3d/common/Fingerprint;>;"
    :cond_48
    :goto_48
    :try_start_48
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_f9

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->syncInterrupted()Z

    move-result v1

    if-nez v1, :cond_f9

    .line 579
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 580
    .local v12, mediaId:J
    iget-object v1, v9, Lcom/google/android/picasasync/PhotoTracker$Config;->mediaStoreUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15

    .line 584
    .local v15, uri:Landroid/net/Uri;
    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/google/android/picasasync/FingerprintManager;->getCachedFingerprint(Ljava/lang/String;)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v7

    .line 586
    .local v7, cachedFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    const/4 v8, 0x0

    .line 587
    .local v8, calculatedFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    if-nez v7, :cond_80

    .line 589
    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Lcom/google/android/picasasync/FingerprintManager;->getFingerprint(Ljava/lang/String;Z)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v7

    move-object v8, v7

    .line 592
    :cond_80
    if-nez v7, :cond_b0

    .line 593
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v1}, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->updateProgress(JZ)V

    .line 594
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/picasasync/PhotoTracker;->mOldMediaProgress:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/picasasync/PhotoTracker;->mOldMediaProgress:I

    .line 595
    const-string v1, "UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no fingerprint; skip upload for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catchall {:try_start_48 .. :try_end_aa} :catchall_ab

    goto :goto_48

    .line 618
    .end local v7           #cachedFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .end local v8           #calculatedFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .end local v12           #mediaId:J
    .end local v15           #uri:Landroid/net/Uri;
    :catchall_ab
    move-exception v1

    invoke-static {v10}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1

    .line 598
    .restart local v7       #cachedFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .restart local v8       #calculatedFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .restart local v12       #mediaId:J
    .restart local v15       #uri:Landroid/net/Uri;
    :cond_b0
    :try_start_b0
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 599
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v1}, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->updateProgress(JZ)V

    .line 600
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/picasasync/PhotoTracker;->mOldMediaProgress:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/picasasync/PhotoTracker;->mOldMediaProgress:I

    .line 601
    const-string v1, "UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplicate upload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_48

    .line 605
    :cond_e2
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/picasasync/PicasaUploadHelper;->createBackgroundUploadTask(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;

    move-result-object v16

    .line 607
    .local v16, values:Landroid/content/ContentValues;
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Lcom/google/android/picasasync/UploadTaskEntry;->createNew(Landroid/content/ContentValues;I)Lcom/google/android/picasasync/UploadTaskEntry;

    move-result-object v14

    .line 611
    .local v14, task:Lcom/google/android/picasasync/UploadTaskEntry;
    if-eqz v8, :cond_f4

    .line 612
    invoke-virtual {v14, v8}, Lcom/google/android/picasasync/UploadTaskEntry;->setFingerprint(Lcom/android/gallery3d/common/Fingerprint;)V
    :try_end_f4
    .catchall {:try_start_b0 .. :try_end_f4} :catchall_ab

    .line 618
    :cond_f4
    invoke-static {v10}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_40

    .line 616
    .end local v7           #cachedFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .end local v8           #calculatedFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .end local v12           #mediaId:J
    .end local v14           #task:Lcom/google/android/picasasync/UploadTaskEntry;
    .end local v15           #uri:Landroid/net/Uri;
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_f9
    const/4 v14, 0x0

    .line 618
    invoke-static {v10}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_40
.end method

.method private static getCurrentTask(Lcom/google/android/picasasync/UploadsDatabaseHelper;J)Lcom/google/android/picasasync/UploadTaskEntry;
    .registers 13
    .parameter "dbHelper"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 276
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_8

    .line 285
    :cond_7
    :goto_7
    return-object v5

    .line 277
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PhotoTracker;->UPLOAD_TASK_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v2}, Lcom/android/gallery3d/common/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 280
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_7

    .line 282
    :try_start_29
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {v9}, Lcom/google/android/picasasync/UploadTaskEntry;->fromCursor(Landroid/database/Cursor;)Lcom/google/android/picasasync/UploadTaskEntry;
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_3b

    move-result-object v5

    .line 285
    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_7

    :cond_37
    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_7

    :catchall_3b
    move-exception v0

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static getTotalOldMediaCount(Landroid/content/Context;Lcom/google/android/picasasync/PhotoTracker$Config;J)I
    .registers 12
    .parameter "context"
    .parameter "config"
    .parameter "lastId"

    .prologue
    const/4 v7, 0x0

    .line 553
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const/4 v0, 0x1

    const-string v1, "-1"

    aput-object v1, v4, v0

    .line 554
    .local v4, args:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/picasasync/PhotoTracker$Config;->mediaStoreUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/picasasync/PhotoTracker;->PROJECTION_COUNT:[Ljava/lang/String;

    const-string v3, "_id <= ? AND _id > ? AND _data LIKE \'%/DCIM/%\'"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 556
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_21

    .line 561
    :goto_20
    return v7

    .line 559
    :cond_21
    :try_start_21
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_33

    move-result v0

    .line 561
    :goto_2c
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v7, v0

    goto :goto_20

    :cond_31
    move v0, v7

    .line 559
    goto :goto_2c

    .line 561
    :catchall_33
    move-exception v0

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized allDone()Z
    .registers 3

    .prologue
    .line 523
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackingNewMedia:Z

    if-nez v0, :cond_e

    iget v0, p0, Lcom/google/android/picasasync/PhotoTracker;->mOldMediaProgress:I

    iget v1, p0, Lcom/google/android/picasasync/PhotoTracker;->mOldMediaCount:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentTasks()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/picasasync/UploadTaskEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    monitor-enter p0

    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v4, tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasasync/UploadTaskEntry;>;"
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackRecords:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

    .local v0, arr$:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_a
    if-ge v1, v2, :cond_1a

    aget-object v3, v0, v1

    .line 383
    .local v3, record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    iget-object v5, v3, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->currentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    if-eqz v5, :cond_17

    iget-object v5, v3, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->currentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1c

    .line 382
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 385
    .end local v3           #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    :cond_1a
    monitor-exit p0

    return-object v4

    .line 381
    .end local v0           #arr$:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasasync/UploadTaskEntry;>;"
    :catchall_1c
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getExistingMediaTotalCount()I
    .registers 2

    .prologue
    .line 527
    iget v0, p0, Lcom/google/android/picasasync/PhotoTracker;->mOldMediaCount:I

    return v0
.end method

.method public getExistingMediaUploadProgress()I
    .registers 2

    .prologue
    .line 531
    iget v0, p0, Lcom/google/android/picasasync/PhotoTracker;->mOldMediaProgress:I

    return v0
.end method

.method public declared-synchronized getNextUploadTask(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;)Lcom/google/android/picasasync/UploadTaskEntry;
    .registers 15
    .parameter "mediaType"
    .parameter
    .parameter "syncContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/gallery3d/common/Fingerprint;",
            ">;",
            "Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;",
            ")",
            "Lcom/google/android/picasasync/UploadTaskEntry;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, fingerprintSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/gallery3d/common/Fingerprint;>;"
    const-wide/16 v9, 0x0

    .line 446
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoTracker;->mAccount:Ljava/lang/String;

    .line 447
    .local v0, account:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackRecords:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

    .local v1, arr$:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_9
    if-ge v2, v3, :cond_3a

    aget-object v4, v1, v2

    .line 448
    .local v4, record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    iget-object v7, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->currentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    if-eqz v7, :cond_37

    iget-object v7, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->config:Lcom/google/android/picasasync/PhotoTracker$Config;

    invoke-virtual {v7, p1}, Lcom/google/android/picasasync/PhotoTracker$Config;->matchesMediaType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 449
    const-string v7, "UploadsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   saved task: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->currentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v6, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->currentTask:Lcom/google/android/picasasync/UploadTaskEntry;
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_9e

    .line 500
    .end local v4           #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    :cond_35
    :goto_35
    monitor-exit p0

    return-object v6

    .line 447
    .restart local v4       #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 455
    .end local v4           #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    :cond_3a
    const/4 v6, 0x0

    .line 456
    .local v6, task:Lcom/google/android/picasasync/UploadTaskEntry;
    :try_start_3b
    iget-boolean v7, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackingNewMedia:Z

    if-eqz v7, :cond_a1

    .line 457
    const/4 v5, 0x0

    .line 458
    .local v5, storageAvailable:Z
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackRecords:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_44
    if-ge v2, v3, :cond_94

    aget-object v4, v1, v2

    .line 459
    .restart local v4       #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    iget-object v7, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->config:Lcom/google/android/picasasync/PhotoTracker$Config;

    invoke-virtual {v7, p1}, Lcom/google/android/picasasync/PhotoTracker$Config;->matchesMediaType(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_53

    .line 458
    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 460
    :cond_53
    iget-wide v7, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->newMediaLastUploadedId:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_63

    .line 461
    iget-object v7, p0, Lcom/google/android/picasasync/PhotoTracker;->mContext:Landroid/content/Context;

    iget-object v8, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->config:Lcom/google/android/picasasync/PhotoTracker$Config;

    invoke-static {v7, v8}, Lcom/google/android/picasasync/PhotoTracker;->findLatestIdInMediaStore(Landroid/content/Context;Lcom/google/android/picasasync/PhotoTracker$Config;)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->newMediaLastUploadedId:J

    .line 464
    :cond_63
    iget-wide v7, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->newMediaLastUploadedId:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_50

    .line 465
    const/4 v5, 0x1

    .line 466
    invoke-direct {p0, v0, v4}, Lcom/google/android/picasasync/PhotoTracker;->findNextNewMediaFor(Ljava/lang/String;Lcom/google/android/picasasync/PhotoTracker$TrackRecord;)Lcom/google/android/picasasync/UploadTaskEntry;

    move-result-object v6

    .line 467
    if-eqz v6, :cond_50

    .line 468
    const-string v7, "UploadsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   new "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iput-object v6, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->currentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    .line 474
    .end local v4           #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    :cond_94
    if-nez v5, :cond_35

    .line 475
    new-instance v7, Ljava/io/IOException;

    const-string v8, "no storage is available; try later"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_9e
    .catchall {:try_start_3b .. :try_end_9e} :catchall_9e

    .line 446
    .end local v0           #account:Ljava/lang/String;
    .end local v1           #arr$:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #storageAvailable:Z
    .end local v6           #task:Lcom/google/android/picasasync/UploadTaskEntry;
    :catchall_9e
    move-exception v7

    monitor-exit p0

    throw v7

    .line 478
    .restart local v0       #account:Ljava/lang/String;
    .restart local v1       #arr$:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v6       #task:Lcom/google/android/picasasync/UploadTaskEntry;
    :cond_a1
    :try_start_a1
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackRecords:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_a5
    if-ge v2, v3, :cond_35

    aget-object v4, v1, v2

    .line 479
    .restart local v4       #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    iget-object v7, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->config:Lcom/google/android/picasasync/PhotoTracker$Config;

    invoke-virtual {v7, p1}, Lcom/google/android/picasasync/PhotoTracker$Config;->matchesMediaType(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b4

    .line 478
    :cond_b1
    :goto_b1
    add-int/lit8 v2, v2, 0x1

    goto :goto_a5

    .line 480
    :cond_b4
    invoke-virtual {v4}, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->hasMoreExistingMediaToUpload()Z

    move-result v7

    if-eqz v7, :cond_b1

    .line 481
    invoke-direct {p0, v0, v4, p2, p3}, Lcom/google/android/picasasync/PhotoTracker;->findNextOldMediaFor(Ljava/lang/String;Lcom/google/android/picasasync/PhotoTracker$TrackRecord;Ljava/util/Set;Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;)Lcom/google/android/picasasync/UploadTaskEntry;

    move-result-object v6

    .line 482
    if-eqz v6, :cond_e6

    .line 483
    const-string v7, "UploadsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   old "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iput-object v6, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->currentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    goto/16 :goto_35

    .line 491
    :cond_e6
    const-string v7, "UploadsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   adjust count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaProgress:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; total count "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/google/android/picasasync/PhotoTracker;->mOldMediaCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/google/android/picasasync/PhotoTracker;->mOldMediaCount:I

    iget v10, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaProgress:I

    add-int/2addr v9, v10

    iget v10, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaCount:I

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget v7, p0, Lcom/google/android/picasasync/PhotoTracker;->mOldMediaCount:I

    iget v8, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaProgress:I

    iget v9, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaCount:I

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lcom/google/android/picasasync/PhotoTracker;->mOldMediaCount:I

    .line 495
    iget v7, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaProgress:I

    iput v7, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaCount:I
    :try_end_138
    .catchall {:try_start_a1 .. :try_end_138} :catchall_9e

    goto/16 :goto_b1
.end method

.method public getSyncAccount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoTracker;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized hasUploadTask(Ljava/lang/String;)Z
    .registers 14
    .parameter "mediaType"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v7, 0x1

    .line 394
    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoTracker;->mAccount:Ljava/lang/String;

    .line 395
    .local v0, account:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackRecords:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

    .local v1, arr$:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_a
    if-ge v2, v3, :cond_39

    aget-object v4, v1, v2

    .line 396
    .local v4, record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    iget-object v8, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->currentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    if-eqz v8, :cond_36

    iget-object v8, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->config:Lcom/google/android/picasasync/PhotoTracker$Config;

    invoke-virtual {v8, p1}, Lcom/google/android/picasasync/PhotoTracker$Config;->matchesMediaType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 397
    const-string v8, "UploadsManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "   saved task: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->currentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_83

    .line 433
    .end local v4           #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    :cond_34
    :goto_34
    monitor-exit p0

    return v7

    .line 395
    .restart local v4       #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 403
    .end local v4           #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    :cond_39
    const/4 v5, 0x0

    .line 404
    .local v5, storageAvailable:Z
    :try_start_3a
    iget-boolean v8, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackingNewMedia:Z

    if-eqz v8, :cond_86

    .line 405
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackRecords:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_42
    if-ge v2, v3, :cond_ca

    aget-object v4, v1, v2

    .line 406
    .restart local v4       #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    iget-object v8, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->config:Lcom/google/android/picasasync/PhotoTracker$Config;

    invoke-virtual {v8, p1}, Lcom/google/android/picasasync/PhotoTracker$Config;->matchesMediaType(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_51

    .line 405
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 407
    :cond_51
    iget-wide v8, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->newMediaLastUploadedId:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_4e

    .line 408
    const/4 v5, 0x1

    .line 409
    invoke-direct {p0, v0, v4}, Lcom/google/android/picasasync/PhotoTracker;->findNextNewMediaFor(Ljava/lang/String;Lcom/google/android/picasasync/PhotoTracker$TrackRecord;)Lcom/google/android/picasasync/UploadTaskEntry;

    move-result-object v6

    .line 410
    .local v6, task:Lcom/google/android/picasasync/UploadTaskEntry;
    if-eqz v6, :cond_4e

    .line 411
    const-string v8, "UploadsManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "   new "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iput-object v6, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->currentTask:Lcom/google/android/picasasync/UploadTaskEntry;
    :try_end_82
    .catchall {:try_start_3a .. :try_end_82} :catchall_83

    goto :goto_34

    .line 394
    .end local v0           #account:Ljava/lang/String;
    .end local v1           #arr$:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    .end local v5           #storageAvailable:Z
    .end local v6           #task:Lcom/google/android/picasasync/UploadTaskEntry;
    :catchall_83
    move-exception v7

    monitor-exit p0

    throw v7

    .line 418
    .restart local v0       #account:Ljava/lang/String;
    .restart local v1       #arr$:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #storageAvailable:Z
    :cond_86
    :try_start_86
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackRecords:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_8a
    if-ge v2, v3, :cond_ca

    aget-object v4, v1, v2

    .line 419
    .restart local v4       #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    iget-object v8, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->config:Lcom/google/android/picasasync/PhotoTracker$Config;

    invoke-virtual {v8, p1}, Lcom/google/android/picasasync/PhotoTracker$Config;->matchesMediaType(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_99

    .line 418
    :cond_96
    add-int/lit8 v2, v2, 0x1

    goto :goto_8a

    .line 420
    :cond_99
    iget-wide v8, v4, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaLastId:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_96

    .line 421
    const/4 v5, 0x1

    .line 422
    invoke-virtual {v4}, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->hasMoreExistingMediaToUpload()Z

    move-result v8

    if-eqz v8, :cond_96

    .line 423
    const-string v8, "UploadsManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "   old "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catchall {:try_start_86 .. :try_end_c8} :catchall_83

    goto/16 :goto_34

    .line 429
    .end local v4           #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    :cond_ca
    if-eqz v5, :cond_34

    .line 433
    const/4 v7, 0x0

    goto/16 :goto_34
.end method

.method public isTrackingNewMedia()Z
    .registers 2

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackingNewMedia:Z

    return v0
.end method

.method public declared-synchronized onUploadComplete(Lcom/google/android/picasasync/UploadTaskEntry;)V
    .registers 11
    .parameter "task"

    .prologue
    .line 504
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackRecords:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

    .local v0, arr$:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_5
    if-ge v1, v2, :cond_52

    aget-object v5, v0, v1

    .line 505
    .local v5, record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    iget-object v6, v5, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->currentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    if-eq v6, p1, :cond_10

    .line 504
    :cond_d
    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 507
    :cond_10
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_39

    .line 508
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->currentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    .line 509
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 510
    .local v3, mediaId:J
    iget-boolean v6, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackingNewMedia:Z

    invoke-virtual {v5, v3, v4, v6}, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->updateProgress(JZ)V

    .line 511
    iget-boolean v6, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackingNewMedia:Z

    if-nez v6, :cond_d

    iget v6, p0, Lcom/google/android/picasasync/PhotoTracker;->mOldMediaProgress:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/picasasync/PhotoTracker;->mOldMediaProgress:I
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    goto :goto_d

    .line 504
    .end local v0           #arr$:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #mediaId:J
    .end local v5           #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    :catchall_36
    move-exception v6

    monitor-exit p0

    throw v6

    .line 513
    .restart local v0       #arr$:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v5       #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    :cond_39
    :try_start_39
    const-string v6, "UploadsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   save unfinished upload: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_39 .. :try_end_51} :catchall_36

    goto :goto_d

    .line 516
    .end local v5           #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    :cond_52
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeStates(Landroid/content/SharedPreferences$Editor;)V
    .registers 11
    .parameter "edit"

    .prologue
    .line 362
    monitor-enter p0

    :try_start_1
    iget-boolean v6, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackingNewMedia:Z

    if-eqz v6, :cond_a3

    const-string v3, "new_media"

    .line 363
    .local v3, id:Ljava/lang/String;
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackRecords:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->config:Lcom/google/android/picasasync/PhotoTracker$Config;

    iget-object v7, v7, Lcom/google/android/picasasync/PhotoTracker$Config;->keyAccount:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 365
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackRecords:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

    .local v0, arr$:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_28
    if-ge v2, v4, :cond_a7

    aget-object v5, v0, v2

    .line 366
    .local v5, record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    iget-object v1, v5, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->config:Lcom/google/android/picasasync/PhotoTracker$Config;

    .line 367
    .local v1, config:Lcom/google/android/picasasync/PhotoTracker$Config;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/google/android/picasasync/PhotoTracker$Config;->keyCurrentTaskId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/google/android/picasasync/PhotoTracker$Config;->keyNewMediaLastUploadedId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/google/android/picasasync/PhotoTracker$Config;->keyOldMediaLastUploadedId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/google/android/picasasync/PhotoTracker$Config;->keyOldMediaLastId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/google/android/picasasync/PhotoTracker$Config;->keyOldMediaProgress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 365
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 362
    .end local v0           #arr$:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    .end local v1           #config:Lcom/google/android/picasasync/PhotoTracker$Config;
    .end local v2           #i$:I
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    :cond_a3
    iget-object v3, p0, Lcom/google/android/picasasync/PhotoTracker;->mAccount:Ljava/lang/String;
    :try_end_a5
    .catchall {:try_start_1 .. :try_end_a5} :catchall_a9

    goto/16 :goto_7

    .line 373
    .restart local v0       #arr$:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    .restart local v2       #i$:I
    .restart local v3       #id:Ljava/lang/String;
    .restart local v4       #len$:I
    :cond_a7
    monitor-exit p0

    return-void

    .line 362
    .end local v0           #arr$:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    .end local v2           #i$:I
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #len$:I
    :catchall_a9
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized saveStates(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .registers 12
    .parameter "edit"

    .prologue
    .line 340
    monitor-enter p0

    :try_start_1
    iget-boolean v6, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackingNewMedia:Z

    if-eqz v6, :cond_77

    const-string v3, "new_media"

    .line 341
    .local v3, id:Ljava/lang/String;
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackRecords:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->config:Lcom/google/android/picasasync/PhotoTracker$Config;

    iget-object v7, v7, Lcom/google/android/picasasync/PhotoTracker$Config;->keyAccount:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/picasasync/PhotoTracker;->mAccount:Ljava/lang/String;

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 343
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackRecords:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

    .local v0, arr$:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2a
    if-ge v2, v4, :cond_de

    aget-object v5, v0, v2

    .line 344
    .local v5, record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    iget-object v1, v5, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->config:Lcom/google/android/picasasync/PhotoTracker$Config;

    .line 345
    .local v1, config:Lcom/google/android/picasasync/PhotoTracker$Config;
    iget-object v6, v5, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->currentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    if-eqz v6, :cond_58

    iget-object v6, v5, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->currentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    iget-wide v6, v6, Lcom/google/android/picasasync/UploadTaskEntry;->id:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_58

    .line 346
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/google/android/picasasync/PhotoTracker$Config;->keyCurrentTaskId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->currentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    iget-wide v7, v7, Lcom/google/android/picasasync/UploadTaskEntry;->id:J

    invoke-interface {p1, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 349
    :cond_58
    iget-boolean v6, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackingNewMedia:Z

    if-eqz v6, :cond_7a

    .line 350
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/google/android/picasasync/PhotoTracker$Config;->keyNewMediaLastUploadedId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v5, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->newMediaLastUploadedId:J

    invoke-interface {p1, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 343
    :goto_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 340
    .end local v0           #arr$:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    .end local v1           #config:Lcom/google/android/picasasync/PhotoTracker$Config;
    .end local v2           #i$:I
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    :cond_77
    iget-object v3, p0, Lcom/google/android/picasasync/PhotoTracker;->mAccount:Ljava/lang/String;

    goto :goto_7

    .line 352
    .restart local v0       #arr$:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    .restart local v1       #config:Lcom/google/android/picasasync/PhotoTracker$Config;
    .restart local v2       #i$:I
    .restart local v3       #id:Ljava/lang/String;
    .restart local v4       #len$:I
    .restart local v5       #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    :cond_7a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/google/android/picasasync/PhotoTracker$Config;->keyOldMediaLastUploadedId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v5, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaLastUploadedId:J

    invoke-interface {p1, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 353
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/google/android/picasasync/PhotoTracker$Config;->keyOldMediaLastId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v5, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaLastId:J

    invoke-interface {p1, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 354
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/google/android/picasasync/PhotoTracker$Config;->keyOldMediaProgress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v5, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaProgress:I

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 355
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/google/android/picasasync/PhotoTracker$Config;->keyOldMediaCount:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v5, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaCount:I

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_da
    .catchall {:try_start_1 .. :try_end_da} :catchall_db

    goto :goto_74

    .line 340
    .end local v0           #arr$:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    .end local v1           #config:Lcom/google/android/picasasync/PhotoTracker$Config;
    .end local v2           #i$:I
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    :catchall_db
    move-exception v6

    monitor-exit p0

    throw v6

    .line 358
    .restart local v0       #arr$:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    .restart local v2       #i$:I
    .restart local v3       #id:Ljava/lang/String;
    .restart local v4       #len$:I
    :cond_de
    monitor-exit p0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 646
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 647
    .local v4, sb:Ljava/lang/StringBuilder;
    iget-boolean v5, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackingNewMedia:Z

    if-eqz v5, :cond_37

    .line 648
    const-string v5, "MediaTracker:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/picasasync/PhotoTracker;->mAccount:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",trackNew"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackRecords:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

    .local v0, arr$:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_22
    if-ge v1, v2, :cond_65

    aget-object v3, v0, v1

    .line 650
    .local v3, record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 653
    .end local v0           #arr$:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    :cond_37
    const-string v5, "MediaTracker:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/picasasync/PhotoTracker;->mAccount:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",trackOld"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoTracker;->mTrackRecords:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;

    .restart local v0       #arr$:[Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    array-length v2, v0

    .restart local v2       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_50
    if-ge v1, v2, :cond_65

    aget-object v3, v0, v1

    .line 655
    .restart local v3       #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 658
    .end local v3           #record:Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
    :cond_65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
