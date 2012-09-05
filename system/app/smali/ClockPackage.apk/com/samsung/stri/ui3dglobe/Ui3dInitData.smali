.class public Lcom/samsung/stri/ui3dglobe/Ui3dInitData;
.super Ljava/lang/Object;
.source "Ui3dInitData.java"


# static fields
.field private static final mLock:Ljava/lang/Object;

.field private static m_nPreloadState:I

.field private static nRefCount:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFloatDataPath:Ljava/lang/String;

.field private mHasData:Z

.field private mInitDataHandler:Landroid/os/Handler;

.field private mInitDataRun:Ljava/lang/Runnable;

.field private mInitDataRunThread:Ljava/lang/Runnable;

.field private mMetaDataPath:Ljava/lang/String;

.field private mPackageSubStr:Ljava/lang/String;

.field private mR:Landroid/content/res/Resources;

.field private mResId:I

.field private mSoundDataPath:Ljava/lang/String;

.field private mXMLFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mLock:Ljava/lang/Object;

    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->nRefCount:I

    .line 38
    const v0, 0x80001

    sput v0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->m_nPreloadState:I

    .line 44
    const-string v0, "ui3d-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mInitDataHandler:Landroid/os/Handler;

    .line 25
    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mPackageSubStr:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mR:Landroid/content/res/Resources;

    .line 28
    iput v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mResId:I

    .line 30
    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mMetaDataPath:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mXMLFileName:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mFloatDataPath:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mSoundDataPath:Ljava/lang/String;

    .line 41
    iput-boolean v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mHasData:Z

    .line 100
    new-instance v0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData$1;

    invoke-direct {v0, p0}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData$1;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;)V

    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mInitDataRun:Ljava/lang/Runnable;

    .line 106
    new-instance v0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData$2;

    invoke-direct {v0, p0}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData$2;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;)V

    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mInitDataRunThread:Ljava/lang/Runnable;

    .line 48
    sget v0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->nRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->nRefCount:I

    .line 49
    return-void
.end method

