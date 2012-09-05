.class public Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
.super Ljava/lang/Object;
.source "BluetoothOppSendFileInfo.java"


# instance fields
.field public final mData:Ljava/lang/String;

.field public final mDestAddr:Ljava/lang/String;

.field public final mFileName:Ljava/lang/String;

.field public final mInputStream:Ljava/io/FileInputStream;

.field public final mLength:J

.field public final mMimetype:Ljava/lang/String;

.field public final mStatus:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;ILjava/lang/String;)V
    .registers 9
    .parameter "fileName"
    .parameter "type"
    .parameter "length"
    .parameter "inputStream"
    .parameter "status"
    .parameter "dest"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    .line 81
    iput-wide p3, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    .line 82
    iput-object p5, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    .line 83
    iput p6, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    .line 84
    iput-object p7, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mDestAddr:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mData:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public static generateFileInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .registers 24
    .parameter "context"
    .parameter "uri"
    .parameter "type"
    .parameter "dest"

    .prologue
    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 103
    .local v1, contentResolver:Landroid/content/ContentResolver;
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 104
    .local v2, u:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    .line 105
    .local v19, scheme:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v11

    .line 106
    .local v11, authority:Ljava/lang/String;
    const/4 v15, 0x0

    .line 107
    .local v15, fileName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 108
    .local v12, contentType:Ljava/lang/String;
    const-wide/16 v16, 0x0

    .line 113
    .local v16, length:J
    if-nez v19, :cond_30

    .line 114
    const-string v3, "BluetoothOppSendFileInfo"

    const-string v5, "scheme is null"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .end local v1           #contentResolver:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1ec

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;ILjava/lang/String;)V

    .end local v2           #u:Landroid/net/Uri;
    move-wide/from16 v6, v16

    .end local v16           #length:J
    .local v6, length:J
    move-object v4, v15

    .end local v15           #fileName:Ljava/lang/String;
    .local v4, fileName:Ljava/lang/String;
    move-object v3, v1

    .line 205
    :goto_2f
    return-object v3

    .line 119
    .end local v4           #fileName:Ljava/lang/String;
    .end local v6           #length:J
    .restart local v1       #contentResolver:Landroid/content/ContentResolver;
    .restart local v2       #u:Landroid/net/Uri;
    .restart local v15       #fileName:Ljava/lang/String;
    .restart local v16       #length:J
    :cond_30
    const-string v3, "content"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11e

    if-eqz v11, :cond_11e

    const-string v3, "media"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11e

    .line 120
    const-string v3, "BluetoothOppSendFileInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "authority = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 122
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "_data"

    aput-object v9, v3, v5

    const/4 v5, 0x1

    const-string v9, "_size"

    aput-object v9, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 125
    .local v18, metadataCursor:Landroid/database/Cursor;
    if-eqz v18, :cond_23c

    .line 127
    :try_start_76
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_237

    .line 128
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->getFileName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_86
    .catchall {:try_start_76 .. :try_end_86} :catchall_116

    move-result-object v4

    .line 131
    .end local v15           #fileName:Ljava/lang/String;
    .restart local v4       #fileName:Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_88
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_8d
    .catchall {:try_start_88 .. :try_end_8d} :catchall_221

    move-result-wide v6

    .line 133
    .end local v16           #length:J
    .restart local v6       #length:J
    :try_start_8e
    const-string v3, "BluetoothOppSendFileInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fileName = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " length = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_8e .. :try_end_b0} :catchall_226

    .line 136
    :goto_b0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :goto_b3
    move-wide/from16 v16, v6

    .end local v6           #length:J
    .restart local v16       #length:J
    move-object v15, v4

    .line 170
    .end local v4           #fileName:Ljava/lang/String;
    .end local v18           #metadataCursor:Landroid/database/Cursor;
    .restart local v15       #fileName:Ljava/lang/String;
    :goto_b6
    :try_start_b6
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    check-cast v8, Ljava/io/FileInputStream;
    :try_end_bc
    .catch Ljava/io/FileNotFoundException; {:try_start_b6 .. :try_end_bc} :catch_1bd

    .line 178
    .local v8, is:Ljava/io/FileInputStream;
    const-wide/16 v9, 0x0

    cmp-long v3, v16, v9

    if-nez v3, :cond_229

    .line 180
    :try_start_c2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->available()I
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_1d1
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c5} :catch_1ec

    move-result v3

    int-to-long v6, v3

    .line 181
    .end local v16           #length:J
    .restart local v6       #length:J
    :try_start_c7
    const-string v3, "BluetoothOppSendFileInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file length is "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_df} :catch_215
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_df} :catch_211

    .line 198
    :goto_df
    if-eqz v15, :cond_207

    .line 199
    const-string v3, "BluetoothOppSendFileInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fileName = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " length = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v3, "[:\"<>*?|/]"

    const-string v5, "_"

    invoke-virtual {v15, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 205
    .end local v15           #fileName:Ljava/lang/String;
    .restart local v4       #fileName:Ljava/lang/String;
    :goto_10b
    new-instance v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    const/4 v9, 0x0

    move-object v5, v12

    move-object/from16 v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;ILjava/lang/String;)V

    goto/16 :goto_2f

    .line 136
    .end local v4           #fileName:Ljava/lang/String;
    .end local v6           #length:J
    .end local v8           #is:Ljava/io/FileInputStream;
    .restart local v15       #fileName:Ljava/lang/String;
    .restart local v16       #length:J
    .restart local v18       #metadataCursor:Landroid/database/Cursor;
    :catchall_116
    move-exception v3

    move-wide/from16 v6, v16

    .end local v16           #length:J
    .restart local v6       #length:J
    move-object v4, v15

    .end local v15           #fileName:Ljava/lang/String;
    .restart local v4       #fileName:Ljava/lang/String;
    :goto_11a
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v3

    .line 139
    .end local v4           #fileName:Ljava/lang/String;
    .end local v6           #length:J
    .end local v18           #metadataCursor:Landroid/database/Cursor;
    .restart local v15       #fileName:Ljava/lang/String;
    .restart local v16       #length:J
    :cond_11e
    const-string v3, "content"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_188

    .line 140
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 141
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "_display_name"

    aput-object v9, v3, v5

    const/4 v5, 0x1

    const-string v9, "_size"

    aput-object v9, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 144
    .restart local v18       #metadataCursor:Landroid/database/Cursor;
    if-eqz v18, :cond_232

    .line 146
    :try_start_142
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_22d

    .line 147
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_14e
    .catchall {:try_start_142 .. :try_end_14e} :catchall_180

    move-result-object v4

    .line 150
    .end local v15           #fileName:Ljava/lang/String;
    .restart local v4       #fileName:Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_150
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_155
    .catchall {:try_start_150 .. :try_end_155} :catchall_219

    move-result-wide v6

    .line 152
    .end local v16           #length:J
    .restart local v6       #length:J
    :try_start_156
    const-string v3, "BluetoothOppSendFileInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fileName = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " length = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_178
    .catchall {:try_start_156 .. :try_end_178} :catchall_21e

    .line 155
    :goto_178
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :goto_17b
    move-wide/from16 v16, v6

    .end local v6           #length:J
    .restart local v16       #length:J
    move-object v15, v4

    .line 158
    .end local v4           #fileName:Ljava/lang/String;
    .restart local v15       #fileName:Ljava/lang/String;
    goto/16 :goto_b6

    .line 155
    :catchall_180
    move-exception v3

    move-wide/from16 v6, v16

    .end local v16           #length:J
    .restart local v6       #length:J
    move-object v4, v15

    .end local v15           #fileName:Ljava/lang/String;
    .restart local v4       #fileName:Ljava/lang/String;
    :goto_184
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v3

    .line 158
    .end local v4           #fileName:Ljava/lang/String;
    .end local v6           #length:J
    .end local v18           #metadataCursor:Landroid/database/Cursor;
    .restart local v15       #fileName:Ljava/lang/String;
    .restart local v16       #length:J
    :cond_188
    const-string v3, "file"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1aa

    .line 159
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 160
    .end local v15           #fileName:Ljava/lang/String;
    .restart local v4       #fileName:Ljava/lang/String;
    move-object/from16 v12, p2

    .line 161
    new-instance v14, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v14, f:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v6

    .end local v16           #length:J
    .restart local v6       #length:J
    move-wide/from16 v16, v6

    .end local v6           #length:J
    .restart local v16       #length:J
    move-object v15, v4

    .line 163
    .end local v4           #fileName:Ljava/lang/String;
    .restart local v15       #fileName:Ljava/lang/String;
    goto/16 :goto_b6

    .line 165
    .end local v14           #f:Ljava/io/File;
    :cond_1aa
    new-instance v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1ec

    move-object/from16 v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;ILjava/lang/String;)V

    move-wide/from16 v6, v16

    .end local v16           #length:J
    .restart local v6       #length:J
    move-object v4, v15

    .end local v15           #fileName:Ljava/lang/String;
    .restart local v4       #fileName:Ljava/lang/String;
    goto/16 :goto_2f

    .line 171
    .end local v4           #fileName:Ljava/lang/String;
    .end local v6           #length:J
    .restart local v15       #fileName:Ljava/lang/String;
    .restart local v16       #length:J
    :catch_1bd
    move-exception v13

    .line 172
    .local v13, e:Ljava/io/FileNotFoundException;
    new-instance v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1ec

    move-object/from16 v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;ILjava/lang/String;)V

    move-wide/from16 v6, v16

    .end local v16           #length:J
    .restart local v6       #length:J
    move-object v4, v15

    .end local v15           #fileName:Ljava/lang/String;
    .restart local v4       #fileName:Ljava/lang/String;
    goto/16 :goto_2f

    .line 182
    .end local v4           #fileName:Ljava/lang/String;
    .end local v6           #length:J
    .end local v13           #e:Ljava/io/FileNotFoundException;
    .restart local v8       #is:Ljava/io/FileInputStream;
    .restart local v15       #fileName:Ljava/lang/String;
    .restart local v16       #length:J
    :catch_1d1
    move-exception v13

    .line 183
    .local v13, e:Ljava/io/IOException;
    :goto_1d2
    const-string v3, "BluetoothOppSendFileInfo"

    const-string v5, "Read stream exception: "

    invoke-static {v3, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    new-instance v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1ec

    move-object/from16 v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;ILjava/lang/String;)V

    .end local v8           #is:Ljava/io/FileInputStream;
    move-wide/from16 v6, v16

    .end local v16           #length:J
    .restart local v6       #length:J
    move-object v4, v15

    .end local v15           #fileName:Ljava/lang/String;
    .restart local v4       #fileName:Ljava/lang/String;
    goto/16 :goto_2f

    .line 189
    .end local v4           #fileName:Ljava/lang/String;
    .end local v6           #length:J
    .end local v13           #e:Ljava/io/IOException;
    .restart local v8       #is:Ljava/io/FileInputStream;
    .restart local v15       #fileName:Ljava/lang/String;
    .restart local v16       #length:J
    :catch_1ec
    move-exception v13

    .line 190
    .local v13, e:Ljava/lang/Exception;
    :goto_1ed
    const-string v3, "BluetoothOppSendFileInfo"

    const-string v5, "Handling other run time exception: "

    invoke-static {v3, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    new-instance v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1ec

    move-object/from16 v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;ILjava/lang/String;)V

    .end local v8           #is:Ljava/io/FileInputStream;
    move-wide/from16 v6, v16

    .end local v16           #length:J
    .restart local v6       #length:J
    move-object v4, v15

    .end local v15           #fileName:Ljava/lang/String;
    .restart local v4       #fileName:Ljava/lang/String;
    goto/16 :goto_2f

    .line 202
    .end local v4           #fileName:Ljava/lang/String;
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v8       #is:Ljava/io/FileInputStream;
    .restart local v15       #fileName:Ljava/lang/String;
    :cond_207
    const-string v3, "BluetoothOppSendFileInfo"

    const-string v5, "fileName == null"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v15

    .end local v15           #fileName:Ljava/lang/String;
    .restart local v4       #fileName:Ljava/lang/String;
    goto/16 :goto_10b

    .line 189
    .end local v4           #fileName:Ljava/lang/String;
    .restart local v15       #fileName:Ljava/lang/String;
    :catch_211
    move-exception v13

    move-wide/from16 v16, v6

    .end local v6           #length:J
    .restart local v16       #length:J
    goto :goto_1ed

    .line 182
    .end local v16           #length:J
    .restart local v6       #length:J
    :catch_215
    move-exception v13

    move-wide/from16 v16, v6

    .end local v6           #length:J
    .restart local v16       #length:J
    goto :goto_1d2

    .line 155
    .end local v8           #is:Ljava/io/FileInputStream;
    .end local v15           #fileName:Ljava/lang/String;
    .restart local v4       #fileName:Ljava/lang/String;
    .restart local v18       #metadataCursor:Landroid/database/Cursor;
    :catchall_219
    move-exception v3

    move-wide/from16 v6, v16

    .end local v16           #length:J
    .restart local v6       #length:J
    goto/16 :goto_184

    :catchall_21e
    move-exception v3

    goto/16 :goto_184

    .line 136
    .end local v6           #length:J
    .restart local v16       #length:J
    :catchall_221
    move-exception v3

    move-wide/from16 v6, v16

    .end local v16           #length:J
    .restart local v6       #length:J
    goto/16 :goto_11a

    :catchall_226
    move-exception v3

    goto/16 :goto_11a

    .end local v4           #fileName:Ljava/lang/String;
    .end local v6           #length:J
    .end local v18           #metadataCursor:Landroid/database/Cursor;
    .restart local v8       #is:Ljava/io/FileInputStream;
    .restart local v15       #fileName:Ljava/lang/String;
    .restart local v16       #length:J
    :cond_229
    move-wide/from16 v6, v16

    .end local v16           #length:J
    .restart local v6       #length:J
    goto/16 :goto_df

    .end local v6           #length:J
    .end local v8           #is:Ljava/io/FileInputStream;
    .restart local v16       #length:J
    .restart local v18       #metadataCursor:Landroid/database/Cursor;
    :cond_22d
    move-wide/from16 v6, v16

    .end local v16           #length:J
    .restart local v6       #length:J
    move-object v4, v15

    .end local v15           #fileName:Ljava/lang/String;
    .restart local v4       #fileName:Ljava/lang/String;
    goto/16 :goto_178

    .end local v4           #fileName:Ljava/lang/String;
    .end local v6           #length:J
    .restart local v15       #fileName:Ljava/lang/String;
    .restart local v16       #length:J
    :cond_232
    move-wide/from16 v6, v16

    .end local v16           #length:J
    .restart local v6       #length:J
    move-object v4, v15

    .end local v15           #fileName:Ljava/lang/String;
    .restart local v4       #fileName:Ljava/lang/String;
    goto/16 :goto_17b

    .end local v4           #fileName:Ljava/lang/String;
    .end local v6           #length:J
    .restart local v15       #fileName:Ljava/lang/String;
    .restart local v16       #length:J
    :cond_237
    move-wide/from16 v6, v16

    .end local v16           #length:J
    .restart local v6       #length:J
    move-object v4, v15

    .end local v15           #fileName:Ljava/lang/String;
    .restart local v4       #fileName:Ljava/lang/String;
    goto/16 :goto_b0

    .end local v4           #fileName:Ljava/lang/String;
    .end local v6           #length:J
    .restart local v15       #fileName:Ljava/lang/String;
    .restart local v16       #length:J
    :cond_23c
    move-wide/from16 v6, v16

    .end local v16           #length:J
    .restart local v6       #length:J
    move-object v4, v15

    .end local v15           #fileName:Ljava/lang/String;
    .restart local v4       #fileName:Ljava/lang/String;
    goto/16 :goto_b3
.end method

.method private static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "fileName"

    .prologue
    .line 209
    if-nez p0, :cond_4

    .line 210
    const/4 p0, 0x0

    .line 216
    .end local p0
    .local v0, index:I
    :cond_3
    :goto_3
    return-object p0

    .line 212
    .end local v0           #index:I
    .restart local p0
    :cond_4
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 213
    .restart local v0       #index:I
    if-lez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 214
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method
