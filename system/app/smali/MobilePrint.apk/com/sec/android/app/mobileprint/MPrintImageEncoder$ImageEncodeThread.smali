.class Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;
.super Ljava/lang/Thread;
.source "MPrintImageEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/mobileprint/MPrintImageEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageEncodeThread"
.end annotation


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mBody:Ljava/lang/String;

.field private final mCallback:Lcom/sec/android/app/mobileprint/MPrintImageEncoder$Callback;

.field private final mOrientation:I

.field private final mSubject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/mobileprint/MPrintImageEncoder$Callback;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter "appContext"
    .parameter "callback"
    .parameter "subject"
    .parameter "body"
    .parameter "orientation"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;->mAppContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;->mCallback:Lcom/sec/android/app/mobileprint/MPrintImageEncoder$Callback;

    .line 60
    iput-object p3, p0, Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;->mSubject:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;->mBody:Ljava/lang/String;

    .line 62
    iput p5, p0, Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;->mOrientation:I

    .line 63
    return-void
.end method

.method private saveImageFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 12
    .parameter "image"
    .parameter "targetDir"

    .prologue
    const/4 v8, 0x1

    .line 177
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v3, saveDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_f

    .line 179
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 182
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "printing_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, strImgPath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 185
    .local v1, out:Ljava/io/FileOutputStream;
    :try_start_37
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_81
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_3c} :catch_72

    .line 186
    .end local v1           #out:Ljava/io/FileOutputStream;
    .local v2, out:Ljava/io/FileOutputStream;
    if-eqz v2, :cond_60

    .line 187
    :try_start_3e
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p1, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    if-ne v5, v8, :cond_59

    .line 188
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4c
    .catchall {:try_start_3e .. :try_end_4c} :catchall_8d
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_4c} :catch_90

    move-result-object v5

    .line 198
    if-eqz v2, :cond_52

    .line 199
    :try_start_4f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_54

    :cond_52
    :goto_52
    move-object v1, v2

    .line 205
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    :goto_53
    return-object v5

    .line 201
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_54
    move-exception v0

    .line 202
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_52

    .line 191
    .end local v0           #e:Ljava/io/IOException;
    :cond_59
    :try_start_59
    const-string v5, "MobilePrint"

    const-string v6, "ImageEncoder : FAILED to convert png!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_8d
    .catch Ljava/io/FileNotFoundException; {:try_start_59 .. :try_end_60} :catch_90

    .line 198
    :cond_60
    if-eqz v2, :cond_65

    .line 199
    :try_start_62
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_6c

    :cond_65
    move-object v1, v2

    .line 205
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    :cond_66
    :goto_66
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_53

    .line 201
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_6c
    move-exception v0

    .line 202
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 204
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_66

    .line 194
    .end local v0           #e:Ljava/io/IOException;
    :catch_72
    move-exception v0

    .line 195
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_73
    :try_start_73
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_81

    .line 198
    if-eqz v1, :cond_66

    .line 199
    :try_start_78
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_66

    .line 201
    :catch_7c
    move-exception v0

    .line 202
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_66

    .line 197
    .end local v0           #e:Ljava/io/IOException;
    :catchall_81
    move-exception v5

    .line 198
    :goto_82
    if-eqz v1, :cond_87

    .line 199
    :try_start_84
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    .line 203
    :cond_87
    :goto_87
    throw v5

    .line 201
    :catch_88
    move-exception v0

    .line 202
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_87

    .line 197
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catchall_8d
    move-exception v5

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_82

    .line 194
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_90
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_73
.end method


