.class public Lcom/google/android/apps/plus/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;
    }
.end annotation


# static fields
.field private static MICRO_KIND_MAX_DIMENSION:I

.field private static MINI_KIND_MAX_DIMENSION:I

.field public static NO_COLOR:I

.field private static final sInStrokePaint:Landroid/graphics/Paint;

.field private static final sOutStrokePaint:Landroid/graphics/Paint;

.field private static final sResizePaint:Landroid/graphics/Paint;

.field public static final sUseImageSize:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

.field public static final sUseLowResImages:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const-wide/16 v5, 0x18

    const/16 v4, 0xb

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 52
    sput v2, Lcom/google/android/apps/plus/util/ImageUtils;->NO_COLOR:I

    .line 54
    sput v2, Lcom/google/android/apps/plus/util/ImageUtils;->MICRO_KIND_MAX_DIMENSION:I

    .line 55
    sput v2, Lcom/google/android/apps/plus/util/ImageUtils;->MINI_KIND_MAX_DIMENSION:I

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sOutStrokePaint:Landroid/graphics/Paint;

    .line 65
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sOutStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sOutStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sOutStrokePaint:Landroid/graphics/Paint;

    const v1, -0x666667

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sInStrokePaint:Landroid/graphics/Paint;

    .line 72
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sInStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sInStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sInStrokePaint:Landroid/graphics/Paint;

    const v1, -0xf0f10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_5a

    .line 85
    sput-boolean v2, Lcom/google/android/apps/plus/util/ImageUtils;->sUseLowResImages:Z

    .line 105
    :goto_51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_68

    .line 106
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;->NORMAL:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    sput-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sUseImageSize:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    .line 119
    :goto_59
    return-void

    .line 87
    :cond_5a
    sget v0, Lcom/google/android/apps/plus/phone/EsApplication;->sMemoryClass:I

    int-to-long v0, v0

    cmp-long v0, v0, v5

    if-ltz v0, :cond_64

    .line 88
    sput-boolean v2, Lcom/google/android/apps/plus/util/ImageUtils;->sUseLowResImages:Z

    goto :goto_51

    .line 91
    :cond_64
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/apps/plus/util/ImageUtils;->sUseLowResImages:Z

    goto :goto_51

    .line 108
    :cond_68
    sget v0, Lcom/google/android/apps/plus/phone/EsApplication;->sMemoryClass:I

    int-to-long v0, v0

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    if-ltz v0, :cond_76

    .line 110
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;->NORMAL:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    sput-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sUseImageSize:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    goto :goto_59

    .line 111
    :cond_76
    sget v0, Lcom/google/android/apps/plus/phone/EsApplication;->sMemoryClass:I

    int-to-long v0, v0

    cmp-long v0, v0, v5

    if-ltz v0, :cond_82

    .line 113
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;->SMALL:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    sput-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sUseImageSize:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    goto :goto_59

    .line 116
    :cond_82
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;->EXTRA_SMALL:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    sput-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sUseImageSize:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    goto :goto_59
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method

