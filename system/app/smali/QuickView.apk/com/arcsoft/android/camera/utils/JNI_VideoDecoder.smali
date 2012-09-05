.class public Lcom/arcsoft/android/camera/utils/JNI_VideoDecoder;
.super Ljava/lang/Object;
.source "JNI_VideoDecoder.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "JNI_VideoDecoder:"

.field public static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/arcsoft/android/camera/utils/JNI_VideoDecoder;->mContext:Landroid/content/Context;

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "resolution"

    aput-object v2, v0, v1

    sput-object v0, Lcom/arcsoft/android/camera/utils/JNI_VideoDecoder;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getVideoResolution(Ljava/lang/String;)Landroid/graphics/Point;
    .registers 7
    .parameter "filePath"

    .prologue
    const/4 v5, 0x0

    .line 149
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 150
    .local v2, pt:Landroid/graphics/Point;
    const/4 v4, 0x0

    .line 151
    .local v4, width:Ljava/lang/String;
    const/4 v1, 0x0

    .line 153
    .local v1, height:Ljava/lang/String;
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 155
    .local v3, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_d
    invoke-virtual {v3, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 156
    const/16 v5, 0x12

    invoke-virtual {v3, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    .line 157
    const/16 v5, 0x13

    invoke-virtual {v3, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_1b} :catch_31
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_1b} :catch_3e

    move-result-object v1

    .line 164
    :try_start_1c
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1f} :catch_2c

    .line 171
    :goto_1f
    :try_start_1f
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Landroid/graphics/Point;->x:I

    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Landroid/graphics/Point;->y:I
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_2b} :catch_55

    .line 177
    :goto_2b
    return-object v2

    .line 165
    :catch_2c
    move-exception v0

    .line 166
    .local v0, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1f

    .line 158
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_31
    move-exception v0

    .line 159
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    :try_start_32
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_4b

    .line 164
    :try_start_35
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_1f

    .line 165
    :catch_39
    move-exception v0

    .line 166
    .local v0, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1f

    .line 160
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_3e
    move-exception v0

    .line 161
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    :try_start_3f
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4b

    .line 164
    :try_start_42
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_1f

    .line 165
    :catch_46
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1f

    .line 163
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catchall_4b
    move-exception v5

    .line 164
    :try_start_4c
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4f
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_4f} :catch_50

    .line 167
    :goto_4f
    throw v5

    .line 165
    :catch_50
    move-exception v0

    .line 166
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_4f

    .line 173
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_55
    move-exception v0

    .line 174
    .local v0, ex:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2b
.end method

