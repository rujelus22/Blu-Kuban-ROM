.class public Lcom/sec/android/app/ve/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_THUMBNAIL_HEIGHT:I = 0x90

.field private static final DEFAULT_THUMBNAIL_WIDTH:I = 0xb0

.field private static final INVALID_CHAR:[Ljava/lang/String; = null

.field public static final KENBURNS_FRAME_HEIGHT:I = 0x1e0

.field public static final KENBURNS_FRAME_WIDTH:I = 0x280

.field public static final LOW_STORAGE_THRESHOLD:J = 0xa00000L

.field private static final MAX_3MPIMAGE_SIZE_ALLOWED:I = 0x2dc000

.field private static final MAX_5MPIMAGE_SIZE_ALLOWED:I = 0x4c2300

.field private static final MAX_IMAGE_SIZE_ALLOWED:I = 0x79ec00

.field private static SHARE_CHECKBOX:Ljava/lang/String;

.field private static mRawThemeFileLoadThread:Ljava/lang/Thread;

.field private static mStorageToast:Landroid/widget/Toast;

.field private static mToastInvalidChar:Landroid/widget/Toast;

.field private static final rawResourcesID:[I

.field private static final transitionFiles:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    const-string v0, "SHARE_CHECKBOX"

    sput-object v0, Lcom/sec/android/app/ve/util/Utils;->SHARE_CHECKBOX:Ljava/lang/String;

    .line 90
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 91
    const-string v1, "\\"

    aput-object v1, v0, v3

    const-string v1, "/"

    aput-object v1, v0, v4

    const-string v1, ":"

    aput-object v1, v0, v5

    const-string v1, "*"

    aput-object v1, v0, v6

    const-string v1, "?"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ";"

    aput-object v2, v0, v1

    .line 90
    sput-object v0, Lcom/sec/android/app/ve/util/Utils;->INVALID_CHAR:[Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/util/Utils;->mToastInvalidChar:Landroid/widget/Toast;

    .line 96
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    .line 97
    const-string v1, "blackframe.jpg"

    aput-object v1, v0, v3

    .line 99
    const-string v1, "videoeditor_transition_bars_q.jpg"

    aput-object v1, v0, v4

    .line 101
    const-string v1, "videoeditor_transition_circle_q.jpg"

    aput-object v1, v0, v5

    .line 102
    const-string v1, "videoeditor_transition_disolve_q.jpg"

    aput-object v1, v0, v6

    .line 104
    const-string v1, "videoeditor_transition_downright_q.jpg"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 105
    const-string v2, "videoeditor_transition_fade_q.jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 113
    const-string v2, "videoeditor_transition_upright_q.jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 114
    const-string v2, "videoeditor_transition_wheel_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 116
    const-string v2, "videoeditor_transition_wiperight_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 117
    const-string v2, "videoeditor_transition_black_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 118
    const-string v2, "videoeditor_transition_movie_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 119
    const-string v2, "videoeditor_transition_party_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 120
    const-string v2, "videoeditor_transition_travel_q.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 123
    const-string v2, "videoeditor_transition_bars_d1.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 125
    const-string v2, "videoeditor_transition_circle_d1.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 126
    const-string v2, "videoeditor_transition_disolve_d1.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 128
    const-string v2, "videoeditor_transition_downright_d1.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 129
    const-string v2, "videoeditor_transition_fade_d1.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 137
    const-string v2, "videoeditor_transition_upright_d1.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 138
    const-string v2, "videoeditor_transition_wheel_d1.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 140
    const-string v2, "videoeditor_transition_wiperight_d1.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 141
    const-string v2, "videoeditor_transition_black_d1.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 142
    const-string v2, "videoeditor_transition_movie_d1.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 143
    const-string v2, "videoeditor_transition_party_d1.jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 144
    const-string v2, "videoeditor_transition_travel_d1.jpg"

    aput-object v2, v0, v1

    .line 96
    sput-object v0, Lcom/sec/android/app/ve/util/Utils;->transitionFiles:[Ljava/lang/String;

    .line 155
    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_de

    sput-object v0, Lcom/sec/android/app/ve/util/Utils;->rawResourcesID:[I

    .line 351
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/util/Utils;->mRawThemeFileLoadThread:Ljava/lang/Thread;

    .line 70
    return-void

    .line 155
    nop

    :array_de
    .array-data 0x4
        0x0t 0x0t 0x5t 0x7ft
        0x39t 0x0t 0x5t 0x7ft
        0x3dt 0x0t 0x5t 0x7ft
        0x3ft 0x0t 0x5t 0x7ft
        0x41t 0x0t 0x5t 0x7ft
        0x43t 0x0t 0x5t 0x7ft
        0x4bt 0x0t 0x5t 0x7ft
        0x4dt 0x0t 0x5t 0x7ft
        0x4ft 0x0t 0x5t 0x7ft
        0x3bt 0x0t 0x5t 0x7ft
        0x45t 0x0t 0x5t 0x7ft
        0x47t 0x0t 0x5t 0x7ft
        0x49t 0x0t 0x5t 0x7ft
        0x38t 0x0t 0x5t 0x7ft
        0x3ct 0x0t 0x5t 0x7ft
        0x3et 0x0t 0x5t 0x7ft
        0x40t 0x0t 0x5t 0x7ft
        0x42t 0x0t 0x5t 0x7ft
        0x4at 0x0t 0x5t 0x7ft
        0x4ct 0x0t 0x5t 0x7ft
        0x4et 0x0t 0x5t 0x7ft
        0x3at 0x0t 0x5t 0x7ft
        0x44t 0x0t 0x5t 0x7ft
        0x46t 0x0t 0x5t 0x7ft
        0x48t 0x0t 0x5t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _dirChecker(Ljava/lang/String;)V
    .registers 3
    .parameter "dir"

    .prologue
    .line 412
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_e

    .line 415
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 417
    :cond_e
    return-void
.end method

.method static synthetic access$0()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 96
    sget-object v0, Lcom/sec/android/app/ve/util/Utils;->transitionFiles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()[I
    .registers 1

    .prologue
    .line 155
    sget-object v0, Lcom/sec/android/app/ve/util/Utils;->rawResourcesID:[I

    return-object v0
.end method

.method static synthetic access$2()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 90
    sget-object v0, Lcom/sec/android/app/ve/util/Utils;->INVALID_CHAR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3()Landroid/widget/Toast;
    .registers 1

    .prologue
    .line 94
    sget-object v0, Lcom/sec/android/app/ve/util/Utils;->mToastInvalidChar:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$4(Landroid/widget/Toast;)V
    .registers 1
    .parameter

    .prologue
    .line 94
    sput-object p0, Lcom/sec/android/app/ve/util/Utils;->mToastInvalidChar:Landroid/widget/Toast;

    return-void
.end method

.method public static applyEffect(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "effect"
    .parameter "bitmap"

    .prologue
    .line 982
    if-nez p1, :cond_4

    .line 983
    const/4 v7, 0x0

    .line 1019
    :goto_3
    return-object v7

    .line 985
    :cond_4
    const/16 v0, 0x27

    if-ne p0, v0, :cond_a

    move-object v7, p1

    .line 986
    goto :goto_3

    .line 990
    :cond_a
    const/4 v6, 0x0

    .line 991
    .local v6, bitmap565:Landroid/graphics/Bitmap;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "applyefect before config -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 993
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_76

    .line 995
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 996
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 997
    const/4 p1, 0x0

    .line 1002
    :goto_34
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1004
    .local v7, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 1006
    .local v8, pixelBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v6, v8}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 1009
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    .line 1010
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1011
    const/4 v5, 0x1

    move v4, p0

    .line 1009
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/app/video/editor/external/NativeInterface;->applyEffectToVideoThumbnail([BIIII)[B

    move-result-object v9

    .line 1012
    .local v9, result:[B
    if-eqz v9, :cond_78

    .line 1013
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 1014
    invoke-virtual {v7, v8}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_3

    .line 999
    .end local v7           #bm:Landroid/graphics/Bitmap;
    .end local v8           #pixelBuffer:Ljava/nio/ByteBuffer;
    .end local v9           #result:[B
    :cond_76
    move-object v6, p1

    goto :goto_34

    .line 1016
    .restart local v7       #bm:Landroid/graphics/Bitmap;
    .restart local v8       #pixelBuffer:Ljava/nio/ByteBuffer;
    .restart local v9       #result:[B
    :cond_78
    const-string v0, "<<<<<<< retouch effect GOT NULL DATA FROM ENGINE >>>>>>>>"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static checkStorage()Z
    .registers 7

    .prologue
    .line 615
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 616
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    mul-long v0, v3, v5

    .line 618
    .local v0, bytesAvailable:J
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Space:::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 619
    const-wide/32 v3, 0xa00000

    cmp-long v3, v0, v3

    if-gez v3, :cond_4b

    .line 620
    const-string v3, "PLA:::Device storage low"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 621
    const/4 v3, 0x1

    .line 623
    :goto_4a
    return v3

    :cond_4b
    const/4 v3, 0x0

    goto :goto_4a
.end method

.method public static copyBitmapLocally(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 23
    .parameter "lBitmap"

    .prologue
    .line 1336
    if-eqz p0, :cond_ca

    .line 1339
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 1340
    .local v17, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 1342
    .local v14, height:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1343
    .local v4, DEFAULT_THUMBNAIL_WIDTH:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1345
    .local v3, DEFAULT_THUMBNAIL_HEIGHT:I
    div-int/lit8 v12, v17, 0x2

    .line 1346
    .local v12, focusX:I
    div-int/lit8 v13, v14, 0x2

    .line 1353
    .local v13, focusY:I
    mul-int v18, v4, v14

    mul-int v19, v3, v17

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_93

    .line 1355
    mul-int v18, v4, v14

    div-int v7, v18, v3

    .line 1356
    .local v7, cropWidth:I
    const/16 v18, 0x0

    div-int/lit8 v19, v7, 0x2

    sub-int v19, v12, v19

    sub-int v20, v17, v7

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1357
    .local v8, cropX:I
    const/4 v9, 0x0

    .line 1358
    .local v9, cropY:I
    move v6, v14

    .line 1359
    .local v6, cropHeight:I
    int-to-float v0, v4

    move/from16 v18, v0

    int-to-float v0, v14

    move/from16 v19, v0

    div-float v16, v18, v19

    .line 1368
    .local v16, scaleFactor:F
    :goto_3e
    const-string v18, "Before creating final bitmap"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1370
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v18

    invoke-static {v4, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1371
    .local v11, finalBitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1372
    .local v5, canvas:Landroid/graphics/Canvas;
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 1373
    .local v15, paint:Landroid/graphics/Paint;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1374
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1376
    new-instance v18, Landroid/graphics/Rect;

    add-int v19, v8, v7

    add-int v20, v9, v6

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v8, v9, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v19, Landroid/graphics/Rect;

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 1377
    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1376
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v5, v0, v1, v2, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1378
    const-string v18, "After creating final bitmap and recycling"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1380
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1387
    .end local v3           #DEFAULT_THUMBNAIL_HEIGHT:I
    .end local v4           #DEFAULT_THUMBNAIL_WIDTH:I
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v6           #cropHeight:I
    .end local v7           #cropWidth:I
    .end local v8           #cropX:I
    .end local v9           #cropY:I
    .end local v11           #finalBitmap:Landroid/graphics/Bitmap;
    .end local v12           #focusX:I
    .end local v13           #focusY:I
    .end local v14           #height:I
    .end local v15           #paint:Landroid/graphics/Paint;
    .end local v16           #scaleFactor:F
    .end local v17           #width:I
    :goto_92
    return-object v11

    .line 1362
    .restart local v3       #DEFAULT_THUMBNAIL_HEIGHT:I
    .restart local v4       #DEFAULT_THUMBNAIL_WIDTH:I
    .restart local v12       #focusX:I
    .restart local v13       #focusY:I
    .restart local v14       #height:I
    .restart local v17       #width:I
    :cond_93
    mul-int v18, v3, v17

    div-int v6, v18, v4

    .line 1363
    .restart local v6       #cropHeight:I
    const/16 v18, 0x0

    div-int/lit8 v19, v6, 0x2

    sub-int v19, v13, v19

    sub-int v20, v14, v6

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a6} :catch_b5

    move-result v9

    .line 1364
    .restart local v9       #cropY:I
    const/4 v8, 0x0

    .line 1365
    .restart local v8       #cropX:I
    move/from16 v7, v17

    .line 1366
    .restart local v7       #cropWidth:I
    int-to-float v0, v4

    move/from16 v18, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v16, v18, v19

    .restart local v16       #scaleFactor:F
    goto :goto_3e

    .line 1383
    .end local v3           #DEFAULT_THUMBNAIL_HEIGHT:I
    .end local v4           #DEFAULT_THUMBNAIL_WIDTH:I
    .end local v6           #cropHeight:I
    .end local v7           #cropWidth:I
    .end local v8           #cropX:I
    .end local v9           #cropY:I
    .end local v12           #focusX:I
    .end local v13           #focusY:I
    .end local v14           #height:I
    .end local v16           #scaleFactor:F
    .end local v17           #width:I
    :catch_b5
    move-exception v10

    .line 1384
    .local v10, e:Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Exception Utils copyBitmapLocally"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .end local v10           #e:Ljava/lang/Exception;
    :cond_ca
    move-object/from16 v11, p0

    .line 1387
    goto :goto_92
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 8
    .parameter "sourceFile"
    .parameter "destFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1411
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1412
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 1415
    :cond_9
    const/4 v1, 0x0

    .line 1416
    .local v1, source:Ljava/nio/channels/FileChannel;
    const/4 v0, 0x0

    .line 1418
    .local v0, destination:Ljava/nio/channels/FileChannel;
    :try_start_b
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 1419
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1420
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_31

    .line 1423
    if-eqz v1, :cond_2b

    .line 1424
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 1426
    :cond_2b
    if-eqz v0, :cond_30

    .line 1427
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 1430
    :cond_30
    return-void

    .line 1422
    :catchall_31
    move-exception v2

    .line 1423
    if-eqz v1, :cond_37

    .line 1424
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 1426
    :cond_37
    if-eqz v0, :cond_3c

    .line 1427
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 1429
    :cond_3c
    throw v2
.end method

.method public static deepCopy(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .parameter "object"

    .prologue
    .line 1024
    const-string v6, "Deeep Copy start"

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1025
    const/4 v3, 0x0

    .line 1027
    .local v3, obj:Ljava/lang/Object;
    :try_start_6
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1028
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1029
    .local v5, oos:Ljava/io/ObjectOutputStream;
    invoke-virtual {v5, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1030
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->flush()V

    .line 1031
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V

    .line 1033
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1034
    .local v0, bis:Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1035
    .local v4, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 1036
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2e} :catch_2f

    .line 1043
    .end local v0           #bis:Ljava/io/ByteArrayInputStream;
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #obj:Ljava/lang/Object;
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .end local v5           #oos:Ljava/io/ObjectOutputStream;
    :goto_2e
    return-object v3

    .line 1039
    :catch_2f
    move-exception v2

    .line 1040
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e
.end method

.method public static getBitmapForEffetApply(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "aFlepath"

    .prologue
    .line 512
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getCheckBoxValue(Landroid/content/Context;)Z
    .registers 4
    .parameter "mContext"

    .prologue
    .line 226
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 227
    .local v0, preferences:Landroid/content/SharedPreferences;
    sget-object v1, Lcom/sec/android/app/ve/util/Utils;->SHARE_CHECKBOX:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getEditTextFilter(Landroid/content/Context;)[Landroid/text/InputFilter;
    .registers 5
    .parameter "ctx"

    .prologue
    .line 1434
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 1435
    .local v0, FilterArray:[Landroid/text/InputFilter;
    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 1436
    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/app/ve/util/Utils$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/ve/util/Utils$2;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 1478
    return-object v0
.end method

.method public static getImageBitmap(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "filePath"
    .parameter "context"

    .prologue
    .line 419
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/ve/util/Utils;->getImageBitmap(Ljava/lang/String;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getImageBitmap(Ljava/lang/String;Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "filePath"
    .parameter "context"
    .parameter "kind"

    .prologue
    .line 427
    const-wide/16 v9, 0x0

    .line 452
    .local v9, id:J
    const/4 v0, 0x0

    .line 454
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_3
    invoke-static {p0, p2}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_6} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_75

    move-result-object v0

    .line 467
    :goto_7
    if-eqz v0, :cond_6c

    .line 469
    :try_start_9
    invoke-static {p0}, Lcom/sec/android/app/ve/util/Utils;->getRotateDegree(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6e

    .line 472
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 474
    .local v5, mtx:Landroid/graphics/Matrix;
    invoke-static {p0}, Lcom/sec/android/app/ve/util/Utils;->getRotateDegree(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 477
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 478
    .local v11, lFinalBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 505
    .end local v5           #mtx:Landroid/graphics/Matrix;
    .end local v11           #lFinalBitmap:Landroid/graphics/Bitmap;
    :goto_2e
    return-object v11

    .line 455
    :catch_2f
    move-exception v7

    .line 456
    .local v7, e:Ljava/lang/OutOfMemoryError;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got out of memory Utils getImageBitmap"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 457
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 458
    .local v12, mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0}, Lcom/sec/android/app/ve/util/Utils;->getImageSampleSize(Ljava/lang/String;)I

    move-result v1

    iput v1, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_4d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_4d} :catch_66
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_4d} :catch_75

    .line 461
    :try_start_4d
    invoke-static {p0, v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_50
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4d .. :try_end_50} :catch_52
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_75

    move-result-object v0

    goto :goto_7

    .line 462
    :catch_52
    move-exception v8

    .line 463
    .local v8, e1:Ljava/lang/OutOfMemoryError;
    :try_start_53
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got out of memory Utils getImageBitmap decode file with options"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/OutOfMemoryError; {:try_start_53 .. :try_end_65} :catch_66
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_65} :catch_75

    goto :goto_7

    .line 496
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    .end local v8           #e1:Ljava/lang/OutOfMemoryError;
    .end local v12           #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    :catch_66
    move-exception v7

    .line 497
    .restart local v7       #e:Ljava/lang/OutOfMemoryError;
    const-string v1, "Got Outofmemory error while creating Bitmap"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 505
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    :cond_6c
    :goto_6c
    const/4 v11, 0x0

    goto :goto_2e

    .line 484
    :cond_6e
    :try_start_6e
    const-string v1, "Not rotating bitmap"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6e .. :try_end_73} :catch_66
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_73} :catch_75

    move-object v11, v0

    .line 485
    goto :goto_2e

    .line 499
    :catch_75
    move-exception v7

    .line 500
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6c
.end method

.method public static getImageFilePathByUri(Landroid/net/Uri;)Ljava/lang/String;
    .registers 14
    .parameter "uri"

    .prologue
    .line 698
    const-wide/16 v9, 0x0

    .line 699
    .local v9, id:J
    const/4 v11, 0x0

    .line 702
    .local v11, lFilepath:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 704
    .local v2, cols:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 708
    .local v6, c:Landroid/database/Cursor;
    :try_start_c
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 711
    if-eqz v6, :cond_38

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_38

    .line 713
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 715
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_4e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_30} :catch_3e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c .. :try_end_30} :catch_46

    move-result-object v11

    .line 731
    :goto_31
    if-eqz v6, :cond_36

    .line 732
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_36
    move-object v12, v11

    .line 735
    .end local v11           #lFilepath:Ljava/lang/String;
    .local v12, lFilepath:Ljava/lang/String;
    :goto_37
    return-object v12

    .line 719
    .end local v12           #lFilepath:Ljava/lang/String;
    .restart local v11       #lFilepath:Ljava/lang/String;
    :cond_38
    :try_start_38
    const-string v0, "getImageFilePathByUri curson is null"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_4e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_38 .. :try_end_3d} :catch_3e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_38 .. :try_end_3d} :catch_46

    goto :goto_31

    .line 721
    :catch_3e
    move-exception v7

    .line 731
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    if-eqz v6, :cond_44

    .line 732
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_44
    move-object v12, v11

    .line 723
    .end local v11           #lFilepath:Ljava/lang/String;
    .restart local v12       #lFilepath:Ljava/lang/String;
    goto :goto_37

    .line 725
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    .end local v12           #lFilepath:Ljava/lang/String;
    .restart local v11       #lFilepath:Ljava/lang/String;
    :catch_46
    move-exception v8

    .line 731
    .local v8, ex:Ljava/lang/UnsupportedOperationException;
    if-eqz v6, :cond_4c

    .line 732
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4c
    move-object v12, v11

    .line 727
    .end local v11           #lFilepath:Ljava/lang/String;
    .restart local v12       #lFilepath:Ljava/lang/String;
    goto :goto_37

    .line 730
    .end local v8           #ex:Ljava/lang/UnsupportedOperationException;
    .end local v12           #lFilepath:Ljava/lang/String;
    .restart local v11       #lFilepath:Ljava/lang/String;
    :catchall_4e
    move-exception v0

    .line 731
    if-eqz v6, :cond_54

    .line 732
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 733
    :cond_54
    throw v0
.end method

.method public static getImageSampleSize(Ljava/lang/String;)I
    .registers 8
    .parameter "aFilepath"

    .prologue
    .line 1294
    const/4 v4, 0x2

    .line 1297
    .local v4, sampling:I
    :try_start_1
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1301
    .local v1, lExif:Landroid/media/ExifInterface;
    const-string v5, "ImageWidth"

    const/16 v6, 0x64

    invoke-virtual {v1, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 1303
    .local v3, lWidth:I
    const-string v5, "ImageLength"

    const/16 v6, 0x64

    invoke-virtual {v1, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_46

    move-result v2

    .line 1307
    .local v2, lHeight:I
    mul-int v5, v3, v2

    const v6, 0x79ec00

    if-lt v5, v6, :cond_33

    .line 1308
    const/16 v4, 0xc

    .line 1316
    :cond_1f
    :goto_1f
    const/4 v1, 0x0

    .line 1328
    .end local v1           #lExif:Landroid/media/ExifInterface;
    .end local v2           #lHeight:I
    .end local v3           #lWidth:I
    :goto_20
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getImageSampleSize -->"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1330
    return v4

    .line 1309
    .restart local v1       #lExif:Landroid/media/ExifInterface;
    .restart local v2       #lHeight:I
    .restart local v3       #lWidth:I
    :cond_33
    mul-int v5, v3, v2

    const v6, 0x4c2300

    if-lt v5, v6, :cond_3d

    .line 1310
    const/16 v4, 0x8

    goto :goto_1f

    .line 1311
    :cond_3d
    mul-int v5, v3, v2

    const v6, 0x2dc000

    if-lt v5, v6, :cond_1f

    .line 1314
    const/4 v4, 0x4

    goto :goto_1f

    .line 1322
    .end local v1           #lExif:Landroid/media/ExifInterface;
    .end local v2           #lHeight:I
    .end local v3           #lWidth:I
    :catch_46
    move-exception v0

    .line 1323
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method public static getLatestCapturedImage()Ljava/lang/String;
    .registers 14

    .prologue
    .line 741
    const/4 v9, 0x0

    .line 742
    .local v9, lDate:Ljava/sql/Date;
    const/4 v11, 0x0

    .line 743
    .local v11, lFilePath:Ljava/lang/String;
    const/4 v0, 0x4

    :try_start_3
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 744
    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    .line 746
    const-string v1, "date_added"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    .line 747
    const-string v1, "bucket_display_name"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    .line 748
    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 751
    .local v2, p1:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 752
    .local v8, lBuilder:Ljava/lang/StringBuilder;
    const-string v0, "bucket_display_name = ?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 756
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 757
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v13, "Camera"

    aput-object v13, v4, v5

    .line 758
    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v13, 0x1

    aget-object v13, v2, v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, " DESC"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 754
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 759
    .local v6, c1:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 760
    new-instance v10, Ljava/sql/Date;

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-direct {v10, v0, v1}, Ljava/sql/Date;-><init>(J)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_63} :catch_78

    .line 761
    .end local v9           #lDate:Ljava/sql/Date;
    .local v10, lDate:Ljava/sql/Date;
    const/4 v0, 0x2

    :try_start_64
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 762
    .local v12, lString:Ljava/lang/String;
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_71} :catch_7f

    move-result-object v11

    move-object v9, v10

    .line 769
    .end local v10           #lDate:Ljava/sql/Date;
    .end local v12           #lString:Ljava/lang/String;
    .restart local v9       #lDate:Ljava/sql/Date;
    :cond_73
    :try_start_73
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_78

    move-object v0, v11

    .line 775
    .end local v2           #p1:[Ljava/lang/String;
    .end local v6           #c1:Landroid/database/Cursor;
    .end local v8           #lBuilder:Ljava/lang/StringBuilder;
    :goto_77
    return-object v0

    .line 772
    :catch_78
    move-exception v7

    .line 773
    .local v7, e:Ljava/lang/Exception;
    :goto_79
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 775
    const-string v0, ""

    goto :goto_77

    .line 772
    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #lDate:Ljava/sql/Date;
    .restart local v2       #p1:[Ljava/lang/String;
    .restart local v6       #c1:Landroid/database/Cursor;
    .restart local v8       #lBuilder:Ljava/lang/StringBuilder;
    .restart local v10       #lDate:Ljava/sql/Date;
    :catch_7f
    move-exception v7

    move-object v9, v10

    .end local v10           #lDate:Ljava/sql/Date;
    .restart local v9       #lDate:Ljava/sql/Date;
    goto :goto_79
.end method

.method public static getReflectionImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 30
    .parameter "bitmap"
    .parameter "aReflHeight"
    .parameter "aReflGap"

    .prologue
    .line 287
    move-object/from16 v1, p0

    .line 288
    .local v1, originalImage:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_c9

    .line 290
    :try_start_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 291
    .local v4, width:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    .line 293
    .local v24, height:I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ImageHeight:::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "      "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v3, v24, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 295
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 296
    .local v6, matrix:Landroid/graphics/Matrix;
    const/high16 v2, 0x3f80

    const/high16 v3, -0x4080

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 298
    sub-int v23, v24, p1

    .line 299
    .local v23, finalHeight:I
    if-gtz v23, :cond_3e

    .line 300
    move/from16 v23, v24

    .line 303
    :cond_3e
    const/4 v2, 0x0

    .line 304
    sub-int v3, v24, p1

    if-gtz v3, :cond_bf

    div-int/lit8 v3, v24, 0x2

    :goto_45
    sub-int v5, v24, p1

    if-gtz v5, :cond_c2

    div-int/lit8 v5, v24, 0x2

    :goto_4b
    const/4 v7, 0x0

    .line 303
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 307
    .local v26, reflectionImage:Landroid/graphics/Bitmap;
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 306
    invoke-static {v4, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 308
    .local v21, bitmapWithReflection:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 309
    .local v7, canvas:Landroid/graphics/Canvas;
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 310
    .local v12, deafaultPaint:Landroid/graphics/Paint;
    const/4 v8, 0x0

    const/4 v9, 0x0

    int-to-float v10, v4

    add-int v2, v24, p2

    int-to-float v11, v2

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 311
    const/4 v2, 0x0

    move/from16 v0, p2

    int-to-float v3, v0

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v7, v0, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 312
    new-instance v25, Landroid/graphics/Paint;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Paint;-><init>()V

    .line 313
    .local v25, paint:Landroid/graphics/Paint;
    new-instance v13, Landroid/graphics/LinearGradient;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 314
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int v2, v2, p2

    int-to-float v0, v2

    move/from16 v17, v0

    const v18, 0x70ffffff

    .line 315
    const v19, 0xffffff

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 313
    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 316
    .local v13, shader:Landroid/graphics/LinearGradient;
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 317
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 318
    const/4 v15, 0x0

    const/16 v16, 0x0

    int-to-float v0, v4

    move/from16 v17, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 319
    add-int v2, v2, p2

    int-to-float v0, v2

    move/from16 v18, v0

    move-object v14, v7

    move-object/from16 v19, v25

    .line 318
    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_be} :catch_c5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_be} :catch_cc

    .line 329
    .end local v4           #width:I
    .end local v6           #matrix:Landroid/graphics/Matrix;
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v12           #deafaultPaint:Landroid/graphics/Paint;
    .end local v13           #shader:Landroid/graphics/LinearGradient;
    .end local v21           #bitmapWithReflection:Landroid/graphics/Bitmap;
    .end local v23           #finalHeight:I
    .end local v24           #height:I
    .end local v25           #paint:Landroid/graphics/Paint;
    .end local v26           #reflectionImage:Landroid/graphics/Bitmap;
    :goto_be
    return-object v21

    .line 304
    .restart local v4       #width:I
    .restart local v6       #matrix:Landroid/graphics/Matrix;
    .restart local v23       #finalHeight:I
    .restart local v24       #height:I
    :cond_bf
    sub-int v3, v24, p1

    goto :goto_45

    :cond_c2
    move/from16 v5, p1

    goto :goto_4b

    .line 323
    .end local v4           #width:I
    .end local v6           #matrix:Landroid/graphics/Matrix;
    .end local v23           #finalHeight:I
    .end local v24           #height:I
    :catch_c5
    move-exception v22

    .line 324
    .local v22, e:Ljava/lang/Exception;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    .line 329
    .end local v22           #e:Ljava/lang/Exception;
    :cond_c9
    :goto_c9
    const/16 v21, 0x0

    goto :goto_be

    .line 326
    :catch_cc
    move-exception v22

    .line 327
    .local v22, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "Got Outofmemory error while creating Bitmap"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_c9
.end method

.method public static getReflectionImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 29
    .parameter "aOriginImgPath"
    .parameter "aReflHeight"
    .parameter "aReflGap"

    .prologue
    .line 248
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 249
    .local v1, originalImage:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 250
    .local v4, width:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    .line 253
    .local v23, height:I
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 254
    .local v6, matrix:Landroid/graphics/Matrix;
    const/high16 v2, 0x3f80

    const/high16 v3, -0x4080

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 256
    const/4 v2, 0x0

    .line 257
    sub-int v3, v23, p1

    const/4 v7, 0x0

    move/from16 v5, p1

    .line 256
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 260
    .local v25, reflectionImage:Landroid/graphics/Bitmap;
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 259
    invoke-static {v4, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 261
    .local v21, bitmapWithReflection:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 262
    .local v7, canvas:Landroid/graphics/Canvas;
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 263
    .local v12, deafaultPaint:Landroid/graphics/Paint;
    const/4 v8, 0x0

    const/4 v9, 0x0

    int-to-float v10, v4

    add-int v2, v23, p2

    int-to-float v11, v2

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 264
    const/4 v2, 0x0

    move/from16 v0, p2

    int-to-float v3, v0

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v7, v0, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 265
    new-instance v24, Landroid/graphics/Paint;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Paint;-><init>()V

    .line 266
    .local v24, paint:Landroid/graphics/Paint;
    new-instance v13, Landroid/graphics/LinearGradient;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 267
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int v2, v2, p2

    int-to-float v0, v2

    move/from16 v17, v0

    const v18, 0x70ffffff

    .line 268
    const v19, 0xffffff

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 266
    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 269
    .local v13, shader:Landroid/graphics/LinearGradient;
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 270
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 271
    const/4 v15, 0x0

    const/16 v16, 0x0

    int-to-float v0, v4

    move/from16 v17, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 272
    add-int v2, v2, p2

    int-to-float v0, v2

    move/from16 v18, v0

    move-object v14, v7

    move-object/from16 v19, v24

    .line 271
    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_90
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_90} :catch_91

    .line 277
    .end local v1           #originalImage:Landroid/graphics/Bitmap;
    .end local v4           #width:I
    .end local v6           #matrix:Landroid/graphics/Matrix;
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v12           #deafaultPaint:Landroid/graphics/Paint;
    .end local v13           #shader:Landroid/graphics/LinearGradient;
    .end local v21           #bitmapWithReflection:Landroid/graphics/Bitmap;
    .end local v23           #height:I
    .end local v24           #paint:Landroid/graphics/Paint;
    .end local v25           #reflectionImage:Landroid/graphics/Bitmap;
    :goto_90
    return-object v21

    .line 274
    :catch_91
    move-exception v22

    .line 275
    .local v22, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "Got Outofmemory error while creating Bitmap"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 277
    const/16 v21, 0x0

    goto :goto_90
.end method

.method private static getRotateDegree(Ljava/lang/String;)I
    .registers 7
    .parameter "path"

    .prologue
    .line 583
    const/4 v3, 0x0

    .line 587
    .local v3, rotation:I
    :try_start_1
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 591
    .local v1, exif:Landroid/media/ExifInterface;
    const-string v4, "Orientation"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_32

    move-result v2

    .line 593
    .local v2, exifOrientation:I
    const/4 v4, 0x6

    if-ne v2, v4, :cond_25

    .line 594
    const/16 v3, 0x5a

    .line 607
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local v2           #exifOrientation:I
    :cond_12
    :goto_12
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "before returning in getRotateDegree -->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 608
    return v3

    .line 595
    .restart local v1       #exif:Landroid/media/ExifInterface;
    .restart local v2       #exifOrientation:I
    :cond_25
    const/4 v4, 0x3

    if-ne v2, v4, :cond_2b

    .line 596
    const/16 v3, 0xb4

    goto :goto_12

    .line 597
    :cond_2b
    const/16 v4, 0x8

    if-ne v2, v4, :cond_12

    .line 598
    const/16 v3, 0x10e

    goto :goto_12

    .line 602
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local v2           #exifOrientation:I
    :catch_32
    move-exception v0

    .line 604
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12
.end method

.method public static getVideoDurationbyPath(Ljava/lang/String;)J
    .registers 15
    .parameter "filePath"

    .prologue
    const-wide/16 v12, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 834
    const-wide/16 v9, 0x0

    .line 835
    .local v9, id:J
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "duration"

    aput-object v0, v2, v1

    .line 836
    .local v2, cols:[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 837
    .local v11, where:Ljava/lang/StringBuilder;
    const-string v0, "_data = ?"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    const/4 v6, 0x0

    .line 843
    .local v6, c:Landroid/database/Cursor;
    :try_start_17
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 845
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 846
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    .line 847
    const/4 v5, 0x0

    .line 843
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 848
    if-eqz v6, :cond_40

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_40

    .line 850
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 851
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3f
    .catchall {:try_start_17 .. :try_end_3f} :catchall_57
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_3f} :catch_47
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_17 .. :try_end_3f} :catch_4f

    move-result-wide v9

    .line 866
    :cond_40
    if-eqz v6, :cond_45

    .line 867
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_45
    move-wide v0, v9

    .line 870
    :goto_46
    return-wide v0

    .line 854
    :catch_47
    move-exception v7

    .line 866
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    if-eqz v6, :cond_4d

    .line 867
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4d
    move-wide v0, v12

    .line 857
    goto :goto_46

    .line 859
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catch_4f
    move-exception v8

    .line 866
    .local v8, ex:Ljava/lang/UnsupportedOperationException;
    if-eqz v6, :cond_55

    .line 867
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_55
    move-wide v0, v12

    .line 862
    goto :goto_46

    .line 865
    .end local v8           #ex:Ljava/lang/UnsupportedOperationException;
    :catchall_57
    move-exception v0

    .line 866
    if-eqz v6, :cond_5d

    .line 867
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 868
    :cond_5d
    throw v0
.end method

.method public static getVideoFileInfoByUri(Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 14
    .parameter "uri"

    .prologue
    .line 659
    const-wide/16 v10, 0x0

    .line 660
    .local v10, id:J
    const/4 v12, 0x0

    .line 663
    .local v12, lFilepath:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "duration"

    aput-object v1, v2, v0

    .line 665
    .local v2, cols:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 669
    .local v6, c:Landroid/database/Cursor;
    :try_start_11
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_20} :catch_23
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_11 .. :try_end_20} :catch_26

    move-result-object v6

    move-object v7, v6

    .line 693
    .end local v6           #c:Landroid/database/Cursor;
    .local v7, c:Landroid/database/Cursor;
    :goto_22
    return-object v7

    .line 679
    .end local v7           #c:Landroid/database/Cursor;
    .restart local v6       #c:Landroid/database/Cursor;
    :catch_23
    move-exception v8

    .local v8, e:Landroid/database/sqlite/SQLiteException;
    move-object v7, v6

    .line 681
    .end local v6           #c:Landroid/database/Cursor;
    .restart local v7       #c:Landroid/database/Cursor;
    goto :goto_22

    .line 683
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v6       #c:Landroid/database/Cursor;
    :catch_26
    move-exception v9

    .local v9, ex:Ljava/lang/UnsupportedOperationException;
    move-object v7, v6

    .line 685
    .end local v6           #c:Landroid/database/Cursor;
    .restart local v7       #c:Landroid/database/Cursor;
    goto :goto_22
.end method

.method public static getVideoIdbyPath(Ljava/lang/String;)J
    .registers 15
    .parameter "filePath"

    .prologue
    const-wide/16 v12, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 780
    const-wide/16 v9, 0x0

    .line 781
    .local v9, id:J
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 782
    .local v2, cols:[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 783
    .local v11, where:Ljava/lang/StringBuilder;
    const-string v0, "_data = ?"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    const/4 v6, 0x0

    .line 789
    .local v6, c:Landroid/database/Cursor;
    :try_start_17
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 791
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 793
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 794
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    .line 795
    const/4 v5, 0x0

    .line 791
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 806
    :goto_36
    if-eqz v6, :cond_46

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_46

    .line 808
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 809
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_45
    .catchall {:try_start_17 .. :try_end_45} :catchall_77
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_45} :catch_67
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_17 .. :try_end_45} :catch_6f

    move-result-wide v9

    .line 824
    :cond_46
    if-eqz v6, :cond_4b

    .line 825
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4b
    move-wide v0, v9

    .line 828
    :goto_4c
    return-wide v0

    .line 799
    :cond_4d
    :try_start_4d
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 801
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 802
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    .line 803
    const/4 v5, 0x0

    .line 799
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_65
    .catchall {:try_start_4d .. :try_end_65} :catchall_77
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4d .. :try_end_65} :catch_67
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4d .. :try_end_65} :catch_6f

    move-result-object v6

    goto :goto_36

    .line 812
    :catch_67
    move-exception v7

    .line 824
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    if-eqz v6, :cond_6d

    .line 825
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6d
    move-wide v0, v12

    .line 815
    goto :goto_4c

    .line 817
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catch_6f
    move-exception v8

    .line 824
    .local v8, ex:Ljava/lang/UnsupportedOperationException;
    if-eqz v6, :cond_75

    .line 825
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_75
    move-wide v0, v12

    .line 820
    goto :goto_4c

    .line 823
    .end local v8           #ex:Ljava/lang/UnsupportedOperationException;
    :catchall_77
    move-exception v0

    .line 824
    if-eqz v6, :cond_7d

    .line 825
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 826
    :cond_7d
    throw v0
.end method

.method public static getVideoIdbyPathList(Ljava/lang/String;)J
    .registers 15
    .parameter "filePath"

    .prologue
    const-wide/16 v12, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 876
    const-wide/16 v9, 0x0

    .line 877
    .local v9, id:J
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 878
    .local v2, cols:[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 879
    .local v11, where:Ljava/lang/StringBuilder;
    const-string v0, "_data = ?"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    const/4 v6, 0x0

    .line 885
    .local v6, c:Landroid/database/Cursor;
    :try_start_17
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 887
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 889
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 890
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    .line 891
    const/4 v5, 0x0

    .line 887
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 902
    :goto_36
    if-eqz v6, :cond_46

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_46

    .line 904
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 905
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_45
    .catchall {:try_start_17 .. :try_end_45} :catchall_77
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_45} :catch_67
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_17 .. :try_end_45} :catch_6f

    move-result-wide v9

    .line 920
    :cond_46
    if-eqz v6, :cond_4b

    .line 921
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4b
    move-wide v0, v9

    .line 924
    :goto_4c
    return-wide v0

    .line 895
    :cond_4d
    :try_start_4d
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 897
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 898
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    .line 899
    const/4 v5, 0x0

    .line 895
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_65
    .catchall {:try_start_4d .. :try_end_65} :catchall_77
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4d .. :try_end_65} :catch_67
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4d .. :try_end_65} :catch_6f

    move-result-object v6

    goto :goto_36

    .line 908
    :catch_67
    move-exception v7

    .line 920
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    if-eqz v6, :cond_6d

    .line 921
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6d
    move-wide v0, v12

    .line 911
    goto :goto_4c

    .line 913
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catch_6f
    move-exception v8

    .line 920
    .local v8, ex:Ljava/lang/UnsupportedOperationException;
    if-eqz v6, :cond_75

    .line 921
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_75
    move-wide v0, v12

    .line 916
    goto :goto_4c

    .line 919
    .end local v8           #ex:Ljava/lang/UnsupportedOperationException;
    :catchall_77
    move-exception v0

    .line 920
    if-eqz v6, :cond_7d

    .line 921
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 922
    :cond_7d
    throw v0
