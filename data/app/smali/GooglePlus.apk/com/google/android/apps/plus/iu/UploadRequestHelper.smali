.class Lcom/google/android/apps/plus/iu/UploadRequestHelper;
.super Ljava/lang/Object;
.source "UploadRequestHelper.java"


# static fields
.field private static final PICASA_BASE_UPLOAD_URL:Landroid/net/Uri;

.field private static final PROJECTION_DATA:[Ljava/lang/String;

.field private static final PROJECTION_DATE_TAKEN:[Ljava/lang/String;

.field private static final PROJECTION_SIZE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    const-string v0, "https://picasaweb.google.com/data/upload/resumable/media/create-session/feed/api/user/default/albumid/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->PICASA_BASE_UPLOAD_URL:Landroid/net/Uri;

    .line 52
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->PROJECTION_DATA:[Ljava/lang/String;

    .line 53
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_size"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->PROJECTION_SIZE:[Ljava/lang/String;

    .line 54
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "datetaken"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->PROJECTION_DATE_TAKEN:[Ljava/lang/String;

    return-void
.end method

.method private static buildMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "title"
    .parameter "summary"
    .parameter "dateTaken"
    .parameter "streamId"

    .prologue
    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\r\n<entry xmlns=\'http://www.w3.org/2005/Atom\' xmlns:gphoto=\'http://schemas.google.com/photos/2007\'><category scheme=\'http://schemas.google.com/g/2005#kind\' term=\'http://schemas.google.com/photos/2007#photo\'/>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "<title>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string v1, "</title>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 338
    const-string v1, "<summary>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const-string v1, "</summary>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_2f
    const-string v1, "<gphoto:timestamp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 345
    const-string v1, "</gphoto:timestamp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 348
    const-string v1, "<gphoto:streamId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v1, "</gphoto:streamId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_53
    const-string v1, "<gphoto:streamId>mobile_uploaded</gphoto:streamId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    const-string v1, "</entry>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static buildRequestTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;J)Ljava/lang/String;
    .registers 11
    .parameter "userAgent"
    .parameter "filePath"
    .parameter "contentType"
    .parameter "caption"
    .parameter "dateTaken"
    .parameter "streamId"
    .parameter "length"

    .prologue
    .line 312
    invoke-static {p1}, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, filename:Ljava/lang/String;
    if-nez p4, :cond_b

    new-instance p4, Ljava/util/Date;

    .end local p4
    invoke-direct {p4}, Ljava/util/Date;-><init>()V

    .line 315
    .restart local p4
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authorization: GoogleLogin auth=%=_auth_token_=%\r\nUser-Agent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GData-Version: 2.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Slug: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "X-Upload-Content-Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "X-Upload-Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p6, p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Content-Type: application/atom+xml; charset=UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, p3, p4, p5}, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->buildMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static buildUploadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "albumId"
    .parameter "streamId"
    .parameter "eventId"

    .prologue
    .line 362
    sget-object v1, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->PICASA_BASE_UPLOAD_URL:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 364
    .local v0, uriBuilder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "caid"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "xmlerrors"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 368
    if-eqz p2, :cond_1e

    .line 369
    const-string v1, "evid"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 372
    :cond_1e
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static createBackgroundUploadTask(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 10
    .parameter "account"
    .parameter "contentUri"
    .parameter "eventId"

    .prologue
    const/4 v2, 0x0

    .line 58
    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, p2

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->createUploadTask(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static createUploadTask(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/ContentValues;
    .registers 11
    .parameter "account"
    .parameter "contentUri"
    .parameter "contentType"
    .parameter "priority"
    .parameter "albumId"
    .parameter "eventId"
    .parameter "componentName"

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, contentUriString:Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 73
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "account"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v2, "content_uri"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v2, "mime_type"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v2, "priority"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    if-nez p4, :cond_25

    const-string p4, "camera-sync"

    .line 78
    :cond_25
    const-string v2, "album_id"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v2, "event_id"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    if-eqz p6, :cond_3a

    .line 81
    const-string v2, "component_name"

    invoke-virtual {p6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_3a
    return-object v1
.end method

.method static fillRequest(Landroid/content/Context;Lcom/google/android/apps/plus/iu/UploadTaskEntry;)Z
    .registers 22
    .parameter "context"
    .parameter "task"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 93
    .local v16, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v11

    .line 95
    .local v11, contentUri:Landroid/net/Uri;
    const-string v2, "iu.UploadsManager"

    const/4 v8, 0x3

    invoke-static {v2, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 96
    const-string v2, "iu.UploadsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fill request for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_29
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getEventId()Ljava/lang/String;

    move-result-object v15

    .line 100
    .local v15, eventId:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getAlbumId()Ljava/lang/String;

    move-result-object v10

    .line 101
    .local v10, albumId:Ljava/lang/String;
    if-nez v10, :cond_3a

    .line 102
    const-string v10, "camera-sync"

    .line 103
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setAlbumId(Ljava/lang/String;)V

    .line 106
    :cond_3a
    const-string v2, "lh2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setAuthTokenType(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->hasPriority()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 109
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setPriority(I)V

    .line 116
    :cond_4d
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->hasFingerprint()Z

    move-result v2

    if-nez v2, :cond_c5

    .line 117
    const/4 v2, 0x1

    new-array v12, v2, [J

    .line 118
    .local v12, dataLength:[J
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v12}, Lcom/android/gallery3d/common/Fingerprint;->fromInputStream(Ljava/io/InputStream;[J)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v17

    .line 120
    .local v17, taskFingerPrint:Lcom/android/gallery3d/common/Fingerprint;
    const/4 v2, 0x0

    aget-wide v8, v12, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setBytesTotal(J)V

    .line 121
    const/4 v2, 0x0

    aget-wide v8, v12, v2

    const-wide/16 v18, 0x0

    cmp-long v2, v8, v18

    if-lez v2, :cond_b3

    .line 122
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setFingerprint(Lcom/android/gallery3d/common/Fingerprint;)V

    .line 136
    .end local v12           #dataLength:[J
    :goto_78
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getMimeType()Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, contentType:Ljava/lang/String;
    if-nez v4, :cond_db

    .line 139
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->setContentType(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/iu/UploadTaskEntry;)Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-static {v4}, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->isImageOrVideo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_db

    .line 141
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid MIME type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v11}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    .end local v4           #contentType:Ljava/lang/String;
    .restart local v12       #dataLength:[J
    :cond_b3
    const-string v2, "iu.UploadsManager"

    const/4 v8, 0x5

    invoke-static {v2, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 125
    const-string v2, "iu.UploadsManager"

    const-string v8, "Could not generate fingerprint; media length is \'0\'"

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_c3
    const/4 v2, 0x0

    .line 158
    .end local v12           #dataLength:[J
    :goto_c4
    return v2

    .line 130
    .end local v17           #taskFingerPrint:Lcom/android/gallery3d/common/Fingerprint;
    :cond_c5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v8

    const-wide/16 v18, 0x0

    cmp-long v2, v8, v18

    if-gtz v2, :cond_d6

    .line 131
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->setFileSize(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V

    .line 133
    :cond_d6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getFingerprint()Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v17

    .restart local v17       #taskFingerPrint:Lcom/android/gallery3d/common/Fingerprint;
    goto :goto_78

    .line 146
    .restart local v4       #contentType:Ljava/lang/String;
    :cond_db
    const/4 v5, 0x0

    .line 147
    .local v5, caption:Ljava/lang/String;
    sget-object v2, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->PROJECTION_DATE_TAKEN:[Ljava/lang/String;

    const-wide/16 v8, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v11, v2, v8, v9}, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->getOptionalLong(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;J)J

    move-result-wide v13

    .line 148
    .local v13, dateTakenMillis:J
    const-wide/16 v8, 0x0

    cmp-long v2, v13, v8

    if-lez v2, :cond_11f

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 149
    .local v6, dateTaken:Ljava/util/Date;
    :goto_f1
    sget-object v2, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->PROJECTION_DATA:[Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v0, v11, v2}, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->getOptionalString(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, filePath:Ljava/lang/String;
    if-nez v3, :cond_ff

    .line 151
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    :cond_ff
    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/common/Fingerprint;->toStreamId()Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, streamId:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/gallery3d/common/Utils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v8

    invoke-static/range {v2 .. v9}, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->buildRequestTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setRequestTemplate(Ljava/lang/String;)V

    .line 156
    invoke-static {v10, v7, v15}, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->buildUploadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setUrl(Ljava/lang/String;)V

    .line 158
    const/4 v2, 0x1

    goto :goto_c4

    .line 148
    .end local v3           #filePath:Ljava/lang/String;
    .end local v6           #dateTaken:Ljava/util/Date;
    .end local v7           #streamId:Ljava/lang/String;
    :cond_11f
    const/4 v6, 0x0

    goto :goto_f1
.end method

.method private static getFileLengthFromContent(Landroid/content/ContentResolver;Landroid/net/Uri;)J
    .registers 10
    .parameter "resolver"
    .parameter "contentUri"

    .prologue
    .line 270
    const/4 v4, 0x0

    .line 272
    .local v4, in:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 273
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 274
    .local v0, buffer:[B
    const-wide/16 v1, 0x0

    .line 275
    .local v1, count:J
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 276
    .local v5, n:I
    :goto_f
    if-ltz v5, :cond_18

    .line 277
    int-to-long v6, v5

    add-long/2addr v1, v6

    .line 278
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_1c

    move-result v5

    goto :goto_f

    .line 288
    :cond_18
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-wide v1

    .line 281
    .end local v0           #buffer:[B
    .end local v1           #count:J
    .end local v5           #n:I
    :catch_1c
    move-exception v3

    .line 282
    .local v3, e:Ljava/lang/Exception;
    :try_start_1d
    instance-of v6, v3, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_29

    .line 283
    check-cast v3, Ljava/lang/RuntimeException;

    .end local v3           #e:Ljava/lang/Exception;
    throw v3
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_24

    .line 288
    :catchall_24
    move-exception v6

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    .line 285
    .restart local v3       #e:Ljava/lang/Exception;
    :cond_29
    :try_start_29
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_24
.end method

.method private static getFileLengthFromRawFdOrContent(Landroid/content/ContentResolver;Landroid/net/Uri;)J
    .registers 7
    .parameter "resolver"
    .parameter "contentUri"

    .prologue
    .line 258
    const/4 v1, 0x0

    .line 260
    .local v1, fd:Landroid/content/res/AssetFileDescriptor;
    :try_start_1
    const-string v2, "r"

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 261
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_15

    move-result-wide v2

    .line 265
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    :cond_14
    :goto_14
    return-wide v2

    .line 262
    :catch_15
    move-exception v0

    .line 263
    .local v0, e:Ljava/lang/Exception;
    :try_start_16
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->getFileLengthFromContent(Landroid/content/ContentResolver;Landroid/net/Uri;)J
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_24

    move-result-wide v2

    .line 265
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_14

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_24
    move-exception v2

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    :cond_2e
    throw v2
.end method

.method private static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "path"

    .prologue
    .line 294
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 295
    .local v0, index:I
    if-lez v0, :cond_e

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    :cond_e
    return-object p0
.end method

.method private static getOptionalLong(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;J)J
    .registers 13
    .parameter "resolver"
    .parameter "uri"
    .parameter "projection"
    .parameter "defaultValue"

    .prologue
    .line 244
    const/4 v6, 0x0

    .line 246
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

    .line 247
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_23
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_1c

    move-result-wide p3

    .line 251
    .end local p3
    :cond_16
    if-eqz v6, :cond_1b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1b
    :goto_1b
    return-wide p3

    .line 248
    .restart local p3
    :catch_1c
    move-exception v7

    .line 251
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_1b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1b

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_23
    move-exception v0

    if-eqz v6, :cond_29

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

    .line 231
    const/4 v6, 0x0

    .line 233
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

    .line 234
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_27
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_1f

    move-result-object v0

    .line 238
    :goto_17
    if-eqz v6, :cond_1c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1c
    :goto_1c
    return-object v0

    :cond_1d
    move-object v0, v8

    .line 234
    goto :goto_17

    .line 235
    :catch_1f
    move-exception v7

    .line 238
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_25

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_25
    move-object v0, v8

    goto :goto_1c

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_27
    move-exception v0

    if-eqz v6, :cond_2d

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2d
    throw v0
.end method

.method private static isImageOrVideo(Ljava/lang/String;)Z
    .registers 2
    .parameter "contentType"

    .prologue
    .line 162
    if-eqz p0, :cond_14

    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static setContentType(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/iu/UploadTaskEntry;)Ljava/lang/String;
    .registers 10
    .parameter "resolver"
    .parameter "task"

    .prologue
    const/4 v7, 0x2

    .line 171
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 172
    .local v0, contentUri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, type:Ljava/lang/String;
    const-string v4, "iu.UploadsManager"

    invoke-static {v4, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 174
    const-string v4, "iu.UploadsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  contentType from resolver: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_29
    if-nez v3, :cond_53

    .line 177
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 178
    const-string v4, "iu.UploadsManager"

    invoke-static {v4, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 179
    const-string v4, "iu.UploadsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  guess contentType from url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_53
    if-nez v3, :cond_82

    .line 183
    const/4 v2, 0x0

    .line 185
    .local v2, is:Ljava/io/InputStream;
    :try_start_56
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 186
    invoke-static {v2}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 187
    const-string v4, "iu.UploadsManager"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 188
    const-string v4, "iu.UploadsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  guess contentType from stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_56 .. :try_end_7f} :catchall_ae
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_7f} :catch_88

    .line 195
    :cond_7f
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 198
    .end local v2           #is:Ljava/io/InputStream;
    :cond_82
    :goto_82
    if-eqz v3, :cond_b3

    .line 199
    invoke-virtual {p1, v3}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setMimeType(Ljava/lang/String;)V

    .line 202
    .end local v3           #type:Ljava/lang/String;
    :goto_87
    return-object v3

    .line 190
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #type:Ljava/lang/String;
    :catch_88
    move-exception v1

    .line 191
    .local v1, ignored:Ljava/lang/Throwable;
    :try_start_89
    const-string v4, "iu.UploadsManager"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 192
    const-string v4, "iu.UploadsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to guess content type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catchall {:try_start_89 .. :try_end_aa} :catchall_ae

    .line 195
    :cond_aa
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_82

    .end local v1           #ignored:Ljava/lang/Throwable;
    :catchall_ae
    move-exception v4

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .line 202
    .end local v2           #is:Ljava/io/InputStream;
    :cond_b3
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getMimeType()Ljava/lang/String;

    move-result-object v3

    goto :goto_87
.end method

.method static setFileSize(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V
    .registers 11
    .parameter "resolver"
    .parameter "task"

    .prologue
    const/4 v8, 0x3

    const-wide/16 v6, 0x0

    .line 207
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 208
    .local v0, contentUri:Landroid/net/Uri;
    sget-object v3, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->PROJECTION_SIZE:[Ljava/lang/String;

    invoke-static {p0, v0, v3, v6, v7}, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->getOptionalLong(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;J)J

    move-result-wide v1

    .line 209
    .local v1, size:J
    cmp-long v3, v1, v6

    if-lez v3, :cond_31

    .line 210
    const-string v3, "iu.UploadsManager"

    invoke-static {v3, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 211
    const-string v3, "iu.UploadsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   media size from resolver: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_31
    cmp-long v3, v1, v6

    if-nez v3, :cond_5d

    .line 218
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->getFileLengthFromRawFdOrContent(Landroid/content/ContentResolver;Landroid/net/Uri;)J

    move-result-wide v1

    .line 219
    cmp-long v3, v1, v6

    if-lez v3, :cond_5d

    .line 220
    const-string v3, "iu.UploadsManager"

    invoke-static {v3, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 221
    const-string v3, "iu.UploadsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   media size from content: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_5d
    cmp-long v3, v1, v6

    if-nez v3, :cond_7a

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no content to upload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 226
    :cond_7a
    invoke-virtual {p1, v1, v2}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setBytesTotal(J)V

    .line 227
    return-void
.end method