.method private static getVideoResolutionByFullPath(Ljava/lang/String;)Landroid/graphics/Point;
    .registers 15
    .parameter "szFilename"

    .prologue
    const/4 v2, 0x1

    const/4 v13, 0x0

    .line 51
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v13, v13}, Landroid/graphics/Point;-><init>(II)V

    .line 53
    .local v8, pt:Landroid/graphics/Point;
    sget-object v1, Lcom/arcsoft/android/camera/utils/JNI_VideoDecoder;->mContext:Landroid/content/Context;

    if-nez v1, :cond_c

    .line 91
    :cond_b
    :goto_b
    return-object v8

    .line 57
    :cond_c
    sget-object v1, Lcom/arcsoft/android/camera/utils/JNI_VideoDecoder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 58
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_b

    .line 62
    new-array v4, v2, [Ljava/lang/String;

    aput-object p0, v4, v13

    .line 63
    .local v4, arryFullpath:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/arcsoft/android/camera/utils/JNI_VideoDecoder;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_data=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 66
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_57

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 67
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 68
    .local v9, resolution:Ljava/lang/String;
    if-eqz v9, :cond_57

    .line 69
    const-string v1, "x"

    invoke-virtual {v9, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 70
    .local v11, str:[Ljava/lang/String;
    if-eqz v11, :cond_57

    const/4 v1, 0x2

    array-length v2, v11

    if-ne v1, v2, :cond_57

    .line 72
    const/4 v1, 0x0

    :try_start_3e
    aget-object v1, v11, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v8, Landroid/graphics/Point;->x:I

    .line 73
    const/4 v1, 0x1

    aget-object v1, v11, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v8, Landroid/graphics/Point;->y:I
    :try_end_57
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_57} :catch_71

    .line 80
    .end local v9           #resolution:Ljava/lang/String;
    .end local v11           #str:[Ljava/lang/String;
    :cond_57
    :goto_57
    if-eqz v6, :cond_5c

    .line 81
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_5c
    invoke-static {p0}, Lcom/arcsoft/android/camera/utils/JNI_VideoDecoder;->getVideoRotate(Ljava/lang/String;)I

    move-result v10

    .line 85
    .local v10, rotate:I
    const/16 v1, 0x5a

    if-eq v10, v1, :cond_68

    const/16 v1, 0x10e

    if-ne v10, v1, :cond_b

    .line 86
    :cond_68
    iget v12, v8, Landroid/graphics/Point;->x:I

    .line 87
    .local v12, tmp:I
    iget v1, v8, Landroid/graphics/Point;->y:I

    iput v1, v8, Landroid/graphics/Point;->x:I

    .line 88
    iput v12, v8, Landroid/graphics/Point;->y:I

    goto :goto_b

    .line 74
    .end local v10           #rotate:I
    .end local v12           #tmp:I
    .restart local v9       #resolution:Ljava/lang/String;
    .restart local v11       #str:[Ljava/lang/String;
    :catch_71
    move-exception v7

    .line 75
    .local v7, ex:Ljava/lang/NumberFormatException;
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_57
.end method

.method public static getVideoRotate(Ljava/lang/String;)I
    .registers 6
    .parameter "filePath"

    .prologue
    .line 96
    const/4 v3, 0x0

    .line 98
    .local v3, value:Ljava/lang/String;
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 100
    .local v1, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_6
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 101
    const/16 v4, 0x64

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_e} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_e} :catch_2a

    move-result-object v3

    .line 108
    :try_start_f
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_12} :catch_18

    .line 114
    :goto_12
    const/4 v2, 0x0

    .line 116
    .local v2, rotate:I
    :try_start_13
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_16} :catch_41

    move-result v2

    .line 121
    :goto_17
    return v2

    .line 109
    .end local v2           #rotate:I
    :catch_18
    move-exception v0

    .line 110
    .local v0, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_12

    .line 102
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_1d
    move-exception v0

    .line 103
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_37

    .line 108
    :try_start_21
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_12

    .line 109
    :catch_25
    move-exception v0

    .line 110
    .local v0, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_12

    .line 104
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_2a
    move-exception v0

    .line 105
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_37

    .line 108
    :try_start_2e
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_12

    .line 109
    :catch_32
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_12

    .line 107
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catchall_37
    move-exception v4

    .line 108
    :try_start_38
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 111
    :goto_3b
    throw v4

    .line 109
    :catch_3c
    move-exception v0

    .line 110
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_3b

    .line 117
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .restart local v2       #rotate:I
    :catch_41
    move-exception v0

    .line 118
    .local v0, ex:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_17
.end method

.method public static getVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "filePath"

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 130
    .local v2, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_6
    invoke-virtual {v2, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 131
    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_e} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_e} :catch_25

    move-result-object v0

    .line 138
    :try_start_f
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_12} :catch_13

    .line 144
    :goto_12
    return-object v0

    .line 139
    :catch_13
    move-exception v1

    .line 140
    .local v1, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_12

    .line 132
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_18
    move-exception v1

    .line 133
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    :try_start_19
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_32

    .line 138
    :try_start_1c
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_12

    .line 139
    :catch_20
    move-exception v1

    .line 140
    .local v1, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_12

    .line 134
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_25
    move-exception v1

    .line 135
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    :try_start_26
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_32

    .line 138
    :try_start_29
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_12

    .line 139
    :catch_2d
    move-exception v1

    .line 140
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_12

    .line 137
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catchall_32
    move-exception v3

    .line 138
    :try_start_33
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_36} :catch_37

    .line 141
    :goto_36
    throw v3

    .line 139
    :catch_37
    move-exception v1

    .line 140
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_36
.end method

.method public static s_GetVideoResolution(Ljava/lang/String;)Landroid/graphics/Point;
    .registers 2
    .parameter "szFilename"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/arcsoft/android/camera/utils/JNI_VideoDecoder;->getVideoResolutionByFullPath(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static s_GetVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "szFilename"

    .prologue
    .line 39
    invoke-static {p0}, Lcom/arcsoft/android/camera/utils/JNI_VideoDecoder;->getVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
