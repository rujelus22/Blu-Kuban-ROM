.class public Lcom/cooliris/media/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static CRCTable:[J

.field private static init:Z

.field public static mDisplayExternalSdIcon:Z

.field public static mOriginalHudlayer:Z

.field public static mSupportDNIE:Z

.field public static mSupportEdit:Z

.field public static mSupportMotionTilt:Z

.field public static mUseDirectVideo:Z

.field public static mUseDualCore:Z

.field public static mUseGestureExt:Z

.field public static mUseWallpaperSizeLayout:Z

.field public static mUseXiv:Z

.field public static mUseXivRD:Z

.field public static mUse_Gerry_Kor_Open:Z

.field public static mUse_Q1_Eur_Open:Z

.field public static mUse_Q1_Us_ATT:Z

.field public static mUse_Tn_Us_ATT:Z

.field public static mUse_Tn_Us_Common:Z

.field public static mUse_Tn_Us_TMO:Z

.field public static mUse_U1_Aus_Open:Z

.field public static mUse_U1_Chn_Open:Z

.field public static mUse_U1_HKTW_open:Z

.field public static mUse_U1_NA_SPR:Z

.field public static mUse_U1_Us_USCC:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    sput-boolean v1, Lcom/cooliris/media/Utils;->mUseXiv:Z

    .line 52
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUseXiv:Z

    and-int/lit8 v0, v0, 0x0

    sput-boolean v0, Lcom/cooliris/media/Utils;->mUseXivRD:Z

    .line 55
    sput-boolean v1, Lcom/cooliris/media/Utils;->mUseDualCore:Z

    .line 58
    sput-boolean v2, Lcom/cooliris/media/Utils;->mOriginalHudlayer:Z

    .line 60
    sput-boolean v2, Lcom/cooliris/media/Utils;->mUseGestureExt:Z

    .line 63
    sput-boolean v2, Lcom/cooliris/media/Utils;->mUse_U1_Chn_Open:Z

    .line 65
    sput-boolean v2, Lcom/cooliris/media/Utils;->mUse_Q1_Eur_Open:Z

    .line 67
    sput-boolean v2, Lcom/cooliris/media/Utils;->mUse_Q1_Us_ATT:Z

    .line 69
    sput-boolean v2, Lcom/cooliris/media/Utils;->mUse_Tn_Us_Common:Z

    .line 71
    sput-boolean v1, Lcom/cooliris/media/Utils;->mUse_U1_NA_SPR:Z

    .line 73
    sput-boolean v2, Lcom/cooliris/media/Utils;->mUse_Tn_Us_ATT:Z

    .line 75
    sput-boolean v2, Lcom/cooliris/media/Utils;->mUse_Tn_Us_TMO:Z

    .line 77
    sput-boolean v1, Lcom/cooliris/media/Utils;->mDisplayExternalSdIcon:Z

    .line 79
    sput-boolean v2, Lcom/cooliris/media/Utils;->mUse_U1_Us_USCC:Z

    .line 81
    sput-boolean v2, Lcom/cooliris/media/Utils;->mSupportDNIE:Z

    .line 83
    sput-boolean v2, Lcom/cooliris/media/Utils;->mUse_Gerry_Kor_Open:Z

    .line 91
    const-string v0, "SPH-D710"

    const-string v3, "SGH-I577"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    move v0, v1

    :goto_31
    sput-boolean v0, Lcom/cooliris/media/Utils;->mSupportEdit:Z

    .line 93
    const-string v0, "SPH-D710"

    const-string v3, "SGH-I577"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string v0, "SPH-D710"

    const-string v3, "SGH-T769"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string v0, "SPH-D710"

    const-string v3, "CODINA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    move v0, v1

    :goto_52
    sput-boolean v0, Lcom/cooliris/media/Utils;->mSupportMotionTilt:Z

    .line 97
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUse_U1_NA_SPR:Z

    if-nez v0, :cond_6c

    move v0, v1

    :goto_59
    sput-boolean v0, Lcom/cooliris/media/Utils;->mUseWallpaperSizeLayout:Z

    .line 99
    sput-boolean v2, Lcom/cooliris/media/Utils;->mUse_U1_HKTW_open:Z

    .line 173
    sput-boolean v2, Lcom/cooliris/media/Utils;->init:Z

    .line 175
    const/16 v0, 0x100

    new-array v0, v0, [J

    sput-object v0, Lcom/cooliris/media/Utils;->CRCTable:[J

    .line 388
    sput-boolean v1, Lcom/cooliris/media/Utils;->mUseDirectVideo:Z

    return-void

    :cond_68
    move v0, v2

    .line 91
    goto :goto_31

    :cond_6a
    move v0, v2

    .line 93
    goto :goto_52

    :cond_6c
    move v0, v2

    .line 97
    goto :goto_59
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Copy(Ljava/io/File;Ljava/io/File;)V
    .registers 8
    .parameter "src"
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    const/4 v1, 0x0

    .line 310
    .local v1, in:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 312
    .local v3, out:Ljava/io/OutputStream;
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_18

    .line 313
    .end local v1           #in:Ljava/io/InputStream;
    .local v2, in:Ljava/io/InputStream;
    :try_start_7
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_2b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_32

    .line 314
    .end local v3           #out:Ljava/io/OutputStream;
    .local v4, out:Ljava/io/OutputStream;
    :try_start_c
    invoke-static {v2, v4}, Lcom/cooliris/media/Utils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_2e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_35

    .line 318
    invoke-static {v2}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 319
    invoke-static {v4}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    move-object v1, v2

    .line 321
    .end local v2           #in:Ljava/io/InputStream;
    .restart local v1       #in:Ljava/io/InputStream;
    :goto_17
    return-void

    .line 315
    :catch_18
    move-exception v0

    .line 316
    .local v0, e:Ljava/lang/Exception;
    :goto_19
    :try_start_19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_23

    .line 318
    invoke-static {v1}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 319
    invoke-static {v3}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_17

    .line 318
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_23
    move-exception v5

    :goto_24
    invoke-static {v1}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 319
    invoke-static {v3}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v5

    .line 318
    .end local v1           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    :catchall_2b
    move-exception v5

    move-object v1, v2

    .end local v2           #in:Ljava/io/InputStream;
    .restart local v1       #in:Ljava/io/InputStream;
    goto :goto_24

    .end local v1           #in:Ljava/io/InputStream;
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    :catchall_2e
    move-exception v5

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    move-object v1, v2

    .end local v2           #in:Ljava/io/InputStream;
    .restart local v1       #in:Ljava/io/InputStream;
    goto :goto_24

    .line 315
    .end local v1           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    :catch_32
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/InputStream;
    .restart local v1       #in:Ljava/io/InputStream;
    goto :goto_19

    .end local v1           #in:Ljava/io/InputStream;
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    :catch_35
    move-exception v0

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    move-object v1, v2

    .end local v2           #in:Ljava/io/InputStream;
    .restart local v1       #in:Ljava/io/InputStream;
    goto :goto_19
.end method

.method public static final Crc64Long(Ljava/lang/String;)J
    .registers 15
    .parameter "in"

    .prologue
    .line 184
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_b

    .line 185
    :cond_8
    const-wide/16 v1, 0x0

    .line 208
    :cond_a
    return-wide v1

    .line 188
    :cond_b
    const-wide/16 v1, -0x1

    .line 189
    .local v1, crc:J
    sget-boolean v10, Lcom/cooliris/media/Utils;->init:Z

    if-nez v10, :cond_3b

    .line 190
    const/4 v3, 0x0

    .local v3, i:I
    :goto_12
    const/16 v10, 0x100

    if-ge v3, v10, :cond_38

    .line 191
    int-to-long v7, v3

    .line 192
    .local v7, part:J
    const/4 v4, 0x0

    .local v4, j:I
    :goto_18
    const/16 v10, 0x8

    if-ge v4, v10, :cond_31

    .line 193
    long-to-int v10, v7

    and-int/lit8 v9, v10, 0x1

    .line 194
    .local v9, value:I
    if-eqz v9, :cond_2e

    .line 195
    const/4 v10, 0x1

    shr-long v10, v7, v10

    const-wide v12, -0x6a536cd653b4364bL

    xor-long v7, v10, v12

    .line 192
    :goto_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 197
    :cond_2e
    const/4 v10, 0x1

    shr-long/2addr v7, v10

    goto :goto_2b

    .line 199
    .end local v9           #value:I
    :cond_31
    sget-object v10, Lcom/cooliris/media/Utils;->CRCTable:[J

    aput-wide v7, v10, v3

    .line 190
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 201
    .end local v4           #j:I
    .end local v7           #part:J
    :cond_38
    const/4 v10, 0x1

    sput-boolean v10, Lcom/cooliris/media/Utils;->init:Z

    .line 203
    .end local v3           #i:I
    :cond_3b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 204
    .local v6, length:I
    const/4 v5, 0x0

    .local v5, k:I
    :goto_40
    if-ge v5, v6, :cond_a

    .line 205
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 206
    .local v0, c:C
    sget-object v10, Lcom/cooliris/media/Utils;->CRCTable:[J

    long-to-int v11, v1

    xor-int/2addr v11, v0

    and-int/lit16 v11, v11, 0xff

    aget-wide v10, v10, v11

    const/16 v12, 0x8

    shr-long v12, v1, v12

    xor-long v1, v10, v12

    .line 204
    add-int/lit8 v5, v5, 0x1

    goto :goto_40
.end method

.method public static bIsNote()Z
    .registers 3

    .prologue
    .line 448
    const-string v1, "800x480"

    .line 449
    .local v1, resolution:Ljava/lang/String;
    const/4 v0, 0x0

    .line 450
    .local v0, bIsNote:Z
    const-string v2, "1280x800"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "1280x720"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 451
    :cond_13
    const/4 v0, 0x1

    .line 455
    :cond_14
    :goto_14
    return v0

    .line 452
    :cond_15
    sget-boolean v2, Lcom/cooliris/media/Utils;->mUse_Gerry_Kor_Open:Z

    if-eqz v2, :cond_14

    .line 453
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 327
    .local v0, buf:[B
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, len:I
    if-lez v1, :cond_f

    .line 328
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 330
    :cond_f
    return-void
.end method

.method public static getBucketIdFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)J
    .registers 18
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 232
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 233
    const-string v15, "/"

    .line 234
    .local v15, string:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v12

    .line 235
    .local v12, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .line 236
    .local v11, numPaths:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_17
    add-int/lit8 v0, v11, -0x1

    if-ge v8, v0, :cond_4c

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 238
    add-int/lit8 v0, v11, -0x2

    if-eq v8, v0, :cond_49

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 236
    :cond_49
    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    .line 241
    :cond_4c
    invoke-static {v15}, Lcom/cooliris/media/LocalDataSource;->getBucketId(Ljava/lang/String;)I

    move-result v0

    int-to-long v13, v0

    .line 269
    .end local v8           #i:I
    .end local v11           #numPaths:I
    .end local v12           #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v15           #string:Ljava/lang/String;
    :goto_51
    return-wide v13

    .line 243
    :cond_52
    const/4 v6, 0x0

    .line 245
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_53
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 246
    .local v9, id:J
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "bucket_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 249
    if-eqz v6, :cond_94

    .line 250
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 251
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 252
    .local v13, setVal:J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_8c} :catch_8d

    goto :goto_51

    .line 266
    .end local v9           #id:J
    .end local v13           #setVal:J
    :catch_8d
    move-exception v7

    .line 267
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 269
    .end local v7           #e:Ljava/lang/Exception;
    :cond_91
    const-wide/16 v13, -0x1

    goto :goto_51

    .line 256
    .restart local v9       #id:J
    :cond_94
    :try_start_94
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "bucket_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 259
    if-eqz v6, :cond_91

    .line 260
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 261
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 262
    .restart local v13       #setVal:J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_c9} :catch_8d

    goto :goto_51
.end method

.method public static getBucketNameFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .registers 13
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 274
    invoke-static {p0, p1}, Lcom/cooliris/media/Utils;->getBucketIdFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)J

    move-result-wide v6

    .line 275
    .local v6, bucketId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-eqz v0, :cond_84

    .line 277
    :try_start_a
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "bucket_display_name"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bucket_id=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 282
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_45

    .line 283
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 284
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 285
    .local v10, setName:Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 303
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #setName:Ljava/lang/String;
    :goto_44
    return-object v10

    .line 289
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_45
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "bucket_display_name"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bucket_id=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 292
    if-eqz v8, :cond_84

    .line 293
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 294
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 295
    .restart local v10       #setName:Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_7f} :catch_80

    goto :goto_44

    .line 299
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #setName:Ljava/lang/String;
    :catch_80
    move-exception v9

    .line 300
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    .end local v9           #e:Ljava/lang/Exception;
    :cond_84
    const-string v10, ""

    goto :goto_44
.end method

.method public static getMaxResolution()I
    .registers 1

    .prologue
    .line 107
    const/16 v0, 0x400

    return v0
.end method

.method public static getScreenHeight()I
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 438
    const/4 v1, 0x0

    .line 439
    .local v1, resolution:[Ljava/lang/String;
    const/16 v0, 0x320

    .line 441
    .local v0, height:I
    const-string v2, "800x480"

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 442
    if-eqz v1, :cond_18

    aget-object v2, v1, v4

    if-eqz v2, :cond_18

    .line 443
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 444
    :cond_18
    return v0
.end method

.method public static getScreenWidth()I
    .registers 5

    .prologue
    const/4 v4, 0x1

    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, resolution:[Ljava/lang/String;
    const/16 v1, 0x1e0

    .line 431
    .local v1, width:I
    const-string v2, "800x480"

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_18

    aget-object v2, v0, v4

    if-eqz v2, :cond_18

    .line 433
    aget-object v2, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 434
    :cond_18
    return v1
.end method

.method public static getVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "filePath"

    .prologue
    .line 391
    const/4 v0, 0x0

    .line 393
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez p0, :cond_5

    .line 394
    const/4 v3, 0x0

    .line 424
    :goto_4
    return-object v3

    .line 399
    :cond_5
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 401
    .local v2, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_a
    invoke-virtual {v2, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 407
    sget-object v3, Lcom/cooliris/media/LocalDataSource;->CAMERA_BUCKET_NAME:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    sget-object v3, Lcom/cooliris/media/LocalDataSource;->CAMERA_EXT_BUCKET_NAME:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 409
    :cond_1d
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_4f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_22} :catch_35
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_22} :catch_42

    move-result-object v0

    .line 419
    :goto_23
    :try_start_23
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_26} :catch_30

    :goto_26
    move-object v3, v0

    .line 424
    goto :goto_4

    .line 411
    :cond_28
    const-wide/32 v3, 0xe4e1c0

    :try_start_2b
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_4f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_2e} :catch_35
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2e} :catch_42

    move-result-object v0

    goto :goto_23

    .line 420
    :catch_30
    move-exception v1

    .line 421
    .local v1, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_26

    .line 413
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_35
    move-exception v1

    .line 414
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    :try_start_36
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_4f

    .line 419
    :try_start_39
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3c
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_26

    .line 420
    :catch_3d
    move-exception v1

    .line 421
    .local v1, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_26

    .line 415
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_42
    move-exception v1

    .line 416
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    :try_start_43
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_4f

    .line 419
    :try_start_46
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_26

    .line 420
    :catch_4a
    move-exception v1

    .line 421
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_26

    .line 418
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catchall_4f
    move-exception v3

    .line 419
    :try_start_50
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_53
    .catch Ljava/lang/RuntimeException; {:try_start_50 .. :try_end_53} :catch_54

    .line 422
    :goto_53
    throw v3

    .line 420
    :catch_54
    move-exception v1

    .line 421
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_53
.end method

.method public static playVideo(Landroid/content/Context;Lcom/cooliris/media/MediaItem;)V
    .registers 4
    .parameter "context"
    .parameter "item"

    .prologue
    .line 112
    invoke-static {p0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/app/App;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cooliris/media/Utils$1;

    invoke-direct {v1, p1, p0}, Lcom/cooliris/media/Utils$1;-><init>(Lcom/cooliris/media/MediaItem;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    return-void
.end method

.method public static final readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;
    .registers 3
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, retVal:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 139
    new-instance v0, Ljava/lang/String;

    .end local v0           #retVal:Ljava/lang/String;
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 140
    :cond_f
    return-object v0
.end method

.method public static final resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "bitmap"
    .parameter "maxSize"

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 145
    .local v3, srcWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 146
    .local v2, srcHeight:I
    move v4, p1

    .line 147
    .local v4, width:I
    move v0, p1

    .line 148
    .local v0, height:I
    const/4 v1, 0x0

    .line 149
    .local v1, needsResize:Z
    if-le v3, v2, :cond_1c

    .line 150
    if-le v3, p1, :cond_14

    .line 151
    const/4 v1, 0x1

    .line 152
    mul-int v5, p1, v2

    div-int v0, v5, v3

    .line 160
    :cond_14
    :goto_14
    if-eqz v1, :cond_1b

    .line 161
    const/4 v5, 0x1

    invoke-static {p0, v4, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 163
    .end local p0
    :cond_1b
    return-object p0

    .line 155
    .restart local p0
    :cond_1c
    if-le v2, p1, :cond_14

    .line 156
    const/4 v1, 0x1

    .line 157
    mul-int v5, p1, v3

    div-int v4, v5, v2

    goto :goto_14
.end method

.method public static final writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .registers 3
    .parameter "dos"
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    if-nez p1, :cond_b

    .line 130
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 134
    :goto_a
    return-void

    .line 132
    :cond_b
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_a
.end method
