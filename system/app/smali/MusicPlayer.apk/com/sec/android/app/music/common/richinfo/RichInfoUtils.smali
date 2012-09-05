.class public Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;
.super Ljava/lang/Object;
.source "RichInfoUtils.java"


# static fields
.field private static final CLASSTAG:Ljava/lang/String;

.field private static mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

.field public static sHasBiography:Z

.field public static sHasCredit:Z

.field public static sHasDiscography:Z

.field public static sHasMusicHub:Z

.field public static sHasReview:Z

.field public static sHasRichInfo:Z

.field public static sHasShop:Z

.field public static sHasTrackList:Z

.field public static sIsOpenRom:Z

.field public static sPath:Ljava/lang/String;

.field private static sRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

.field private static sSeed:I

.field public static sShopUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 25
    const-class v0, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->CLASSTAG:Ljava/lang/String;

    .line 115
    sput-boolean v2, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sIsOpenRom:Z

    .line 117
    sput-boolean v2, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasMusicHub:Z

    .line 120
    sput-object v3, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sPath:Ljava/lang/String;

    .line 123
    sput-boolean v1, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasRichInfo:Z

    .line 128
    sput-boolean v1, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasShop:Z

    .line 131
    sput-object v3, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sShopUrl:Ljava/lang/String;

    .line 164
    sput v1, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sSeed:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, "RichInfo"

    const-string v1, "----------------------------Test RichInfoUtils generated----------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method public static getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "context"

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 171
    .local v0, defaultAlbumArtId:I
    sget v1, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sSeed:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sSeed:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_d

    .line 172
    const/4 v1, 0x0

    sput v1, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sSeed:I

    .line 174
    :cond_d
    sget v1, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sSeed:I

    packed-switch v1, :pswitch_data_32

    .line 191
    const v0, 0x7f0200b8

    .line 194
    :goto_15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 176
    :pswitch_1e
    const v0, 0x7f0200b8

    .line 177
    goto :goto_15

    .line 179
    :pswitch_22
    const v0, 0x7f0200b9

    .line 180
    goto :goto_15

    .line 182
    :pswitch_26
    const v0, 0x7f0200ba

    .line 183
    goto :goto_15

    .line 185
    :pswitch_2a
    const v0, 0x7f0200bb

    .line 186
    goto :goto_15

    .line 188
    :pswitch_2e
    const v0, 0x7f0200bc

    .line 189
    goto :goto_15

    .line 174
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_22
        :pswitch_26
        :pswitch_2a
        :pswitch_2e
    .end packed-switch
.end method

.method public static getMediaMetaData()Lcom/sec/android/app/music/common/data/MediaMetadata;
    .registers 1

    .prologue
    .line 161
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    return-object v0
.end method

.method public static getRichInfoData()Lcom/sec/android/app/music/common/richinfo/RichInfoData;
    .registers 1

    .prologue
    .line 151
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    return-object v0
.end method

.method public static setMediaMetaData(Lcom/sec/android/app/music/common/data/MediaMetadata;)V
    .registers 1
    .parameter "mediaMetadata"

    .prologue
    .line 157
    sput-object p0, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    .line 158
    return-void
.end method