.method public static compressBitmap(Landroid/graphics/Bitmap;)[B
    .registers 6
    .parameter "bitmap"

    .prologue
    .line 929
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 931
    .local v1, stream:Ljava/io/ByteArrayOutputStream;
    :try_start_5
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 932
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_3d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_42

    .line 936
    :try_start_f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_47

    .line 940
    :goto_12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 941
    const/4 p0, 0x0

    .line 943
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 944
    .local v0, imageBytes:[B
    const-string v2, "ImageUtils"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 945
    const-string v2, "ImageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compressBitmap: Image size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_3c
    return-object v0

    .line 935
    .end local v0           #imageBytes:[B
    :catchall_3d
    move-exception v2

    .line 936
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_49

    .line 935
    :goto_41
    throw v2

    .line 933
    :catch_42
    move-exception v2

    .line 936
    :try_start_43
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_12

    .line 937
    :catch_47
    move-exception v2

    goto :goto_12

    :catch_49
    move-exception v3

    goto :goto_41
.end method

.method public static createBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "resolver"
    .parameter "uri"
    .parameter "maxSize"

    .prologue
    const/4 v5, 0x0

    .line 137
    const/4 v3, 0x0

    .line 139
    .local v3, inputStream:Ljava/io/InputStream;
    :try_start_2
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 140
    .local v4, opts:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/util/ImageUtils;->getImageBounds(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Point;

    move-result-object v0

    .line 142
    .local v0, bounds:Landroid/graphics/Point;
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 143
    iget v6, v0, Landroid/graphics/Point;->x:I

    div-int/2addr v6, p2

    iget v7, v0, Landroid/graphics/Point;->y:I

    div-int/2addr v7, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 145
    const/4 v6, 0x0

    invoke-static {v3, v6, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 148
    .local v1, decodedBitmap:Landroid/graphics/Bitmap;
    invoke-static {p0, p1, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->rotateBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_23} :catch_2a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_23} :catch_33

    move-result-object v5

    .line 156
    if-eqz v3, :cond_29

    .line 157
    :try_start_26
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 153
    .end local v0           #bounds:Landroid/graphics/Point;
    .end local v1           #decodedBitmap:Landroid/graphics/Bitmap;
    .end local v4           #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_29
    :goto_29
    return-object v5

    .line 150
    :catch_2a
    move-exception v2

    .line 156
    .local v2, exception:Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_29

    .line 157
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_29

    .line 159
    .end local v2           #exception:Ljava/io/FileNotFoundException;
    :catch_31
    move-exception v6

    goto :goto_29

    .line 152
    :catch_33
    move-exception v2

    .line 156
    .local v2, exception:Ljava/io/IOException;
    if-eqz v3, :cond_29

    .line 157
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_39} :catch_31

    goto :goto_29

    .line 155
    .end local v2           #exception:Ljava/io/IOException;
    :catchall_3a
    move-exception v5

    .line 156
    if-eqz v3, :cond_40

    .line 157
    :try_start_3d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    .line 155
    :cond_40
    :goto_40
    throw v5

    .line 159
    :catch_41
    move-exception v6

    goto :goto_40
.end method

.method public static createCroppedBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .registers 26
    .parameter "resolver"
    .parameter "uri"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 177
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 178
    .local v10, inputStream:Ljava/io/InputStream;
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 179
    .local v12, opts:Landroid/graphics/BitmapFactory$Options;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 180
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-static {v10, v0, v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 181
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 185
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 186
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 187
    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v18, v0

    div-int v18, v18, p2

    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v19, v0

    div-int v19, v19, p3

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    iput v0, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 188
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-static {v10, v0, v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 189
    .local v14, srcBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 190
    if-nez v14, :cond_46

    .line 191
    const/4 v14, 0x0

    .line 231
    .end local v10           #inputStream:Ljava/io/InputStream;
    .end local v12           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v14           #srcBitmap:Landroid/graphics/Bitmap;
    :cond_45
    :goto_45
    return-object v14

    .line 193
    .restart local v10       #inputStream:Ljava/io/InputStream;
    .restart local v12       #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v14       #srcBitmap:Landroid/graphics/Bitmap;
    :cond_46
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 194
    .local v16, srcWidth:I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 196
    .local v15, srcHeight:I
    move/from16 v0, v16

    move/from16 v1, p2

    if-ne v0, v1, :cond_58

    move/from16 v0, p3

    if-eq v15, v0, :cond_45

    .line 200
    :cond_58
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 201
    .local v8, destBitmap:Landroid/graphics/Bitmap;
    if-nez v8, :cond_6b

    .line 202
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 203
    const/4 v14, 0x0

    goto :goto_45

    .line 206
    :cond_6b
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 207
    .local v5, canvas:Landroid/graphics/Canvas;
    move/from16 v7, v16

    .line 208
    .local v7, croppedWidth:I
    move v6, v15

    .line 211
    .local v6, croppedHeight:I
    mul-int v18, v16, p3

    mul-int v19, v15, p2

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_c4

    .line 213
    mul-int v18, v15, p2

    div-int v7, v18, p3

    .line 218
    :goto_81
    sub-int v18, v16, v7

    div-int/lit8 v11, v18, 0x2

    .line 219
    .local v11, left:I
    sub-int v18, v15, v6

    div-int/lit8 v17, v18, 0x2

    .line 220
    .local v17, top:I
    new-instance v13, Landroid/graphics/Rect;

    add-int v18, v11, v7

    add-int v19, v17, v6

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v13, v11, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 221
    .local v13, src:Landroid/graphics/Rect;
    sget-object v19, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    monitor-enter v19
    :try_end_9b
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_9b} :catch_cc
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9b} :catch_d0

    .line 222
    :try_start_9b
    new-instance v18, Landroid/graphics/Rect;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v20, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v5, v14, v13, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 223
    monitor-exit v19
    :try_end_b8
    .catchall {:try_start_9b .. :try_end_b8} :catchall_c9

    .line 224
    :try_start_b8
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 227
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v8}, Lcom/google/android/apps/plus/util/ImageUtils;->rotateBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v14

    goto :goto_45

    .line 216
    .end local v11           #left:I
    .end local v13           #src:Landroid/graphics/Rect;
    .end local v17           #top:I
    :cond_c4
    mul-int v18, v16, p3

    div-int v6, v18, p2
    :try_end_c8
    .catch Ljava/io/FileNotFoundException; {:try_start_b8 .. :try_end_c8} :catch_cc
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_c8} :catch_d0

    goto :goto_81

    .line 223
    .restart local v11       #left:I
    .restart local v13       #src:Landroid/graphics/Rect;
    .restart local v17       #top:I
    :catchall_c9
    move-exception v18

    :try_start_ca
    monitor-exit v19
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    :try_start_cb
    throw v18
    :try_end_cc
    .catch Ljava/io/FileNotFoundException; {:try_start_cb .. :try_end_cc} :catch_cc
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_cc} :catch_d0

    .line 228
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v6           #croppedHeight:I
    .end local v7           #croppedWidth:I
    .end local v8           #destBitmap:Landroid/graphics/Bitmap;
    .end local v10           #inputStream:Ljava/io/InputStream;
    .end local v11           #left:I
    .end local v12           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v13           #src:Landroid/graphics/Rect;
    .end local v14           #srcBitmap:Landroid/graphics/Bitmap;
    .end local v15           #srcHeight:I
    .end local v16           #srcWidth:I
    .end local v17           #top:I
    :catch_cc
    move-exception v9

    .line 229
    .local v9, exception:Ljava/io/FileNotFoundException;
    const/4 v14, 0x0

    goto/16 :goto_45

    .line 230
    .end local v9           #exception:Ljava/io/FileNotFoundException;
    :catch_d0
    move-exception v9

    .line 231
    .local v9, exception:Ljava/io/IOException;
    const/4 v14, 0x0

    goto/16 :goto_45
.end method

