.class public Lcom/sec/android/app/myfiles/MediaLoader;
.super Ljava/lang/Object;
.source "MediaLoader.java"


# static fields
.field private static mContentResolver:Landroid/content/ContentResolver;

.field private static mContext:Landroid/content/Context;

.field private static final projection:[Ljava/lang/String;


# instance fields
.field private mDecodeThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private mInProgress:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/myfiles/MediaLoader$WorkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/myfiles/MediaLoader$WorkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/myfiles/MediaLoader;->projection:[Ljava/lang/String;

    .line 79
    sput-object v3, Lcom/sec/android/app/myfiles/MediaLoader;->mContext:Landroid/content/Context;

    .line 81
    sput-object v3, Lcom/sec/android/app/myfiles/MediaLoader;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;I)V
    .registers 5
    .parameter "context"
    .parameter "resolver"
    .parameter "threadCount"

    .prologue
    .line 405
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/MediaLoader;->mQueue:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/MediaLoader;->mInProgress:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/MediaLoader;->mDecodeThreads:Ljava/util/ArrayList;

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/myfiles/MediaLoader;->mThreadCount:I

    .line 406
    iput p3, p0, Lcom/sec/android/app/myfiles/MediaLoader;->mThreadCount:I

    .line 407
    sput-object p2, Lcom/sec/android/app/myfiles/MediaLoader;->mContentResolver:Landroid/content/ContentResolver;

    .line 408
    sput-object p1, Lcom/sec/android/app/myfiles/MediaLoader;->mContext:Landroid/content/Context;

    .line 409
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/MediaLoader;->start()V

    .line 410
    return-void
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .registers 9
    .parameter "options"
    .parameter "target"

    .prologue
    const/4 v5, 0x1

    .line 558
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 559
    .local v4, w:I
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 561
    .local v3, h:I
    div-int v2, v4, p1

    .line 562
    .local v2, candidateW:I
    div-int v1, v3, p1

    .line 564
    .local v1, candidateH:I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 566
    .local v0, candidate:I
    if-nez v0, :cond_10

    .line 578
    :goto_f
    return v5

    .line 569
    :cond_10
    if-le v0, v5, :cond_1a

    .line 570
    if-le v4, p1, :cond_1a

    div-int v6, v4, v0

    if-ge v6, p1, :cond_1a

    .line 571
    add-int/lit8 v0, v0, -0x1

    .line 574
    :cond_1a
    if-le v0, v5, :cond_24

    .line 575
    if-le v3, p1, :cond_24

    div-int v5, v3, v0

    if-ge v5, p1, :cond_24

    .line 576
    add-int/lit8 v0, v0, -0x1

    :cond_24
    move v5, v0

    .line 578
    goto :goto_f
.end method

.method public static deleteImageBitmap(Ljava/lang/String;)V
    .registers 6
    .parameter "path"

    .prologue
    .line 87
    sget-object v1, Lcom/sec/android/app/myfiles/MediaLoader;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_25

    .line 89
    :try_start_4
    sget-object v1, Lcom/sec/android/app/myfiles/MediaLoader;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_26

    .line 95
    :cond_25
    :goto_25
    return-void

    .line 91
    :catch_26
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method public static deleteVideoBitmap(Ljava/lang/String;)V
    .registers 6
    .parameter "path"

    .prologue
    .line 99
    sget-object v1, Lcom/sec/android/app/myfiles/MediaLoader;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_25

    .line 101
    :try_start_4
    sget-object v1, Lcom/sec/android/app/myfiles/MediaLoader;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_26

    .line 107
    :cond_25
    :goto_25
    return-void

    .line 103
    :catch_26
    move-exception v0

    .line 104
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method public static getApkBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "path"

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-static {p0}, Lcom/sec/android/app/myfiles/MediaLoader;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 218
    .local v3, mPkgInfo:Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_11

    .line 219
    :try_start_7
    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4, p0}, Lcom/sec/android/app/myfiles/MediaLoader;->getApkDrawable(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 220
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/MediaLoader;->getResBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_12

    move-result-object v0

    .line 226
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :cond_11
    :goto_11
    return-object v0

    .line 222
    :catch_12
    move-exception v2

    .line 223
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 224
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static getApkDrawable(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .parameter "appInfo"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 230
    sget-object v4, Lcom/sec/android/app/myfiles/MediaLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 231
    .local v2, pRes:Landroid/content/res/Resources;
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 232
    .local v0, assmgr:Landroid/content/res/AssetManager;
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 233
    new-instance v3, Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 235
    .local v3, res:Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 236
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    iget v4, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v4, :cond_26

    .line 237
    iget v4, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 240
    :cond_26
    return-object v1
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .registers 9
    .parameter "filepath"

    .prologue
    const/4 v7, -0x1

    .line 605
    const/4 v0, 0x0

    .line 606
    .local v0, degree:I
    const/4 v2, 0x0

    .line 608
    .local v2, exif:Landroid/media/ExifInterface;
    :try_start_3
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_17

    .end local v2           #exif:Landroid/media/ExifInterface;
    .local v3, exif:Landroid/media/ExifInterface;
    move-object v2, v3

    .line 612
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :goto_9
    if-eqz v2, :cond_16

    .line 613
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 614
    .local v4, orientation:I
    if-eq v4, v7, :cond_16

    .line 616
    packed-switch v4, :pswitch_data_2a

    .line 631
    .end local v4           #orientation:I
    :cond_16
    :goto_16
    :pswitch_16
    return v0

    .line 609
    :catch_17
    move-exception v1

    .line 610
    .local v1, ex:Ljava/io/IOException;
    const-string v5, "MediaLoader"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6}, Lcom/sec/android/app/myfiles/Util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 618
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v4       #orientation:I
    :pswitch_20
    const/16 v0, 0x5a

    .line 619
    goto :goto_16

    .line 621
    :pswitch_23
    const/16 v0, 0xb4

    .line 622
    goto :goto_16

    .line 624
    :pswitch_26
    const/16 v0, 0x10e

    .line 625
    goto :goto_16

    .line 616
    nop

    :pswitch_data_2a
    .packed-switch 0x3
        :pswitch_23
        :pswitch_16
        :pswitch_16
        :pswitch_20
        :pswitch_16
        :pswitch_26
    .end packed-switch
.end method

.method public static getImageBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 18
    .parameter "path"

    .prologue
    .line 111
    const/4 v7, 0x0

    .line 113
    .local v7, b:Landroid/graphics/Bitmap;
    sget-object v1, Lcom/sec/android/app/myfiles/MediaLoader;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_68

    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->isMediaScannerScannig()Z

    move-result v1

    if-nez v1, :cond_68

    .line 114
    const/4 v8, 0x0

    .line 117
    .local v8, c:Landroid/database/Cursor;
    :try_start_c
    sget-object v1, Lcom/sec/android/app/myfiles/MediaLoader;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/myfiles/MediaLoader;->projection:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 119
    if-eqz v8, :cond_68

    .line 120
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 121
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 122
    .local v13, index:I
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 124
    .local v11, id:J
    sget-object v1, Lcom/sec/android/app/myfiles/MediaLoader;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v11, v12, v2, v3}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 127
    if-eqz v7, :cond_65

    .line 128
    const-string v1, "orientation"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 129
    .local v14, index2:I
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 131
    .local v9, degree:I
    if-nez v9, :cond_5f

    .line 132
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/myfiles/MediaLoader;->getExifOrientation(Ljava/lang/String;)I

    move-result v9

    .line 135
    :cond_5f
    if-eqz v9, :cond_65

    .line 136
    invoke-static {v7, v9}, Lcom/sec/android/app/myfiles/MediaLoader;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 139
    .end local v9           #degree:I
    .end local v11           #id:J
    .end local v13           #index:I
    .end local v14           #index2:I
    :cond_65
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_68} :catch_8a

    .line 148
    .end local v8           #c:Landroid/database/Cursor;
    :cond_68
    :goto_68
    if-nez v7, :cond_89

    .line 149
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    .line 150
    .local v15, m:Landroid/graphics/Matrix;
    const/16 v16, 0x0

    .line 153
    .local v16, tempB:Landroid/graphics/Bitmap;
    const/16 v1, 0x100

    :try_start_73
    move-object/from16 v0, p0

    invoke-static {v1, v0}, Lcom/sec/android/app/myfiles/MediaLoader;->getSampleSizeBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 154
    const/16 v1, 0x40

    const/16 v2, 0x40

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-static {v15, v0, v1, v2, v3}, Lcom/sec/android/app/myfiles/BitmapUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 155
    if-eqz v16, :cond_89

    .line 156
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_89} :catch_94

    .line 181
    .end local v15           #m:Landroid/graphics/Matrix;
    .end local v16           #tempB:Landroid/graphics/Bitmap;
    :cond_89
    :goto_89
    return-object v7

    .line 141
    .restart local v8       #c:Landroid/database/Cursor;
    :catch_8a
    move-exception v10

    .line 142
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    if-eqz v8, :cond_68

    .line 144
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_68

    .line 157
    .end local v8           #c:Landroid/database/Cursor;
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v15       #m:Landroid/graphics/Matrix;
    .restart local v16       #tempB:Landroid/graphics/Bitmap;
    :catch_94
    move-exception v10

    .line 158
    .restart local v10       #e:Ljava/lang/Exception;
    if-eqz v16, :cond_9a

    .line 159
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 160
    :cond_9a
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_89
.end method