.method public static setRichInfoData(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V
    .registers 1
    .parameter "richInfoData"

    .prologue
    .line 147
    sput-object p0, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sRichInfoData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    .line 148
    return-void
.end method

.method public static toByteFromFile(Ljava/io/File;)[B
    .registers 11
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 363
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 366
    .local v2, is:Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 368
    .local v3, length:J
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v3, v7

    if-lez v7, :cond_10

    .line 373
    :cond_10
    long-to-int v7, v3

    new-array v0, v7, [B

    .line 376
    .local v0, bytes:[B
    const/4 v6, 0x0

    .line 377
    .local v6, offset:I
    const/4 v5, 0x0

    .line 380
    .local v5, numRead:I
    :goto_15
    :try_start_15
    array-length v7, v0

    if-ge v6, v7, :cond_22

    array-length v7, v0

    sub-int/2addr v7, v6

    invoke-virtual {v2, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ltz v5, :cond_22

    .line 381
    add-int/2addr v6, v5

    goto :goto_15

    .line 385
    :cond_22
    array-length v7, v0

    if-ge v6, v7, :cond_4d

    .line 387
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 388
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not completely read file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_45
    .catchall {:try_start_15 .. :try_end_45} :catchall_51
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_45} :catch_45

    .line 390
    :catch_45
    move-exception v1

    .line 391
    .local v1, e:Ljava/io/IOException;
    :try_start_46
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_51

    .line 394
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 397
    .end local v1           #e:Ljava/io/IOException;
    :goto_4c
    return-object v0

    .line 394
    :cond_4d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_4c

    :catchall_51
    move-exception v7

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v7
.end method

.method public static toBytes(Ljava/lang/String;I)[B
    .registers 10
    .parameter "digits"
    .parameter "radix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    .line 223
    if-nez p0, :cond_6

    .line 224
    const/4 v0, 0x0

    .line 240
    :cond_5
    return-object v0

    .line 226
    :cond_6
    if-eq p1, v6, :cond_2f

    const/16 v5, 0xa

    if-eq p1, v5, :cond_2f

    const/16 v5, 0x8

    if-eq p1, v5, :cond_2f

    .line 227
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "For input radix: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 229
    :cond_2f
    if-ne p1, v6, :cond_5a

    const/4 v1, 0x2

    .line 230
    .local v1, divLen:I
    :goto_32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 231
    .local v4, length:I
    rem-int v5, v4, v1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5c

    .line 232
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "For input string: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 229
    .end local v1           #divLen:I
    .end local v4           #length:I
    :cond_5a
    const/4 v1, 0x3

    goto :goto_32

    .line 234
    .restart local v1       #divLen:I
    .restart local v4       #length:I
    :cond_5c
    div-int/2addr v4, v1

    .line 235
    new-array v0, v4, [B

    .line 236
    .local v0, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_60
    if-ge v2, v4, :cond_5

    .line 237
    mul-int v3, v2, v1

    .line 238
    .local v3, index:I
    add-int v5, v3, v1

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_60
.end method

.method public static toHexString([B)Ljava/lang/String;
    .registers 8
    .parameter "bytes"

    .prologue
    const/16 v6, 0x10

    .line 276
    if-nez p0, :cond_6

    .line 277
    const/4 v5, 0x0

    .line 285
    :goto_5
    return-object v5

    .line 280
    :cond_6
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 281
    .local v4, result:Ljava/lang/StringBuffer;
    move-object v0, p0

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_e
    if-ge v2, v3, :cond_29

    aget-byte v1, v0, v2

    .line 282
    .local v1, b:B
    and-int/lit16 v5, v1, 0xf0

    shr-int/lit8 v5, v5, 0x4

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    and-int/lit8 v5, v1, 0xf

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 285
    .end local v1           #b:B
    :cond_29
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 346
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 348
    .local v1, line:Ljava/lang/String;
    :goto_10
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 351
    :cond_2d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 352
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "bytes"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    const/4 v2, 0x0

    .line 317
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v6, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_10} :catch_2d

    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v3, reader:Ljava/io/BufferedReader;
    move-object v2, v3

    .line 321
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :goto_11
    const/4 v1, 0x0

    .line 322
    .local v1, line:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .local v4, sb:Ljava/lang/StringBuilder;
    :goto_17
    :try_start_17
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 326
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_36
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_17

    .line 328
    :catch_21
    move-exception v0

    .line 329
    .local v0, e:Ljava/io/IOException;
    :try_start_22
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_36

    .line 331
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 334
    .end local v0           #e:Ljava/io/IOException;
    :goto_28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 318
    .end local v1           #line:Ljava/lang/String;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :catch_2d
    move-exception v0

    .line 319
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_11

    .line 331
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    :cond_32
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_28

    :catchall_36
    move-exception v5

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v5
.end method

.method public static toStringWithNewLine([BLjava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "bytes"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    const/4 v2, 0x0

    .line 294
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v6, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_10} :catch_40

    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v3, reader:Ljava/io/BufferedReader;
    move-object v2, v3

    .line 298
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :goto_11
    const/4 v1, 0x0

    .line 299
    .local v1, line:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .local v4, sb:Ljava/lang/StringBuilder;
    :goto_17
    :try_start_17
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 303
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_33
    .catchall {:try_start_17 .. :try_end_33} :catchall_49
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_33} :catch_34

    goto :goto_17

    .line 305
    :catch_34
    move-exception v0

    .line 306
    .local v0, e:Ljava/io/IOException;
    :try_start_35
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_49

    .line 308
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 311
    .end local v0           #e:Ljava/io/IOException;
    :goto_3b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 295
    .end local v1           #line:Ljava/lang/String;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :catch_40
    move-exception v0

    .line 296
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_11

    .line 308
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    :cond_45
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_3b

    :catchall_49
    move-exception v5

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v5
.end method


# virtual methods
.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 95
    const-string v0, "RichInfo"

    const-string v1, "----------------------------Test RichInfoUtils finalized----------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 98
    return-void
.end method