.end method

.method public static isBGMSame(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)Z
    .registers 4
    .parameter "original"
    .parameter "clone"

    .prologue
    .line 1184
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1185
    const/4 v0, 0x1

    .line 1187
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isCaptionItemSame(Lcom/samsung/app/video/editor/external/ClipartParams;Lcom/samsung/app/video/editor/external/ClipartParams;)Z
    .registers 5
    .parameter "original"
    .parameter "clone"

    .prologue
    const/4 v0, 0x0

    .line 1218
    const-string v1, "caption item check"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3c

    .line 1220
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_36

    .line 1221
    iget v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->themeId:I

    iget v2, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->themeId:I

    if-ne v1, v2, :cond_2f

    .line 1222
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->data:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1223
    const/4 v0, 0x1

    .line 1237
    :cond_2f
    :goto_2f
    return v0

    .line 1225
    :cond_30
    const-string v1, "time same.data change"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_2f

    .line 1232
    :cond_36
    const-string v1, "caption end time change"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_2f

    .line 1236
    :cond_3c
    const-string v1, "caption start time change"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_2f
.end method

.method public static isDrawingListItemSame(Lcom/samsung/app/video/editor/external/ClipartParams;Lcom/samsung/app/video/editor/external/ClipartParams;)Z
    .registers 9
    .parameter "original"
    .parameter "clone"

    .prologue
    const/4 v2, 0x0

    .line 1191
    const-string v3, "checking clipart items"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_8f

    .line 1193
    const-string v3, "clipart item start time same"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_89

    .line 1195
    const-string v3, "clipart item  end same"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1196
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clipart data::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1197
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "save.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1198
    .local v1, origFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "save.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1199
    .local v0, cloneFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_83

    .line 1200
    const-string v2, "clipart item file same"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1201
    const/4 v2, 0x1

    .line 1213
    .end local v0           #cloneFile:Ljava/io/File;
    .end local v1           #origFile:Ljava/io/File;
    :goto_82
    return v2

    .line 1203
    .restart local v0       #cloneFile:Ljava/io/File;
    .restart local v1       #origFile:Ljava/io/File;
    :cond_83
    const-string v3, "clipart item file modified"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_82

    .line 1208
    .end local v0           #cloneFile:Ljava/io/File;
    .end local v1           #origFile:Ljava/io/File;
    :cond_89
    const-string v3, "clipart item  end change"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_82

    .line 1212
    :cond_8f
    const-string v3, "clipart item start time different"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_82