.method private ExtractData(Ljava/lang/String;)Z
    .registers 25
    .parameter "sFolder"

    .prologue
    .line 176
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v6, dir:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_18

    .line 178
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mHasData:Z

    .line 179
    const/16 v21, 0x0

    .line 333
    :goto_17
    return v21

    .line 183
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 185
    .local v2, assetManager:Landroid/content/res/AssetManager;
    const/16 v21, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 186
    .local v14, idx:I
    if-lez v14, :cond_30

    .line 187
    add-int/lit8 v14, v14, 0x1

    .line 190
    :cond_30
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 191
    .local v20, sShortFolder:Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 194
    .local v19, sPreFolder:Ljava/lang/String;
    const/4 v5, 0x0

    .line 196
    .local v5, dataFiles:[Ljava/lang/String;
    :try_start_41
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_46} :catch_c6

    move-result-object v5

    .line 201
    :goto_47
    if-eqz v5, :cond_1cd

    array-length v0, v5

    move/from16 v21, v0

    if-lez v21, :cond_1cd

    .line 203
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 205
    const/4 v13, 0x0

    .local v13, i:I
    :goto_52
    array-length v0, v5

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_1c1

    .line 206
    new-instance v17, Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v5, v13

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 207
    .local v17, sAssetName:Ljava/lang/String;
    new-instance v18, Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 211
    .local v18, sFileName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 213
    .local v10, file:Ljava/io/File;
    :try_start_a2
    new-instance v10, Ljava/io/File;

    .end local v10           #file:Ljava/io/File;
    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a9} :catch_cc

    .line 219
    .restart local v10       #file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_1b5

    .line 220
    const-wide/16 v21, 0x5

    invoke-static/range {v21 .. v22}, Landroid/os/SystemClock;->sleep(J)V

    .line 224
    :try_start_b4
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    move-result v21

    if-nez v21, :cond_e4

    .line 225
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mHasData:Z
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_c2} :catch_d4

    .line 226
    const/16 v21, 0x0

    goto/16 :goto_17

    .line 197
    .end local v10           #file:Ljava/io/File;
    .end local v13           #i:I
    .end local v17           #sAssetName:Ljava/lang/String;
    .end local v18           #sFileName:Ljava/lang/String;
    :catch_c6
    move-exception v7

    .line 198
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_47

    .line 214
    .end local v7           #e:Ljava/io/IOException;
    .restart local v13       #i:I
    .restart local v17       #sAssetName:Ljava/lang/String;
    .restart local v18       #sFileName:Ljava/lang/String;
    :catch_cc
    move-exception v7

    .line 215
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    const/16 v21, 0x0

    goto/16 :goto_17

    .line 228
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v10       #file:Ljava/io/File;
    :catch_d4
    move-exception v8

    .line 229
    .local v8, e1:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 230
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mHasData:Z

    .line 231
    const/16 v21, 0x0

    goto/16 :goto_17

    .line 235
    .end local v8           #e1:Ljava/io/IOException;
    :cond_e4
    const/4 v15, 0x0

    .line 237
    .local v15, inStream:Ljava/io/InputStream;
    :try_start_e5
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_ea} :catch_130

    move-result-object v15

    .line 243
    :goto_eb
    const/4 v4, 0x0

    .line 244
    .local v4, buffOutput:Ljava/io/BufferedOutputStream;
    const/4 v11, 0x0

    .line 246
    .local v11, fileOutput:Ljava/io/FileOutputStream;
    :try_start_ed
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_f4
    .catch Ljava/io/FileNotFoundException; {:try_start_ed .. :try_end_f4} :catch_135

    .line 247
    .end local v11           #fileOutput:Ljava/io/FileOutputStream;
    .local v12, fileOutput:Ljava/io/FileOutputStream;
    :try_start_f4
    new-instance v4, Ljava/io/BufferedOutputStream;

    .end local v4           #buffOutput:Ljava/io/BufferedOutputStream;
    invoke-direct {v4, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f9
    .catch Ljava/io/FileNotFoundException; {:try_start_f4 .. :try_end_f9} :catch_1d9

    .line 254
    .restart local v4       #buffOutput:Ljava/io/BufferedOutputStream;
    if-eqz v15, :cond_126

    if-eqz v4, :cond_126

    .line 256
    const/16 v16, -0x1

    .line 257
    .local v16, nNumBytes:I
    const/4 v3, 0x0

    .line 260
    .local v3, btData:[B
    :try_start_100
    invoke-virtual {v15}, Ljava/io/InputStream;->available()I

    move-result v21

    move/from16 v0, v21

    new-array v3, v0, [B

    .line 261
    const/16 v21, 0x0

    array-length v0, v3

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_114} :catch_145

    move-result v16

    .line 279
    const/16 v21, -0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_126

    .line 281
    const/16 v21, 0x0

    :try_start_11f
    move/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v4, v3, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_126} :catch_165

    .line 302
    .end local v3           #btData:[B
    .end local v16           #nNumBytes:I
    :cond_126
    :try_start_126
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_129} :catch_185
    .catch Ljava/lang/NullPointerException; {:try_start_126 .. :try_end_129} :catch_195

    .line 313
    :try_start_129
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_12c} :catch_1a5

    .line 205
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_52

    .line 238
    .end local v4           #buffOutput:Ljava/io/BufferedOutputStream;
    .end local v12           #fileOutput:Ljava/io/FileOutputStream;
    :catch_130
    move-exception v7

    .line 239
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_eb

    .line 248
    .end local v7           #e:Ljava/io/IOException;
    .restart local v4       #buffOutput:Ljava/io/BufferedOutputStream;
    .restart local v11       #fileOutput:Ljava/io/FileOutputStream;
    :catch_135
    move-exception v7

    .line 249
    .end local v4           #buffOutput:Ljava/io/BufferedOutputStream;
    .local v7, e:Ljava/io/FileNotFoundException;
    :goto_136
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 250
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mHasData:Z

    .line 251
    const/16 v21, 0x0

    goto/16 :goto_17

    .line 262
    .end local v7           #e:Ljava/io/FileNotFoundException;
    .end local v11           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v3       #btData:[B
    .restart local v4       #buffOutput:Ljava/io/BufferedOutputStream;
    .restart local v12       #fileOutput:Ljava/io/FileOutputStream;
    .restart local v16       #nNumBytes:I
    :catch_145
    move-exception v7

    .line 264
    .local v7, e:Ljava/io/IOException;
    :try_start_146
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_149
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_149} :catch_15b

    .line 269
    :goto_149
    :try_start_149
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_14c} :catch_160

    .line 273
    :goto_14c
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 274
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mHasData:Z

    .line 275
    const/16 v21, 0x0

    goto/16 :goto_17

    .line 265
    :catch_15b
    move-exception v9

    .line 266
    .local v9, ee:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_149

    .line 270
    .end local v9           #ee:Ljava/io/IOException;
    :catch_160
    move-exception v9

    .line 271
    .restart local v9       #ee:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14c

    .line 282
    .end local v7           #e:Ljava/io/IOException;
    .end local v9           #ee:Ljava/io/IOException;
    :catch_165
    move-exception v7

    .line 284
    .restart local v7       #e:Ljava/io/IOException;
    :try_start_166
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_169
    .catch Ljava/io/IOException; {:try_start_166 .. :try_end_169} :catch_17b

    .line 289
    :goto_169
    :try_start_169
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_16c
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_16c} :catch_180

    .line 293
    :goto_16c
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 294
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mHasData:Z

    .line 295
    const/16 v21, 0x0

    goto/16 :goto_17

    .line 285
    :catch_17b
    move-exception v9

    .line 286
    .restart local v9       #ee:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_169

    .line 290
    .end local v9           #ee:Ljava/io/IOException;
    :catch_180
    move-exception v9

    .line 291
    .restart local v9       #ee:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16c

    .line 303
    .end local v3           #btData:[B
    .end local v7           #e:Ljava/io/IOException;
    .end local v9           #ee:Ljava/io/IOException;
    .end local v16           #nNumBytes:I
    :catch_185
    move-exception v7

    .line 304
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 305
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mHasData:Z

    .line 306
    const/16 v21, 0x0

    goto/16 :goto_17

    .line 307
    .end local v7           #e:Ljava/io/IOException;
    :catch_195
    move-exception v7

    .line 308
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 309
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mHasData:Z

    .line 310
    const/16 v21, 0x0

    goto/16 :goto_17

    .line 314
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_1a5
    move-exception v7

    .line 315
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 316
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mHasData:Z

    .line 317
    const/16 v21, 0x0

    goto/16 :goto_17

    .line 323
    .end local v4           #buffOutput:Ljava/io/BufferedOutputStream;
    .end local v7           #e:Ljava/io/IOException;
    .end local v12           #fileOutput:Ljava/io/FileOutputStream;
    .end local v15           #inStream:Ljava/io/InputStream;
    :cond_1b5
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mHasData:Z

    .line 324
    const/16 v21, 0x0

    goto/16 :goto_17

    .line 328
    .end local v10           #file:Ljava/io/File;
    .end local v17           #sAssetName:Ljava/lang/String;
    .end local v18           #sFileName:Ljava/lang/String;
    :cond_1c1
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mHasData:Z

    .line 329
    const/16 v21, 0x1

    goto/16 :goto_17

    .line 332
    .end local v13           #i:I
    :cond_1cd
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mHasData:Z

    .line 333
    const/16 v21, 0x0

    goto/16 :goto_17

    .line 248
    .restart local v10       #file:Ljava/io/File;
    .restart local v12       #fileOutput:Ljava/io/FileOutputStream;
    .restart local v13       #i:I
    .restart local v15       #inStream:Ljava/io/InputStream;
    .restart local v17       #sAssetName:Ljava/lang/String;
    .restart local v18       #sFileName:Ljava/lang/String;
    :catch_1d9
    move-exception v7

    move-object v11, v12

    .end local v12           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v11       #fileOutput:Ljava/io/FileOutputStream;
    goto/16 :goto_136
