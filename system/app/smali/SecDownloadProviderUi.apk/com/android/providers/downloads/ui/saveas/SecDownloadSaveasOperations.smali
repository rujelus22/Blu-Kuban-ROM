.class public Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;
.super Ljava/lang/Object;
.source "SecDownloadSaveasOperations.java"


# static fields
.field private static mSingleton:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;


# instance fields
.field private final DOWNLOAD_SAVEAS_URI:Landroid/net/Uri;

.field private LOG_TAG:Ljava/lang/String;

.field private mDownloadInternalSetting:Z

.field private mRequestCode:I

.field private mRunningFilenameForDirect:Ljava/lang/String;

.field private mRunningId:J

.field private mRunningStorageType:I

.field private mRunningValues:Landroid/content/ContentValues;

.field private mSaveasRunning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mSingleton:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "content://downloadsaveas/downloadsaveas"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->DOWNLOAD_SAVEAS_URI:Landroid/net/Uri;

    .line 53
    const-string v0, "SecDownloadSaveasOperations"

    iput-object v0, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->LOG_TAG:Ljava/lang/String;

    .line 58
    iput-boolean v2, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mSaveasRunning:Z

    .line 59
    iput-boolean v2, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mDownloadInternalSetting:Z

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mRunningId:J

    .line 61
    iput-object v3, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mRunningValues:Landroid/content/ContentValues;

    .line 62
    iput-object v3, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mRunningFilenameForDirect:Ljava/lang/String;

    .line 63
    iput v2, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mRunningStorageType:I

    .line 65
    const/16 v0, 0x1c08

    iput v0, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mRequestCode:I

    return-void
.end method

.method public static getSingleton()Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mSingleton:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;

    if-nez v0, :cond_b

    .line 73
    new-instance v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;

    invoke-direct {v0}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;-><init>()V

    sput-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mSingleton:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;

    .line 76
    :cond_b
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mSingleton:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;

    return-object v0
.end method


# virtual methods
.method public checkInfoForUpdate(Landroid/content/Context;J)Z
    .registers 19
    .parameter "ctx"
    .parameter "lId"

    .prologue
    .line 98
    const/4 v12, 0x0

    .line 100
    .local v12, ret:Z
    iget-object v2, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->DOWNLOAD_SAVEAS_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 101
    .local v3, renameUri:Landroid/net/Uri;
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "hint"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "storagetype"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "status"

    aput-object v5, v4, v2

    .line 102
    .local v4, projection:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 104
    .local v11, renameCursor:Landroid/database/Cursor;
    if-nez v11, :cond_35

    .line 106
    iget-object v2, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->LOG_TAG:Ljava/lang/String;

    const-string v5, "SecDownloadSaveasOperations : [saveas] rename info is null. continue download"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_34
    return v12

    .line 110
    :cond_35
    :try_start_35
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 112
    const-string v2, "hint"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 113
    .local v10, filenameId:I
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mRunningFilenameForDirect:Ljava/lang/String;

    .line 115
    const-string v2, "storagetype"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 116
    .local v14, storageId:I
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mRunningStorageType:I

    .line 118
    iget-object v2, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecDownloadSaveasOperations [saveas] mRunningFilenameForDirect "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mRunningFilenameForDirect:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v2, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecDownloadSaveasOperations [saveas] mRunningStorageType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mRunningStorageType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v2, "status"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 122
    .local v8, columnId:I
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 124
    .local v13, status:I
    iget-object v2, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecDownloadSaveasOperations [saveas] status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/16 v2, 0x1ea

    if-ne v13, v2, :cond_bc

    .line 128
    iget-object v2, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->LOG_TAG:Ljava/lang/String;

    const-string v5, "SecDownloadSaveasOperations [saveas] rename(download) is canceled. This is ERROR case. This could not be called"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catchall {:try_start_35 .. :try_end_b4} :catchall_e5
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_b4} :catch_c8

    .line 150
    .end local v8           #columnId:I
    .end local v10           #filenameId:I
    .end local v13           #status:I
    .end local v14           #storageId:I
    :cond_b4
    :goto_b4
    :try_start_b4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b7} :catch_b9

    goto/16 :goto_34

    .line 151
    :catch_b9
    move-exception v2

    goto/16 :goto_34

    .line 131
    .restart local v8       #columnId:I
    .restart local v10       #filenameId:I
    .restart local v13       #status:I
    .restart local v14       #storageId:I
    :cond_bc
    const/16 v2, 0xc0

    if-ne v13, v2, :cond_d8

    .line 133
    :try_start_c0
    iget-object v2, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->LOG_TAG:Ljava/lang/String;

    const-string v5, "SecDownloadSaveasOperations [saveas] rename is confirmed"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catchall {:try_start_c0 .. :try_end_c7} :catchall_e5
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c7} :catch_c8

    goto :goto_b4

    .line 143
    .end local v8           #columnId:I
    .end local v10           #filenameId:I
    .end local v13           #status:I
    .end local v14           #storageId:I
    :catch_c8
    move-exception v9

    .line 145
    .local v9, e:Ljava/lang/Exception;
    :try_start_c9
    iget-object v2, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->LOG_TAG:Ljava/lang/String;

    const-string v5, "SecDownloadSaveasOperations [saveas] rename check in update download"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catchall {:try_start_c9 .. :try_end_d0} :catchall_e5

    .line 150
    :try_start_d0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d3} :catch_d5

    goto/16 :goto_34

    .line 151
    :catch_d5
    move-exception v2

    goto/16 :goto_34

    .line 136
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v8       #columnId:I
    .restart local v10       #filenameId:I
    .restart local v13       #status:I
    .restart local v14       #storageId:I
    :cond_d8
    const/16 v2, 0xbe

    if-ne v13, v2, :cond_b4

    .line 138
    :try_start_dc
    iget-object v2, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->LOG_TAG:Ljava/lang/String;

    const-string v5, "SecDownloadSaveasOperations [saveas] rename is still pending"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e3
    .catchall {:try_start_dc .. :try_end_e3} :catchall_e5
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_e3} :catch_c8

    .line 139
    const/4 v12, 0x1

    goto :goto_b4

    .line 149
    .end local v8           #columnId:I
    .end local v10           #filenameId:I
    .end local v13           #status:I
    .end local v14           #storageId:I
    :catchall_e5
    move-exception v2

    .line 150
    :try_start_e6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_e9} :catch_ea

    .line 153
    :goto_e9
    throw v2

    .line 151
    :catch_ea
    move-exception v5

    goto :goto_e9
