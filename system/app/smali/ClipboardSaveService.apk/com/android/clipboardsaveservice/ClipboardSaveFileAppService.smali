.class public Lcom/android/clipboardsaveservice/ClipboardSaveFileAppService;
.super Landroid/app/Service;
.source "ClipboardSaveFileAppService.java"


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    const-string v0, "ClipboardSaveFileAppService"

    iput-object v0, p0, Lcom/android/clipboardsaveservice/ClipboardSaveFileAppService;->TAG:Ljava/lang/String;

    return-void
.end method

.method private CompareFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 34
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 28
    const/4 v10, 0x5

    .line 29
    .local v10, compareCount:I
    const/16 v11, 0x80

    .line 31
    .local v11, compareSize:I
    const/4 v2, 0x0

    .line 32
    .local v2, Result:Z
    const/16 v17, 0x0

    .line 33
    .local v17, fisSrc:Ljava/io/FileInputStream;
    const/4 v15, 0x0

    .line 36
    .local v15, fisDest:Ljava/io/FileInputStream;
    :try_start_7
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_10} :catch_42

    .line 37
    .end local v17           #fisSrc:Ljava/io/FileInputStream;
    .local v18, fisSrc:Ljava/io/FileInputStream;
    :try_start_10
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_19} :catch_1c2

    .line 43
    .end local v15           #fisDest:Ljava/io/FileInputStream;
    .local v16, fisDest:Ljava/io/FileInputStream;
    const/4 v14, 0x0

    .line 46
    .local v14, fileSize:I
    :try_start_1a
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v27

    move-wide/from16 v0, v27

    long-to-int v14, v0

    .line 48
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v27

    move-wide/from16 v0, v27

    long-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v14, v0, :cond_5d

    .line 49
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 50
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

    .line 146
    .end local v2           #Result:Z
    .end local v14           #fileSize:I
    .local v3, Result:I
    :goto_41
    return v3

    .line 38
    .end local v3           #Result:I
    .restart local v2       #Result:Z
    :catch_42
    move-exception v12

    .line 39
    .local v12, e:Ljava/io/FileNotFoundException;
    :goto_43
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v3, v2

    .line 40
    .restart local v3       #Result:I
    goto :goto_41

    .line 54
    .end local v3           #Result:I
    .end local v12           #e:Ljava/io/FileNotFoundException;
    .end local v15           #fisDest:Ljava/io/FileInputStream;
    .end local v17           #fisSrc:Ljava/io/FileInputStream;
    .restart local v14       #fileSize:I
    .restart local v16       #fisDest:Ljava/io/FileInputStream;
    .restart local v18       #fisSrc:Ljava/io/FileInputStream;
    :catch_48
    move-exception v12

    .line 55
    .local v12, e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    .line 58
    :try_start_4c
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 59
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

    .line 63
    .restart local v3       #Result:I
    goto :goto_41

    .line 60
    .end local v3           #Result:I
    .end local v15           #fisDest:Ljava/io/FileInputStream;
    .end local v17           #fisSrc:Ljava/io/FileInputStream;
    .restart local v16       #fisDest:Ljava/io/FileInputStream;
    .restart local v18       #fisSrc:Ljava/io/FileInputStream;
    :catch_58
    move-exception v13

    .line 61
    .local v13, e1:Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_52

    .line 66
    .end local v12           #e:Ljava/io/IOException;
    .end local v13           #e1:Ljava/io/IOException;
    :cond_5d
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ge v14, v0, :cond_74

    .line 68
    :try_start_63
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 69
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

    .line 73
    .restart local v3       #Result:I
    goto :goto_41

    .line 70
    .end local v3           #Result:I
    .end local v15           #fisDest:Ljava/io/FileInputStream;
    .end local v17           #fisSrc:Ljava/io/FileInputStream;
    .restart local v16       #fisDest:Ljava/io/FileInputStream;
    .restart local v18       #fisSrc:Ljava/io/FileInputStream;
    :catch_6f
    move-exception v13

    .line 71
    .restart local v13       #e1:Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_69

    .line 76
    .end local v13           #e1:Ljava/io/IOException;
    :cond_74
    const/16 v27, 0x80

    move/from16 v0, v27

    if-gt v14, v0, :cond_f6

    move v9, v14

    .line 78
    .local v9, buffSize:I
    :goto_7b
    const/16 v21, 0x0

    .line 80
    .local v21, iCnt:I
    div-int v26, v14, v9

    .line 81
    .local v26, tmp:I
    const/16 v27, 0x5

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_f9

    const/16 v21, 0x5

    .line 84
    :goto_89
    const/16 v22, 0x0

    .line 86
    .local v22, offset:I
    mul-int v27, v9, v21

    sub-int v26, v14, v27

    .line 87
    div-int v22, v26, v21

    .line 90
    const/4 v4, 0x1

    .line 92
    .local v4, bSameData:Z
    const/4 v7, 0x0

    .line 93
    .local v7, bisSrc:Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 96
    .local v5, bisDest:Ljava/io/BufferedInputStream;
    const/16 v23, 0x0

    .line 97
    .local v23, position:I
    :try_start_96
    new-array v0, v9, [B

    move-object/from16 v25, v0

    .line 98
    .local v25, readSrcData:[B
    new-array v0, v9, [B

    move-object/from16 v24, v0

    .line 100
    .local v24, readDestData:[B
    new-instance v8, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a5
    .catchall {:try_start_96 .. :try_end_a5} :catchall_17d
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_a5} :catch_142

    .line 101
    .end local v7           #bisSrc:Ljava/io/BufferedInputStream;
    .local v8, bisSrc:Ljava/io/BufferedInputStream;
    :try_start_a5
    new-instance v6, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_ac
    .catchall {:try_start_a5 .. :try_end_ac} :catchall_1b4
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_ac} :catch_1bb

    .line 103
    .end local v5           #bisDest:Ljava/io/BufferedInputStream;
    .local v6, bisDest:Ljava/io/BufferedInputStream;
    const/16 v19, 0x0

    .local v19, i1:I
    :goto_ae
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_101

    if-eqz v4, :cond_101

    .line 104
    const/16 v27, 0x0

    :try_start_b8
    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 105
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v6, v0, v1, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 107
    add-int v27, v9, v22

    add-int v23, v23, v27

    .line 109
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    invoke-virtual {v8, v0, v1}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 110
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    invoke-virtual {v6, v0, v1}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 112
    const/16 v20, 0x0

    .local v20, i2:I
    :goto_e2
    move/from16 v0, v20

    if-ge v0, v9, :cond_fe

    if-eqz v4, :cond_fe

    .line 113
    aget-byte v27, v25, v20

    aget-byte v28, v24, v20
    :try_end_ec
    .catchall {:try_start_b8 .. :try_end_ec} :catchall_1b7
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_ec} :catch_1be

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_fc

    const/4 v4, 0x1

    .line 112
    :goto_f3
    add-int/lit8 v20, v20, 0x1

    goto :goto_e2

    .line 76
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

    .line 81
    goto :goto_89

    .line 113
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

    .line 103
    :cond_fe
    add-int/lit8 v19, v19, 0x1

    goto :goto_ae

    .line 124
    .end local v20           #i2:I
    :cond_101
    if-eqz v8, :cond_106

    .line 125
    :try_start_103
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V

    .line 127
    :cond_106
    if-eqz v6, :cond_10b

    .line 128
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 130
    :cond_10b
    if-eqz v18, :cond_110

    .line 131
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 133
    :cond_110
    if-eqz v16, :cond_115

    .line 134
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_115} :catch_11f

    :cond_115
    move-object v5, v6

    .end local v6           #bisDest:Ljava/io/BufferedInputStream;
    .restart local v5       #bisDest:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .line 144
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

    .line 146
    .restart local v3       #Result:I
    goto/16 :goto_41

    .line 136
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

    .line 137
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

    .line 139
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .end local v6           #bisDest:Ljava/io/BufferedInputStream;
    .restart local v5       #bisDest:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .line 141
    .end local v8           #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v7       #bisSrc:Ljava/io/BufferedInputStream;
    goto :goto_117

    .line 116
    .end local v12           #e:Ljava/io/IOException;
    .end local v19           #i1:I
    .end local v24           #readDestData:[B
    .end local v25           #readSrcData:[B
    :catch_142
    move-exception v12

    .line 117
    .restart local v12       #e:Ljava/io/IOException;
    :goto_143
    :try_start_143
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_146
    .catchall {:try_start_143 .. :try_end_146} :catchall_17d

    .line 118
    const/4 v4, 0x0

    .line 124
    if-eqz v7, :cond_14c

    .line 125
    :try_start_149
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 127
    :cond_14c
    if-eqz v5, :cond_151

    .line 128
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 130
    :cond_151
    if-eqz v18, :cond_156

    .line 131
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 133
    :cond_156
    if-eqz v16, :cond_117

    .line 134
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_15b} :catch_15c

    goto :goto_117

    .line 136
    :catch_15c
    move-exception v12

    .line 137
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

    .line 139
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_117

    .line 123
    .end local v12           #e:Ljava/io/IOException;
    :catchall_17d
    move-exception v27

    .line 124
    :goto_17e
    if-eqz v7, :cond_183

    .line 125
    :try_start_180
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 127
    :cond_183
    if-eqz v5, :cond_188

    .line 128
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 130
    :cond_188
    if-eqz v18, :cond_18d

    .line 131
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 133
    :cond_18d
    if-eqz v16, :cond_192

    .line 134
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_180 .. :try_end_192} :catch_193

    .line 140
    :cond_192
    :goto_192
    throw v27

    .line 136
    :catch_193
    move-exception v12

    .line 137
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

    .line 139
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_192

    .line 123
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

    .line 116
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

    .line 38
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
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 21
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 154
    invoke-super/range {p0 .. p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 157
    const-string v15, "clipboardEx"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/clipboardsaveservice/ClipboardSaveFileAppService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/sec/clipboard/ClipboardExManager;

    .line 160
    .local v7, mCM:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v8

    .line 161
    .local v8, mFileHelper:Landroid/sec/clipboard/util/FileHelper;
    const-string v15, "copyPath"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, copyPath:Ljava/lang/String;
    const-string v15, "pastePath"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 164
    .local v11, pastePath:Ljava/lang/String;
    const-string v15, "ClipboardSaveFileAppService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Copy Path : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v15, "ClipboardSaveFileAppService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Paste Path : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v3, copyFile:Ljava/io/File;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v10, pasteFile:Ljava/io/File;
    invoke-virtual {v8, v3}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v15

    if-nez v15, :cond_74

    .line 172
    const-string v15, "ClipboardSaveFileAppService"

    const-string v16, "No target file"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/clipboardsaveservice/ClipboardSaveFileAppService;->stopSelf(I)V

    .line 242
    :goto_73
    return-void

    .line 177
    :cond_74
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 178
    .local v13, savePath:Ljava/lang/String;
    const-string v15, "ClipboardSaveFileAppService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "savePath : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v8, v10}, Landroid/sec/clipboard/util/FileHelper;->makeDir(Ljava/io/File;)V

    .line 183
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v15

    if-nez v15, :cond_cc

    .line 184
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3, v15}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v12

    .line 187
    .local v12, saveFinished:Z
    if-eqz v12, :cond_c4

    .line 241
    .end local v12           #saveFinished:Z
    :goto_bc
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/clipboardsaveservice/ClipboardSaveFileAppService;->stopSelf(I)V

    goto :goto_73

    .line 197
    .restart local v12       #saveFinished:Z
    :cond_c4
    const-string v15, "ClipboardSaveFileAppService"

    const-string v16, "Failed to save file"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bc

    .line 201
    .end local v12           #saveFinished:Z
    :cond_cc
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/android/clipboardsaveservice/ClipboardSaveFileAppService;->CompareFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_17f

    .line 202
    new-instance v14, Ljava/util/StringTokenizer;

    const-string v15, "."

    invoke-direct {v14, v13, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .local v14, st:Ljava/util/StringTokenizer;
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, convertPath:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 206
    .local v9, parentName:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    .line 208
    .local v5, count:I
    const/4 v15, 0x1

    if-le v5, v15, :cond_10f

    .line 209
    const/4 v6, 0x1

    .local v6, i:I
    :goto_ef
    if-ge v6, v5, :cond_10f

    .line 210
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    add-int/lit8 v6, v6, 0x1

    goto :goto_ef

    .line 214
    .end local v6           #i:I
    :cond_10f
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    const-string v15, "ClipboardSaveFileAppService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "convertPath = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v15

    if-eqz v15, :cond_162

    .line 219
    const-string v15, "ClipboardSaveFileAppService"

    const-string v16, "The same file already exists"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bc

    .line 221
    :cond_162
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3, v15}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v12

    .line 224
    .restart local v12       #saveFinished:Z
    if-eqz v12, :cond_176

    .line 228
    const-string v15, "ClipboardSaveFileAppService"

    const-string v16, "save finished"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bc

    .line 231
    :cond_176
    const-string v15, "ClipboardSaveFileAppService"

    const-string v16, "Failed to save file"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bc

    .line 237
    .end local v2           #convertPath:Ljava/lang/String;
    .end local v5           #count:I
    .end local v9           #parentName:Ljava/lang/String;
    .end local v12           #saveFinished:Z
    .end local v14           #st:Ljava/util/StringTokenizer;
    :cond_17f
    const-string v15, "ClipboardSaveFileAppService"

    const-string v16, "The same file already exists"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bc
.end method