.method public static getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .registers 7
    .parameter "path"

    .prologue
    .line 256
    move-object v0, p0

    .line 257
    .local v0, archiveFilePath:Ljava/lang/String;
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2, v0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 258
    .local v2, packageParser:Landroid/content/pm/PackageParser;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    .local v4, sourceFile:Ljava/io/File;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 260
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 261
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 263
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    const/4 v2, 0x0

    .line 264
    return-object v3
.end method

.method private static getResBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "d"

    .prologue
    const/4 v6, 0x0

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 246
    .local v3, w:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 247
    .local v2, h:I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 248
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 249
    .local v1, c:Landroid/graphics/Canvas;
    add-int/lit8 v4, v3, -0x1

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 250
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 252
    return-object v0
.end method

.method public static getSampleSizeBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "targetWidthHeight"
    .parameter "path"

    .prologue
    .line 582
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 585
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 586
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 588
    .local v0, bm:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 590
    const/4 v3, -0x1

    if-eq p0, v3, :cond_18

    .line 591
    invoke-static {v2, p0}, Lcom/sec/android/app/myfiles/MediaLoader;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 593
    :cond_18
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 595
    const/4 v1, 0x0

    .line 596
    .local v1, degree:I
    invoke-static {p1}, Lcom/sec/android/app/myfiles/MediaLoader;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 598
    if-eqz v1, :cond_27

    .line 599
    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/MediaLoader;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 601
    :cond_27
    return-object v0