# virtual methods
.method public run()V
    .registers 22

    .prologue
    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;->mAppContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 68
    .local v11, dirToSave:Ljava/lang/String;
    const-string v10, "*#PAGE_END#*"

    .line 69
    .local v10, delimiterOfPage:Ljava/lang/String;
    const/16 v17, 0x32

    .line 70
    .local v17, margin:I
    const/16 v19, 0x1e

    .line 71
    .local v19, textSize:I
    const/16 v16, 0x2d

    .line 72
    .local v16, lineHeight:I
    const/4 v9, 0x1

    .line 75
    .local v9, currentLine:I
    const/16 v18, 0x0

    .line 78
    .local v18, saveLastPage:Z
    invoke-static {v11}, Lcom/sec/android/app/mobileprint/MPrintFileUtility;->clearDir(Ljava/lang/String;)V

    .line 81
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;->mOrientation:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_b6

    .line 82
    const/16 v15, 0x6d9

    .line 83
    .local v15, imgWidth:I
    const/16 v14, 0x4d8

    .line 90
    .local v14, imgHeight:I
    :goto_3c
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 91
    .local v7, paint:Landroid/graphics/Paint;
    const/high16 v3, -0x100

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    const/high16 v3, 0x41f0

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 93
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v15, v14, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 96
    .local v8, bmpImage:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 97
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 100
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_bd

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;->mBody:Ljava/lang/String;

    if-eqz v3, :cond_bd

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;->mBody:Ljava/lang/String;

    const-string v5, "*#PAGE_END#*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_bd

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;->mSubject:Ljava/lang/String;

    .line 102
    .local v2, wrapToken:Ljava/lang/String;
    const/4 v12, 0x0

    .line 103
    .local v12, drawedPosition:I
    const/4 v4, 0x0

    .line 105
    .local v4, wrapLengthCount:I
    const/16 v18, 0x1

    .line 107
    :cond_7e
    :goto_7e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;->mSubject:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v12, v3, :cond_bb

    .line 108
    const/4 v3, 0x1

    add-int/lit8 v5, v15, -0x64

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v7, v2, v3, v5, v6}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v4

    .line 109
    const/4 v3, 0x0

    const/high16 v5, 0x4248

    mul-int/lit8 v6, v9, 0x2d

    add-int/lit8 v6, v6, 0x32

    int-to-float v6, v6

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 110
    add-int/lit8 v9, v9, 0x1

    .line 111
    add-int/2addr v12, v4

    .line 112
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v4, v3, :cond_7e

    .line 113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;->mSubject:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;->mSubject:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_7e

    .line 86
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #wrapToken:Ljava/lang/String;
    .end local v4           #wrapLengthCount:I
    .end local v7           #paint:Landroid/graphics/Paint;
    .end local v8           #bmpImage:Landroid/graphics/Bitmap;
    .end local v12           #drawedPosition:I
    .end local v14           #imgHeight:I
    .end local v15           #imgWidth:I
    :cond_b6
    const/16 v15, 0x4d8

    .line 87
    .restart local v15       #imgWidth:I
    const/16 v14, 0x6d9

    .restart local v14       #imgHeight:I
    goto :goto_3c

    .line 116
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    .restart local v2       #wrapToken:Ljava/lang/String;
    .restart local v4       #wrapLengthCount:I
    .restart local v7       #paint:Landroid/graphics/Paint;
    .restart local v8       #bmpImage:Landroid/graphics/Bitmap;
    .restart local v12       #drawedPosition:I
    :cond_bb
    add-int/lit8 v9, v9, 0x1

    .line 120
    .end local v2           #wrapToken:Ljava/lang/String;
    .end local v4           #wrapLengthCount:I
    .end local v12           #drawedPosition:I
    :cond_bd
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;->mBody:Ljava/lang/String;

    if-eqz v3, :cond_141

    .line 121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;->mBody:Ljava/lang/String;

    const-string v5, "\n"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 122
    .local v20, token:[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_ce
    move-object/from16 v0, v20

    array-length v3, v0

    if-ge v13, v3, :cond_141

    .line 123
    aget-object v3, v20, v13

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e0

    .line 124
    add-int/lit8 v9, v9, 0x1

    .line 122
    :cond_dd
    :goto_dd
    add-int/lit8 v13, v13, 0x1

    goto :goto_ce

    .line 127
    :cond_e0
    aget-object v2, v20, v13

    .line 128
    .restart local v2       #wrapToken:Ljava/lang/String;
    const/4 v12, 0x0

    .line 129
    .restart local v12       #drawedPosition:I
    const/4 v4, 0x0

    .line 131
    .restart local v4       #wrapLengthCount:I
    const/16 v18, 0x1

    .line 133
    :cond_e6
    :goto_e6
    aget-object v3, v20, v13

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v12, v3, :cond_dd

    .line 134
    aget-object v3, v20, v13

    const-string v5, "*#PAGE_END#*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_105

    .line 136
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11}, Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;->saveImageFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 137
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 138
    const/4 v9, 0x1

    .line 139
    const/16 v18, 0x0

    .line 140
    goto :goto_dd

    .line 143
    :cond_105
    const/4 v3, 0x1

    add-int/lit8 v5, v15, -0x64

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v7, v2, v3, v5, v6}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v4

    .line 144
    const/4 v3, 0x0

    const/high16 v5, 0x4248

    mul-int/lit8 v6, v9, 0x2d

    add-int/lit8 v6, v6, 0x32

    int-to-float v6, v6

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 145
    add-int/lit8 v9, v9, 0x1

    .line 146
    add-int/2addr v12, v4

    .line 147
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v4, v3, :cond_12e

    .line 148
    aget-object v3, v20, v13

    aget-object v5, v20, v13

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 152
    :cond_12e
    mul-int/lit8 v3, v9, 0x2d

    add-int/lit8 v3, v3, 0x64

    if-ge v14, v3, :cond_e6

    .line 153
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11}, Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;->saveImageFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 154
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 155
    const/4 v9, 0x1

    .line 156
    const/16 v18, 0x0

    goto :goto_e6

    .line 165
    .end local v2           #wrapToken:Ljava/lang/String;
    .end local v4           #wrapLengthCount:I
    .end local v12           #drawedPosition:I
    .end local v13           #i:I
    .end local v20           #token:[Ljava/lang/String;
    :cond_141
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_14b

    .line 166
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11}, Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;->saveImageFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 169
    :cond_14b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImageEncoder : encoded to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/mobileprint/MPrintCommon;->printSecuLog(Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;->mCallback:Lcom/sec/android/app/mobileprint/MPrintImageEncoder$Callback;

    if-eqz v3, :cond_16e

    .line 172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/mobileprint/MPrintImageEncoder$ImageEncodeThread;->mCallback:Lcom/sec/android/app/mobileprint/MPrintImageEncoder$Callback;

    invoke-interface {v3, v11}, Lcom/sec/android/app/mobileprint/MPrintImageEncoder$Callback;->responseEncodeCompleted(Ljava/lang/String;)V

    .line 174
    :cond_16e
    return-void
.end method