.end method

.method public static isElementEditSame(Lcom/samsung/app/video/editor/external/Edit;Lcom/samsung/app/video/editor/external/Edit;)Z
    .registers 6
    .parameter "original"
    .parameter "clone"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1160
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Edit;->getType()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Edit;->getType()I

    move-result v3

    if-ne v2, v3, :cond_49

    .line 1161
    const-string v2, "Edit type ok"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v3

    if-ne v2, v3, :cond_42

    .line 1163
    const-string v2, "EDit sub type ok"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Edit;->getTrans_duration()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Edit;->getTrans_duration()I

    move-result v3

    if-ne v2, v3, :cond_30

    .line 1165
    const-string v1, "Edit Trans Duration ok"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1179
    :goto_2f
    return v0

    .line 1167
    :cond_30
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Edit;->getVolumeLevel()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Edit;->getVolumeLevel()I

    move-result v3

    if-ne v2, v3, :cond_40

    .line 1168
    const-string v1, "Edit Vol level same"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_2f

    :cond_40
    move v0, v1

    .line 1171
    goto :goto_2f

    .line 1175
    :cond_42
    const-string v0, "Edit subtype not ok"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    move v0, v1

    .line 1176
    goto :goto_2f

    :cond_49
    move v0, v1

    .line 1179
    goto :goto_2f
