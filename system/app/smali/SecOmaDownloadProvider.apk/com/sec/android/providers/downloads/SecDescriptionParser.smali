.class public Lcom/sec/android/providers/downloads/SecDescriptionParser;
.super Ljava/lang/Object;
.source "SecDescriptionParser.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilePath:Ljava/lang/String;

.field private mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

.field private mStorageType:I


# direct methods
.method public constructor <init>(Lcom/sec/android/providers/downloads/SecDownloadInfo;Ljava/lang/String;Landroid/content/Context;)V
    .registers 5
    .parameter "info"
    .parameter "Filepath"
    .parameter "context"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/sec/android/providers/downloads/SecDescriptionParser;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    .line 55
    iput-object p2, p0, Lcom/sec/android/providers/downloads/SecDescriptionParser;->mFilePath:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/sec/android/providers/downloads/SecDescriptionParser;->mContext:Landroid/content/Context;

    .line 57
    iget v0, p1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStorageType:I

    iput v0, p0, Lcom/sec/android/providers/downloads/SecDescriptionParser;->mStorageType:I

    .line 59
    return-void
.end method


# virtual methods
.method public HandleOmaData(Landroid/content/Context;Lcom/sec/android/providers/downloads/SecDescriptionInfo;)I
    .registers 6
    .parameter "context"
    .parameter "mDDInfo"

    .prologue
    const/16 v1, 0x196

    .line 270
    const/4 v0, 0x1

    .line 274
    .local v0, RStatus:I
    invoke-virtual {p2}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->GetRootElement()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    .line 275
    const/16 v1, 0x259

    .line 313
    :cond_b
    :goto_b
    return v1

    .line 277
    :cond_c
    invoke-virtual {p0, p2}, Lcom/sec/android/providers/downloads/SecDescriptionParser;->OMADescriptionDataValidation(Lcom/sec/android/providers/downloads/SecDescriptionInfo;)I

    move-result v0

    .line 278
    const/4 v2, 0x1

    if-eq v2, v0, :cond_15

    move v1, v0

    .line 279
    goto :goto_b

    .line 286
    :cond_15
    invoke-virtual {p2}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sec/android/providers/downloads/SecHelpers;->isSupportMimeType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 287
    invoke-virtual {p2}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->getSecMimeType1()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 289
    invoke-virtual {p2}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->getSecMimeType1()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sec/android/providers/downloads/SecHelpers;->isSupportMimeType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 290
    invoke-virtual {p2}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->getSecMimeType2()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {p2}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->getSecMimeType2()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sec/android/providers/downloads/SecHelpers;->isSupportMimeType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 298
    :cond_3f
    iget v1, p0, Lcom/sec/android/providers/downloads/SecDescriptionParser;->mStorageType:I

    invoke-static {p1, v1}, Lcom/sec/android/providers/downloads/SecHelpers;->GetMemoryStatus(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 302
    const/16 v1, 0x279

    goto :goto_b

    .line 306
    :cond_4a
    iget v1, p0, Lcom/sec/android/providers/downloads/SecDescriptionParser;->mStorageType:I

    invoke-virtual {p2}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->getSize()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/sec/android/providers/downloads/SecHelpers;->isAvailableMemorySpace(Landroid/content/Context;II)Z

    move-result v1

    if-nez v1, :cond_59

    .line 310
    const/16 v1, 0x276

    goto :goto_b

    :cond_59
    move v1, v0

    .line 313
    goto :goto_b
.end method

.method public OMADescriptionDataValidation(Lcom/sec/android/providers/downloads/SecDescriptionInfo;)I
    .registers 6
    .parameter "mDDInfo"

    .prologue
    const/16 v2, 0x259

    .line 401
    const/4 v0, 0x1

    .line 407
    .local v0, RStatus:I
    invoke-virtual {p1}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->getSize()I

    move-result v3

    if-gtz v3, :cond_b

    move v0, v2

    .line 481
    .end local v0           #RStatus:I
    :cond_a
    :goto_a
    return v0

    .line 414
    .restart local v0       #RStatus:I
    :cond_b
    invoke-virtual {p1}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_13

    move v0, v2

    .line 419
    goto :goto_a

    .line 422
    :cond_13
    invoke-virtual {p1}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->GetObjectURI()Ljava/lang/String;

    move-result-object v1

    .line 423
    if-nez v1, :cond_a

    move v0, v2

    .line 427
    goto :goto_a
.end method

.method public ParseData()V
    .registers 26

    .prologue
    .line 63
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecDescriptionParser;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 71
    .local v6, contentUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 72
    .local v8, ddData:Ljava/lang/String;
    const/4 v14, 0x0

    .line 73
    .local v14, flag:Z
    const/4 v13, 0x0

    .line 74
    .local v13, fileContent:[B
    const/4 v9, 0x0

    .line 76
    .local v9, ddFile:Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v7, contents:Ljava/lang/StringBuilder;
    new-instance v19, Lcom/sec/android/providers/downloads/SecDescriptionInfo;

    invoke-direct/range {v19 .. v19}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;-><init>()V

    .line 78
    .local v19, mDDInfo:Lcom/sec/android/providers/downloads/SecDescriptionInfo;
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 81
    .local v20, values:Landroid/content/ContentValues;
    :try_start_3c
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecDescriptionParser;->mFilePath:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_3c .. :try_end_49} :catchall_25c
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_49} :catch_261
    .catch Ljava/lang/NullPointerException; {:try_start_3c .. :try_end_49} :catch_25e

    .line 82
    .end local v9           #ddFile:Ljava/io/File;
    .local v10, ddFile:Ljava/io/File;
    const/16 v16, 0x0

    .line 84
    .local v16, input:Ljava/io/BufferedReader;
    :try_start_4b
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/FileReader;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5b
    .catchall {:try_start_4b .. :try_end_5b} :catchall_264

    .line 86
    .end local v16           #input:Ljava/io/BufferedReader;
    .local v17, input:Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 87
    .local v18, line:Ljava/lang/String;
    :goto_5d
    :try_start_5d
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_cc

    .line 88
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v21, "line.separator"

    invoke-static/range {v21 .. v21}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_73
    .catchall {:try_start_5d .. :try_end_73} :catchall_74

    goto :goto_5d

    .line 99
    :catchall_74
    move-exception v21

    move-object/from16 v16, v17

    .end local v17           #input:Ljava/io/BufferedReader;
    .end local v18           #line:Ljava/lang/String;
    .restart local v16       #input:Ljava/io/BufferedReader;
    :goto_77
    :try_start_77
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    throw v21
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_221
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7b} :catch_7b
    .catch Ljava/lang/NullPointerException; {:try_start_77 .. :try_end_7b} :catch_1b3

    .line 169
    .end local v16           #input:Ljava/io/BufferedReader;
    :catch_7b
    move-exception v12

    move-object v9, v10

    .line 172
    .end local v10           #ddFile:Ljava/io/File;
    .restart local v9       #ddFile:Ljava/io/File;
    .local v12, ex:Ljava/io/IOException;
    :goto_7d
    :try_start_7d
    const-string v21, "SecDownloader"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SecDescriptionParser : ParseData : Download Hanlder Parsing Failed:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v21, "status"

    const/16 v22, 0x1ec

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    const-string v21, "state"

    const/16 v22, 0x9

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_ad
    .catchall {:try_start_7d .. :try_end_ad} :catchall_25c

    .line 188
    if-eqz v9, :cond_b2

    .line 189
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 191
    :cond_b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecDescriptionParser;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 195
    .end local v12           #ex:Ljava/io/IOException;
    :goto_cb
    return-void

    .line 91
    .end local v9           #ddFile:Ljava/io/File;
    .restart local v10       #ddFile:Ljava/io/File;
    .restart local v17       #input:Ljava/io/BufferedReader;
    .restart local v18       #line:Ljava/lang/String;
    :cond_cc
    :try_start_cc
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_74

    move-result-object v8

    .line 99
    :try_start_d0
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_221
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_7b
    .catch Ljava/lang/NullPointerException; {:try_start_d0 .. :try_end_d3} :catch_1b3

    .line 104
    const/16 v21, 0x3c

    :try_start_d5
    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 105
    .local v15, index:I
    if-lez v15, :cond_16b

    .line 106
    invoke-virtual {v8, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->parseDD(Ljava/lang/String;)V

    .line 114
    :goto_e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecDescriptionParser;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecDescriptionParser;->HandleOmaData(Landroid/content/Context;Lcom/sec/android/providers/downloads/SecDescriptionInfo;)I

    move-result v4

    .line 118
    .local v4, RStauts:I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecDescriptionParser;->UpdateOmaDescriptionData(Lcom/sec/android/providers/downloads/SecDescriptionInfo;Landroid/content/ContentValues;)Z

    move-result v21

    if-nez v21, :cond_10c

    .line 119
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_10c

    .line 120
    const/16 v4, 0x259

    .line 123
    :cond_10c
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_205

    .line 129
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->getMimeType()Ljava/lang/String;

    move-result-object v21

    const-string v22, "application/vnd.oma.drm.roap-trigger+xml"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_134

    .line 131
    const-string v5, "Download_Drm"

    .line 132
    .local v5, Title:Ljava/lang/String;
    const-string v21, "title"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v21, "downloadmethod"

    const/16 v22, 0x5

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    .end local v5           #Title:Ljava/lang/String;
    :cond_134
    const-string v21, "status"

    const/16 v22, 0xb6

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    const-string v21, "state"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_14a
    .catchall {:try_start_d5 .. :try_end_14a} :catchall_221
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_14a} :catch_172
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_14a} :catch_7b
    .catch Ljava/lang/NullPointerException; {:try_start_d5 .. :try_end_14a} :catch_1b3

    .line 188
    .end local v4           #RStauts:I
    .end local v15           #index:I
    :goto_14a
    if-eqz v10, :cond_14f

    .line 189
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 191
    :cond_14f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecDescriptionParser;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v9, v10

    .line 193
    .end local v10           #ddFile:Ljava/io/File;
    .restart local v9       #ddFile:Ljava/io/File;
    goto/16 :goto_cb

    .line 109
    .end local v9           #ddFile:Ljava/io/File;
    .restart local v10       #ddFile:Ljava/io/File;
    .restart local v15       #index:I
    :cond_16b
    :try_start_16b
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->parseDD(Ljava/lang/String;)V
    :try_end_170
    .catchall {:try_start_16b .. :try_end_170} :catchall_221
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_170} :catch_172
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_170} :catch_7b
    .catch Ljava/lang/NullPointerException; {:try_start_16b .. :try_end_170} :catch_1b3

    goto/16 :goto_e8

    .line 151
    .end local v15           #index:I
    :catch_172
    move-exception v11

    .line 153
    .local v11, e:Ljava/lang/Exception;
    :try_start_173
    const-string v21, "SecDownloader"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SecDescriptionParser : ParseData : Download Hanlder Parsing Failed:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecDescriptionParser;->UpdateOmaDescriptionData(Lcom/sec/android/providers/downloads/SecDescriptionInfo;Landroid/content/ContentValues;)Z

    .line 160
    const-string v21, "status"

    const/16 v22, 0x259

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->getInstallNotifyURI()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_24f

    .line 163
    const-string v21, "state"

    const/16 v22, 0x9

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1b2
    .catchall {:try_start_173 .. :try_end_1b2} :catchall_221
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_1b2} :catch_7b
    .catch Ljava/lang/NullPointerException; {:try_start_173 .. :try_end_1b2} :catch_1b3

    goto :goto_14a

    .line 178
    .end local v11           #e:Ljava/lang/Exception;
    .end local v17           #input:Ljava/io/BufferedReader;
    .end local v18           #line:Ljava/lang/String;
    :catch_1b3
    move-exception v12

    move-object v9, v10

    .line 181
    .end local v10           #ddFile:Ljava/io/File;
    .restart local v9       #ddFile:Ljava/io/File;
    .local v12, ex:Ljava/lang/NullPointerException;
    :goto_1b5
    :try_start_1b5
    const-string v21, "SecDownloader"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SecDescriptionParser : ParseData : Download Hanlder Parsing Failed:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v21, "status"

    const/16 v22, 0x1ec

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    const-string v21, "state"

    const/16 v22, 0x9

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1e5
    .catchall {:try_start_1b5 .. :try_end_1e5} :catchall_25c

    .line 188
    if-eqz v9, :cond_1ea

    .line 189
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 191
    :cond_1ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecDescriptionParser;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_cb

    .line 144
    .end local v9           #ddFile:Ljava/io/File;
    .end local v12           #ex:Ljava/lang/NullPointerException;
    .restart local v4       #RStauts:I
    .restart local v10       #ddFile:Ljava/io/File;
    .restart local v15       #index:I
    .restart local v17       #input:Ljava/io/BufferedReader;
    .restart local v18       #line:Ljava/lang/String;
    :cond_205
    :try_start_205
    const-string v21, "status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->getInstallNotifyURI()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_242

    .line 146
    const-string v21, "state"

    const/16 v22, 0x6

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_21f
    .catchall {:try_start_205 .. :try_end_21f} :catchall_221
    .catch Ljava/lang/Exception; {:try_start_205 .. :try_end_21f} :catch_172
    .catch Ljava/io/IOException; {:try_start_205 .. :try_end_21f} :catch_7b
    .catch Ljava/lang/NullPointerException; {:try_start_205 .. :try_end_21f} :catch_1b3

    goto/16 :goto_14a

    .line 188
    .end local v4           #RStauts:I
    .end local v15           #index:I
    .end local v17           #input:Ljava/io/BufferedReader;
    .end local v18           #line:Ljava/lang/String;
    :catchall_221
    move-exception v21

    move-object v9, v10

    .end local v10           #ddFile:Ljava/io/File;
    .restart local v9       #ddFile:Ljava/io/File;
    :goto_223
    if-eqz v9, :cond_228

    .line 189
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 191
    :cond_228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecDescriptionParser;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    throw v21

    .line 148
    .end local v9           #ddFile:Ljava/io/File;
    .restart local v4       #RStauts:I
    .restart local v10       #ddFile:Ljava/io/File;
    .restart local v15       #index:I
    .restart local v17       #input:Ljava/io/BufferedReader;
    .restart local v18       #line:Ljava/lang/String;
    :cond_242
    :try_start_242
    const-string v21, "state"

    const/16 v22, 0x9

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_24d
    .catchall {:try_start_242 .. :try_end_24d} :catchall_221
    .catch Ljava/lang/Exception; {:try_start_242 .. :try_end_24d} :catch_172
    .catch Ljava/io/IOException; {:try_start_242 .. :try_end_24d} :catch_7b
    .catch Ljava/lang/NullPointerException; {:try_start_242 .. :try_end_24d} :catch_1b3

    goto/16 :goto_14a

    .line 166
    .end local v4           #RStauts:I
    .end local v15           #index:I
    .restart local v11       #e:Ljava/lang/Exception;
    :cond_24f
    :try_start_24f
    const-string v21, "state"

    const/16 v22, 0x6

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_25a
    .catchall {:try_start_24f .. :try_end_25a} :catchall_221
    .catch Ljava/io/IOException; {:try_start_24f .. :try_end_25a} :catch_7b
    .catch Ljava/lang/NullPointerException; {:try_start_24f .. :try_end_25a} :catch_1b3

    goto/16 :goto_14a

    .line 188
    .end local v10           #ddFile:Ljava/io/File;
    .end local v11           #e:Ljava/lang/Exception;
    .end local v17           #input:Ljava/io/BufferedReader;
    .end local v18           #line:Ljava/lang/String;
    .restart local v9       #ddFile:Ljava/io/File;
    :catchall_25c
    move-exception v21

    goto :goto_223

    .line 178
    :catch_25e
    move-exception v12

    goto/16 :goto_1b5

    .line 169
    :catch_261
    move-exception v12

    goto/16 :goto_7d

    .line 99
    .end local v9           #ddFile:Ljava/io/File;
    .restart local v10       #ddFile:Ljava/io/File;
    .restart local v16       #input:Ljava/io/BufferedReader;
    :catchall_264
    move-exception v21

    goto/16 :goto_77
