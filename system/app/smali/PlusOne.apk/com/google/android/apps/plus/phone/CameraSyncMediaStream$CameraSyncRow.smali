.class Lcom/google/android/apps/plus/phone/CameraSyncMediaStream$CameraSyncRow;
.super Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;
.source "CameraSyncMediaStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/CameraSyncMediaStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraSyncRow"
.end annotation


# direct methods
.method private constructor <init>(JIILjava/lang/Integer;JLjava/lang/String;JJLjava/lang/String;Lcom/android/gallery3d/common/Fingerprint;[B)V
    .registers 33
    .parameter "id"
    .parameter "commentCount"
    .parameter "plusOneCount"
    .parameter "pendingStatus"
    .parameter "dateTaken"
    .parameter "url"
    .parameter "photoId"
    .parameter "ownerId"
    .parameter "title"
    .parameter "fingerprint"
    .parameter "videoData"

    .prologue
    .line 100
    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    invoke-direct/range {v0 .. v16}, Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;-><init>(JIILjava/lang/Integer;JLjava/lang/String;Landroid/net/Uri;JJLjava/lang/String;Lcom/android/gallery3d/common/Fingerprint;[B)V

    .line 102
    return-void
.end method

.method static synthetic access$000(Landroid/database/Cursor;)Lcom/google/android/apps/plus/phone/CameraSyncMediaStream$CameraSyncRow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/CameraSyncMediaStream$CameraSyncRow;->fromCursor(Landroid/database/Cursor;)Lcom/google/android/apps/plus/phone/CameraSyncMediaStream$CameraSyncRow;

    move-result-object v0

    return-object v0
.end method

.method private static fromCursor(Landroid/database/Cursor;)Lcom/google/android/apps/plus/phone/CameraSyncMediaStream$CameraSyncRow;
    .registers 27
    .parameter "cursor"

    .prologue
    .line 111
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 112
    .local v3, id:J
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 113
    .local v5, commentCount:I
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 114
    .local v6, plusOneCount:I
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 115
    .local v8, timestamp:J
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 116
    .local v10, url:Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_c7

    const/4 v7, 0x0

    .line 118
    .local v7, pendingStatus:Ljava/lang/Integer;
    :goto_2d
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 119
    .local v11, photoId:J
    const/4 v2, 0x7

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 120
    .local v13, ownerId:J
    const/16 v2, 0x9

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 121
    .local v15, title:Ljava/lang/String;
    const/16 v2, 0xa

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v17

    .line 124
    .local v17, videoData:[B
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v19

    .line 126
    .local v19, bytes:[B
    if-nez v19, :cond_d7

    .line 127
    const-string v2, "CameraSyncMediaStream"

    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-static {v2, v0}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 128
    const-string v2, "CameraSyncMediaStream"

    const-string v22, "null fingerprint for server photo ownerId=%d; photoId=%d; title=%s"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    aput-object v15, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_8a
    const/16 v21, 0x0

    .line 148
    .local v21, dummyBytes:[B
    :try_start_8c
    new-instance v18, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x10

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 149
    .local v18, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v20, Ljava/io/DataOutputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 150
    .local v20, dos:Ljava/io/DataOutputStream;
    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v12}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 151
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 152
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 153
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_b5} :catch_e1

    move-result-object v21

    .line 157
    .end local v18           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v20           #dos:Ljava/io/DataOutputStream;
    :goto_b6
    if-eqz v21, :cond_d4

    .line 158
    new-instance v16, Lcom/android/gallery3d/common/Fingerprint;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/gallery3d/common/Fingerprint;-><init>([B)V

    .line 165
    .end local v21           #dummyBytes:[B
    .local v16, fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    :goto_c1
    new-instance v2, Lcom/google/android/apps/plus/phone/CameraSyncMediaStream$CameraSyncRow;

    invoke-direct/range {v2 .. v17}, Lcom/google/android/apps/plus/phone/CameraSyncMediaStream$CameraSyncRow;-><init>(JIILjava/lang/Integer;JLjava/lang/String;JJLjava/lang/String;Lcom/android/gallery3d/common/Fingerprint;[B)V

    return-object v2

    .line 116
    .end local v7           #pendingStatus:Ljava/lang/Integer;
    .end local v11           #photoId:J
    .end local v13           #ownerId:J
    .end local v15           #title:Ljava/lang/String;
    .end local v16           #fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .end local v17           #videoData:[B
    .end local v19           #bytes:[B
    :cond_c7
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto/16 :goto_2d

    .line 160
    .restart local v7       #pendingStatus:Ljava/lang/Integer;
    .restart local v11       #photoId:J
    .restart local v13       #ownerId:J
    .restart local v15       #title:Ljava/lang/String;
    .restart local v17       #videoData:[B
    .restart local v19       #bytes:[B
    .restart local v21       #dummyBytes:[B
    :cond_d4
    const/16 v16, 0x0

    .restart local v16       #fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    goto :goto_c1

    .line 163
    .end local v16           #fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .end local v21           #dummyBytes:[B
    :cond_d7
    new-instance v16, Lcom/android/gallery3d/common/Fingerprint;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/gallery3d/common/Fingerprint;-><init>([B)V

    .restart local v16       #fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    goto :goto_c1

    .line 154
    .end local v16           #fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .restart local v21       #dummyBytes:[B
    :catch_e1
    move-exception v2

    goto :goto_b6
.end method