.end method

.method public static getVideoBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "path"

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 206
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez v0, :cond_c

    .line 207
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/MediaLoader;->getVideoThumbBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 211
    .end local v1           #file:Ljava/io/File;
    :cond_c
    return-object v0
.end method

.method private static getVideoThumbBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "mFile"

    .prologue
    const/high16 v9, 0x42f0

    .line 670
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 671
    .local v3, retriever:Landroid/media/MediaMetadataRetriever;
    const/4 v0, 0x0

    .line 675
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_8
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 678
    const/16 v5, 0x78

    const/16 v6, 0x78

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/media/MediaMetadataRetriever;->setVideoSize(IIZZ)V

    .line 679
    const-wide/32 v5, 0xe4e1c0

    invoke-virtual {v3, v5, v6}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 681
    const/4 v4, 0x0

    .line 682
    .local v4, scale:F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_43

    .line 683
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v4, v9, v5

    .line 688
    :goto_31
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 689
    .local v2, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 690
    const/16 v5, 0x78

    const/16 v6, 0x78

    const/4 v7, 0x0

    invoke-static {v2, v0, v5, v6, v7}, Lcom/sec/android/app/myfiles/BitmapUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 694
    .end local v2           #matrix:Landroid/graphics/Matrix;
    .end local v4           #scale:F
    :goto_42
    return-object v5

    .line 685
    .restart local v4       #scale:F
    :cond_43
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_46} :catch_4b

    move-result v5

    int-to-float v5, v5

    div-float v4, v9, v5

    goto :goto_31

    .line 691
    .end local v4           #scale:F
    :catch_4b
    move-exception v1

    .line 692
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v5, "MediaLoader"

    const-string v6, "getVideoThumbBitmap-RuntimeException"

    invoke-static {v5, v6}, Lcom/sec/android/app/myfiles/Util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    .line 694
    goto :goto_42
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "b"
    .parameter "degrees"

    .prologue
    const/high16 v3, 0x4000

    .line 635
    if-eqz p1, :cond_35

    if-eqz p0, :cond_35

    .line 636
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 637
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 639
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1d
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 640
    .local v7, b2:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 641
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_34
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_34} :catch_36

    .line 642
    move-object p0, v7

    .line 649
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_35
    :goto_35
    return-object p0

    .line 644
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_36
    move-exception v8

    .line 646
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_35
.end method

.method private declared-synchronized start()V
    .registers 6

    .prologue
    .line 414
    monitor-enter p0

    :try_start_1
    const-string v2, "MediaLoader"

    const-string v3, "ImageLoader.start() <<<<<<<<<<<<<<<<<<<<<<<<<<<<"

    invoke-static {v2, v3}, Lcom/sec/android/app/myfiles/Util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v3, p0, Lcom/sec/android/app/myfiles/MediaLoader;->mDecodeThreads:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_4b

    .line 417
    :try_start_b
    iget-object v2, p0, Lcom/sec/android/app/myfiles/MediaLoader;->mDecodeThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 418
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_48

    .line 534
    :goto_14
    monitor-exit p0

    return-void

    .line 422
    :cond_16
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    :try_start_17
    iget v2, p0, Lcom/sec/android/app/myfiles/MediaLoader;->mThreadCount:I

    if-ge v0, v2, :cond_46

    .line 423
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/myfiles/MediaLoader$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/myfiles/MediaLoader$1;-><init>(Lcom/sec/android/app/myfiles/MediaLoader;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 529
    .local v1, t:Ljava/lang/Thread;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "image-loader-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 530
    iget-object v2, p0, Lcom/sec/android/app/myfiles/MediaLoader;->mDecodeThreads:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 533
    .end local v1           #t:Ljava/lang/Thread;
    :cond_46
    monitor-exit v3

    goto :goto_14

    .end local v0           #i:I
    :catchall_48
    move-exception v2

    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_17 .. :try_end_4a} :catchall_48

    :try_start_4a
    throw v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b

    .line 414
    :catchall_4b
    move-exception v2

    monitor-exit p0

    throw v2
.end method