.end method

.method public confirmSaveas(Landroid/content/Context;J)V
    .registers 8
    .parameter "ctx"
    .parameter "lID"

    .prologue
    const/4 v3, 0x0

    .line 90
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 91
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "status"

    const/16 v2, 0xc0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->DOWNLOAD_SAVEAS_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public viewSaveasScreen(Landroid/app/Activity;Landroid/database/Cursor;IJ)V
    .registers 34
    .parameter "activity"
    .parameter "mDownloadCursor"
    .parameter "iPosition"
    .parameter "lID"

    .prologue
    .line 163
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "viewSaveasScreen() start"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 168
    .local v23, values:Landroid/content/ContentValues;
    const/4 v15, 0x0

    .line 170
    .local v15, mNeedToStartDownload:Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->checkInfoForUpdate(Landroid/content/Context;J)Z

    move-result v24

    if-nez v24, :cond_2c

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "no need to ask user. (status is not pending)"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_2b
    :goto_2b
    return-void

    .line 178
    :cond_2c
    const/4 v8, 0x0

    .line 179
    .local v8, filename:Ljava/lang/String;
    const/16 v16, 0x0

    .line 180
    .local v16, mimetype:Ljava/lang/String;
    const/16 v20, 0x0

    .line 182
    .local v20, storage:I
    const/4 v10, 0x0

    .line 185
    .local v10, isOMA:Z
    :try_start_32
    const-string v24, "downloadmethod"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 186
    .local v14, mMethodColumn:I
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_41} :catch_118

    move-result v5

    .line 188
    .local v5, DownloadMethod:I
    if-eqz v5, :cond_45

    .line 189
    const/4 v10, 0x1

    .line 197
    .end local v5           #DownloadMethod:I
    .end local v14           #mMethodColumn:I
    :cond_45
    :goto_45
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mRunningStorageType:I

    move/from16 v20, v0

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "isOMA "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "storage "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v24, "media_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 206
    .local v13, mMediaTypeColumnId:I
    const-string v24, "dd_primaryMimeType"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 207
    .local v12, mDDTypeId:I
    const-string v24, "dd_fileName"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 209
    .local v11, mDDFilenameColumnId:I
    if-eqz v10, :cond_139

    .line 210
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 211
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 213
    if-nez v8, :cond_c2

    .line 214
    const v24, 0x7f08001f

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 224
    :cond_c2
    :goto_c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mimetype "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "filename "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    if-nez v8, :cond_145

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "no need to ask user. continue download. (filename is not decided yet)"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->confirmSaveas(Landroid/content/Context;J)V

    goto/16 :goto_2b

    .line 193
    .end local v11           #mDDFilenameColumnId:I
    .end local v12           #mDDTypeId:I
    .end local v13           #mMediaTypeColumnId:I
    :catch_118
    move-exception v7

    .line 194
    .local v7, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "viewSaveasScreen exception while getting db values "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_45

    .line 218
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v11       #mDDFilenameColumnId:I
    .restart local v12       #mDDTypeId:I
    .restart local v13       #mMediaTypeColumnId:I
    :cond_139
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 219
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mRunningFilenameForDirect:Ljava/lang/String;

    goto/16 :goto_c2

    .line 236
    :cond_145
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 237
    .local v18, prefBrowser:Landroid/content/SharedPreferences;
    const-string v24, "use_default_file"

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 238
    .local v22, useDefaultFile:Z
    const-string v24, "use_default_directory"

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 239
    .local v21, useDefaultDirectory:Z
    if-nez v20, :cond_2a0

    const/16 v24, 0x0

    :goto_169
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mDownloadInternalSetting:Z

    .line 241
    invoke-static {}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->getSingleton()Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mDownloadInternalSetting:Z

    move/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v8, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->getDownloadDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    .line 243
    .local v17, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "default file is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "default directory is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "storage is internal "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mDownloadInternalSetting:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "default path is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    if-eqz v22, :cond_2a4

    if-eqz v21, :cond_2a4

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "default folder & filename, skip asking"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v15, 0x1

    .line 291
    :goto_217
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v15, v0, :cond_2b

    .line 294
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 295
    .local v19, setValues:Landroid/content/ContentValues;
    const-string v24, "status"

    const/16 v25, 0xc0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    const-string v24, "hint"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->DOWNLOAD_SAVEAS_URI:Landroid/net/Uri;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 300
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 301
    .local v6, dnValues:Landroid/content/ContentValues;
    const-string v24, "storagetype"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    sget-object v25, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    move-object/from16 v0, v25

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 303
    const v24, 0x7f080030

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto/16 :goto_2b

    .line 239
    .end local v6           #dnValues:Landroid/content/ContentValues;
    .end local v17           #path:Ljava/lang/String;
    .end local v19           #setValues:Landroid/content/ContentValues;
    :cond_2a0
    const/16 v24, 0x1

    goto/16 :goto_169

    .line 253
    .restart local v17       #path:Ljava/lang/String;
    :cond_2a4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mSaveasRunning:Z

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2c0

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "save as is running. waiting for bind again"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v15, 0x0

    goto/16 :goto_217

    .line 262
    :cond_2c0
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mRunningValues:Landroid/content/ContentValues;

    .line 263
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mRunningId:J

    .line 265
    new-instance v9, Landroid/content/Intent;

    const-string v24, "com.sec.android.app.myfiles.PICK_DATA_DOWNLOAD"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .local v9, intent:Landroid/content/Intent;
    const-string v24, "FILENAME"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v24, "DIRECTORYPATH"

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v24, "USEDEFAULTFILE"

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 269
    const-string v24, "USEDEFAULTDIRECTORY"

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 273
    const/16 v24, 0x1

    :try_start_2f9
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mSaveasRunning:Z

    .line 274
    const/4 v15, 0x0

    .line 275
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mRunningValues:Landroid/content/ContentValues;

    .line 277
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mRequestCode:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v9, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_313
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2f9 .. :try_end_313} :catch_315

    goto/16 :goto_2b

    .line 280
    :catch_315
    move-exception v7

    .line 282
    .local v7, e:Landroid/content/ActivityNotFoundException;
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mSaveasRunning:Z

    .line 283
    const/4 v15, 0x1

    .line 284
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mRunningValues:Landroid/content/ContentValues;

    .line 285
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mRunningFilenameForDirect:Ljava/lang/String;

    .line 286
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->mRunningStorageType:I

    goto/16 :goto_217
.end method