.end method

.method public static isElementSame(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)Z
    .registers 7
    .parameter "original"
    .parameter "clone"

    .prologue
    const/4 v4, 0x0

    .line 1110
    const-string v2, "check Element file path first"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 1112
    const-string v2, "File path is same"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1113
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_139

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_139

    .line 1114
    const-string v2, "same e start and end time"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getStartRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getStartRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_137

    .line 1116
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getStartRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getStartRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_137

    .line 1117
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getStartRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getStartRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_137

    .line 1118
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getStartRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getStartRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_137

    .line 1119
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getEndRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getEndRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_137

    .line 1120
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getEndRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getEndRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_137

    .line 1121
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getEndRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getEndRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_137

    .line 1122
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getEndRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getEndRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_137

    .line 1123
    const-string v2, "Kenburn start and end rect are same"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleListCount()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleListCount()I

    move-result v3

    if-ne v2, v3, :cond_135

    .line 1125
    const-string v2, "drawing list count same"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1126
    const/4 v1, 0x0

    .local v1, k:I
    :goto_cb
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleListCount()I

    move-result v2

    if-lt v1, v2, :cond_f5

    .line 1133
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_133

    .line 1134
    const-string v2, "same edit list count"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1135
    const/4 v0, 0x0

    .local v0, j:I
    :goto_e9
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_114

    .line 1141
    const/4 v2, 0x1

    .line 1155
    .end local v0           #j:I
    .end local v1           #k:I
    :goto_f4
    return v2

    .line 1127
    .restart local v1       #k:I
    :cond_f5
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-static {v2, v3}, Lcom/sec/android/app/ve/util/Utils;->isDrawingListItemSame(Lcom/samsung/app/video/editor/external/ClipartParams;Lcom/samsung/app/video/editor/external/ClipartParams;)Z

    move-result v2

    if-eqz v2, :cond_112

    .line 1126
    add-int/lit8 v1, v1, 0x1

    goto :goto_cb

    :cond_112
    move v2, v4

    .line 1130
    goto :goto_f4

    .line 1136
    .restart local v0       #j:I
    :cond_114
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/Edit;

    invoke-static {v2, v3}, Lcom/sec/android/app/ve/util/Utils;->isElementEditSame(Lcom/samsung/app/video/editor/external/Edit;Lcom/samsung/app/video/editor/external/Edit;)Z

    move-result v2

    if-eqz v2, :cond_131

    .line 1135
    add-int/lit8 v0, v0, 0x1

    goto :goto_e9

    :cond_131
    move v2, v4

    .line 1139
    goto :goto_f4

    .end local v0           #j:I
    :cond_133
    move v2, v4

    .line 1143
    goto :goto_f4

    .end local v1           #k:I
    :cond_135
    move v2, v4

    .line 1146
    goto :goto_f4

    :cond_137
    move v2, v4

    .line 1149
    goto :goto_f4

    :cond_139
    move v2, v4

    .line 1152
    goto :goto_f4

    :cond_13b
    move v2, v4

    .line 1155
    goto :goto_f4