.end method

.method public UpdateOmaDescriptionData(Lcom/sec/android/providers/downloads/SecDescriptionInfo;Landroid/content/ContentValues;)Z
    .registers 21
    .parameter "mDDInfo"
    .parameter "values"

    .prologue
    .line 321
    const/4 v15, 0x1

    .line 324
    .local v15, result:Z
    const-string v3, "dd_contentSize"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->getSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-string v3, "total_bytes"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->getSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 328
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->getMimeType()Ljava/lang/String;

    move-result-object v17

    .line 329
    .local v17, value:Ljava/lang/String;
    if-eqz v17, :cond_2e

    .line 330
    const-string v3, "dd_primaryMimeType"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->getSecMimeType1()Ljava/lang/String;

    move-result-object v17

    .line 333
    if-eqz v17, :cond_3d

    .line 334
    const-string v3, "dd_SecondaryMimeType1"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_3d
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->getSecMimeType2()Ljava/lang/String;

    move-result-object v17

    .line 337
    if-eqz v17, :cond_4c

    .line 338
    const-string v3, "dd_SecondaryMimeType2"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_4c
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->GetObjectURI()Ljava/lang/String;

    move-result-object v17

    .line 341
    if-eqz v17, :cond_a6

    .line 348
    :try_start_52
    new-instance v11, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDescriptionParser;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v3, v3, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUri:Ljava/lang/String;

    invoke-direct {v11, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 349
    .local v11, MainUrl:Ljava/net/URI;
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 351
    .local v14, objUri:Landroid/net/Uri;
    const/4 v3, 0x1

    invoke-virtual {v14}, Landroid/net/Uri;->isRelative()Z

    move-result v4

    if-ne v3, v4, :cond_ec

    .line 353
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 354
    const-string v3, "/"

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 355
    const-string v3, "SecDownloader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SecDescriptionParser : UpdateOmaDescriptionData : Obj Url After Encoding:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v10

    .line 357
    .local v10, AbsoluteUri:Ljava/net/URI;
    invoke-virtual {v10}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v12

    .line 364
    .end local v10           #AbsoluteUri:Ljava/net/URI;
    .local v12, RequestUrl:Ljava/lang/String;
    :goto_98
    const-string v3, "uri"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v3, "dd_objUrl"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a6
    .catch Ljava/net/URISyntaxException; {:try_start_52 .. :try_end_a6} :catch_118
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_a6} :catch_154

    .line 380
    .end local v11           #MainUrl:Ljava/net/URI;
    .end local v12           #RequestUrl:Ljava/lang/String;
    .end local v14           #objUri:Landroid/net/Uri;
    :cond_a6
    :goto_a6
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->getContentName()Ljava/lang/String;

    move-result-object v17

    .line 381
    if-eqz v17, :cond_be

    .line 382
    const-string v3, "hint"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v3, "dd_fileName"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_be
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->getVendor()Ljava/lang/String;

    move-result-object v17

    .line 386
    if-eqz v17, :cond_cd

    .line 387
    const-string v3, "dd_vendor"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_cd
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->getDescription()Ljava/lang/String;

    move-result-object v17

    .line 390
    if-eqz v17, :cond_dc

    .line 391
    const-string v3, "dd_description"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_dc
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/providers/downloads/SecDescriptionInfo;->getInstallNotifyURI()Ljava/lang/String;

    move-result-object v17

    .line 394
    if-eqz v17, :cond_eb

    .line 395
    const-string v3, "dd_notifyurl"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_eb
    return v15

    .line 359
    .restart local v11       #MainUrl:Ljava/net/URI;
    .restart local v14       #objUri:Landroid/net/Uri;
    :cond_ec
    move-object/from16 v12, v17

    .line 360
    .restart local v12       #RequestUrl:Ljava/lang/String;
    :try_start_ee
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 361
    .local v16, temp:Landroid/net/Uri;
    new-instance v2, Ljava/net/URI;

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getPort()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .local v2, finalUri:Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_116
    .catch Ljava/net/URISyntaxException; {:try_start_ee .. :try_end_116} :catch_118
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_116} :catch_154

    move-result-object v12

    goto :goto_98

    .line 369
    .end local v2           #finalUri:Ljava/net/URI;
    .end local v11           #MainUrl:Ljava/net/URI;
    .end local v12           #RequestUrl:Ljava/lang/String;
    .end local v14           #objUri:Landroid/net/Uri;
    .end local v16           #temp:Landroid/net/Uri;
    :catch_118
    move-exception v13

    .line 370
    .local v13, e:Ljava/net/URISyntaxException;
    const-string v3, "SecDownloader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SecDescriptionParser : UpdateOmaDescriptionData : URI Syntax Error:Main URL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/providers/downloads/SecDescriptionParser;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v5, v5, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Obj URL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/providers/downloads/SecDescriptionParser;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget-object v5, v5, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mObjectURI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v15, 0x0

    .line 376
    goto/16 :goto_a6

    .line 373
    .end local v13           #e:Ljava/net/URISyntaxException;
    :catch_154
    move-exception v13

    .line 374
    .local v13, e:Ljava/lang/Exception;
    const-string v3, "SecDownloader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SecDescriptionParser : UpdateOmaDescriptionData : Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v15, 0x0

    goto/16 :goto_a6
.end method