.end method

.method public static GetPreloadState()I
    .registers 1

    .prologue
    .line 154
    sget v0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->m_nPreloadState:I

    return v0
.end method

.method private RunInitData()V
    .registers 3

    .prologue
    .line 337
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mInitDataRunThread:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 338
    .local v0, t:Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 339
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 340
    return-void
.end method

.method public static WaitForDataInit()V
    .registers 2

    .prologue
    .line 147
    sget-object v1, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_3
    monitor-exit v1

    .line 150
    return-void

    .line 149
    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v0
.end method

.method static synthetic access$000(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->RunInitData()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mHasData:Z

    return v0
.end method

.method static synthetic access$1102(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    sput p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->m_nPreloadState:I

    return p0
.end method

.method static synthetic access$1200(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->nativePreload(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;)Landroid/content/res/Resources;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mR:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mResId:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mMetaDataPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mMetaDataPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mPackageSubStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mXMLFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mXMLFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mFloatDataPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mFloatDataPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mSoundDataPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/stri/ui3dglobe/Ui3dInitData;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->ExtractData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private native nativePreload(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeUnload()V
.end method


# virtual methods
.method public GetDataPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mFloatDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public GetSoundPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mSoundDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public GetXMLFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mXMLFileName:Ljava/lang/String;

    return-object v0
.end method

.method public HasData()Z
    .registers 2

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mHasData:Z

    return v0
.end method

.method public Start(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 8
    .parameter "context"
    .parameter "packageSubStr"
    .parameter "delay_ms"

    .prologue
    .line 80
    iput-object p2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mPackageSubStr:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mContext:Landroid/content/Context;

    .line 82
    if-lez p3, :cond_f

    .line 83
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mInitDataHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mInitDataRun:Ljava/lang/Runnable;

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    :goto_e
    return-void

    .line 85
    :cond_f
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->mInitDataRunThread:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_e
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 61
    sget v0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->nRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->nRefCount:I

    .line 62
    sget v0, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->nRefCount:I

    if-nez v0, :cond_d

    .line 63
    invoke-direct {p0}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->nativeUnload()V

    .line 65
    :cond_d
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 57
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 58
    return-void
.end method