.end method

.method public static isImageLarger8MP(Ljava/lang/String;)Z
    .registers 8
    .parameter "aFilepath"

    .prologue
    .line 1259
    const/4 v1, 0x0

    .line 1261
    .local v1, isLarge:Z
    :try_start_1
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1265
    .local v2, lExif:Landroid/media/ExifInterface;
    const-string v5, "ImageWidth"

    const/16 v6, 0x64

    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 1267
    .local v4, lWidth:I
    const-string v5, "ImageLength"

    const/16 v6, 0x64

    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_23

    move-result v3

    .line 1271
    .local v3, lHeight:I
    mul-int v5, v4, v3

    const v6, 0x79ec00

    if-gt v5, v6, :cond_21

    .line 1272
    const/4 v1, 0x0

    .line 1278
    :goto_1e
    const/4 v2, 0x0

    move v5, v1

    .line 1288
    .end local v2           #lExif:Landroid/media/ExifInterface;
    .end local v3           #lHeight:I
    .end local v4           #lWidth:I
    :goto_20
    return v5

    .line 1276
    .restart local v2       #lExif:Landroid/media/ExifInterface;
    .restart local v3       #lHeight:I
    .restart local v4       #lWidth:I
    :cond_21
    const/4 v1, 0x1

    goto :goto_1e

    .line 1282
    .end local v2           #lExif:Landroid/media/ExifInterface;
    .end local v3           #lHeight:I
    .end local v4           #lWidth:I
    :catch_23
    move-exception v0

    .line 1283
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1285
    const/4 v5, 0x1

    goto :goto_20
