.class Lcom/google/android/apps/plus/iu/MediaTracker;
.super Ljava/lang/Object;
.source "MediaTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;,
        Lcom/google/android/apps/plus/iu/MediaTracker$Config;
    }
.end annotation


# static fields
.field private static final ALL_CONFIGS:[Lcom/google/android/apps/plus/iu/MediaTracker$Config;

.field private static final EXIF_TAGS:[Ljava/lang/String;

.field private static final PROJECTION_COUNT:[Ljava/lang/String;

.field private static final PROJECTION_ID:[Ljava/lang/String;

.field private static final PROJECTION_MAX_ID:[Ljava/lang/String;

.field private static final UPLOAD_TASK_TABLE_NAME:Ljava/lang/String;


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mOldMediaCount:I

.field private mOldMediaProgress:I

.field private mState:I

.field private final mTrackRecords:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

.field private final mTrackingInstantShare:Z

.field private final mTrackingNewMedia:Z

.field private final mUploadsDbHelper:Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v3, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 44
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "FNumber"

    aput-object v1, v0, v5

    const-string v1, "DateTime"

    aput-object v1, v0, v6

    const-string v1, "ExposureTime"

    aput-object v1, v0, v7

    const-string v1, "Flash"

    aput-object v1, v0, v8

    const-string v1, "FocalLength"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "GPSAltitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GPSAltitudeRef"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GPSDateStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GPSLatitude"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GPSLatitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "GPSLongitude"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "GPSLongitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GPSProcessingMethod"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GPSTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ImageLength"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ImageWidth"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ISOSpeedRatings"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Make"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Model"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/iu/MediaTracker;->EXIF_TAGS:[Ljava/lang/String;

    .line 80
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "MAX(_id)"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/plus/iu/MediaTracker;->PROJECTION_MAX_ID:[Ljava/lang/String;

    .line 82
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "COUNT(*)"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/plus/iu/MediaTracker;->PROJECTION_COUNT:[Ljava/lang/String;

    .line 84
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/plus/iu/MediaTracker;->PROJECTION_ID:[Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/iu/MediaTracker;->UPLOAD_TASK_TABLE_NAME:Ljava/lang/String;

    .line 170
    new-array v0, v3, [Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    new-instance v1, Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    const-string v2, "photo"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "external"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/apps/plus/iu/MediaTracker$Config;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    const-string v2, "photo"

    const-string v3, "phoneStorage"

    invoke-static {v3}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "phoneStorage"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/apps/plus/iu/MediaTracker$Config;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    const-string v2, "video"

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "external"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/apps/plus/iu/MediaTracker$Config;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    const-string v2, "video"

    const-string v3, "phoneStorage"

    invoke-static {v3}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "phoneStorage"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/apps/plus/iu/MediaTracker$Config;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    aput-object v1, v0, v8

    sput-object v0, Lcom/google/android/apps/plus/iu/MediaTracker;->ALL_CONFIGS:[Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/google/android/apps/plus/iu/UploadsDatabaseHelper;Z)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "trackingNewMedia"
    .parameter "uploadsDbHelper"
    .parameter "trackingInstantShare"

    .prologue
    .line 377
    sget-object v0, Lcom/google/android/apps/plus/iu/MediaTracker;->ALL_CONFIGS:[Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    invoke-static {p1, v0, p3}, Lcom/google/android/apps/plus/iu/MediaTracker;->createTrackRecords(Landroid/content/Context;[Lcom/google/android/apps/plus/iu/MediaTracker$Config;Z)[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/iu/MediaTracker;-><init>(Landroid/content/Context;Ljava/lang/String;Z[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;ILcom/google/android/apps/plus/iu/UploadsDatabaseHelper;Z)V

    .line 380
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Z[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;ILcom/google/android/apps/plus/iu/UploadsDatabaseHelper;Z)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "trackingNewMedia"
    .parameter "records"
    .parameter "state"
    .parameter "uploadsDbHelper"
    .parameter "trackingInstantShare"

    .prologue
    const/4 v5, 0x0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mContext:Landroid/content/Context;

    .line 386
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mAccount:Ljava/lang/String;

    .line 387
    iput-boolean p3, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackingNewMedia:Z

    .line 388
    iput-boolean p7, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackingInstantShare:Z

    .line 389
    iput-object p4, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackRecords:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    .line 390
    iput p5, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mState:I

    .line 391
    iput-object p6, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mUploadsDbHelper:Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;

    .line 392
    if-nez p3, :cond_36

    .line 393
    iput v5, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mOldMediaProgress:I

    .line 394
    iput v5, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mOldMediaCount:I

    .line 395
    move-object v0, p4

    .local v0, arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_21
    if-ge v1, v2, :cond_36

    aget-object v3, v0, v1

    .line 396
    .local v3, record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    iget v4, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mOldMediaProgress:I

    iget v5, v3, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaProgress:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mOldMediaProgress:I

    .line 397
    iget v4, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mOldMediaCount:I

    iget v5, v3, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaCount:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mOldMediaCount:I

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 400
    .end local v0           #arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    :cond_36
    return-void
.end method

.method public static createFromStates(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;)Lcom/google/android/apps/plus/iu/MediaTracker;
    .registers 5
    .parameter "context"
    .parameter "prefs"
    .parameter "dbHelper"

    .prologue
    .line 272
    sget-object v0, Lcom/google/android/apps/plus/iu/MediaTracker;->ALL_CONFIGS:[Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/android/apps/plus/iu/MediaTracker;->createFromStates(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;[Lcom/google/android/apps/plus/iu/MediaTracker$Config;Z)Lcom/google/android/apps/plus/iu/MediaTracker;

    move-result-object v0

    return-object v0
.end method

.method public static createFromStates(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;Z)Lcom/google/android/apps/plus/iu/MediaTracker;
    .registers 5
    .parameter "context"
    .parameter "prefs"
    .parameter "dbHelper"
    .parameter "trackInstantShare"

    .prologue
    .line 277
    sget-object v0, Lcom/google/android/apps/plus/iu/MediaTracker;->ALL_CONFIGS:[Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/android/apps/plus/iu/MediaTracker;->createFromStates(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;[Lcom/google/android/apps/plus/iu/MediaTracker$Config;Z)Lcom/google/android/apps/plus/iu/MediaTracker;

    move-result-object v0

    return-object v0
.end method

.method private static createFromStates(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;[Lcom/google/android/apps/plus/iu/MediaTracker$Config;Z)Lcom/google/android/apps/plus/iu/MediaTracker;
    .registers 15
    .parameter "context"
    .parameter "prefs"
    .parameter "dbHelper"
    .parameter "configs"
    .parameter "trackingInstantShare"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 287
    if-eqz p4, :cond_23

    const-string v8, "instant_share"

    .line 290
    .local v8, accountSuffix:Ljava/lang/String;
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    aget-object v6, p3, v6

    iget-object v6, v6, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->keyAccount:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, account:Ljava/lang/String;
    if-nez v2, :cond_26

    .line 304
    :goto_22
    return-object v0

    .line 287
    .end local v2           #account:Ljava/lang/String;
    .end local v8           #accountSuffix:Ljava/lang/String;
    :cond_23
    const-string v8, "new_media"

    goto :goto_6

    .line 296
    .restart local v2       #account:Ljava/lang/String;
    .restart local v8       #accountSuffix:Ljava/lang/String;
    :cond_26
    array-length v0, p3

    new-array v4, v0, [Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    .line 297
    .local v4, records:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2a
    array-length v0, v4

    if-ge v9, v0, :cond_38

    .line 298
    aget-object v0, p3, v9

    invoke-static {v0, p1, p2, p4}, Lcom/google/android/apps/plus/iu/MediaTracker;->createNewMediaTrackRecordFromStates(Lcom/google/android/apps/plus/iu/MediaTracker$Config;Landroid/content/SharedPreferences;Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;Z)Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    move-result-object v0

    aput-object v0, v4, v9

    .line 297
    add-int/lit8 v9, v9, 0x1

    goto :goto_2a

    .line 302
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pt_states.state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 304
    .local v5, state:I
    new-instance v0, Lcom/google/android/apps/plus/iu/MediaTracker;

    move-object v1, p0

    move-object v6, p2

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/iu/MediaTracker;-><init>(Landroid/content/Context;Ljava/lang/String;Z[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;ILcom/google/android/apps/plus/iu/UploadsDatabaseHelper;Z)V

    goto :goto_22
.end method

.method public static createFromStates(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;)Lcom/google/android/apps/plus/iu/MediaTracker;
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "prefs"
    .parameter "dbHelper"

    .prologue
    .line 282
    sget-object v0, Lcom/google/android/apps/plus/iu/MediaTracker;->ALL_CONFIGS:[Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/apps/plus/iu/MediaTracker;->createFromStates(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;[Lcom/google/android/apps/plus/iu/MediaTracker$Config;)Lcom/google/android/apps/plus/iu/MediaTracker;

    move-result-object v0

    return-object v0
.end method

.method private static createFromStates(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;[Lcom/google/android/apps/plus/iu/MediaTracker$Config;)Lcom/google/android/apps/plus/iu/MediaTracker;
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "prefs"
    .parameter "dbHelper"
    .parameter "configs"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 322
    move-object v9, p1

    .line 325
    .local v9, id:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p4, v3

    iget-object v2, v2, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->keyAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 326
    const-string v1, "iu.UploadsManager"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 327
    const-string v1, "iu.UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no setting found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_47
    :goto_47
    return-object v0

    .line 332
    :cond_48
    array-length v0, p4

    new-array v4, v0, [Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    .line 333
    .local v4, records:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_4c
    array-length v0, v4

    if-ge v8, v0, :cond_5a

    .line 334
    aget-object v0, p4, v8

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/apps/plus/iu/MediaTracker;->createOldMediaTrackRecordFromStates(Lcom/google/android/apps/plus/iu/MediaTracker$Config;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;)Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    move-result-object v0

    aput-object v0, v4, v8

    .line 333
    add-int/lit8 v8, v8, 0x1

    goto :goto_4c

    .line 337
    :cond_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pt_states.state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 338
    .local v5, state:I
    new-instance v0, Lcom/google/android/apps/plus/iu/MediaTracker;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/iu/MediaTracker;-><init>(Landroid/content/Context;Ljava/lang/String;Z[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;ILcom/google/android/apps/plus/iu/UploadsDatabaseHelper;Z)V

    goto :goto_47
.end method

.method private static createNewMediaTrackRecordFromStates(Lcom/google/android/apps/plus/iu/MediaTracker$Config;Landroid/content/SharedPreferences;Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;Z)Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    .registers 10
    .parameter "config"
    .parameter "prefs"
    .parameter "dbHelper"
    .parameter "trackingInstantShare"

    .prologue
    const-wide/16 v4, 0x0

    .line 310
    if-eqz p3, :cond_42

    const-string v0, "instant_share"

    .line 312
    .local v0, accountSuffix:Ljava/lang/String;
    :goto_6
    new-instance v1, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;-><init>(Lcom/google/android/apps/plus/iu/MediaTracker$Config;)V

    .line 313
    .local v1, record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->keyCurrentTaskId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Lcom/google/android/apps/plus/iu/MediaTracker;->getCurrentTask(Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;J)Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->currentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->keyNewMediaLastUploadedId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->newMediaLastUploadedId:J

    .line 317
    return-object v1

    .line 310
    .end local v0           #accountSuffix:Ljava/lang/String;
    .end local v1           #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    :cond_42
    const-string v0, "new_media"

    goto :goto_6
.end method

.method private static createOldMediaTrackRecordFromStates(Lcom/google/android/apps/plus/iu/MediaTracker$Config;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;)Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    .registers 11
    .parameter "config"
    .parameter "id"
    .parameter "prefs"
    .parameter "dbHelper"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 343
    new-instance v0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;-><init>(Lcom/google/android/apps/plus/iu/MediaTracker$Config;)V

    .line 344
    .local v0, record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->keyCurrentTaskId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {p3, v1, v2}, Lcom/google/android/apps/plus/iu/MediaTracker;->getCurrentTask(Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;J)Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->currentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->keyOldMediaLastUploadedId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaLastUploadedId:J

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->keyOldMediaLastId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {p2, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaLastId:J

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->keyOldMediaProgress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaProgress:I

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->keyOldMediaCount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaCount:I

    .line 351
    return-object v0
.end method

.method private static createTrackRecords(Landroid/content/Context;[Lcom/google/android/apps/plus/iu/MediaTracker$Config;Z)[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    .registers 11
    .parameter "context"
    .parameter "configs"
    .parameter "trackingNewMedia"

    .prologue
    .line 404
    array-length v4, p1

    new-array v3, v4, [Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    .line 405
    .local v3, records:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    if-eqz p2, :cond_1b

    .line 406
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    array-length v4, p1

    if-ge v1, v4, :cond_45

    .line 407
    aget-object v0, p1, v1

    .line 408
    .local v0, config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;
    new-instance v2, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    invoke-direct {v2, v0}, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;-><init>(Lcom/google/android/apps/plus/iu/MediaTracker$Config;)V

    aput-object v2, v3, v1

    .line 409
    .local v2, record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/iu/MediaTracker;->findLatestIdInMediaStore(Landroid/content/Context;Lcom/google/android/apps/plus/iu/MediaTracker$Config;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->newMediaLastUploadedId:J

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 412
    .end local v0           #config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;
    .end local v1           #i:I
    .end local v2           #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    :cond_1b
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1c
    array-length v4, p1

    if-ge v1, v4, :cond_45

    .line 413
    aget-object v0, p1, v1

    .line 414
    .restart local v0       #config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;
    new-instance v2, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    invoke-direct {v2, v0}, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;-><init>(Lcom/google/android/apps/plus/iu/MediaTracker$Config;)V

    aput-object v2, v3, v1

    .line 415
    .restart local v2       #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/iu/MediaTracker;->findLatestIdInMediaStore(Landroid/content/Context;Lcom/google/android/apps/plus/iu/MediaTracker$Config;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaLastId:J

    .line 416
    const-wide/16 v4, -0x1

    iput-wide v4, v2, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaLastUploadedId:J

    .line 417
    iget-wide v4, v2, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaLastId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_42

    .line 418
    iget-wide v4, v2, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaLastId:J

    invoke-static {p0, v0, v4, v5}, Lcom/google/android/apps/plus/iu/MediaTracker;->getTotalOldMediaCount(Landroid/content/Context;Lcom/google/android/apps/plus/iu/MediaTracker$Config;J)I

    move-result v4

    iput v4, v2, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaCount:I

    .line 412
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 423
    .end local v0           #config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;
    .end local v2           #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    :cond_45
    return-object v3
.end method

.method private static findLatestIdInMediaStore(Landroid/content/Context;Lcom/google/android/apps/plus/iu/MediaTracker$Config;)J
    .registers 11
    .parameter "context"
    .parameter "config"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v3, 0x0

    .line 699
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->mediaStoreUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/apps/plus/iu/MediaTracker;->PROJECTION_MAX_ID:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 701
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_2e

    .line 702
    iget-object v0, p1, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->storage:Ljava/lang/String;

    const-string v1, "phoneStorage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 703
    const-string v0, "iu.UploadsManager"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 704
    const-string v0, "iu.UploadsManager"

    const-string v1, " ***** findLatestIdInMediaStore returns null cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_2d
    :goto_2d
    return-wide v7

    .line 711
    :cond_2e
    :try_start_2e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_40

    move-result-wide v0

    .line 713
    :goto_39
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-wide v7, v0

    goto :goto_2d

    :cond_3e
    move-wide v0, v7

    .line 711
    goto :goto_39

    .line 713
    :catchall_40
    move-exception v0

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private findNextNewMediaFor(Ljava/lang/String;Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;)Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    .registers 25
    .parameter "account"
    .parameter "record"
    .parameter "syncContext"

    .prologue
    .line 801
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    .line 802
    .local v8, config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/iu/MediaTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 803
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v3, v8, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->mediaStoreUri:Landroid/net/Uri;

    sget-object v4, Lcom/google/android/apps/plus/iu/MediaTracker;->PROJECTION_ID:[Ljava/lang/String;

    const-string v5, "_id > ? AND _data LIKE \'%/DCIM/%\'"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->newMediaLastUploadedId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 807
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_61

    .line 808
    const/4 v3, 0x0

    .line 847
    :goto_2b
    return-object v3

    .line 818
    .local v13, mediaEntry:Lcom/google/android/apps/plus/iu/MediaMapEntry;
    .local v14, mediaId:J
    .local v16, trackerKey:Ljava/lang/String;
    :cond_2c
    const/4 v10, 0x0

    .line 820
    .local v10, eventId:Ljava/lang/String;
    :goto_2d
    :try_start_2d
    iget-object v3, v8, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->mediaStoreUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v17

    .line 824
    .local v17, uri:Landroid/net/Uri;
    const-string v3, "photo"

    invoke-virtual {v8, v3}, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->matchesMediaType(Ljava/lang/String;)Z

    move-result v12

    .line 825
    .local v12, isPhoto:Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackingInstantShare:Z

    if-eqz v3, :cond_91

    .line 826
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/iu/MediaTracker;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/apps/plus/util/GservicesConfig;->isInstantShareEnabled(Landroid/content/Context;)Z

    move-result v11

    .line 828
    .local v11, instantShareEnabled:Z
    if-eqz v10, :cond_61

    if-eqz v11, :cond_61

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v13, v1, v12}, Lcom/google/android/apps/plus/iu/MediaTracker;->performSanityChecks(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/iu/MediaMapEntry;Landroid/net/Uri;Z)Z

    move-result v3

    if-nez v3, :cond_91

    .line 812
    .end local v10           #eventId:Ljava/lang/String;
    .end local v11           #instantShareEnabled:Z
    .end local v12           #isPhoto:Z
    .end local v13           #mediaEntry:Lcom/google/android/apps/plus/iu/MediaMapEntry;
    .end local v14           #mediaId:J
    .end local v16           #trackerKey:Ljava/lang/String;
    .end local v17           #uri:Landroid/net/Uri;
    :cond_61
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b4

    if-eqz p3, :cond_6f

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->syncInterrupted()Z

    move-result v3

    if-nez v3, :cond_b4

    .line 813
    :cond_6f
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 814
    .restart local v14       #mediaId:J
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/google/android/apps/plus/iu/MediaTracker;->getTrackerKey(Lcom/google/android/apps/plus/iu/MediaTracker$Config;)Ljava/lang/String;

    move-result-object v16

    .line 816
    .restart local v16       #trackerKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackingInstantShare:Z

    if-eqz v3, :cond_8f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/iu/MediaTracker;->mUploadsDbHelper:Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;

    move-object/from16 v0, v16

    invoke-virtual {v3, v14, v15, v0}, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->getMediaMapEntry(JLjava/lang/String;)Lcom/google/android/apps/plus/iu/MediaMapEntry;

    move-result-object v13

    .line 818
    .restart local v13       #mediaEntry:Lcom/google/android/apps/plus/iu/MediaMapEntry;
    :goto_8a
    if-eqz v13, :cond_2c

    iget-object v10, v13, Lcom/google/android/apps/plus/iu/MediaMapEntry;->eventId:Ljava/lang/String;

    goto :goto_2d

    .line 816
    .end local v13           #mediaEntry:Lcom/google/android/apps/plus/iu/MediaMapEntry;
    :cond_8f
    const/4 v13, 0x0

    goto :goto_8a

    .line 834
    .restart local v10       #eventId:Ljava/lang/String;
    .restart local v12       #isPhoto:Z
    .restart local v13       #mediaEntry:Lcom/google/android/apps/plus/iu/MediaMapEntry;
    .restart local v17       #uri:Landroid/net/Uri;
    :cond_91
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackingInstantShare:Z

    if-nez v3, :cond_a3

    if-eqz v12, :cond_a3

    .line 835
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/google/android/apps/plus/iu/MediaTracker;->hasGoogleUploadExif(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_61

    .line 840
    :cond_a3
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1, v10}, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->createBackgroundUploadTask(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v18

    .line 842
    .local v18, values:Landroid/content/ContentValues;
    invoke-static/range {v18 .. v18}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->createNew(Landroid/content/ContentValues;)Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    :try_end_ae
    .catchall {:try_start_2d .. :try_end_ae} :catchall_ba

    move-result-object v3

    .line 847
    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_2b

    .line 845
    .end local v10           #eventId:Ljava/lang/String;
    .end local v12           #isPhoto:Z
    .end local v13           #mediaEntry:Lcom/google/android/apps/plus/iu/MediaMapEntry;
    .end local v14           #mediaId:J
    .end local v16           #trackerKey:Ljava/lang/String;
    .end local v17           #uri:Landroid/net/Uri;
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_b4
    const/4 v3, 0x0

    .line 847
    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_2b

    :catchall_ba
    move-exception v3

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v3
.end method

.method private findNextOldMediaFor(Ljava/lang/String;Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;Ljava/util/Set;Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;)Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    .registers 22
    .parameter "account"
    .parameter "record"
    .parameter
    .parameter "syncContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/gallery3d/common/Fingerprint;",
            ">;",
            "Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;",
            ")",
            "Lcom/google/android/apps/plus/iu/UploadTaskEntry;"
        }
    .end annotation

    .prologue
    .line 736
    .local p3, fingerprintSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/gallery3d/common/Fingerprint;>;"
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    .line 737
    .local v9, config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/iu/MediaTracker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/plus/iu/FingerprintHelper;->get(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/FingerprintHelper;

    move-result-object v11

    .line 738
    .local v11, fingerprintHelper:Lcom/google/android/apps/plus/iu/FingerprintHelper;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaLastId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaLastUploadedId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 741
    .local v5, args:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/iu/MediaTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->mediaStoreUri:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/apps/plus/iu/MediaTracker;->PROJECTION_ID:[Ljava/lang/String;

    const-string v4, "_id <= ? AND _id > ? AND _data LIKE \'%/DCIM/%\'"

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 743
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_3d

    .line 744
    const/4 v14, 0x0

    .line 795
    :goto_3c
    return-object v14

    .line 747
    :cond_3d
    if-nez p3, :cond_44

    .line 748
    new-instance p3, Ljava/util/HashSet;

    .end local p3           #fingerprintSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/gallery3d/common/Fingerprint;>;"
    invoke-direct/range {p3 .. p3}, Ljava/util/HashSet;-><init>()V

    .line 751
    .restart local p3       #fingerprintSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/gallery3d/common/Fingerprint;>;"
    :cond_44
    :goto_44
    :try_start_44
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_105

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->syncInterrupted()Z

    move-result v1

    if-nez v1, :cond_105

    .line 752
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 753
    .local v12, mediaId:J
    iget-object v1, v9, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->mediaStoreUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15

    .line 757
    .local v15, uri:Landroid/net/Uri;
    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/google/android/apps/plus/iu/FingerprintHelper;->getCachedFingerprint(Ljava/lang/String;)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v7

    .line 759
    .local v7, cachedFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    const/4 v8, 0x0

    .line 760
    .local v8, calculatedFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    if-nez v7, :cond_7c

    .line 762
    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Lcom/google/android/apps/plus/iu/FingerprintHelper;->getFingerprint(Ljava/lang/String;Z)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v7

    move-object v8, v7

    .line 765
    :cond_7c
    if-nez v7, :cond_b5

    .line 766
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v1}, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->updateProgress(JZ)V

    .line 767
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/iu/MediaTracker;->mOldMediaProgress:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/plus/iu/MediaTracker;->mOldMediaProgress:I

    .line 768
    const-string v1, "iu.UploadsManager"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 769
    const-string v1, "iu.UploadsManager"

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
    :try_end_af
    .catchall {:try_start_44 .. :try_end_af} :catchall_b0

    goto :goto_44

    .line 795
    .end local v7           #cachedFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .end local v8           #calculatedFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .end local v12           #mediaId:J
    .end local v15           #uri:Landroid/net/Uri;
    :catchall_b0
    move-exception v1

    invoke-static {v10}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1

    .line 773
    .restart local v7       #cachedFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .restart local v8       #calculatedFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .restart local v12       #mediaId:J
    .restart local v15       #uri:Landroid/net/Uri;
    :cond_b5
    :try_start_b5
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 774
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v1}, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->updateProgress(JZ)V

    .line 775
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/iu/MediaTracker;->mOldMediaProgress:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/plus/iu/MediaTracker;->mOldMediaProgress:I

    .line 776
    const-string v1, "iu.UploadsManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 777
    const-string v1, "iu.UploadsManager"

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

    goto/16 :goto_44

    .line 782
    :cond_f0
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v15, v1}, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->createBackgroundUploadTask(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v16

    .line 784
    .local v16, values:Landroid/content/ContentValues;
    invoke-static/range {v16 .. v16}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->createNew(Landroid/content/ContentValues;)Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    move-result-object v14

    .line 788
    .local v14, task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    if-eqz v8, :cond_100

    .line 789
    invoke-virtual {v14, v8}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setFingerprint(Lcom/android/gallery3d/common/Fingerprint;)V
    :try_end_100
    .catchall {:try_start_b5 .. :try_end_100} :catchall_b0

    .line 795
    :cond_100
    invoke-static {v10}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_3c

    .line 793
    .end local v7           #cachedFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .end local v8           #calculatedFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .end local v12           #mediaId:J
    .end local v14           #task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    .end local v15           #uri:Landroid/net/Uri;
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_105
    const/4 v14, 0x0

    .line 795
    invoke-static {v10}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_3c
.end method

.method private static getCurrentTask(Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;J)Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    .registers 13
    .parameter "dbHelper"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 355
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_8

    .line 371
    :cond_7
    :goto_7
    return-object v5

    .line 358
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/iu/MediaTracker;->UPLOAD_TASK_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

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

    .line 362
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_7

    .line 366
    :try_start_29
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 367
    invoke-static {v9}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->fromCursor(Landroid/database/Cursor;)Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_3b

    move-result-object v5

    .line 371
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

.method private static getMediaPendingCount(Landroid/content/Context;Lcom/google/android/apps/plus/iu/MediaTracker$Config;J)I
    .registers 12
    .parameter "context"
    .parameter "config"
    .parameter "lastId"

    .prologue
    const/4 v7, 0x0

    .line 683
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 685
    .local v4, args:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->mediaStoreUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/apps/plus/iu/MediaTracker;->PROJECTION_COUNT:[Ljava/lang/String;

    const-string v3, "_id > ? AND _data LIKE \'%/DCIM/%\'"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 687
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1c

    .line 694
    :goto_1b
    return v7

    .line 692
    :cond_1c
    :try_start_1c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_2e

    move-result v0

    .line 694
    :goto_27
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v7, v0

    goto :goto_1b

    :cond_2c
    move v0, v7

    .line 692
    goto :goto_27

    .line 694
    :catchall_2e
    move-exception v0

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static getOptionalLong(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;J)J
    .registers 13
    .parameter "resolver"
    .parameter "uri"
    .parameter "projection"
    .parameter "defaultValue"

    .prologue
    .line 1008
    const/4 v6, 0x0

    .line 1010
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    :try_start_7
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1011
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_23
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_1c

    move-result-wide p3

    .line 1015
    .end local p3
    :cond_16
    if-eqz v6, :cond_1b

    .line 1016
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1b
    :goto_1b
    return-wide p3

    .line 1012
    .restart local p3
    :catch_1c
    move-exception v7

    .line 1015
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_1b

    .line 1016
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1b

    .line 1015
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_23
    move-exception v0

    if-eqz v6, :cond_29

    .line 1016
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_29
    throw v0
.end method

.method private static getOptionalString(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "resolver"
    .parameter "uri"
    .parameter "projection"

    .prologue
    const/4 v8, 0x0

    .line 993
    const/4 v6, 0x0

    .line 995
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    :try_start_8
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 996
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_27
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_1f

    move-result-object v0

    .line 1000
    :goto_17
    if-eqz v6, :cond_1c

    .line 1001
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1c
    :goto_1c
    return-object v0

    :cond_1d
    move-object v0, v8

    .line 996
    goto :goto_17

    .line 997
    :catch_1f
    move-exception v7

    .line 1000
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_25

    .line 1001
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_25
    move-object v0, v8

    goto :goto_1c

    .line 1000
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_27
    move-exception v0

    if-eqz v6, :cond_2d

    .line 1001
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2d
    throw v0
.end method

.method private static getTotalOldMediaCount(Landroid/content/Context;Lcom/google/android/apps/plus/iu/MediaTracker$Config;J)I
    .registers 12
    .parameter "context"
    .parameter "config"
    .parameter "lastId"

    .prologue
    const/4 v7, 0x0

    .line 719
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const/4 v0, 0x1

    const-string v1, "-1"

    aput-object v1, v4, v0

    .line 721
    .local v4, args:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->mediaStoreUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/apps/plus/iu/MediaTracker;->PROJECTION_COUNT:[Ljava/lang/String;

    const-string v3, "_id <= ? AND _id > ? AND _data LIKE \'%/DCIM/%\'"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 723
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_21

    .line 730
    :goto_20
    return v7

    .line 728
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

    .line 730
    :goto_2c
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v7, v0

    goto :goto_20

    :cond_31
    move v0, v7

    .line 728
    goto :goto_2c

    .line 730
    :catchall_33
    move-exception v0

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private getTrackerKey(Lcom/google/android/apps/plus/iu/MediaTracker$Config;)Ljava/lang/String;
    .registers 4
    .parameter "config"

    .prologue
    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->storage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->mediaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackingInstantShare:Z

    if-eqz v0, :cond_26

    const-string v0, "_is"

    :goto_1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    const-string v0, ""

    goto :goto_1d
.end method

.method private hasExif(Landroid/media/ExifInterface;)Z
    .registers 4
    .parameter "exIfc"

    .prologue
    .line 983
    sget-object v1, Lcom/google/android/apps/plus/iu/MediaTracker;->EXIF_TAGS:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_5
    if-lez v0, :cond_16

    .line 984
    sget-object v1, Lcom/google/android/apps/plus/iu/MediaTracker;->EXIF_TAGS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 985
    const/4 v1, 0x1

    .line 988
    :goto_12
    return v1

    .line 983
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 988
    :cond_16
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private hasGoogleUploadExif(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .registers 12
    .parameter "resolver"
    .parameter "contentUri"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 857
    new-array v7, v6, [Ljava/lang/String;

    const-string v8, "_data"

    aput-object v8, v7, v5

    invoke-static {p1, p2, v7}, Lcom/google/android/apps/plus/iu/MediaTracker;->getOptionalString(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 862
    .local v2, filePath:Ljava/lang/String;
    if-eqz v2, :cond_22

    .line 864
    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 865
    .local v1, extension:Ljava/lang/String;
    const-string v7, "jpg"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_23

    const-string v7, "jpeg"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_23

    .line 880
    .end local v1           #extension:Ljava/lang/String;
    :cond_22
    :goto_22
    return v5

    .line 870
    .restart local v1       #extension:Ljava/lang/String;
    :cond_23
    :try_start_23
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 871
    .local v0, exIfc:Landroid/media/ExifInterface;
    const-string v7, "Software"

    invoke-virtual {v0, v7}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 873
    .local v3, googleTag:Ljava/lang/String;
    if-eqz v3, :cond_22

    const-string v7, "Google"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_35} :catch_3a

    move-result v7

    if-ltz v7, :cond_22

    move v5, v6

    .line 874
    goto :goto_22

    .line 876
    .end local v0           #exIfc:Landroid/media/ExifInterface;
    .end local v3           #googleTag:Ljava/lang/String;
    :catch_3a
    move-exception v4

    .line 877
    .local v4, t:Ljava/lang/Throwable;
    goto :goto_22
.end method

.method private performSanityChecks(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/iu/MediaMapEntry;Landroid/net/Uri;Z)Z
    .registers 27
    .parameter "resolver"
    .parameter "mediaEntry"
    .parameter "contentUri"
    .parameter "isPhoto"

    .prologue
    .line 891
    const-string v13, "MMM dd, yyyy h:mmaa"

    .line 894
    .local v13, inFormat:Ljava/lang/CharSequence;
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "datetaken"

    aput-object v21, v19, v20

    const-wide/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    move-wide/from16 v3, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/iu/MediaTracker;->getOptionalLong(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;J)J

    move-result-wide v5

    .line 897
    .local v5, dateTakenMillis:J
    const-wide/16 v19, 0x0

    cmp-long v19, v5, v19

    if-lez v19, :cond_76

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/apps/plus/iu/MediaMapEntry;->endTime:J

    move-wide/from16 v19, v0

    cmp-long v19, v5, v19

    if-gtz v19, :cond_38

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/apps/plus/iu/MediaMapEntry;->startTime:J

    move-wide/from16 v19, v0

    cmp-long v19, v5, v19

    if-gez v19, :cond_76

    .line 899
    :cond_38
    const-string v19, "iu.UploadsManager"

    const/16 v20, 0x4

    invoke-static/range {v19 .. v20}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_73

    .line 900
    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v19

    invoke-static {v13, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 902
    .local v7, dateTakenString:Ljava/lang/CharSequence;
    const-string v19, "iu.UploadsManager"

    const/16 v20, 0x4

    invoke-static/range {v19 .. v20}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_73

    .line 903
    const-string v19, "iu.UploadsManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "FAIL: bad taken time; taken: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    .end local v7           #dateTakenString:Ljava/lang/CharSequence;
    :cond_73
    const/16 v19, 0x0

    .line 972
    :goto_75
    return v19

    .line 910
    :cond_76
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "_data"

    aput-object v21, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/iu/MediaTracker;->getOptionalString(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 912
    .local v11, filePath:Ljava/lang/String;
    if-eqz v11, :cond_f4

    .line 913
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 914
    .local v10, f:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v15

    .line 915
    .local v15, lastModifiedMillis:J
    const-wide/16 v19, 0x0

    cmp-long v19, v15, v19

    if-lez v19, :cond_f4

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/apps/plus/iu/MediaMapEntry;->endTime:J

    move-wide/from16 v19, v0

    cmp-long v19, v15, v19

    if-gtz v19, :cond_b3

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/apps/plus/iu/MediaMapEntry;->startTime:J

    move-wide/from16 v19, v0

    cmp-long v19, v15, v19

    if-gez v19, :cond_f4

    .line 917
    :cond_b3
    const-string v19, "iu.UploadsManager"

    const/16 v20, 0x4

    invoke-static/range {v19 .. v20}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_f1

    .line 918
    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    move-wide v1, v15

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v19

    invoke-static {v13, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v17

    .line 920
    .local v17, modifiedString:Ljava/lang/CharSequence;
    const-string v19, "iu.UploadsManager"

    const/16 v20, 0x4

    invoke-static/range {v19 .. v20}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_f1

    .line 921
    const-string v19, "iu.UploadsManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "FAIL: bad modify time; modified: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    .end local v17           #modifiedString:Ljava/lang/CharSequence;
    :cond_f1
    const/16 v19, 0x0

    goto :goto_75

    .line 930
    .end local v10           #f:Ljava/io/File;
    .end local v15           #lastModifiedMillis:J
    :cond_f4
    if-eqz v11, :cond_124

    const-string v19, "cache/com.google.android.googlephotos"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_124

    .line 932
    const-string v19, "iu.UploadsManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "FAIL: file from cache directory; path: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/16 v19, 0x0

    goto/16 :goto_75

    .line 938
    :cond_124
    if-eqz p4, :cond_20a

    if-eqz v11, :cond_20a

    .line 940
    invoke-static {v11}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 941
    .local v9, extension:Ljava/lang/String;
    const-string v19, "jpg"

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_16e

    const-string v19, "jpeg"

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_16e

    .line 942
    const-string v19, "iu.UploadsManager"

    const/16 v20, 0x4

    invoke-static/range {v19 .. v20}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_16a

    .line 943
    const-string v19, "iu.UploadsManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "FAIL: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is not a jpeg"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_16a
    const/16 v19, 0x0

    goto/16 :goto_75

    .line 949
    :cond_16e
    :try_start_16e
    new-instance v8, Landroid/media/ExifInterface;

    invoke-direct {v8, v11}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 950
    .local v8, exIfc:Landroid/media/ExifInterface;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/google/android/apps/plus/iu/MediaTracker;->hasExif(Landroid/media/ExifInterface;)Z

    move-result v19

    if-nez v19, :cond_1a9

    .line 951
    const-string v19, "iu.UploadsManager"

    const/16 v20, 0x4

    invoke-static/range {v19 .. v20}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_1a5

    .line 952
    const-string v19, "iu.UploadsManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "FAIL: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " does not contain any EXIF data"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_1a5
    const/16 v19, 0x0

    goto/16 :goto_75

    .line 957
    :cond_1a9
    const-string v19, "Software"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 960
    .local v12, googleTag:Ljava/lang/String;
    if-eqz v12, :cond_20a

    const-string v19, "Google"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-ltz v19, :cond_20a

    .line 961
    const-string v19, "iu.UploadsManager"

    const/16 v20, 0x4

    invoke-static/range {v19 .. v20}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_1e7

    .line 962
    const-string v19, "iu.UploadsManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "FAIL: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " has GOOGLE_EXIF_TAG set"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e7
    .catch Ljava/lang/Throwable; {:try_start_16e .. :try_end_1e7} :catch_1eb

    .line 964
    :cond_1e7
    const/16 v19, 0x0

    goto/16 :goto_75

    .line 966
    .end local v8           #exIfc:Landroid/media/ExifInterface;
    .end local v12           #googleTag:Ljava/lang/String;
    :catch_1eb
    move-exception v18

    .line 967
    .local v18, t:Ljava/lang/Throwable;
    const-string v19, "iu.UploadsManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "FAIL: could get EXIF for file: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const/16 v19, 0x0

    goto/16 :goto_75

    .line 971
    .end local v9           #extension:Ljava/lang/String;
    .end local v18           #t:Ljava/lang/Throwable;
    :cond_20a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/iu/MediaTracker;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/plus/util/GservicesConfig;->isInstantShareVideoEnabled(Landroid/content/Context;)Z

    move-result v14

    .line 972
    .local v14, instantVideoShareEnabled:Z
    if-nez p4, :cond_218

    if-eqz v14, :cond_21c

    :cond_218
    const/16 v19, 0x1

    goto/16 :goto_75

    :cond_21c
    const/16 v19, 0x0

    goto/16 :goto_75
.end method


# virtual methods
.method public addEventIdMapping(Ljava/lang/String;JJ)V
    .registers 26
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 1031
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackingInstantShare:Z

    if-nez v15, :cond_7

    .line 1068
    :cond_6
    return-void

    .line 1035
    :cond_7
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1036
    .local v14, values:Landroid/content/ContentValues;
    const-string v15, "end_time"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1038
    sget-object v15, Lcom/google/android/apps/plus/iu/MediaMapEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v15}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v8

    .line 1039
    .local v8, mapTableName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/iu/MediaTracker;->mUploadsDbHelper:Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;

    invoke-virtual {v15}, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1040
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackRecords:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    .local v2, arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_29
    if-ge v6, v7, :cond_6

    aget-object v12, v2, v6

    .line 1041
    .local v12, record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    iget-object v3, v12, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    .line 1042
    .local v3, config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/apps/plus/iu/MediaTracker;->getTrackerKey(Lcom/google/android/apps/plus/iu/MediaTracker$Config;)Ljava/lang/String;

    move-result-object v13

    .line 1045
    .local v13, trackerKey:Ljava/lang/String;
    if-eqz p1, :cond_52

    .line 1046
    const-string v15, "event_id = ? AND end_time > ?"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p1, v16, v17

    const/16 v17, 0x1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v4, v8, v14, v15, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1050
    :cond_52
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/iu/MediaTracker;->mContext:Landroid/content/Context;

    invoke-static {v15, v3}, Lcom/google/android/apps/plus/iu/MediaTracker;->findLatestIdInMediaStore(Landroid/content/Context;Lcom/google/android/apps/plus/iu/MediaTracker$Config;)J

    move-result-wide v10

    .line 1051
    .local v10, mediaId:J
    new-instance v5, Lcom/google/android/apps/plus/iu/MediaMapEntry;

    invoke-direct {v5}, Lcom/google/android/apps/plus/iu/MediaMapEntry;-><init>()V

    .line 1052
    .local v5, entry:Lcom/google/android/apps/plus/iu/MediaMapEntry;
    move-object/from16 v0, p1

    iput-object v0, v5, Lcom/google/android/apps/plus/iu/MediaMapEntry;->eventId:Ljava/lang/String;

    .line 1053
    iput-wide v10, v5, Lcom/google/android/apps/plus/iu/MediaMapEntry;->mediaId:J

    .line 1054
    iput-object v13, v5, Lcom/google/android/apps/plus/iu/MediaMapEntry;->trackerKey:Ljava/lang/String;

    .line 1055
    move-wide/from16 v0, p2

    iput-wide v0, v5, Lcom/google/android/apps/plus/iu/MediaMapEntry;->startTime:J

    .line 1056
    move-wide/from16 v0, p4

    iput-wide v0, v5, Lcom/google/android/apps/plus/iu/MediaMapEntry;->endTime:J

    .line 1057
    sget-object v15, Lcom/google/android/apps/plus/iu/MediaMapEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v15, v4, v5}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J

    .line 1060
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/iu/MediaTracker;->mUploadsDbHelper:Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;

    iget-wide v0, v12, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->newMediaLastUploadedId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v0, v1, v13}, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->getMediaMapEntry(JLjava/lang/String;)Lcom/google/android/apps/plus/iu/MediaMapEntry;

    move-result-object v9

    .line 1062
    .local v9, mediaEntry:Lcom/google/android/apps/plus/iu/MediaMapEntry;
    if-eqz v9, :cond_a3

    .line 1063
    const-string v15, "tracker_key = ? AND media_id < ?"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v13, v16, v17

    const/16 v17, 0x1

    iget-wide v0, v9, Lcom/google/android/apps/plus/iu/MediaMapEntry;->mediaId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v4, v8, v15, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1040
    :cond_a3
    add-int/lit8 v6, v6, 0x1

    goto :goto_29
.end method

.method public declared-synchronized allDone()Z
    .registers 3

    .prologue
    .line 651
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackingNewMedia:Z

    if-nez v0, :cond_e

    iget v0, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mOldMediaProgress:I

    iget v1, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mOldMediaCount:I
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
            "Lcom/google/android/apps/plus/iu/UploadTaskEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    monitor-enter p0

    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v4, tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/iu/UploadTaskEntry;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackRecords:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    .local v0, arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_a
    if-ge v1, v2, :cond_1a

    aget-object v3, v0, v1

    .line 476
    .local v3, record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    iget-object v5, v3, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->currentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    if-eqz v5, :cond_17

    .line 477
    iget-object v5, v3, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->currentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1c

    .line 475
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 480
    .end local v3           #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    :cond_1a
    monitor-exit p0

    return-object v4

    .line 474
    .end local v0           #arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/iu/UploadTaskEntry;>;"
    :catchall_1c
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getExistingMediaTotalCount()I
    .registers 2

    .prologue
    .line 663
    iget v0, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mOldMediaCount:I

    return v0
.end method

.method public getExistingMediaUploadProgress()I
    .registers 2

    .prologue
    .line 667
    iget v0, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mOldMediaProgress:I

    return v0
.end method

.method public getNewMediaPendingCount()I
    .registers 10

    .prologue
    .line 675
    const/4 v1, 0x0

    .line 676
    .local v1, count:I
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackRecords:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    .local v0, arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_5
    if-ge v2, v3, :cond_17

    aget-object v4, v0, v2

    .line 677
    .local v4, record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    iget-object v5, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mContext:Landroid/content/Context;

    iget-object v6, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    iget-wide v7, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->newMediaLastUploadedId:J

    invoke-static {v5, v6, v7, v8}, Lcom/google/android/apps/plus/iu/MediaTracker;->getMediaPendingCount(Landroid/content/Context;Lcom/google/android/apps/plus/iu/MediaTracker$Config;J)I

    move-result v5

    add-int/2addr v1, v5

    .line 676
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 679
    .end local v4           #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    :cond_17
    return v1
.end method

.method public declared-synchronized getNextUploadTask(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;)Lcom/google/android/apps/plus/iu/UploadTaskEntry;
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
            "Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;",
            ")",
            "Lcom/google/android/apps/plus/iu/UploadTaskEntry;"
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

    .line 551
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mAccount:Ljava/lang/String;

    .line 552
    .local v0, account:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackRecords:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    .local v1, arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_9
    if-ge v2, v3, :cond_43

    aget-object v4, v1, v2

    .line 553
    .local v4, record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    iget-object v7, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->currentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    if-eqz v7, :cond_40

    iget-object v7, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    invoke-virtual {v7, p1}, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->matchesMediaType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 554
    const-string v7, "iu.UploadsManager"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 555
    const-string v7, "iu.UploadsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   saved task: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->currentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_3c
    iget-object v6, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->currentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_b0

    .line 622
    .end local v4           #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    :cond_3e
    :goto_3e
    monitor-exit p0

    return-object v6

    .line 552
    .restart local v4       #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 562
    .end local v4           #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    :cond_43
    const/4 v6, 0x0

    .line 563
    .local v6, task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    :try_start_44
    iget-boolean v7, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackingNewMedia:Z

    if-eqz v7, :cond_b3

    .line 564
    const/4 v5, 0x0

    .line 565
    .local v5, storageAvailable:Z
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackRecords:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_4d
    if-ge v2, v3, :cond_a6

    aget-object v4, v1, v2

    .line 566
    .restart local v4       #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    iget-object v7, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    invoke-virtual {v7, p1}, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->matchesMediaType(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5c

    .line 565
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 569
    :cond_5c
    iget-wide v7, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->newMediaLastUploadedId:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_6c

    .line 570
    iget-object v7, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mContext:Landroid/content/Context;

    iget-object v8, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/iu/MediaTracker;->findLatestIdInMediaStore(Landroid/content/Context;Lcom/google/android/apps/plus/iu/MediaTracker$Config;)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->newMediaLastUploadedId:J

    .line 573
    :cond_6c
    iget-wide v7, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->newMediaLastUploadedId:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_59

    .line 574
    const/4 v5, 0x1

    .line 575
    invoke-direct {p0, v0, v4, p3}, Lcom/google/android/apps/plus/iu/MediaTracker;->findNextNewMediaFor(Ljava/lang/String;Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;)Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    move-result-object v6

    .line 576
    if-eqz v6, :cond_59

    .line 577
    const-string v7, "iu.UploadsManager"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_a4

    .line 578
    const-string v7, "iu.UploadsManager"

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

    .line 580
    :cond_a4
    iput-object v6, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->currentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    .line 585
    .end local v4           #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    :cond_a6
    if-nez v5, :cond_3e

    .line 586
    new-instance v7, Ljava/io/IOException;

    const-string v8, "no storage is available; try later"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_b0
    .catchall {:try_start_44 .. :try_end_b0} :catchall_b0

    .line 551
    .end local v0           #account:Ljava/lang/String;
    .end local v1           #arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #storageAvailable:Z
    .end local v6           #task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    :catchall_b0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 589
    .restart local v0       #account:Ljava/lang/String;
    .restart local v1       #arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v6       #task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    :cond_b3
    :try_start_b3
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackRecords:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_b7
    if-ge v2, v3, :cond_3e

    aget-object v4, v1, v2

    .line 590
    .restart local v4       #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    iget-object v7, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    invoke-virtual {v7, p1}, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->matchesMediaType(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c6

    .line 589
    :cond_c3
    :goto_c3
    add-int/lit8 v2, v2, 0x1

    goto :goto_b7

    .line 593
    :cond_c6
    invoke-virtual {v4}, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->hasMoreExistingMediaToUpload()Z

    move-result v7

    if-eqz v7, :cond_c3

    .line 594
    invoke-direct {p0, v0, v4, p2, p3}, Lcom/google/android/apps/plus/iu/MediaTracker;->findNextOldMediaFor(Ljava/lang/String;Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;Ljava/util/Set;Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;)Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    move-result-object v6

    .line 595
    if-eqz v6, :cond_101

    .line 596
    const-string v7, "iu.UploadsManager"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_fd

    .line 597
    const-string v7, "iu.UploadsManager"

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

    .line 599
    :cond_fd
    iput-object v6, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->currentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    goto/16 :goto_3e

    .line 610
    :cond_101
    const-string v7, "iu.UploadsManager"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_14e

    .line 611
    const-string v7, "iu.UploadsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   adjust count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaProgress:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; total count "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mOldMediaCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mOldMediaCount:I

    iget v10, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaProgress:I

    add-int/2addr v9, v10

    iget v10, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaCount:I

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_14e
    iget v7, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mOldMediaCount:I

    iget v8, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaProgress:I

    iget v9, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaCount:I

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mOldMediaCount:I

    .line 617
    iget v7, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaProgress:I

    iput v7, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaCount:I
    :try_end_15c
    .catchall {:try_start_b3 .. :try_end_15c} :catchall_b0

    goto/16 :goto_c3
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 655
    iget v0, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mState:I

    return v0
.end method

.method public getSyncAccount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized hasUploadTask(Ljava/lang/String;)Z
    .registers 14
    .parameter "mediaType"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v7, 0x1

    .line 489
    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mAccount:Ljava/lang/String;

    .line 490
    .local v0, account:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackRecords:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    .local v1, arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_a
    if-ge v2, v3, :cond_42

    aget-object v4, v1, v2

    .line 491
    .local v4, record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    iget-object v8, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->currentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    if-eqz v8, :cond_3f

    iget-object v8, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    invoke-virtual {v8, p1}, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->matchesMediaType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 492
    const-string v8, "iu.UploadsManager"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 493
    const-string v8, "iu.UploadsManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "   saved task: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->currentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_96

    .line 538
    .end local v4           #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    :cond_3d
    :goto_3d
    monitor-exit p0

    return v7

    .line 490
    .restart local v4       #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 500
    .end local v4           #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    :cond_42
    const/4 v5, 0x0

    .line 501
    .local v5, storageAvailable:Z
    :try_start_43
    iget-boolean v8, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackingNewMedia:Z

    if-eqz v8, :cond_99

    .line 502
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackRecords:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_4b
    if-ge v2, v3, :cond_e6

    aget-object v4, v1, v2

    .line 503
    .restart local v4       #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    iget-object v8, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    invoke-virtual {v8, p1}, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->matchesMediaType(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5a

    .line 502
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 506
    :cond_5a
    iget-wide v8, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->newMediaLastUploadedId:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_57

    .line 507
    const/4 v5, 0x1

    .line 508
    const/4 v8, 0x0

    invoke-direct {p0, v0, v4, v8}, Lcom/google/android/apps/plus/iu/MediaTracker;->findNextNewMediaFor(Ljava/lang/String;Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;)Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    move-result-object v6

    .line 509
    .local v6, task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    if-eqz v6, :cond_57

    .line 510
    const-string v8, "iu.UploadsManager"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_93

    .line 511
    const-string v8, "iu.UploadsManager"

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

    .line 513
    :cond_93
    iput-object v6, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->currentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    :try_end_95
    .catchall {:try_start_43 .. :try_end_95} :catchall_96

    goto :goto_3d

    .line 489
    .end local v0           #account:Ljava/lang/String;
    .end local v1           #arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    .end local v5           #storageAvailable:Z
    .end local v6           #task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    :catchall_96
    move-exception v7

    monitor-exit p0

    throw v7

    .line 519
    .restart local v0       #account:Ljava/lang/String;
    .restart local v1       #arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #storageAvailable:Z
    :cond_99
    :try_start_99
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackRecords:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_9d
    if-ge v2, v3, :cond_e6

    aget-object v4, v1, v2

    .line 520
    .restart local v4       #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    iget-object v8, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    invoke-virtual {v8, p1}, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->matchesMediaType(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_ac

    .line 519
    :cond_a9
    add-int/lit8 v2, v2, 0x1

    goto :goto_9d

    .line 523
    :cond_ac
    iget-wide v8, v4, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaLastId:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_a9

    .line 524
    const/4 v5, 0x1

    .line 525
    invoke-virtual {v4}, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->hasMoreExistingMediaToUpload()Z

    move-result v8

    if-eqz v8, :cond_a9

    .line 526
    const-string v8, "iu.UploadsManager"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 527
    const-string v8, "iu.UploadsManager"

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
    :try_end_e4
    .catchall {:try_start_99 .. :try_end_e4} :catchall_96

    goto/16 :goto_3d

    .line 534
    .end local v4           #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    :cond_e6
    if-eqz v5, :cond_3d

    .line 538
    const/4 v7, 0x0

    goto/16 :goto_3d
.end method

.method public isTrackingNewMedia()Z
    .registers 2

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackingNewMedia:Z

    return v0
.end method

.method public declared-synchronized onUploadComplete(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V
    .registers 11
    .parameter "task"

    .prologue
    const/4 v7, 0x3

    .line 626
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackRecords:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    .local v0, arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v2, :cond_32

    aget-object v5, v0, v1

    .line 627
    .local v5, record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    iget-object v6, v5, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->currentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    if-ne v6, p1, :cond_59

    .line 628
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getState()I

    move-result v6

    if-eq v6, v7, :cond_34

    .line 629
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->currentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    .line 630
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 631
    .local v3, mediaId:J
    iget-boolean v6, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackingNewMedia:Z

    invoke-virtual {v5, v3, v4, v6}, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->updateProgress(JZ)V

    .line 632
    iget-boolean v6, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackingNewMedia:Z

    if-nez v6, :cond_32

    .line 633
    iget v6, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mOldMediaProgress:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mOldMediaProgress:I
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_56

    .line 644
    .end local v3           #mediaId:J
    .end local v5           #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    :cond_32
    :goto_32
    monitor-exit p0

    return-void

    .line 637
    .restart local v5       #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    :cond_34
    :try_start_34
    const-string v6, "iu.UploadsManager"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 638
    const-string v6, "iu.UploadsManager"

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
    :try_end_55
    .catchall {:try_start_34 .. :try_end_55} :catchall_56

    goto :goto_32

    .line 626
    .end local v0           #arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v5           #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    :catchall_56
    move-exception v6

    monitor-exit p0

    throw v6

    .restart local v0       #arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v5       #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public declared-synchronized removeStates(Landroid/content/SharedPreferences$Editor;)V
    .registers 11
    .parameter "edit"

    .prologue
    .line 452
    monitor-enter p0

    :try_start_1
    iget-boolean v6, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackingNewMedia:Z

    if-eqz v6, :cond_c1

    iget-boolean v6, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackingInstantShare:Z

    if-eqz v6, :cond_bd

    const-string v3, "instant_share"

    .line 455
    .local v3, id:Ljava/lang/String;
    :goto_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackRecords:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    iget-object v7, v7, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->keyAccount:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 456
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pt_states.state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 458
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackRecords:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    .local v0, arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_42
    if-ge v2, v4, :cond_c5

    aget-object v5, v0, v2

    .line 459
    .local v5, record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    iget-object v1, v5, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    .line 460
    .local v1, config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->keyCurrentTaskId:Ljava/lang/String;

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

    iget-object v8, v1, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->keyNewMediaLastUploadedId:Ljava/lang/String;

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

    iget-object v8, v1, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->keyOldMediaLastUploadedId:Ljava/lang/String;

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

    iget-object v8, v1, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->keyOldMediaLastId:Ljava/lang/String;

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

    iget-object v8, v1, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->keyOldMediaProgress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 458
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 452
    .end local v0           #arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    .end local v1           #config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;
    .end local v2           #i$:I
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    :cond_bd
    const-string v3, "new_media"

    goto/16 :goto_b

    :cond_c1
    iget-object v3, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mAccount:Ljava/lang/String;
    :try_end_c3
    .catchall {:try_start_1 .. :try_end_c3} :catchall_c7

    goto/16 :goto_b

    .line 466
    .restart local v0       #arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    .restart local v2       #i$:I
    .restart local v3       #id:Ljava/lang/String;
    .restart local v4       #len$:I
    :cond_c5
    monitor-exit p0

    return-void

    .line 452
    .end local v0           #arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    .end local v2           #i$:I
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #len$:I
    :catchall_c7
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized saveStates(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .registers 12
    .parameter "edit"

    .prologue
    .line 427
    monitor-enter p0

    :try_start_1
    iget-boolean v6, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackingNewMedia:Z

    if-eqz v6, :cond_97

    iget-boolean v6, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackingInstantShare:Z

    if-eqz v6, :cond_93

    const-string v3, "instant_share"

    .line 430
    .local v3, id:Ljava/lang/String;
    :goto_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackRecords:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    iget-object v7, v7, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->keyAccount:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mAccount:Ljava/lang/String;

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 431
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pt_states.state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mState:I

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 433
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackRecords:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    .local v0, arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_46
    if-ge v2, v4, :cond_ff

    aget-object v5, v0, v2

    .line 434
    .local v5, record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    iget-object v1, v5, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    .line 435
    .local v1, config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;
    iget-object v6, v5, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->currentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    if-eqz v6, :cond_74

    iget-object v6, v5, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->currentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    iget-wide v6, v6, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->id:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_74

    .line 436
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->keyCurrentTaskId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->currentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    iget-wide v7, v7, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->id:J

    invoke-interface {p1, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 439
    :cond_74
    iget-boolean v6, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackingNewMedia:Z

    if-eqz v6, :cond_9b

    .line 440
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->keyNewMediaLastUploadedId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v5, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->newMediaLastUploadedId:J

    invoke-interface {p1, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 433
    :goto_90
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 427
    .end local v0           #arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    .end local v1           #config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;
    .end local v2           #i$:I
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    :cond_93
    const-string v3, "new_media"

    goto/16 :goto_b

    :cond_97
    iget-object v3, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mAccount:Ljava/lang/String;

    goto/16 :goto_b

    .line 442
    .restart local v0       #arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    .restart local v1       #config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;
    .restart local v2       #i$:I
    .restart local v3       #id:Ljava/lang/String;
    .restart local v4       #len$:I
    .restart local v5       #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    :cond_9b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->keyOldMediaLastUploadedId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v5, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaLastUploadedId:J

    invoke-interface {p1, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 443
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->keyOldMediaLastId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v5, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaLastId:J

    invoke-interface {p1, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 444
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->keyOldMediaProgress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v5, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaProgress:I

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 445
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/google/android/apps/plus/iu/MediaTracker$Config;->keyOldMediaCount:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v5, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaCount:I

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_fb
    .catchall {:try_start_1 .. :try_end_fb} :catchall_fc

    goto :goto_90

    .line 427
    .end local v0           #arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    .end local v1           #config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;
    .end local v2           #i$:I
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    :catchall_fc
    move-exception v6

    monitor-exit p0

    throw v6

    .line 448
    .restart local v0       #arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    .restart local v2       #i$:I
    .restart local v3       #id:Ljava/lang/String;
    .restart local v4       #len$:I
    :cond_ff
    monitor-exit p0

    return-object p1
.end method

.method setState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 659
    iput p1, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mState:I

    .line 660
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 1072
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1073
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v5, "MediaTracker:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mAccount:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    iget-boolean v5, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackingNewMedia:Z

    if-eqz v5, :cond_41

    .line 1075
    iget-boolean v5, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackingInstantShare:Z

    if-eqz v5, :cond_3b

    .line 1076
    const-string v5, ",IS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    :goto_21
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackRecords:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;

    .local v0, arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_25
    if-ge v1, v2, :cond_47

    aget-object v3, v0, v1

    .line 1084
    .local v3, record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mTrackingNewMedia:Z

    invoke-virtual {v3, v6}, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 1078
    .end local v0           #arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #record:Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    :cond_3b
    const-string v5, ",IU"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 1081
    :cond_41
    const-string v5, ",upload_all"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 1086
    .restart local v0       #arr$:[Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    :cond_47
    const-string v5, ",state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/android/apps/plus/iu/MediaTracker;->mState:I

    invoke-static {v6}, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
