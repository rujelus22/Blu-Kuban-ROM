.class public Lcom/android/clipboardsaveservice/ClipboardCopyFileAppService;
.super Landroid/app/Service;
.source "ClipboardCopyFileAppService.java"


# instance fields
.field final LIMIT_FILE_SIZE:I

.field final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 24
    const-string v0, "ClipboardCopyFileAppService"

    iput-object v0, p0, Lcom/android/clipboardsaveservice/ClipboardCopyFileAppService;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/clipboardsaveservice/ClipboardCopyFileAppService;->LIMIT_FILE_SIZE:I

    return-void
.end method

.method private CompareFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 34
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 31
    const/4 v10, 0x5

    .line 32
    .local v10, compareCount:I
    const/16 v11, 0x80

    .line 34
    .local v11, compareSize:I
    const/4 v2, 0x0

    .line 35
    .local v2, Result:Z
    const/16 v17, 0x0

    .line 36
    .local v17, fisSrc:Ljava/io/FileInputStream;
    const/4 v15, 0x0

    .line 39
    .local v15, fisDest:Ljava/io/FileInputStream;
    :try_start_7
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_10} :catch_42

    .line 40
    .end local v17           #fisSrc:Ljava/io/FileInputStream;
    .local v18, fisSrc:Ljava/io/FileInputStream;
    :try_start_10
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_19} :catch_1c2

    .line 46
    .end local v15           #fisDest:Ljava/io/FileInputStream;
    .local v16, fisDest:Ljava/io/FileInputStream;
    const/4 v14, 0x0

    .line 49
    .local v14, fileSize:I
    :try_start_1a
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v27

    move-wide/from16 v0, v27

    long-to-int v14, v0

    .line 51
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v27

    move-wide/from16 v0, v27

    long-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v14, v0, :cond_5d

    .line 52
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 53
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_3c} :catch_48

    move-object/from16 v15, v16

    .end local v16           #fisDest:Ljava/io/FileInputStream;
    .restart local v15       #fisDest:Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18           #fisSrc:Ljava/io/FileInputStream;
    .restart local v17       #fisSrc:Ljava/io/FileInputStream;
    move v3, v2

    .line 149
    .end local v2           #Result:Z
    .end local v14           #fileSize:I
    .local v3, Result:I
    :goto_41
    return v3

    .line 41
    .end local v3           #Result:I
    .restart local v2       #Result:Z
    :catch_42
    move-exception v12

    .line 42
    .local v12, e:Ljava/io/FileNotFoundException;
    :goto_43
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v3, v2

    .line 43
    .restart local v3       #Result:I
    goto :goto_41

    .line 57
    .end local v3           #Result:I
    .end local v12           #e:Ljava/io/FileNotFoundException;
    .end local v15           #fisDest:Ljava/io/FileInputStream;
    .end local v17           #fisSrc:Ljava/io/FileInputStream;
    .restart local v14       #fileSize:I
    .restart local v16       #fisDest:Ljava/io/FileInputStream;
    .restart local v18       #fisSrc:Ljava/io/FileInputStream;
    :catch_48
    move-exception v12

    .line 58
    .local v12, e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    .line 61
    :try_start_4c
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 62
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_52} :catch_58

    :goto_52
    move-object/from16 v15, v16

    .end local v16           #fisDest:Ljava/io/FileInputStream;
    .restart local v15       #fisDest:Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18           #fisSrc:Ljava/io/FileInputStream;
    .restart local v17       #fisSrc:Ljava/io/FileInputStream;
    move v3, v2

    .line 66
    .restart local v3       #Result:I
    goto :goto_41

    .line 63
    .end local v3           #Result:I
    .end local v15           #fisDest:Ljava/io/FileInputStream;
    .end local v17           #fisSrc:Ljava/io/FileInputStream;
    .restart local v16       #fisDest:Ljava/io/FileInputStream;
    .restart local v18       #fisSrc:Ljava/io/FileInputStream;
    :catch_58
    move-exception v13

    .line 64
    .local v13, e1:Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_52

    .line 69
    .end local v12           #e:Ljava/io/IOException;
    .end local v13           #e1:Ljava/io/IOException;
    :cond_5d
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ge v14, v0, :cond_74

    .line 71
    :try_start_63
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 72
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_69} :catch_6f

    :goto_69
    move-object/from16 v15, v16

    .end local v16           #fisDest:Ljava/io/FileInputStream;
    .restart local v15       #fisDest:Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18           #fisSrc:Ljava/io/FileInputStream;
    .restart local v17       #fisSrc:Ljava/io/FileInputStream;
    move v3, v2

    .line 76
    .restart local v3       #Result:I
    goto :goto_41

    .line 73
    .end local v3           #Result:I
    .end local v15           #fisDest:Ljava/io/FileInputStream;
    .end local v17           #fisSrc:Ljava/io/FileInputStream;
    .restart local v16       #fisDest:Ljava/io/FileInputStream;
    .restart local v18       #fisSrc:Ljava/io/FileInputStream;
    :catch_6f
    move-exception v13

    .line 74
    .restart local v13       #e1:Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_69

    .line 79
    .end local v13           #e1:Ljava/io/IOException;
    :cond_74
    const/16 v27, 0x80

    move/from16 v0, v27

    if-gt v14, v0, :cond_f6

    move v9, v14

    .line 81
    .local v9, buffSize:I
    :goto_7b
    const/16 v21, 0x0

    .line 83
    .local v21, iCnt:I
    div-int v26, v14, v9

    .line 84
    .local v26, tmp:I
    const/16 v27, 0x5

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_f9

    const/16 v21, 0x5

    .line 87
    :goto_89
    const/16 v22, 0x0

    .line 89
    .local v22, offset:I
    mul-int v27, v9, v21

    sub-int v26, v14, v27

    .line 90
    div-int v22, v26, v21

    .line 93
    const/4 v4, 0x1

    .line 95
    .local v4, bSameData:Z
    const/4 v7, 0x0

    .line 96
    .local v7, bisSrc:Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 99
    .local v5, bisDest:Ljava/io/BufferedInputStream;
    const/16 v23, 0x0

    .line 100
    .local v23, position:I
    :try_start_96
    new-array v0, v9, [B

    move-object/from16 v25, v0

    .line 101
    .local v25, readSrcData:[B
    new-array v0, v9, [B

    move-object/from16 v24, v0

    .line 103
    .local v24, readDestData:[B
    new-instance v8, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a5
    .catchall {:try_start_96 .. :try_end_a5} :catchall_17d
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_a5} :catch_142

    .line 104
    .end local v7           #bisSrc:Ljava/io/BufferedInputStream;
    .local v8, bisSrc:Ljava/io/BufferedInputStream;
    :try_start_a5
    new-instance v6, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_ac
    .catchall {:try_start_a5 .. :try_end_ac} :catchall_1b4
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_ac} :catch_1bb

    .line 106
    .end local v5           #bisDest:Ljava/io/BufferedInputStream;
    .local v6, bisDest:Ljava/io/BufferedInputStream;
    const/16 v19, 0x0

    .local v19, i1:I
    :goto_ae
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_101

    if-eqz v4, :cond_101

    .line 107
    const/16 v27, 0x0

    :try_start_b8
    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 108
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v6, v0, v1, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 110
    add-int v27, v9, v22

    add-int v23, v23, v27

    .line 112
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    invoke-virtual {v8, v0, v1}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 113
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    invoke-virtual {v6, v0, v1}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 115
    const/16 v20, 0x0

    .local v20, i2:I
    :goto_e2
    move/from16 v0, v20

    if-ge v0, v9, :cond_fe

    if-eqz v4, :cond_fe

    .line 116
    aget-byte v27, v25, v20

    aget-byte v28, v24, v20
    :try_end_ec
    .catchall {:try_start_b8 .. :try_end_ec} :catchall_1b7
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_ec} :catch_1be

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_fc

    const/4 v4, 0x1

    .line 115
    :goto_f3
    add-int/lit8 v20, v20, 0x1

    goto :goto_e2

    .line 79
    .end local v4           #bSameData:Z
    .end local v6           #bisDest:Ljava/io/BufferedInputStream;
    .end local v8           #bisSrc:Ljava/io/BufferedInputStream;
    .end local v9           #buffSize:I
    .end local v19           #i1:I
    .end local v20           #i2:I
    .end local v21           #iCnt:I
    .end local v22           #offset:I
    .end local v23           #position:I
    .end local v24           #readDestData:[B
    .end local v25           #readSrcData:[B
    .end local v26           #tmp:I
    :cond_f6
    const/16 v9, 0x80

    goto :goto_7b

    .restart local v9       #buffSize:I
    .restart local v21       #iCnt:I
    .restart local v26       #tmp:I
    :cond_f9
    move/from16 v21, v26

    .line 84
    goto :goto_89

    .line 116
    .restart local v4       #bSameData:Z
    .restart local v6       #bisDest:Ljava/io/BufferedInputStream;
    .restart local v8       #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v19       #i1:I
    .restart local v20       #i2:I
    .restart local v22       #offset:I
    .restart local v23       #position:I
    .restart local v24       #readDestData:[B
    .restart local v25       #readSrcData:[B
    :cond_fc
    const/4 v4, 0x0

    goto :goto_f3

    .line 106
    :cond_fe
    add-int/lit8 v19, v19, 0x1

    goto :goto_ae

    .line 127
    .end local v20           #i2:I
    :cond_101
    if-eqz v8, :cond_106

    .line 128
    :try_start_103
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V

    .line 130
    :cond_106
    if-eqz v6, :cond_10b

    .line 131
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 133
    :cond_10b
    if-eqz v18, :cond_110

    .line 134
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 136
    :cond_110
    if-eqz v16, :cond_115

    .line 137
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_115} :catch_11f

    :cond_115
    move-object v5, v6

    .end local v6           #bisDest:Ljava/io/BufferedInputStream;
    .restart local v5       #bisDest:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .line 147
    .end local v8           #bisSrc:Ljava/io/BufferedInputStream;
    .end local v19           #i1:I
    .end local v24           #readDestData:[B
    .end local v25           #readSrcData:[B
    .restart local v7       #bisSrc:Ljava/io/BufferedInputStream;
    :cond_117
    :goto_117
    move v2, v4

    move-object/from16 v15, v16

    .end local v16           #fisDest:Ljava/io/FileInputStream;
    .restart local v15       #fisDest:Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18           #fisSrc:Ljava/io/FileInputStream;
    .restart local v17       #fisSrc:Ljava/io/FileInputStream;
    move v3, v2

    .line 149
    .restart local v3       #Result:I
    goto/16 :goto_41

    .line 139
    .end local v3           #Result:I
    .end local v5           #bisDest:Ljava/io/BufferedInputStream;
    .end local v7           #bisSrc:Ljava/io/BufferedInputStream;
    .end local v15           #fisDest:Ljava/io/FileInputStream;
    .end local v17           #fisSrc:Ljava/io/FileInputStream;
    .restart local v6       #bisDest:Ljava/io/BufferedInputStream;
    .restart local v8       #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v16       #fisDest:Ljava/io/FileInputStream;
    .restart local v18       #fisSrc:Ljava/io/FileInputStream;
    .restart local v19       #i1:I
    .restart local v24       #readDestData:[B
    .restart local v25       #readSrcData:[B
    :catch_11f
    move-exception v12

    .line 140
    .restart local v12       #e:Ljava/io/IOException;
    const-string v27, "ClipboardServiceEx"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "close : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .end local v6           #bisDest:Ljava/io/BufferedInputStream;
    .restart local v5       #bisDest:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .line 144
    .end local v8           #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v7       #bisSrc:Ljava/io/BufferedInputStream;
    goto :goto_117

    .line 119
    .end local v12           #e:Ljava/io/IOException;
    .end local v19           #i1:I
    .end local v24           #readDestData:[B
    .end local v25           #readSrcData:[B
    :catch_142
    move-exception v12

    .line 120
    .restart local v12       #e:Ljava/io/IOException;
    :goto_143
    :try_start_143
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_146
    .catchall {:try_start_143 .. :try_end_146} :catchall_17d

    .line 121
    const/4 v4, 0x0

    .line 127
    if-eqz v7, :cond_14c

    .line 128
    :try_start_149
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 130
    :cond_14c
    if-eqz v5, :cond_151

    .line 131
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 133
    :cond_151
    if-eqz v18, :cond_156

    .line 134
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 136
    :cond_156
    if-eqz v16, :cond_117

    .line 137
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_15b} :catch_15c

    goto :goto_117

    .line 139
    :catch_15c
    move-exception v12

    .line 140
    const-string v27, "ClipboardServiceEx"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "close : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_117

    .line 126
    .end local v12           #e:Ljava/io/IOException;
    :catchall_17d
    move-exception v27

    .line 127
    :goto_17e
    if-eqz v7, :cond_183

    .line 128
    :try_start_180
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 130
    :cond_183
    if-eqz v5, :cond_188

    .line 131
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 133
    :cond_188
    if-eqz v18, :cond_18d

    .line 134
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 136
    :cond_18d
    if-eqz v16, :cond_192

    .line 137
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_180 .. :try_end_192} :catch_193

    .line 143
    :cond_192
    :goto_192
    throw v27

    .line 139
    :catch_193
    move-exception v12

    .line 140
    .restart local v12       #e:Ljava/io/IOException;
    const-string v28, "ClipboardServiceEx"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "close : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_192

    .line 126
    .end local v7           #bisSrc:Ljava/io/BufferedInputStream;
    .end local v12           #e:Ljava/io/IOException;
    .restart local v8       #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v24       #readDestData:[B
    .restart local v25       #readSrcData:[B
    :catchall_1b4
    move-exception v27

    move-object v7, v8

    .end local v8           #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v7       #bisSrc:Ljava/io/BufferedInputStream;
    goto :goto_17e

    .end local v5           #bisDest:Ljava/io/BufferedInputStream;
    .end local v7           #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v6       #bisDest:Ljava/io/BufferedInputStream;
    .restart local v8       #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v19       #i1:I
    :catchall_1b7
    move-exception v27

    move-object v5, v6

    .end local v6           #bisDest:Ljava/io/BufferedInputStream;
    .restart local v5       #bisDest:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v7       #bisSrc:Ljava/io/BufferedInputStream;
    goto :goto_17e

    .line 119
    .end local v7           #bisSrc:Ljava/io/BufferedInputStream;
    .end local v19           #i1:I
    .restart local v8       #bisSrc:Ljava/io/BufferedInputStream;
    :catch_1bb
    move-exception v12

    move-object v7, v8

    .end local v8           #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v7       #bisSrc:Ljava/io/BufferedInputStream;
    goto :goto_143

    .end local v5           #bisDest:Ljava/io/BufferedInputStream;
    .end local v7           #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v6       #bisDest:Ljava/io/BufferedInputStream;
    .restart local v8       #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v19       #i1:I
    :catch_1be
    move-exception v12

    move-object v5, v6

    .end local v6           #bisDest:Ljava/io/BufferedInputStream;
    .restart local v5       #bisDest:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v7       #bisSrc:Ljava/io/BufferedInputStream;
    goto :goto_143

    .line 41
    .end local v4           #bSameData:Z
    .end local v5           #bisDest:Ljava/io/BufferedInputStream;
    .end local v7           #bisSrc:Ljava/io/BufferedInputStream;
    .end local v9           #buffSize:I
    .end local v14           #fileSize:I
    .end local v16           #fisDest:Ljava/io/FileInputStream;
    .end local v19           #i1:I
    .end local v21           #iCnt:I
    .end local v22           #offset:I
    .end local v23           #position:I
    .end local v24           #readDestData:[B
    .end local v25           #readSrcData:[B
    .end local v26           #tmp:I
    .restart local v15       #fisDest:Ljava/io/FileInputStream;
    :catch_1c2
    move-exception v12

    move-object/from16 v17, v18

    .end local v18           #fisSrc:Ljava/io/FileInputStream;
    .restart local v17       #fisSrc:Ljava/io/FileInputStream;
    goto/16 :goto_43
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 272
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 23
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 157
    invoke-super/range {p0 .. p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 160
    const-string v17, "clipboardEx"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/clipboardsaveservice/ClipboardCopyFileAppService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/sec/clipboard/ClipboardExManager;

    .line 163
    .local v8, mCM:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v10

    .line 164
    .local v10, mFileHelper:Landroid/sec/clipboard/util/FileHelper;
    const-string v17, "copyPath"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, copyPath:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "data/data/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/clipboardsaveservice/ClipboardCopyFileAppService;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/temp/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 169
    .local v13, pastePath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v3, copyFile:Ljava/io/File;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v12, pasteFile:Ljava/io/File;
    invoke-virtual {v10, v3}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v17

    if-nez v17, :cond_59

    .line 174
    const-string v17, "ClipboardCopyFileAppService"

    const-string v18, "No target file"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/clipboardsaveservice/ClipboardCopyFileAppService;->stopSelf(I)V

    .line 267
    :goto_58
    return-void

    .line 180
    :cond_59
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 183
    .local v15, savePath:Ljava/lang/String;
    invoke-virtual {v10, v12}, Landroid/sec/clipboard/util/FileHelper;->makeDir(Ljava/io/File;)V

    .line 186
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_ba

    invoke-virtual {v12}, Ljava/io/File;->canRead()Z

    move-result v17

    if-eqz v17, :cond_ba

    invoke-virtual {v12}, Ljava/io/File;->canWrite()Z

    move-result v17

    if-eqz v17, :cond_ba

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_ba

    .line 187
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 188
    .local v7, list:[Ljava/io/File;
    array-length v0, v7

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_ba

    .line 189
    const/4 v6, 0x0

    .local v6, i:I
    :goto_9b
    array-length v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_ba

    .line 190
    aget-object v17, v7, v6

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isFile()Z

    move-result v17

    if-eqz v17, :cond_b7

    aget-object v17, v7, v6

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_b7

    .line 191
    aget-object v17, v7, v6

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 189
    :cond_b7
    add-int/lit8 v6, v6, 0x1

    goto :goto_9b

    .line 198
    .end local v6           #i:I
    .end local v7           #list:[Ljava/io/File;
    :cond_ba
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v17

    if-nez v17, :cond_127

    .line 199
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v3, v0}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v14

    .line 202
    .local v14, saveFinished:Z
    if-eqz v14, :cond_117

    .line 203
    new-instance v9, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-direct {v9}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;-><init>()V

    .line 205
    .local v9, mClipBmp:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    const-string v17, "ClipboardCopyFileAppService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "savePath = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {v9, v15}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmapPath(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_106

    .line 208
    const-string v17, "ClipboardCopyFileAppService"

    const-string v18, "Error Copy Clipboard [SetBitmap]"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58

    .line 211
    :cond_106
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v9}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v17

    if-nez v17, :cond_11e

    .line 212
    const-string v17, "ClipboardCopyFileAppService"

    const-string v18, "Error Copy Clipboard [setData]"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58

    .line 216
    .end local v9           #mClipBmp:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    :cond_117
    const-string v17, "ClipboardCopyFileAppService"

    const-string v18, "Failed to copy file"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v14           #saveFinished:Z
    :cond_11e
    :goto_11e
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/clipboardsaveservice/ClipboardCopyFileAppService;->stopSelf(I)V

    goto/16 :goto_58

    .line 220
    :cond_127
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15}, Lcom/android/clipboardsaveservice/ClipboardCopyFileAppService;->CompareFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_20b

    .line 221
    new-instance v16, Ljava/util/StringTokenizer;

    const-string v17, "."

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .local v16, st:Ljava/util/StringTokenizer;
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, convertPath:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 225
    .local v11, parentName:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    .line 227
    .local v5, count:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v5, v0, :cond_173

    .line 228
    const/4 v6, 0x1

    .restart local v6       #i:I
    :goto_151
    if-ge v6, v5, :cond_173

    .line 229
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    add-int/lit8 v6, v6, 0x1

    goto :goto_151

    .line 233
    .end local v6           #i:I
    :cond_173
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "-"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 235
    const-string v17, "ClipboardCopyFileAppService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "convertPath = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v17

    if-eqz v17, :cond_1ce

    .line 238
    const-string v17, "ClipboardCopyFileAppService"

    const-string v18, "The same file already exists"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11e

    .line 240
    :cond_1ce
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v3, v0}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v14

    .line 243
    .restart local v14       #saveFinished:Z
    if-eqz v14, :cond_202

    .line 244
    new-instance v9, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-direct {v9}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;-><init>()V

    .line 246
    .restart local v9       #mClipBmp:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v9, v2}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmapPath(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1f1

    .line 247
    const-string v17, "ClipboardCopyFileAppService"

    const-string v18, "Error Copy Clipboard [SetBitmap]"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58

    .line 251
    :cond_1f1
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v9}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v17

    if-nez v17, :cond_11e

    .line 252
    const-string v17, "ClipboardCopyFileAppService"

    const-string v18, "Error Copy Clipboard [setData]"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58

    .line 256
    .end local v9           #mClipBmp:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    :cond_202
    const-string v17, "ClipboardCopyFileAppService"

    const-string v18, "Failed to copy file"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11e

    .line 262
    .end local v2           #convertPath:Ljava/lang/String;
    .end local v5           #count:I
    .end local v11           #parentName:Ljava/lang/String;
    .end local v14           #saveFinished:Z
    .end local v16           #st:Ljava/util/StringTokenizer;
    :cond_20b
    const-string v17, "ClipboardCopyFileAppService"

    const-string v18, "The same file already exists"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11e
.end method