.end method

.method public static isMediaNotMounted(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1243
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 1244
    sget-object v2, Lcom/sec/android/app/ve/util/Utils;->mStorageToast:Landroid/widget/Toast;

    if-nez v2, :cond_2d

    .line 1245
    const-string v2, ""

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/ve/util/Utils;->mStorageToast:Landroid/widget/Toast;

    .line 1249
    :goto_1a
    sget-object v1, Lcom/sec/android/app/ve/util/Utils;->mStorageToast:Landroid/widget/Toast;

    const v2, 0x7f080065

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 1250
    sget-object v1, Lcom/sec/android/app/ve/util/Utils;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 1251
    sget-object v1, Lcom/sec/android/app/ve/util/Utils;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1254
    :goto_2c
    return v0

    .line 1247
    :cond_2d
    sget-object v1, Lcom/sec/android/app/ve/util/Utils;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    goto :goto_1a

    :cond_33
    move v0, v1

    .line 1254
    goto :goto_2c
.end method

.method public static isMediaScannerScanning()Z
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 629
    const/4 v7, 0x0

    .line 631
    .local v7, result:Z
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 633
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 634
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    .line 635
    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "volume"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    .line 633
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 639
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_49

    .line 641
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_46

    .line 643
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 645
    const-string v0, "external"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "internal"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    move v7, v8

    .line 648
    :cond_46
    :goto_46
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 653
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_49
    return v7

    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_4a
    move v7, v9

    .line 645
    goto :goto_46
.end method

.method public static isTranscodeSame(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement;)Z
    .registers 9
    .parameter "original"
    .parameter "clone"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1050
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getThemeName()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getThemeName()I

    move-result v4

    if-ne v3, v4, :cond_e5

    .line 1051
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v4

    if-ne v3, v4, :cond_de

    .line 1052
    const-string v3, "Element count same"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1053
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1c
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v3

    if-lt v1, v3, :cond_56

    .line 1061
    const-string v3, "caption test"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTextEleListCount()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTextEleListCount()I

    move-result v4

    if-ne v3, v4, :cond_a6

    .line 1063
    const-string v3, "caption count same"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1064
    const/4 v1, 0x0

    :goto_37
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTextEleListCount()I

    move-result v3

    if-lt v1, v3, :cond_87

    .line 1079
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_cc

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_cc

    .line 1080
    const/4 v2, 0x0

    .local v2, k:I
    :goto_4a
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_ad

    move v3, v6

    .line 1105
    .end local v1           #i:I
    .end local v2           #k:I
    :goto_55
    return v3

    .line 1054
    .restart local v1       #i:I
    :cond_56
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Checking for Element:::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v3, v4}, Lcom/sec/android/app/ve/util/Utils;->isElementSame(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 1053
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_85
    move v3, v5

    .line 1058
    goto :goto_55

    .line 1065
    :cond_87
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTextEleList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTextEleList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-static {v3, v4}, Lcom/sec/android/app/ve/util/Utils;->isCaptionItemSame(Lcom/samsung/app/video/editor/external/ClipartParams;Lcom/samsung/app/video/editor/external/ClipartParams;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 1064
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_a4
    move v3, v5

    .line 1068
    goto :goto_55

    .line 1072
    :cond_a6
    const-string v3, "caption count change"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    move v3, v5

    .line 1073
    goto :goto_55

    .line 1081
    .restart local v2       #k:I
    :cond_ad
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v3, v4}, Lcom/sec/android/app/ve/util/Utils;->isBGMSame(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 1080
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    :cond_ca
    move v3, v5

    .line 1084
    goto :goto_55

    .line 1087
    .end local v2           #k:I
    :cond_cc
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_db

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d5} :catch_e1

    move-result-object v3

    if-nez v3, :cond_db

    move v3, v6

    .line 1088
    goto/16 :goto_55

    :cond_db
    move v3, v5

    .line 1090
    goto/16 :goto_55

    .end local v1           #i:I
    :cond_de
    move v3, v5

    .line 1098
    goto/16 :goto_55

    .line 1102
    :catch_e1
    move-exception v0

    .line 1103
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_e5
    move v3, v5

    .line 1105
    goto/16 :goto_55
.end method

.method public static isVOIPActivated()Z
    .registers 3

    .prologue
    .line 1397
    :try_start_0
    const-string v2, "voip"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v1

    .line 1399
    .local v1, voipInterfaceService:Landroid/os/IVoIPInterface;
    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPDialing()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1401
    :cond_16
    const-string v2, "VOIP isVOIPActivated returning true"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1d

    .line 1402
    const/4 v2, 0x1

    .line 1407
    :goto_1c
    return v2

    .line 1404
    :catch_1d
    move-exception v0

    .line 1405
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1407
    .end local v0           #e:Ljava/lang/Exception;
    :cond_21
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public static loadTransitions(Landroid/content/Context;)V
    .registers 3
    .parameter "aContext"

    .prologue
    .line 931
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/ve/util/Utils$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/util/Utils$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 969
    .local v0, th:Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 970
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 971
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .registers 1
    .parameter "logMessage"

    .prologue
    .line 217
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .parameter "tag"
    .parameter "logMessage"

    .prologue
    .line 222
    return-void
.end method

.method public static setCheckBoxValue(ZLandroid/content/Context;)V
    .registers 4
    .parameter "value"
    .parameter "mContext"

    .prologue
    .line 232
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 233
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/sec/android/app/ve/util/Utils;->SHARE_CHECKBOX:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 234
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 235
    return-void
.end method

.method public static timeFormat(J)Ljava/lang/String;
    .registers 14
    .parameter "time"

    .prologue
    .line 334
    const-wide/16 v8, 0x3c

    rem-long v6, p0, v8

    .line 335
    .local v6, seconds:J
    const-wide/16 v8, 0x3c

    div-long v8, p0, v8

    const-wide/16 v10, 0x3c

    rem-long v4, v8, v10

    .line 336
    .local v4, minutes:J
    const-wide/16 v8, 0xe10

    div-long v0, p0, v8

    .line 338
    .local v0, hours:J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_18

    .line 339
    const-wide/16 v6, 0x0

    .line 340
    :cond_18
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gez v8, :cond_20

    .line 341
    const-wide/16 v4, 0x0

    .line 342
    :cond_20
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-gez v8, :cond_28

    .line 343
    const-wide/16 v0, 0x0

    .line 345
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .local v2, mFormatBuilder:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v3, v2, v8}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 347
    .local v3, mFormatter:Ljava/util/Formatter;
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 348
    const-string v8, "%02d:%02d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v3, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private static unzip(Ljava/lang/String;)V
    .registers 13
    .parameter "aFile"

    .prologue
    .line 356
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 357
    .local v2, fin:Ljava/io/FileInputStream;
    new-instance v9, Ljava/util/zip/ZipInputStream;

    invoke-direct {v9, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 358
    .local v9, zin:Ljava/util/zip/ZipInputStream;
    if-nez v9, :cond_c

    .line 361
    :cond_c
    const/4 v4, 0x0

    .line 362
    .local v4, lContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v10

    if-eqz v10, :cond_22

    .line 363
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v4

    .line 367
    :goto_17
    const/4 v8, 0x0

    .line 368
    .local v8, ze:Ljava/util/zip/ZipEntry;
    :goto_18
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    if-nez v8, :cond_27

    .line 403
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V

    .line 409
    .end local v2           #fin:Ljava/io/FileInputStream;
    .end local v4           #lContext:Landroid/content/Context;
    .end local v8           #ze:Ljava/util/zip/ZipEntry;
    .end local v9           #zin:Ljava/util/zip/ZipInputStream;
    :goto_21
    return-void

    .line 365
    .restart local v2       #fin:Ljava/io/FileInputStream;
    .restart local v4       #lContext:Landroid/content/Context;
    .restart local v9       #zin:Ljava/util/zip/ZipInputStream;
    :cond_22
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    goto :goto_17

    .line 369
    .restart local v8       #ze:Ljava/util/zip/ZipEntry;
    :cond_27
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unzipping "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 373
    .local v5, lStr:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_59

    .line 374
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/ve/util/Utils;->_dirChecker(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    goto :goto_18

    .line 404
    .end local v2           #fin:Ljava/io/FileInputStream;
    .end local v4           #lContext:Landroid/content/Context;
    .end local v5           #lStr:Ljava/lang/String;
    .end local v8           #ze:Ljava/util/zip/ZipEntry;
    .end local v9           #zin:Ljava/util/zip/ZipInputStream;
    :catch_4f
    move-exception v1

    .line 405
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "unzip exception"

    invoke-static {v10}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21

    .line 377
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #fin:Ljava/io/FileInputStream;
    .restart local v4       #lContext:Landroid/content/Context;
    .restart local v5       #lStr:Ljava/lang/String;
    .restart local v8       #ze:Ljava/util/zip/ZipEntry;
    .restart local v9       #zin:Ljava/util/zip/ZipInputStream;
    :cond_59
    :try_start_59
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    .line 378
    .local v7, workingDir:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/io/File;

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v7, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 390
    .local v3, fout:Ljava/io/FileOutputStream;
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 392
    .local v0, data:[B
    :goto_6f
    invoke-virtual {v9, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v6

    .local v6, n:I
    const/4 v10, -0x1

    if-ne v6, v10, :cond_80

    .line 396
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 397
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 398
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_18

    .line 393
    :cond_80
    const/4 v10, 0x0

    invoke-virtual {v3, v0, v10, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_84} :catch_4f

    goto :goto_6f
.end method