.method private static createPhotoName(Landroid/content/Context;J)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "dateTaken"

    .prologue
    .line 731
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 732
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f070037

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 735
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static decodeImageBytes(Ljava/lang/String;)[B
    .registers 4
    .parameter "string"

    .prologue
    .line 912
    const-string v1, "base64,"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 913
    .local v0, start:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 914
    const/4 v1, 0x0

    .line 917
    :goto_a
    return-object v1

    :cond_b
    add-int/lit8 v1, v0, 0x7

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    goto :goto_a
.end method

.method public static encodeImageBytes([B)Ljava/lang/String;
    .registers 4
    .parameter "imageBytes"

    .prologue
    .line 900
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 901
    .local v0, base64:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data:image/jpeg;base64,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCenterCroppedAndResizedUrl(IILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "width"
    .parameter "height"
    .parameter "url"

    .prologue
    .line 763
    if-nez p2, :cond_4

    .line 764
    const/4 v1, 0x0

    .line 775
    :goto_3
    return-object v1

    .line 767
    :cond_4
    invoke-static {p2}, Lcom/google/android/apps/plus/phone/FIFEUtil;->isFifeHostedUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 769
    .local v0, options:Ljava/lang/StringBuilder;
    const-string v1, "w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 770
    const-string v1, "-h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 771
    const-string v1, "-d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    const-string v1, "-n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/android/apps/plus/phone/FIFEUtil;->setImageUrlOptions(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 775
    .end local v0           #options:Ljava/lang/StringBuilder;
    :cond_38
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->setImageUrlSize(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static getCroppedAndResizedUrl(ILjava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "size"
    .parameter "url"

    .prologue
    .line 792
    invoke-static {p1}, Lcom/google/android/apps/plus/phone/FIFEUtil;->isFifeHostedUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 793
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/phone/FIFEUtil;->setImageUrlSize(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 796
    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->setImageUrlSize(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private static getExifRotation(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .registers 10
    .parameter "cr"
    .parameter "path"

    .prologue
    .line 965
    const/4 v2, 0x0

    .line 967
    .local v2, exif:Landroid/media/ExifInterface;
    :try_start_1
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_b

    .end local v2           #exif:Landroid/media/ExifInterface;
    .local v3, exif:Landroid/media/ExifInterface;
    move-object v2, v3

    .line 972
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :goto_7
    if-nez v2, :cond_25

    .line 973
    const/4 v0, 0x0

    .line 999
    :goto_a
    return v0

    .line 968
    :catch_b
    move-exception v1

    .line 969
    .local v1, e:Ljava/io/IOException;
    const-string v5, "ImageUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to create ExifInterface for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 977
    .end local v1           #e:Ljava/io/IOException;
    :cond_25
    const-string v5, "Orientation"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 980
    .local v4, orientation:I
    const/4 v0, 0x0

    .line 981
    .local v0, degrees:I
    packed-switch v4, :pswitch_data_3c

    :pswitch_30
    goto :goto_a

    .line 983
    :pswitch_31
    const/4 v0, 0x0

    .line 984
    goto :goto_a

    .line 987
    :pswitch_33
    const/16 v0, 0x5a

    .line 988
    goto :goto_a

    .line 991
    :pswitch_36
    const/16 v0, 0xb4

    .line 992
    goto :goto_a

    .line 995
    :pswitch_39
    const/16 v0, 0x10e

    goto :goto_a

    .line 981
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_31
        :pswitch_30
        :pswitch_36
        :pswitch_30
        :pswitch_30
        :pswitch_33
        :pswitch_30
        :pswitch_39
    .end packed-switch
.end method

.method private static getFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .registers 10
    .parameter "resolver"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 865
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 867
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_31

    .line 868
    const-string v0, "ImageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePath: query returned null cursor for uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :goto_30
    return-object v3

    .line 872
    :cond_31
    const/4 v7, 0x0

    .line 874
    .local v7, path:Ljava/lang/String;
    :try_start_32
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_54

    .line 875
    const-string v0, "ImageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePath: query returned empty cursor for uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_32 .. :try_end_50} :catchall_7d

    .line 886
    :goto_50
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_30

    .line 880
    :cond_54
    :try_start_54
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 881
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 882
    const-string v0, "ImageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePath: MediaColumns.DATA was empty for uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_54 .. :try_end_7c} :catchall_7d

    goto :goto_50

    .line 886
    :catchall_7d
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_82
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v7

    .line 889
    goto :goto_30
.end method

.method private static getImageBounds(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Point;
    .registers 7
    .parameter "resolver"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 838
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 839
    .local v1, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x0

    .line 842
    .local v0, inputStream:Ljava/io/InputStream;
    const/4 v2, 0x1

    :try_start_7
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 843
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 844
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 846
    new-instance v2, Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_20

    .line 849
    if-eqz v0, :cond_1f

    .line 850
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_29

    .line 846
    :cond_1f
    :goto_1f
    return-object v2

    .line 848
    :catchall_20
    move-exception v2

    .line 849
    if-eqz v0, :cond_26

    .line 850
    :try_start_23
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    .line 848
    :cond_26
    :goto_26
    throw v2

    .line 852
    :catch_27
    move-exception v3

    goto :goto_26

    :catch_29
    move-exception v3

    goto :goto_1f
.end method

.method public static getLowResBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "bitmap"

    .prologue
    const/4 v8, 0x0

    .line 807
    if-nez p0, :cond_5

    .line 808
    const/4 v3, 0x0

    .line 825
    :goto_4
    return-object v3

    .line 811
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v6, v7, :cond_3a

    .line 812
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 813
    .local v5, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 814
    .local v2, height:I
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 815
    .local v3, lowResBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 816
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v8, v8, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 817
    .local v4, src:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v8, v8, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 819
    .local v1, dest:Landroid/graphics/Rect;
    sget-object v7, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    monitor-enter v7

    .line 820
    :try_start_2d
    sget-object v6, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 821
    monitor-exit v7
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_37

    .line 822
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    .line 821
    :catchall_37
    move-exception v6

    :try_start_38
    monitor-exit v7
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v6

    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #dest:Landroid/graphics/Rect;
    .end local v2           #height:I
    .end local v3           #lowResBitmap:Landroid/graphics/Bitmap;
    .end local v4           #src:Landroid/graphics/Rect;
    .end local v5           #width:I
    :cond_3a
    move-object v3, p0

    .line 825
    goto :goto_4
.end method

.method public static getMaxThumbnailDimension(Landroid/content/Context;I)I
    .registers 7
    .parameter "context"
    .parameter "kind"

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x1

    .line 246
    packed-switch p1, :pswitch_data_3a

    .line 256
    :pswitch_5
    const-string v1, "ImageUtils"

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 257
    const-string v1, "ImageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal kind="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " specified; using MINI_KIND"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_2b
    invoke-static {p0, v4}, Lcom/google/android/apps/plus/util/ImageUtils;->getThumbnailSize(Landroid/content/Context;I)I

    move-result v0

    .line 262
    .local v0, maxDimension:I
    :goto_2f
    return v0

    .line 248
    .end local v0           #maxDimension:I
    :pswitch_30
    invoke-static {p0, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->getThumbnailSize(Landroid/content/Context;I)I

    move-result v0

    .line 249
    .restart local v0       #maxDimension:I
    goto :goto_2f

    .line 252
    .end local v0           #maxDimension:I
    :pswitch_35
    invoke-static {p0, v4}, Lcom/google/android/apps/plus/util/ImageUtils;->getThumbnailSize(Landroid/content/Context;I)I

    move-result v0

    .line 253
    .restart local v0       #maxDimension:I
    goto :goto_2f

    .line 246
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_35
        :pswitch_5
        :pswitch_30
    .end packed-switch
.end method

.method public static getResizedUrl(ILjava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "size"
    .parameter "url"

    .prologue
    .line 747
    invoke-static {p1}, Lcom/google/android/apps/plus/phone/FIFEUtil;->isFifeHostedUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 748
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/phone/FIFEUtil;->setImageUrlSize(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 750
    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->setImageUrlSize(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public static getThumbnailSize(Landroid/content/Context;I)I
    .registers 4
    .parameter "context"
    .parameter "kind"

    .prologue
    .line 274
    packed-switch p1, :pswitch_data_2c

    .line 285
    sget v0, Lcom/google/android/apps/plus/util/ImageUtils;->MINI_KIND_MAX_DIMENSION:I

    if-nez v0, :cond_14

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/util/ImageUtils;->MINI_KIND_MAX_DIMENSION:I

    .line 289
    :cond_14
    sget v0, Lcom/google/android/apps/plus/util/ImageUtils;->MINI_KIND_MAX_DIMENSION:I

    :goto_16
    return v0

    .line 276
    :pswitch_17
    sget v0, Lcom/google/android/apps/plus/util/ImageUtils;->MICRO_KIND_MAX_DIMENSION:I

    if-nez v0, :cond_28

    .line 277
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/util/ImageUtils;->MICRO_KIND_MAX_DIMENSION:I

    .line 280
    :cond_28
    sget v0, Lcom/google/android/apps/plus/util/ImageUtils;->MICRO_KIND_MAX_DIMENSION:I

    goto :goto_16

    .line 274
    nop

    :pswitch_data_2c
    .packed-switch 0x3
        :pswitch_17
    .end packed-switch
.end method

.method public static insertCameraPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 28
    .parameter "context"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 643
    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 645
    .local v14, f:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 646
    .local v7, dateTaken:J
    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/google/android/apps/plus/util/ImageUtils;->createPhotoName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    .line 647
    .local v20, photoName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 650
    .local v21, resolver:Landroid/content/ContentResolver;
    new-instance v22, Landroid/content/ContentValues;

    const/16 v23, 0x5

    invoke-direct/range {v22 .. v23}, Landroid/content/ContentValues;-><init>(I)V

    .line 651
    .local v22, values:Landroid/content/ContentValues;
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->getExifRotation(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v19

    .line 653
    .local v19, orientation:I
    const-string v23, "title"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v23, "_display_name"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".jpg"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v23, "datetaken"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 656
    const-string v23, "mime_type"

    const-string v24, "image/jpeg"

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v23, "orientation"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 664
    :try_start_6e
    sget-object v23, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_79} :catch_bd

    move-result-object v18

    .line 682
    .local v18, mediaUri:Landroid/net/Uri;
    :goto_7a
    :try_start_7a
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v17

    .line 683
    .local v17, imageOut:Ljava/io/OutputStream;
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_89
    .catchall {:try_start_7a .. :try_end_89} :catchall_104
    .catch Ljava/io/FileNotFoundException; {:try_start_7a .. :try_end_89} :catch_f7
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_89} :catch_109

    .line 686
    .local v16, imageIn:Ljava/io/FileInputStream;
    const/16 v9, 0x2800

    .line 687
    .local v9, downloadBufferSize:I
    const/16 v23, 0x2800

    :try_start_8d
    move/from16 v0, v23

    new-array v4, v0, [B

    .line 691
    .local v4, array:[B
    :goto_91
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I
    :try_end_96
    .catchall {:try_start_8d .. :try_end_96} :catchall_f2

    move-result v6

    .line 692
    .local v6, bytesRead:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v6, v0, :cond_e8

    .line 698
    :try_start_9d
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 705
    invoke-static/range {v18 .. v18}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isExternalMediaStoreUri(Landroid/net/Uri;)Z

    move-result v23

    if-eqz v23, :cond_b5

    .line 706
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->getThumbnail(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 708
    .local v5, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_b5
    .catchall {:try_start_9d .. :try_end_b5} :catchall_104
    .catch Ljava/io/FileNotFoundException; {:try_start_9d .. :try_end_b5} :catch_f7
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_b5} :catch_109

    .line 721
    .end local v4           #array:[B
    .end local v5           #bmp:Landroid/graphics/Bitmap;
    .end local v6           #bytesRead:I
    .end local v9           #downloadBufferSize:I
    .end local v16           #imageIn:Ljava/io/FileInputStream;
    .end local v17           #imageOut:Ljava/io/OutputStream;
    :cond_b5
    :goto_b5
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 724
    if-nez v18, :cond_129

    const/16 v23, 0x0

    .end local v18           #mediaUri:Landroid/net/Uri;
    :goto_bc
    return-object v23

    .line 665
    :catch_bd
    move-exception v11

    .line 668
    .local v11, e1:Ljava/lang/Exception;
    :try_start_be
    sget-object v23, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c9} :catch_cb

    move-result-object v18

    .restart local v18       #mediaUri:Landroid/net/Uri;
    goto :goto_7a

    .line 669
    .end local v18           #mediaUri:Landroid/net/Uri;
    :catch_cb
    move-exception v12

    .line 672
    .local v12, e2:Ljava/lang/Exception;
    :try_start_cc
    sget-object v23, Lcom/google/android/apps/plus/util/MediaStoreUtils;->PHONE_STORAGE_IMAGES_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_d7} :catch_d9

    move-result-object v18

    .restart local v18       #mediaUri:Landroid/net/Uri;
    goto :goto_7a

    .line 673
    .end local v18           #mediaUri:Landroid/net/Uri;
    :catch_d9
    move-exception v13

    .line 674
    .local v13, e3:Ljava/lang/Exception;
    const-string v23, "ImageUtils"

    const-string v24, "Failed to save image"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 675
    const/16 v23, 0x0

    goto :goto_bc

    .line 695
    .end local v11           #e1:Ljava/lang/Exception;
    .end local v12           #e2:Ljava/lang/Exception;
    .end local v13           #e3:Ljava/lang/Exception;
    .restart local v4       #array:[B
    .restart local v6       #bytesRead:I
    .restart local v9       #downloadBufferSize:I
    .restart local v16       #imageIn:Ljava/io/FileInputStream;
    .restart local v17       #imageOut:Ljava/io/OutputStream;
    .restart local v18       #mediaUri:Landroid/net/Uri;
    :cond_e8
    const/16 v23, 0x0

    :try_start_ea
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_f1
    .catchall {:try_start_ea .. :try_end_f1} :catchall_f2

    goto :goto_91

    .line 698
    .end local v4           #array:[B
    .end local v6           #bytesRead:I
    :catchall_f2
    move-exception v23

    :try_start_f3
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    throw v23
    :try_end_f7
    .catchall {:try_start_f3 .. :try_end_f7} :catchall_104
    .catch Ljava/io/FileNotFoundException; {:try_start_f3 .. :try_end_f7} :catch_f7
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_f7} :catch_109

    .line 711
    .end local v9           #downloadBufferSize:I
    .end local v16           #imageIn:Ljava/io/FileInputStream;
    .end local v17           #imageOut:Ljava/io/OutputStream;
    :catch_f7
    move-exception v15

    .line 712
    .local v15, fe:Ljava/io/FileNotFoundException;
    :try_start_f8
    const-string v23, "ImageUtils"

    const-string v24, "File not found"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 713
    throw v15
    :try_end_104
    .catchall {:try_start_f8 .. :try_end_104} :catchall_104

    .line 721
    .end local v15           #fe:Ljava/io/FileNotFoundException;
    :catchall_104
    move-exception v23

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    throw v23

    .line 714
    :catch_109
    move-exception v10

    .line 715
    .local v10, e:Ljava/lang/Exception;
    :try_start_10a
    const-string v23, "ImageUtils"

    const-string v24, "Failed to insert image"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 716
    if-eqz v18, :cond_b5

    .line 717
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_126
    .catchall {:try_start_10a .. :try_end_126} :catchall_104

    .line 718
    const/16 v18, 0x0

    goto :goto_b5

    .line 724
    .end local v10           #e:Ljava/lang/Exception;
    :cond_129
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_bc
.end method

.method public static resizeAndCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "inputBitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 434
    const-string v8, "ImageUtils"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 435
    const-string v8, "ImageUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "resizeAndCropBitmap: Input: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", output:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_47
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 443
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_51

    .line 444
    const/4 v0, 0x0

    .line 472
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_50
    return-object v0

    .line 447
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_51
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 448
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v8, p1, :cond_62

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eq v8, p2, :cond_b0

    .line 450
    :cond_62
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 451
    .local v3, croppedWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 452
    .local v2, croppedHeight:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    mul-int/2addr v8, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/2addr v9, p1

    if-le v8, v9, :cond_a8

    .line 454
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/2addr v8, p1

    div-int v3, v8, p2

    .line 460
    :goto_7d
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v8, v3

    div-int/lit8 v5, v8, 0x2

    .line 461
    .local v5, left:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v8, v2

    div-int/lit8 v7, v8, 0x2

    .line 462
    .local v7, top:I
    new-instance v6, Landroid/graphics/Rect;

    add-int v8, v5, v3

    add-int v9, v7, v2

    invoke-direct {v6, v5, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 464
    .local v6, src:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v4, v8, v9, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 465
    .local v4, dest:Landroid/graphics/Rect;
    sget-object v9, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    monitor-enter v9

    .line 466
    :try_start_9e
    sget-object v8, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p0, v6, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 467
    monitor-exit v9

    goto :goto_50

    :catchall_a5
    move-exception v8

    monitor-exit v9
    :try_end_a7
    .catchall {:try_start_9e .. :try_end_a7} :catchall_a5

    throw v8

    .line 457
    .end local v4           #dest:Landroid/graphics/Rect;
    .end local v5           #left:I
    .end local v6           #src:Landroid/graphics/Rect;
    .end local v7           #top:I
    :cond_a8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    mul-int/2addr v8, p2

    div-int v2, v8, p1

    goto :goto_7d

    .line 469
    .end local v2           #croppedHeight:I
    .end local v3           #croppedWidth:I
    :cond_b0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, p0, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_50
.end method

.method public static declared-synchronized resizeBitmap([BII)Landroid/graphics/Bitmap;
    .registers 28
    .parameter "imageBytes"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 486
    const-class v22, Lcom/google/android/apps/plus/util/ImageUtils;

    monitor-enter v22

    :try_start_3
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 487
    .local v10, dbo:Landroid/graphics/BitmapFactory$Options;
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 488
    const/16 v21, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-static {v0, v1, v2, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 490
    iget v13, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 491
    .local v13, nativeWidth:I
    iget v12, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 492
    .local v12, nativeHeight:I
    const-string v21, "ImageUtils"

    const/16 v23, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_76

    .line 493
    const-string v21, "ImageUtils"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "resizeBitmap: Input: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "x"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", resize to: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "x"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_76
    move/from16 v0, p1

    if-gt v13, v0, :cond_7e

    move/from16 v0, p2

    if-le v12, v0, :cond_e5

    .line 499
    :cond_7e
    mul-int v21, v13, p1

    div-int v21, v21, v12

    move/from16 v0, v21

    int-to-float v5, v0

    .line 500
    .local v5, bitmapWidth:F
    mul-int v21, v12, p2

    div-int v21, v21, v13

    move/from16 v0, v21

    int-to-float v4, v0

    .line 502
    .local v4, bitmapHeight:F
    int-to-float v0, v13

    move/from16 v21, v0

    div-float v21, v21, v5

    const/high16 v23, 0x3f80

    cmpl-float v21, v21, v23

    if-gtz v21, :cond_a2

    int-to-float v0, v12

    move/from16 v21, v0

    div-float v21, v21, v4

    const/high16 v23, 0x3f80

    cmpl-float v21, v21, v23

    if-lez v21, :cond_d3

    .line 504
    :cond_a2
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 505
    .local v14, options:Landroid/graphics/BitmapFactory$Options;
    float-to-int v0, v5

    move/from16 v21, v0

    div-int v21, v13, v21

    float-to-int v0, v4

    move/from16 v23, v0

    div-int v23, v12, v23

    move/from16 v0, v21

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v0, v21

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 507
    const/16 v21, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-static {v0, v1, v2, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_cd
    .catchall {:try_start_3 .. :try_end_cd} :catchall_1a5

    move-result-object v16

    .line 516
    .end local v4           #bitmapHeight:F
    .end local v5           #bitmapWidth:F
    .end local v14           #options:Landroid/graphics/BitmapFactory$Options;
    .local v16, srcBitmap:Landroid/graphics/Bitmap;
    :goto_ce
    if-nez v16, :cond_f7

    .line 517
    const/4 v6, 0x0

    .line 555
    :goto_d1
    monitor-exit v22

    return-object v6

    .line 510
    .end local v16           #srcBitmap:Landroid/graphics/Bitmap;
    .restart local v4       #bitmapHeight:F
    .restart local v5       #bitmapWidth:F
    :cond_d3
    const/16 v21, 0x0

    :try_start_d5
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v16

    .restart local v16       #srcBitmap:Landroid/graphics/Bitmap;
    goto :goto_ce

    .line 513
    .end local v4           #bitmapHeight:F
    .end local v5           #bitmapWidth:F
    .end local v16           #srcBitmap:Landroid/graphics/Bitmap;
    :cond_e5
    const/16 v21, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v16

    .restart local v16       #srcBitmap:Landroid/graphics/Bitmap;
    goto :goto_ce

    .line 521
    :cond_f7
    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 522
    .local v6, croppedBitmap:Landroid/graphics/Bitmap;
    if-nez v6, :cond_10a

    .line 523
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 524
    const/4 v6, 0x0

    goto :goto_d1

    .line 527
    :cond_10a
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 528
    .local v20, srcWidth:I
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 530
    .local v17, srcHeight:I
    move/from16 v9, v20

    .line 531
    .local v9, croppedWidth:I
    move/from16 v8, v17

    .line 532
    .local v8, croppedHeight:I
    mul-int v21, v13, p2

    mul-int v23, p1, v12

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_1a8

    .line 534
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    mul-int v21, v21, p1

    div-int v9, v21, p2

    .line 540
    :goto_128
    const-string v21, "ImageUtils"

    const/16 v23, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_160

    .line 541
    const-string v21, "ImageUtils"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "resizeBitmap: cropped: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "x"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_160
    sub-int v21, v20, v9

    div-int/lit8 v18, v21, 0x2

    .line 545
    .local v18, srcLeft:I
    sub-int v21, v17, v8

    div-int/lit8 v19, v21, 0x2

    .line 546
    .local v19, srcTop:I
    new-instance v15, Landroid/graphics/Rect;

    add-int v21, v18, v9

    add-int v23, v19, v8

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v23

    invoke-direct {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 547
    .local v15, src:Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 549
    .local v11, dest:Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 550
    .local v7, croppedCanvas:Landroid/graphics/Canvas;
    const v21, -0x1f1f20

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 551
    sget-object v21, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v15, v11, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 553
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1a3
    .catchall {:try_start_d5 .. :try_end_1a3} :catchall_1a5

    goto/16 :goto_d1

    .line 486
    .end local v6           #croppedBitmap:Landroid/graphics/Bitmap;
    .end local v7           #croppedCanvas:Landroid/graphics/Canvas;
    .end local v8           #croppedHeight:I
    .end local v9           #croppedWidth:I
    .end local v10           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v11           #dest:Landroid/graphics/Rect;
    .end local v12           #nativeHeight:I
    .end local v13           #nativeWidth:I
    .end local v15           #src:Landroid/graphics/Rect;
    .end local v16           #srcBitmap:Landroid/graphics/Bitmap;
    .end local v17           #srcHeight:I
    .end local v18           #srcLeft:I
    .end local v19           #srcTop:I
    .end local v20           #srcWidth:I
    :catchall_1a5
    move-exception v21

    monitor-exit v22

    throw v21

    .line 537
    .restart local v6       #croppedBitmap:Landroid/graphics/Bitmap;
    .restart local v8       #croppedHeight:I
    .restart local v9       #croppedWidth:I
    .restart local v10       #dbo:Landroid/graphics/BitmapFactory$Options;
    .restart local v12       #nativeHeight:I
    .restart local v13       #nativeWidth:I
    .restart local v16       #srcBitmap:Landroid/graphics/Bitmap;
    .restart local v17       #srcHeight:I
    .restart local v20       #srcWidth:I
    :cond_1a8
    :try_start_1a8
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    mul-int v21, v21, p2

    div-int v8, v21, p1
    :try_end_1b0
    .catchall {:try_start_1a8 .. :try_end_1b0} :catchall_1a5

    goto/16 :goto_128
.end method

.method public static declared-synchronized resizeBitmapToHeight([BI)[B
    .registers 16
    .parameter "imageBytes"
    .parameter "height"

    .prologue
    .line 567
    const-class v10, Lcom/google/android/apps/plus/util/ImageUtils;

    monitor-enter v10

    if-nez p0, :cond_7

    .line 620
    .end local p0
    :cond_5
    :goto_5
    monitor-exit v10

    return-object p0

    .line 571
    .restart local p0
    :cond_7
    :try_start_7
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 572
    .local v2, dbo:Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 573
    const/4 v9, 0x0

    array-length v11, p0

    invoke-static {p0, v9, v11, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 575
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 576
    .local v4, nativeWidth:I
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 577
    .local v3, nativeHeight:I
    const-string v9, "ImageUtils"

    const/4 v11, 0x3

    invoke-static {v9, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 578
    const-string v9, "ImageUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "scaleBitmap: Input: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", resize to: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_4d
    if-le v3, p1, :cond_5

    .line 586
    int-to-float v9, v4

    int-to-float v11, v3

    div-float/2addr v9, v11

    int-to-float v11, p1

    mul-float/2addr v9, v11

    float-to-int v8, v9

    .line 588
    .local v8, width:I
    div-int v9, v4, v8

    const/4 v11, 0x1

    if-gt v9, v11, :cond_5f

    div-int v9, v3, p1

    const/4 v11, 0x1

    if-le v9, v11, :cond_80

    .line 589
    :cond_5f
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 590
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    div-int v9, v4, v8

    div-int v11, v3, p1

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 591
    const/4 v9, 0x0

    array-length v11, p0

    invoke-static {p0, v9, v11, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 593
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 594
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 599
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_7c
    if-nez v0, :cond_87

    .line 600
    const/4 p0, 0x0

    goto :goto_5

    .line 596
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_80
    const/4 v9, 0x0

    array-length v11, p0

    invoke-static {p0, v9, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_7c

    .line 603
    :cond_87
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, p1, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 604
    .local v6, scaledBitmap:Landroid/graphics/Bitmap;
    if-nez v6, :cond_95

    .line 605
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 606
    const/4 p0, 0x0

    goto/16 :goto_5

    .line 609
    :cond_95
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 610
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v9, v11, v12, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13, v8, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v12, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v9, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 612
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 613
    const/4 v0, 0x0

    .line 615
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 616
    .local v7, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v6, v9, v11, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 617
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 618
    const/4 v6, 0x0

    .line 620
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_c4
    .catchall {:try_start_7 .. :try_end_c4} :catchall_c7

    move-result-object p0

    goto/16 :goto_5

    .line 567
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #nativeHeight:I
    .end local v4           #nativeWidth:I
    .end local v6           #scaledBitmap:Landroid/graphics/Bitmap;
    .end local v7           #stream:Ljava/io/ByteArrayOutputStream;
    .end local v8           #width:I
    :catchall_c7
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method public static resizeToSquareBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "inputBitmap"
    .parameter "size"

    .prologue
    .line 373
    sget v0, Lcom/google/android/apps/plus/util/ImageUtils;->NO_COLOR:I

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static resizeToSquareBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "inputBitmap"
    .parameter "size"
    .parameter "backgroundColor"

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 388
    const-string v6, "ImageUtils"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 389
    const-string v6, "ImageUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resizeToSquareBitmap: Input: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", output:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_4a
    :try_start_4a
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_4f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4a .. :try_end_4f} :catch_54

    move-result-object v0

    .line 402
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_6f

    move-object v0, v5

    .line 421
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_53
    return-object v0

    .line 397
    :catch_54
    move-exception v3

    .line 398
    .local v3, e:Ljava/lang/OutOfMemoryError;
    const-string v6, "ImageUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resizeToSquareBitmap OutOfMemoryError for image size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v5

    .line 399
    goto :goto_53

    .line 406
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_6f
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 407
    .local v1, canvas:Landroid/graphics/Canvas;
    sget v6, Lcom/google/android/apps/plus/util/ImageUtils;->NO_COLOR:I

    if-eq p2, v6, :cond_7b

    .line 408
    invoke-virtual {v1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 411
    :cond_7b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v6, p1, :cond_87

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v6, p1, :cond_a6

    .line 412
    :cond_87
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v9, v9, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 413
    .local v4, src:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v9, v9, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 414
    .local v2, dest:Landroid/graphics/Rect;
    sget-object v6, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    monitor-enter v6

    .line 415
    :try_start_9c
    sget-object v5, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p0, v4, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 416
    monitor-exit v6

    goto :goto_53

    :catchall_a3
    move-exception v5

    monitor-exit v6
    :try_end_a5
    .catchall {:try_start_9c .. :try_end_a5} :catchall_a3

    throw v5

    .line 418
    .end local v2           #dest:Landroid/graphics/Rect;
    .end local v4           #src:Landroid/graphics/Rect;
    :cond_a6
    invoke-virtual {v1, p0, v10, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_53
.end method

.method public static declared-synchronized resizeToSquareBitmap([BI)[B
    .registers 4
    .parameter "imageBytes"
    .parameter "size"

    .prologue
    .line 303
    const-class v1, Lcom/google/android/apps/plus/util/ImageUtils;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/google/android/apps/plus/util/ImageUtils;->NO_COLOR:I

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap([BII)[B
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized resizeToSquareBitmap([BII)[B
    .registers 15
    .parameter "imageBytes"
    .parameter "size"
    .parameter "backgroundColor"

    .prologue
    .line 317
    const-class v9, Lcom/google/android/apps/plus/util/ImageUtils;

    monitor-enter v9

    if-nez p0, :cond_7

    .line 361
    .end local p0
    :goto_5
    monitor-exit v9

    return-object p0

    .line 321
    .restart local p0
    :cond_7
    :try_start_7
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 322
    .local v1, dbo:Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 323
    const/4 v8, 0x0

    array-length v10, p0

    invoke-static {p0, v8, v10, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 325
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 326
    .local v3, nativeWidth:I
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 327
    .local v2, nativeHeight:I
    const-string v8, "ImageUtils"

    const/4 v10, 0x3

    invoke-static {v8, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 328
    const-string v8, "ImageUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scaleBitmap: Input: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", resize to: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_4d
    div-int v8, v3, p1

    div-int v10, v2, p1

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 334
    .local v5, sampleSize:I
    const/4 v8, 0x1

    if-le v5, v8, :cond_71

    .line 335
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 336
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 337
    const/4 v8, 0x0

    array-length v10, p0

    invoke-static {p0, v8, v10, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 339
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 340
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 345
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_6d
    if-nez v0, :cond_78

    .line 346
    const/4 p0, 0x0

    goto :goto_5

    .line 342
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_71
    const/4 v8, 0x0

    array-length v10, p0

    invoke-static {p0, v8, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_6d

    .line 349
    :cond_78
    invoke-static {v0, p1, p2}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 350
    .local v6, scaledBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 352
    if-nez v6, :cond_83

    .line 353
    const/4 p0, 0x0

    goto :goto_5

    .line 356
    :cond_83
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 357
    .local v7, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x50

    invoke-virtual {v6, v8, v10, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 358
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 359
    const/4 v6, 0x0

    .line 361
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_96
    .catchall {:try_start_7 .. :try_end_96} :catchall_99

    move-result-object p0

    goto/16 :goto_5

    .line 317
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v2           #nativeHeight:I
    .end local v3           #nativeWidth:I
    .end local v5           #sampleSize:I
    .end local v6           #scaledBitmap:Landroid/graphics/Bitmap;
    .end local v7           #stream:Ljava/io/ByteArrayOutputStream;
    :catchall_99
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method public static rotateBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "cr"
    .parameter "uri"
    .parameter "bmp"

    .prologue
    .line 1011
    if-eqz p2, :cond_10

    .line 1012
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/util/ImageUtils;->getFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1013
    .local v1, path:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->getExifRotation(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 1014
    .local v0, degrees:I
    if-eqz v0, :cond_10

    .line 1015
    invoke-static {p2, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1018
    .end local v0           #degrees:I
    .end local v1           #path:Ljava/lang/String;
    :cond_10
    return-object p2
.end method

.method private static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "bitmap"
    .parameter "degrees"

    .prologue
    const/high16 v6, 0x4000

    .line 1028
    if-eqz p1, :cond_29

    if-eqz p0, :cond_29

    .line 1029
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1030
    .local v5, m:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1031
    .local v3, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1032
    .local v4, h:I
    int-to-float v0, p1

    int-to-float v1, v3

    div-float/2addr v1, v6

    int-to-float v2, v4

    div-float/2addr v2, v6

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1035
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    :try_start_1f
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1036
    .local v7, rotatedBitmap:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_29

    .line 1037
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_28
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1f .. :try_end_28} :catch_2a

    .line 1038
    move-object p0, v7

    .line 1045
    .end local v3           #w:I
    .end local v4           #h:I
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #rotatedBitmap:Landroid/graphics/Bitmap;
    :cond_29
    :goto_29
    return-object p0

    .line 1040
    .restart local v3       #w:I
    .restart local v4       #h:I
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_2a
    move-exception v0

    goto :goto_29
.end method
