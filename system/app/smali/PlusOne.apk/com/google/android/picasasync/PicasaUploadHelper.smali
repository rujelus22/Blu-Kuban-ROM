.class public Lcom/google/android/picasasync/PicasaUploadHelper;
.super Ljava/lang/Object;
.source "PicasaUploadHelper.java"


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

    .line 48
    const-string v0, "https://picasaweb.google.com/data/upload/resumable/media/create-session/feed/api/user/default/albumid/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaUploadHelper;->PICASA_BASE_UPLOAD_URL:Landroid/net/Uri;

    .line 62
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/picasasync/PicasaUploadHelper;->PROJECTION_DATA:[Ljava/lang/String;

    .line 63
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_size"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/picasasync/PicasaUploadHelper;->PROJECTION_SIZE:[Ljava/lang/String;

    .line 64
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "datetaken"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/picasasync/PicasaUploadHelper;->PROJECTION_DATE_TAKEN:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "title"
    .parameter "summary"
    .parameter "dateTaken"
    .parameter "streamId"

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\r\n<entry xmlns=\'http://www.w3.org/2005/Atom\' xmlns:gphoto=\'http://schemas.google.com/photos/2007\'><category scheme=\'http://schemas.google.com/g/2005#kind\' term=\'http://schemas.google.com/photos/2007#photo\'/>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "<title>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v1, "</title>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 287
    const-string v1, "<summary>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v1, "</summary>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_2f
    const-string v1, "<gphoto:timestamp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 294
    const-string v1, "</gphoto:timestamp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 297
    const-string v1, "<gphoto:streamId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v1, "</gphoto:streamId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_53
    const-string v1, "<gphoto:streamId>mobile_uploaded</gphoto:streamId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v1, "</entry>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
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
    .line 261
    invoke-static {p1}, Lcom/google/android/picasasync/PicasaUploadHelper;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, filename:Ljava/lang/String;
    if-nez p4, :cond_b

    new-instance p4, Ljava/util/Date;

    .end local p4
    invoke-direct {p4}, Ljava/util/Date;-><init>()V

    .line 264
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

    invoke-static {v0, p3, p4, p5}, Lcom/google/android/picasasync/PicasaUploadHelper;->buildMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

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

.method private static buildUploadUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "albumId"
    .parameter "streamId"

    .prologue
    .line 311
    sget-object v0, Lcom/google/android/picasasync/PicasaUploadHelper;->PICASA_BASE_UPLOAD_URL:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caid"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "xmlerrors"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static createBackgroundUploadTask(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;
    .registers 8
    .parameter "account"
    .parameter "contentUri"

    .prologue
    const/4 v2, 0x0

    .line 99
    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/google/android/picasasync/PicasaUploadHelper;->createUploadTask(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Landroid/content/ComponentName;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static createUploadTask(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Landroid/content/ComponentName;)Landroid/content/ContentValues;
    .registers 10
    .parameter "account"
    .parameter "contentUri"
    .parameter "contentType"
    .parameter "priority"
    .parameter "albumId"
    .parameter "componentName"

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, contentUriString:Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 113
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "account"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v2, "content_uri"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v2, "mime_type"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v2, "priority"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    if-nez p4, :cond_25

    const-string p4, "camera-sync"

    .line 118
    :cond_25
    const-string v2, "album_id"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    if-eqz p5, :cond_35

    .line 121
    const-string v2, "component_name"

    invoke-virtual {p5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_35
    return-object v1
.end method

.method static fillRequest(Landroid/content/Context;Lcom/google/android/picasasync/UploadTaskEntry;)V
    .registers 23
    .parameter "context"
    .parameter "task"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 128
    .local v16, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v12

    .line 130
    .local v12, contentUri:Landroid/net/Uri;
    const-string v3, "UploadsManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fill request for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAlbumId()Ljava/lang/String;

    move-result-object v11

    .line 134
    .local v11, albumId:Ljava/lang/String;
    if-nez v11, :cond_2d

    .line 135
    const-string v11, "camera-sync"

    .line 136
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/google/android/picasasync/UploadTaskEntry;->setAlbumId(Ljava/lang/String;)V

    .line 139
    :cond_2d
    const-string v3, "lh2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/picasasync/UploadTaskEntry;->setAuthTokenType(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/UploadTaskEntry;->hasPriority()Z

    move-result v3

    if-nez v3, :cond_40

    .line 142
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/picasasync/UploadTaskEntry;->setPriority(I)V

    .line 148
    :cond_40
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/UploadTaskEntry;->hasFingerprint()Z

    move-result v3

    if-nez v3, :cond_a0

    .line 149
    const/4 v3, 0x1

    new-array v13, v3, [J

    .line 150
    .local v13, dataLength:[J
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3, v13}, Lcom/android/gallery3d/common/Fingerprint;->fromInputStream(Ljava/io/InputStream;[J)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/picasasync/UploadTaskEntry;->setFingerprint(Lcom/android/gallery3d/common/Fingerprint;)V

    .line 152
    const/4 v3, 0x0

    aget-wide v9, v13, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Lcom/google/android/picasasync/UploadTaskEntry;->setBytesTotal(J)V

    .line 163
    .end local v13           #dataLength:[J
    :cond_60
    :goto_60
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, contentType:Ljava/lang/String;
    const-string v3, "UploadsManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "   contentType from resolver: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    if-eqz v5, :cond_11c

    .line 167
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/picasasync/UploadTaskEntry;->setMimeType(Ljava/lang/String;)V

    .line 171
    :goto_85
    if-nez v5, :cond_122

    new-instance v3, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MIME type not known for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 153
    .end local v5           #contentType:Ljava/lang/String;
    :cond_a0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v9

    const-wide/16 v19, 0x0

    cmp-long v3, v9, v19

    if-gtz v3, :cond_60

    .line 155
    sget-object v3, Lcom/google/android/picasasync/PicasaUploadHelper;->PROJECTION_SIZE:[Ljava/lang/String;

    const-wide/16 v9, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v12, v3, v9, v10}, Lcom/google/android/picasasync/PicasaUploadHelper;->getOptionalLong(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;J)J

    move-result-wide v17

    .line 156
    .local v17, size:J
    const-string v3, "UploadsManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "   media size from resolver: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v17

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-wide/16 v9, 0x0

    cmp-long v3, v17, v9

    if-nez v3, :cond_da

    move-object/from16 v0, v16

    invoke-static {v0, v12}, Lcom/google/android/picasasync/PicasaUploadHelper;->getFileLengthFromRawFdOrContent(Landroid/content/ContentResolver;Landroid/net/Uri;)J

    move-result-wide v17

    .line 158
    :cond_da
    const-wide/16 v9, 0x0

    cmp-long v3, v17, v9

    if-nez v3, :cond_f9

    new-instance v3, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "no bytes to upload: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 159
    :cond_f9
    const-string v3, "UploadsManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "   media size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v17

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/android/picasasync/UploadTaskEntry;->setBytesTotal(J)V

    goto/16 :goto_60

    .line 169
    .end local v17           #size:J
    .restart local v5       #contentType:Ljava/lang/String;
    :cond_11c
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getMimeType()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_85

    .line 173
    :cond_122
    const/4 v6, 0x0

    .line 174
    .local v6, caption:Ljava/lang/String;
    sget-object v3, Lcom/google/android/picasasync/PicasaUploadHelper;->PROJECTION_DATE_TAKEN:[Ljava/lang/String;

    const-wide/16 v9, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v12, v3, v9, v10}, Lcom/google/android/picasasync/PicasaUploadHelper;->getOptionalLong(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;J)J

    move-result-wide v14

    .line 175
    .local v14, dateTakenMillis:J
    const-wide/16 v9, 0x0

    cmp-long v3, v14, v9

    if-lez v3, :cond_169

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 176
    .local v7, dateTaken:Ljava/util/Date;
    :goto_138
    sget-object v3, Lcom/google/android/picasasync/PicasaUploadHelper;->PROJECTION_DATA:[Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v0, v12, v3}, Lcom/google/android/picasasync/PicasaUploadHelper;->getOptionalString(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, filePath:Ljava/lang/String;
    if-nez v4, :cond_146

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 178
    :cond_146
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getFingerprint()Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/common/Fingerprint;->toStreamId()Ljava/lang/String;

    move-result-object v8

    .line 179
    .local v8, streamId:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/gallery3d/common/Utils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v9

    invoke-static/range {v3 .. v10}, Lcom/google/android/picasasync/PicasaUploadHelper;->buildRequestTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/picasasync/UploadTaskEntry;->setRequestTemplate(Ljava/lang/String;)V

    .line 181
    invoke-static {v11, v8}, Lcom/google/android/picasasync/PicasaUploadHelper;->buildUploadUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/picasasync/UploadTaskEntry;->setUrl(Ljava/lang/String;)V

    .line 182
    return-void

    .line 175
    .end local v4           #filePath:Ljava/lang/String;
    .end local v7           #dateTaken:Ljava/util/Date;
    .end local v8           #streamId:Ljava/lang/String;
    :cond_169
    const/4 v7, 0x0

    goto :goto_138
.end method

.method private static getFileLengthFromContent(Landroid/content/ContentResolver;Landroid/net/Uri;)J
    .registers 9
    .parameter "resolver"
    .parameter "contentUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 227
    .local v3, in:Ljava/io/InputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 228
    .local v0, buffer:[B
    const-wide/16 v1, 0x0

    .line 230
    .local v1, count:J
    :try_start_a
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 231
    .local v4, n:I
    :goto_e
    if-ltz v4, :cond_17

    .line 232
    int-to-long v5, v4

    add-long/2addr v1, v5

    .line 233
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_1b

    move-result v4

    goto :goto_e

    .line 237
    :cond_17
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-wide v1

    .end local v4           #n:I
    :catchall_1b
    move-exception v5

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v5
.end method

.method private static getFileLengthFromRawFdOrContent(Landroid/content/ContentResolver;Landroid/net/Uri;)J
    .registers 7
    .parameter "resolver"
    .parameter "contentUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    const/4 v1, 0x0

    .line 215
    .local v1, fd:Landroid/content/res/AssetFileDescriptor;
    :try_start_1
    const-string v2, "r"

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_15

    move-result-wide v2

    .line 220
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    :cond_14
    :goto_14
    return-wide v2

    .line 217
    :catch_15
    move-exception v0

    .line 218
    .local v0, e:Ljava/lang/Exception;
    :try_start_16
    invoke-static {p0, p1}, Lcom/google/android/picasasync/PicasaUploadHelper;->getFileLengthFromContent(Landroid/content/ContentResolver;Landroid/net/Uri;)J
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_24

    move-result-wide v2

    .line 220
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
    .line 243
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 244
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
    .line 199
    const/4 v6, 0x0

    .line 201
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

    .line 202
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_23
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_1c

    move-result-wide p3

    .line 206
    .end local p3
    :cond_16
    if-eqz v6, :cond_1b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1b
    :goto_1b
    return-wide p3

    .line 203
    .restart local p3
    :catch_1c
    move-exception v7

    .line 206
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

    .line 186
    const/4 v6, 0x0

    .line 188
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

    .line 189
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_27
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_1f

    move-result-object v0

    .line 193
    :goto_17
    if-eqz v6, :cond_1c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1c
    :goto_1c
    return-object v0

    :cond_1d
    move-object v0, v8

    .line 189
    goto :goto_17

    .line 190
    :catch_1f
    move-exception v7

    .line 193
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
