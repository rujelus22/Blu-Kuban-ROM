.class Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;
.super Ljava/lang/Thread;
.source "ManagedFileBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/ManagedFileBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileOperationThread"
.end annotation


# instance fields
.field private mAbortOperation:Z

.field private mContext:Landroid/content/Context;

.field private mDstFolder:Ljava/io/File;

.field private mHandler:Landroid/os/Handler;

.field private mLoop:Z

.field private mOperation:I

.field private mOverwrite:Z

.field private mOverwriteCheckAll:Z

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSrcFiles:[Ljava/io/File;


# direct methods
.method public constructor <init>([Ljava/io/File;Ljava/lang/String;ILandroid/os/Handler;Landroid/content/Context;)V
    .registers 8
    .parameter "src"
    .parameter "dst"
    .parameter "operation"
    .parameter "handler"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 997
    const-string v0, "MyFiles-FileOperationThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 985
    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mAbortOperation:Z

    .line 987
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mLoop:Z

    .line 989
    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mOverwrite:Z

    .line 991
    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mOverwriteCheckAll:Z

    .line 993
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 998
    invoke-virtual {p1}, [Ljava/io/File;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mSrcFiles:[Ljava/io/File;

    .line 999
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mDstFolder:Ljava/io/File;

    .line 1000
    iput p3, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mOperation:I

    .line 1001
    iput-object p4, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mHandler:Landroid/os/Handler;

    .line 1002
    iput-object p5, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mContext:Landroid/content/Context;

    .line 1003
    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 974
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 974
    iput-boolean p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mLoop:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 974
    iput-boolean p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mOverwrite:Z

    return p1
.end method

.method private addPostfix(Ljava/io/File;I)Ljava/lang/String;
    .registers 11
    .parameter "f"
    .parameter "postfixNum"

    .prologue
    const/16 v7, 0x29

    .line 1245
    const/4 v4, 0x0

    .line 1247
    .local v4, resultStr:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 1248
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1249
    .local v5, sb:Ljava/lang/StringBuffer;
    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1250
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1268
    :goto_23
    return-object v4

    .line 1252
    .end local v5           #sb:Ljava/lang/StringBuffer;
    :cond_24
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1253
    .local v1, fullName:Ljava/lang/String;
    const/16 v6, 0x2e

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1255
    .local v2, lastDot:I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_59

    .line 1256
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1257
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1259
    .local v0, ext:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1260
    .restart local v5       #sb:Ljava/lang/StringBuffer;
    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1261
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1262
    goto :goto_23

    .line 1263
    .end local v0           #ext:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #sb:Ljava/lang/StringBuffer;
    :cond_59
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1264
    .restart local v5       #sb:Ljava/lang/StringBuffer;
    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1265
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_23
.end method

.method private checkLowStorage(Ljava/io/File;)Z
    .registers 9
    .parameter "dst"

    .prologue
    .line 1380
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1381
    .local v0, dstFolder:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/Utils;->getStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1382
    .local v4, storageDirectory:Ljava/lang/String;
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1383
    .local v3, stat:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v1, v5

    .line 1385
    .local v1, remaining:J
    const-wide/16 v5, 0x1

    cmp-long v5, v1, v5

    if-gez v5, :cond_1a

    .line 1386
    const/4 v5, 0x1

    .line 1388
    :goto_19
    return v5

    :cond_1a
    const/4 v5, 0x0

    goto :goto_19
.end method

.method private copy(Ljava/io/File;Ljava/io/File;)Z
    .registers 22
    .parameter "src"
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1058
    if-eqz p1, :cond_e

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mAbortOperation:Z

    if-eqz v14, :cond_10

    .line 1059
    :cond_e
    const/4 v14, 0x0

    .line 1134
    :goto_f
    return v14

    .line 1061
    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_108

    .line 1062
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1063
    .local v7, from:Ljava/io/FileInputStream;
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1066
    .local v13, to:Ljava/io/FileOutputStream;
    const/16 v14, 0x2000

    :try_start_26
    new-array v3, v14, [B

    .line 1068
    .local v3, buffer:[B
    :goto_28
    invoke-virtual {v7, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .local v4, bytesRead:I
    const/4 v14, -0x1

    if-eq v4, v14, :cond_8c

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mAbortOperation:Z

    if-nez v14, :cond_8c

    .line 1069
    const/4 v14, 0x0

    invoke-virtual {v13, v3, v14, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_cb
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_39} :catch_3a

    goto :goto_28

    .line 1071
    .end local v3           #buffer:[B
    .end local v4           #bytesRead:I
    :catch_3a
    move-exception v5

    .line 1072
    .local v5, e:Ljava/io/IOException;
    :try_start_3b
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->setErrorMessage(Ljava/io/IOException;)V

    .line 1073
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->setAbortOperation(Z)V

    .line 1074
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_53

    .line 1075
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->delete(Ljava/io/File;)Z
    :try_end_53
    .catchall {:try_start_3b .. :try_end_53} :catchall_cb

    .line 1079
    :cond_53
    if-eqz v7, :cond_58

    .line 1080
    :try_start_55
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_f9
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_bc

    .line 1085
    :cond_58
    if-eqz v13, :cond_5d

    .line 1086
    :try_start_5a
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_cb
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_252

    .line 1091
    :cond_5d
    :goto_5d
    const/4 v14, 0x0

    .line 1094
    if-eqz v7, :cond_63

    .line 1095
    :try_start_60
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_223
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_1d5

    .line 1100
    :cond_63
    if-eqz v13, :cond_68

    .line 1101
    :try_start_65
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_202

    .line 1105
    :cond_68
    :goto_68
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mAbortOperation:Z

    if-eqz v15, :cond_208

    .line 1106
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_208

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v17

    cmp-long v15, v15, v17

    if-eqz v15, :cond_208

    .line 1107
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 1108
    const-string v14, "MyFiles"

    const-string v15, "copy failed - is deleted."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    .end local v5           #e:Ljava/io/IOException;
    :goto_8a
    const/4 v14, 0x0

    goto :goto_f

    .line 1070
    .restart local v3       #buffer:[B
    .restart local v4       #bytesRead:I
    :cond_8c
    :try_start_8c
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_cb
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_3a

    .line 1094
    if-eqz v7, :cond_94

    .line 1095
    :try_start_91
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_29e
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_258

    .line 1100
    :cond_94
    if-eqz v13, :cond_99

    .line 1101
    :try_start_96
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_285

    .line 1105
    :cond_99
    :goto_99
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mAbortOperation:Z

    if-eqz v14, :cond_150

    .line 1106
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_150

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_150

    .line 1107
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 1108
    const-string v14, "MyFiles"

    const-string v15, "copy failed - is deleted."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 1081
    .end local v3           #buffer:[B
    .end local v4           #bytesRead:I
    .restart local v5       #e:Ljava/io/IOException;
    :catch_bc
    move-exception v6

    .line 1082
    .local v6, e2:Ljava/io/IOException;
    :try_start_bd
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_f9

    .line 1085
    if-eqz v13, :cond_5d

    .line 1086
    :try_start_c2
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_cb
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c6

    goto :goto_5d

    .line 1087
    :catch_c6
    move-exception v6

    .line 1088
    :try_start_c7
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_cb

    goto :goto_5d

    .line 1093
    .end local v5           #e:Ljava/io/IOException;
    .end local v6           #e2:Ljava/io/IOException;
    :catchall_cb
    move-exception v14

    .line 1094
    if-eqz v7, :cond_d1

    .line 1095
    :try_start_ce
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_d1
    .catchall {:try_start_ce .. :try_end_d1} :catchall_1a0
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_15a

    .line 1100
    :cond_d1
    if-eqz v13, :cond_d6

    .line 1101
    :try_start_d3
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_187

    .line 1105
    :cond_d6
    :goto_d6
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mAbortOperation:Z

    if-eqz v15, :cond_100

    .line 1106
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_100

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v17

    cmp-long v15, v15, v17

    if-eqz v15, :cond_100

    .line 1107
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 1108
    const-string v14, "MyFiles"

    const-string v15, "copy failed - is deleted."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 1084
    .restart local v5       #e:Ljava/io/IOException;
    :catchall_f9
    move-exception v14

    .line 1085
    if-eqz v13, :cond_ff

    .line 1086
    :try_start_fc
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_ff
    .catchall {:try_start_fc .. :try_end_ff} :catchall_cb
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_ff} :catch_1cf

    .line 1084
    :cond_ff
    :goto_ff
    :try_start_ff
    throw v14
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_cb

    .line 1112
    .end local v5           #e:Ljava/io/IOException;
    :cond_100
    const-string v15, "MyFiles"

    const-string v16, "copy success"

    :goto_104
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    throw v14

    .line 1116
    .end local v7           #from:Ljava/io/FileInputStream;
    .end local v13           #to:Ljava/io/FileOutputStream;
    :cond_108
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->mkdir()Z

    move-result v14

    if-nez v14, :cond_12d

    .line 1117
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->checkLowStorage(Ljava/io/File;)Z

    move-result v14

    if-eqz v14, :cond_123

    .line 1118
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1119
    const/4 v14, 0x0

    goto/16 :goto_f

    .line 1122
    :cond_123
    const-string v14, "MyFiles"

    const-string v15, "mkdir failed - "

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    const/4 v14, 0x0

    goto/16 :goto_f

    .line 1126
    :cond_12d
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 1127
    .local v12, subFiles:[Ljava/io/File;
    if-eqz v12, :cond_157

    array-length v14, v12

    if-eqz v14, :cond_157

    .line 1128
    move-object v2, v12

    .local v2, arr$:[Ljava/io/File;
    array-length v9, v2

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_139
    if-ge v8, v9, :cond_157

    aget-object v10, v2, v8

    .line 1129
    .local v10, sf:Ljava/io/File;
    new-instance v11, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-direct {v11, v0, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1130
    .local v11, subDst:Ljava/io/File;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 1128
    add-int/lit8 v8, v8, 0x1

    goto :goto_139

    .line 1112
    .end local v2           #arr$:[Ljava/io/File;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v10           #sf:Ljava/io/File;
    .end local v11           #subDst:Ljava/io/File;
    .end local v12           #subFiles:[Ljava/io/File;
    .restart local v3       #buffer:[B
    .restart local v4       #bytesRead:I
    .restart local v7       #from:Ljava/io/FileInputStream;
    .restart local v13       #to:Ljava/io/FileOutputStream;
    :cond_150
    const-string v14, "MyFiles"

    const-string v15, "copy success"

    :goto_154
    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    .end local v3           #buffer:[B
    .end local v4           #bytesRead:I
    .end local v7           #from:Ljava/io/FileInputStream;
    .end local v13           #to:Ljava/io/FileOutputStream;
    :cond_157
    const/4 v14, 0x1

    goto/16 :goto_f

    .line 1096
    .restart local v7       #from:Ljava/io/FileInputStream;
    .restart local v13       #to:Ljava/io/FileOutputStream;
    :catch_15a
    move-exception v5

    .line 1097
    .restart local v5       #e:Ljava/io/IOException;
    :try_start_15b
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15e
    .catchall {:try_start_15b .. :try_end_15e} :catchall_1a0

    .line 1100
    if-eqz v13, :cond_163

    .line 1101
    :try_start_160
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_163
    .catch Ljava/io/IOException; {:try_start_160 .. :try_end_163} :catch_18d

    .line 1105
    :cond_163
    :goto_163
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mAbortOperation:Z

    if-eqz v15, :cond_192

    .line 1106
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_192

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v17

    cmp-long v15, v15, v17

    if-eqz v15, :cond_192

    .line 1107
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 1108
    const-string v14, "MyFiles"

    const-string v15, "copy failed - is deleted."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8a

    .line 1102
    .end local v5           #e:Ljava/io/IOException;
    :catch_187
    move-exception v5

    .line 1103
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_d6

    .line 1102
    :catch_18d
    move-exception v5

    .line 1103
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_163

    .line 1112
    :cond_192
    const-string v15, "MyFiles"

    const-string v16, "copy success"

    goto/16 :goto_104

    .end local v5           #e:Ljava/io/IOException;
    :cond_198
    const-string v15, "MyFiles"

    const-string v16, "copy success"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    throw v14

    :catchall_1a0
    move-exception v14

    .line 1100
    if-eqz v13, :cond_1a6

    .line 1101
    :try_start_1a3
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a6
    .catch Ljava/io/IOException; {:try_start_1a3 .. :try_end_1a6} :catch_1ca

    .line 1105
    :cond_1a6
    :goto_1a6
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mAbortOperation:Z

    if-eqz v15, :cond_198

    .line 1106
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_198

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v17

    cmp-long v15, v15, v17

    if-eqz v15, :cond_198

    .line 1107
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 1108
    const-string v14, "MyFiles"

    const-string v15, "copy failed - is deleted."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8a

    .line 1102
    :catch_1ca
    move-exception v5

    .line 1103
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a6

    .line 1087
    :catch_1cf
    move-exception v6

    .line 1088
    .restart local v6       #e2:Ljava/io/IOException;
    :try_start_1d0
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1d3
    .catchall {:try_start_1d0 .. :try_end_1d3} :catchall_cb

    goto/16 :goto_ff

    .line 1096
    .end local v6           #e2:Ljava/io/IOException;
    :catch_1d5
    move-exception v5

    .line 1097
    :try_start_1d6
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1d9
    .catchall {:try_start_1d6 .. :try_end_1d9} :catchall_223

    .line 1100
    if-eqz v13, :cond_1de

    .line 1101
    :try_start_1db
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_1de
    .catch Ljava/io/IOException; {:try_start_1db .. :try_end_1de} :catch_211

    .line 1105
    :cond_1de
    :goto_1de
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mAbortOperation:Z

    if-eqz v15, :cond_216

    .line 1106
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_216

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v17

    cmp-long v15, v15, v17

    if-eqz v15, :cond_216

    .line 1107
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 1108
    const-string v14, "MyFiles"

    const-string v15, "copy failed - is deleted."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8a

    .line 1102
    :catch_202
    move-exception v5

    .line 1103
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_68

    .line 1112
    :cond_208
    const-string v15, "MyFiles"

    const-string v16, "copy success"

    :goto_20c
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1102
    :catch_211
    move-exception v5

    .line 1103
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1de

    .line 1112
    :cond_216
    const-string v15, "MyFiles"

    const-string v16, "copy success"

    goto :goto_20c

    :cond_21b
    const-string v15, "MyFiles"

    const-string v16, "copy success"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    throw v14

    :catchall_223
    move-exception v14

    .line 1100
    if-eqz v13, :cond_229

    .line 1101
    :try_start_226
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_229
    .catch Ljava/io/IOException; {:try_start_226 .. :try_end_229} :catch_24d

    .line 1105
    :cond_229
    :goto_229
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mAbortOperation:Z

    if-eqz v15, :cond_21b

    .line 1106
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_21b

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v17

    cmp-long v15, v15, v17

    if-eqz v15, :cond_21b

    .line 1107
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 1108
    const-string v14, "MyFiles"

    const-string v15, "copy failed - is deleted."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8a

    .line 1102
    :catch_24d
    move-exception v5

    .line 1103
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_229

    .line 1087
    :catch_252
    move-exception v6

    .line 1088
    .restart local v6       #e2:Ljava/io/IOException;
    :try_start_253
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_256
    .catchall {:try_start_253 .. :try_end_256} :catchall_cb

    goto/16 :goto_5d

    .line 1096
    .end local v5           #e:Ljava/io/IOException;
    .end local v6           #e2:Ljava/io/IOException;
    .restart local v3       #buffer:[B
    .restart local v4       #bytesRead:I
    :catch_258
    move-exception v5

    .line 1097
    .restart local v5       #e:Ljava/io/IOException;
    :try_start_259
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_25c
    .catchall {:try_start_259 .. :try_end_25c} :catchall_29e

    .line 1100
    if-eqz v13, :cond_261

    .line 1101
    :try_start_25e
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_261
    .catch Ljava/io/IOException; {:try_start_25e .. :try_end_261} :catch_28b

    .line 1105
    :cond_261
    :goto_261
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mAbortOperation:Z

    if-eqz v14, :cond_290

    .line 1106
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_290

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_290

    .line 1107
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 1108
    const-string v14, "MyFiles"

    const-string v15, "copy failed - is deleted."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8a

    .line 1102
    .end local v5           #e:Ljava/io/IOException;
    :catch_285
    move-exception v5

    .line 1103
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_99

    .line 1102
    :catch_28b
    move-exception v5

    .line 1103
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_261

    .line 1112
    :cond_290
    const-string v14, "MyFiles"

    const-string v15, "copy success"

    goto/16 :goto_154

    .end local v5           #e:Ljava/io/IOException;
    :cond_296
    const-string v15, "MyFiles"

    const-string v16, "copy success"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    throw v14

    :catchall_29e
    move-exception v14

    .line 1100
    if-eqz v13, :cond_2a4

    .line 1101
    :try_start_2a1
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a4
    .catch Ljava/io/IOException; {:try_start_2a1 .. :try_end_2a4} :catch_2c8

    .line 1105
    :cond_2a4
    :goto_2a4
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mAbortOperation:Z

    if-eqz v15, :cond_296

    .line 1106
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_296

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v17

    cmp-long v15, v15, v17

    if-eqz v15, :cond_296

    .line 1107
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 1108
    const-string v14, "MyFiles"

    const-string v15, "copy failed - is deleted."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8a

    .line 1102
    :catch_2c8
    move-exception v5

    .line 1103
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a4
.end method

.method private copyFiles([Ljava/io/File;Ljava/io/File;)V
    .registers 16
    .parameter "src"
    .parameter "dstFolder"

    .prologue
    .line 1032
    const-string v7, "MyFiles"

    const-string v8, "managed - copy start"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    move-object v0, p1

    .local v0, arr$:[Ljava/io/File;
    :try_start_8
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_a
    if-ge v4, v5, :cond_64

    aget-object v2, v0, v4

    .line 1036
    .local v2, f:Ljava/io/File;
    iget-boolean v7, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mAbortOperation:Z
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_d5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_9b

    if-eqz v7, :cond_42

    .line 1050
    sget-object v7, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MEDIA_MOUNTED"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v9, "where"

    const-string v10, "myfiles"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sendBroadcast(Landroid/content/Intent;)V

    .line 1055
    .end local v2           #f:Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :goto_41
    return-void

    .line 1038
    .restart local v2       #f:Ljava/io/File;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_42
    :try_start_42
    new-instance v6, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1039
    .local v6, newFile:Ljava/io/File;
    const/4 v3, 0x1

    .line 1040
    .local v3, i:I
    :goto_4c
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 1041
    new-instance v6, Ljava/io/File;

    .end local v6           #newFile:Ljava/io/File;
    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->addPostfix(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1042
    .restart local v6       #newFile:Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    .line 1044
    :cond_5e
    invoke-direct {p0, v2, v6}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->copy(Ljava/io/File;Ljava/io/File;)Z
    :try_end_61
    .catchall {:try_start_42 .. :try_end_61} :catchall_d5
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_61} :catch_9b

    .line 1035
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1050
    .end local v2           #f:Ljava/io/File;
    .end local v3           #i:I
    .end local v6           #newFile:Ljava/io/File;
    :cond_64
    sget-object v7, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MEDIA_MOUNTED"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v9, "where"

    const-string v10, "myfiles"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sendBroadcast(Landroid/content/Intent;)V

    .line 1054
    .end local v4           #i$:I
    .end local v5           #len$:I
    :goto_93
    const-string v7, "MyFiles"

    const-string v8, "managed - copy finish"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 1046
    :catch_9b
    move-exception v1

    .line 1047
    .local v1, e:Ljava/lang/Exception;
    :try_start_9c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1048
    iget-object v7, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_a5
    .catchall {:try_start_9c .. :try_end_a5} :catchall_d5

    .line 1050
    sget-object v7, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MEDIA_MOUNTED"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v9, "where"

    const-string v10, "myfiles"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_93

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_d5
    move-exception v7

    sget-object v8, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MEDIA_MOUNTED"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v10, "where"

    const-string v11, "myfiles"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sendBroadcast(Landroid/content/Intent;)V

    throw v7
.end method

.method private delete(Ljava/io/File;)Z
    .registers 10
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1219
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-boolean v7, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mAbortOperation:Z

    if-eqz v7, :cond_e

    .line 1241
    :cond_d
    :goto_d
    return v6

    .line 1222
    :cond_e
    :try_start_e
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_31

    .line 1224
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 1225
    .local v5, subFiles:[Ljava/io/File;
    if-eqz v5, :cond_d

    array-length v7, v5

    if-eqz v7, :cond_d

    .line 1228
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_20
    if-ge v2, v3, :cond_2e

    aget-object v4, v0, v2

    .line 1229
    .local v4, sf:Ljava/io/File;
    iget-boolean v7, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mAbortOperation:Z

    if-nez v7, :cond_d

    .line 1231
    invoke-direct {p0, v4}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->delete(Ljava/io/File;)Z

    .line 1228
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 1234
    .end local v4           #sf:Ljava/io/File;
    :cond_2e
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_31} :catch_33

    .line 1241
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #subFiles:[Ljava/io/File;
    :cond_31
    :goto_31
    const/4 v6, 0x1

    goto :goto_d

    .line 1236
    :catch_33
    move-exception v1

    .line 1237
    .local v1, ex:Ljava/lang/SecurityException;
    iget-object v6, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1239
    const-string v6, "MyFiles"

    const-string v7, "DeleteFile : is failed. "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method private deleteFiles([Ljava/io/File;)V
    .registers 13
    .parameter "files"

    .prologue
    .line 1201
    const-string v5, "MyFiles"

    const-string v6, "managed - delete start"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    move-object v0, p1

    .local v0, arr$:[Ljava/io/File;
    :try_start_8
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_a
    if-ge v3, v4, :cond_ba

    aget-object v2, v0, v3

    .line 1204
    .local v2, f:Ljava/io/File;
    iget-boolean v5, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mAbortOperation:Z
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_89
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_48

    if-eqz v5, :cond_42

    .line 1212
    sget-object v5, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_MOUNTED"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v7, "where"

    const-string v8, "myfiles"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sendBroadcast(Landroid/content/Intent;)V

    .line 1216
    .end local v2           #f:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :goto_41
    return-void

    .line 1206
    .restart local v2       #f:Ljava/io/File;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_42
    :try_start_42
    invoke-direct {p0, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->delete(Ljava/io/File;)Z
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_89
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_48

    .line 1203
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1208
    .end local v2           #f:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catch_48
    move-exception v1

    .line 1209
    .local v1, e:Ljava/lang/Exception;
    :try_start_49
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1210
    iget-object v5, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_89

    .line 1212
    sget-object v5, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_MOUNTED"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v7, "where"

    const-string v8, "myfiles"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .end local v1           #e:Ljava/lang/Exception;
    :goto_7e
    invoke-virtual {v5, v6}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sendBroadcast(Landroid/content/Intent;)V

    .line 1215
    const-string v5, "MyFiles"

    const-string v6, "managed - delete finish"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 1212
    :catchall_89
    move-exception v5

    sget-object v6, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MEDIA_MOUNTED"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v8, "where"

    const-string v9, "myfiles"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sendBroadcast(Landroid/content/Intent;)V

    throw v5

    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_ba
    sget-object v5, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_MOUNTED"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v7, "where"

    const-string v8, "myfiles"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    goto :goto_7e
.end method

.method private deleteThumbnail(Ljava/io/File;)V
    .registers 4
    .parameter "file"

    .prologue
    .line 1272
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v0

    .line 1274
    .local v0, fileType:I
    invoke-static {v0}, Lcom/sec/android/app/myfiles/MediaFile;->isImageFileType(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1275
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/MediaLoader;->deleteImageBitmap(Ljava/lang/String;)V

    .line 1279
    :cond_15
    :goto_15
    return-void

    .line 1276
    :cond_16
    invoke-static {v0}, Lcom/sec/android/app/myfiles/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1277
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/MediaLoader;->deleteVideoBitmap(Ljava/lang/String;)V

    goto :goto_15
.end method

.method private move(Ljava/io/File;Ljava/io/File;Z)Z
    .registers 11
    .parameter "src"
    .parameter "dst"
    .parameter "rename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1173
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mAbortOperation:Z

    if-eqz v6, :cond_e

    .line 1174
    :cond_c
    const/4 v6, 0x0

    .line 1197
    :goto_d
    return v6

    .line 1176
    :cond_e
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 1177
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1178
    invoke-direct {p0, p2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->deleteThumbnail(Ljava/io/File;)V

    .line 1180
    :cond_1d
    if-eqz p3, :cond_24

    .line 1181
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1197
    :cond_22
    :goto_22
    const/4 v6, 0x1

    goto :goto_d

    .line 1183
    :cond_24
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 1184
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->delete(Ljava/io/File;)Z

    goto :goto_22

    .line 1187
    :cond_2e
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 1188
    .local v5, subFiles:[Ljava/io/File;
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    .line 1189
    if-eqz v5, :cond_50

    array-length v6, v5

    if-eqz v6, :cond_50

    .line 1190
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3d
    if-ge v1, v2, :cond_50

    aget-object v3, v0, v1

    .line 1191
    .local v3, sf:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1192
    .local v4, subDst:Ljava/io/File;
    invoke-direct {p0, v3, v4, p3}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->move(Ljava/io/File;Ljava/io/File;Z)Z

    .line 1190
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 1195
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #sf:Ljava/io/File;
    .end local v4           #subDst:Ljava/io/File;
    :cond_50
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_22
.end method

.method private moveFiles([Ljava/io/File;Ljava/io/File;)V
    .registers 18
    .parameter "src"
    .parameter "dstFolder"

    .prologue
    .line 1138
    const-string v9, "MyFiles"

    const-string v10, "managed - move start"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/app/myfiles/Utils;->checkSameStorage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 1144
    .local v6, moveInSameStorage:Z
    move-object/from16 v1, p1

    .local v1, arr$:[Ljava/io/File;
    :try_start_18
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1a
    if-ge v4, v5, :cond_f1

    aget-object v3, v1, v4

    .line 1145
    .local v3, f:Ljava/io/File;
    iget-boolean v9, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mAbortOperation:Z
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_c0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_20} :catch_7b

    if-eqz v9, :cond_52

    .line 1166
    sget-object v9, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.MEDIA_MOUNTED"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v11, "where"

    const-string v12, "myfiles"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sendBroadcast(Landroid/content/Intent;)V

    .line 1170
    .end local v3           #f:Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :goto_51
    return-void

    .line 1147
    .restart local v3       #f:Ljava/io/File;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_52
    :try_start_52
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1148
    .local v7, name:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v8, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1149
    .local v8, newFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_bc

    .line 1150
    iget-boolean v9, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mOverwriteCheckAll:Z

    if-eqz v9, :cond_71

    .line 1151
    iget-boolean v9, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mOverwrite:Z

    if-eqz v9, :cond_6e

    .line 1152
    invoke-direct {p0, v3, v8, v6}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->move(Ljava/io/File;Ljava/io/File;Z)Z

    .line 1144
    :cond_6e
    :goto_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 1155
    :cond_71
    invoke-direct {p0, v7}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->showOverwriteDialog(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 1156
    invoke-direct {p0, v3, v8, v6}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->move(Ljava/io/File;Ljava/io/File;Z)Z
    :try_end_7a
    .catchall {:try_start_52 .. :try_end_7a} :catchall_c0
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_7a} :catch_7b

    goto :goto_6e

    .line 1162
    .end local v3           #f:Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #newFile:Ljava/io/File;
    :catch_7b
    move-exception v2

    .line 1163
    .local v2, e:Ljava/lang/Exception;
    :try_start_7c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1164
    iget-object v9, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_85
    .catchall {:try_start_7c .. :try_end_85} :catchall_c0

    .line 1166
    sget-object v9, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.MEDIA_MOUNTED"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v11, "where"

    const-string v12, "myfiles"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .end local v2           #e:Ljava/lang/Exception;
    :goto_b1
    invoke-virtual {v9, v10}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sendBroadcast(Landroid/content/Intent;)V

    .line 1169
    const-string v9, "MyFiles"

    const-string v10, "managed - move finish"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 1159
    .restart local v3       #f:Ljava/io/File;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v7       #name:Ljava/lang/String;
    .restart local v8       #newFile:Ljava/io/File;
    :cond_bc
    :try_start_bc
    invoke-direct {p0, v3, v8, v6}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->move(Ljava/io/File;Ljava/io/File;Z)Z
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_c0
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_bf} :catch_7b

    goto :goto_6e

    .line 1166
    .end local v3           #f:Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #newFile:Ljava/io/File;
    :catchall_c0
    move-exception v9

    sget-object v10, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MEDIA_MOUNTED"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "file://"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v12, "where"

    const-string v13, "myfiles"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sendBroadcast(Landroid/content/Intent;)V

    throw v9

    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_f1
    sget-object v9, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.MEDIA_MOUNTED"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v11, "where"

    const-string v12, "myfiles"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    goto :goto_b1
.end method

.method private declared-synchronized releasePowerWakeLock()V
    .registers 3

    .prologue
    .line 1354
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1355
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1358
    :cond_e
    const-string v0, "MyFiles"

    const-string v1, "FileOperationThread.releasePowerWakeLock - PARTIAL_WAKE_LOCK is Off."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 1360
    monitor-exit p0

    return-void

    .line 1354
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setErrorMessage(Ljava/io/IOException;)V
    .registers 5
    .parameter "e"

    .prologue
    .line 1368
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No space left on device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1369
    const-string v0, "MyFiles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " e.getMessage() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1377
    :goto_34
    return-void

    .line 1372
    :cond_35
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 1373
    const-string v0, "MyFiles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " e.getMessage() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :cond_57
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_34
.end method

.method private declared-synchronized setPowerWakeLock()V
    .registers 4

    .prologue
    .line 1343
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1344
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "MyFiles-FileOperation"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1347
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_21

    .line 1348
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1350
    :cond_21
    const-string v1, "MyFiles"

    const-string v2, "FileOperationThread.setPowerWakeLock - PARTIAL_WAKE_LOCK is On."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 1351
    monitor-exit p0

    return-void

    .line 1343
    .end local v0           #pm:Landroid/os/PowerManager;
    :catchall_2a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private showOverwriteDialog(Ljava/lang/String;)Z
    .registers 5
    .parameter "name"

    .prologue
    .line 1282
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mLoop:Z

    .line 1283
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread$1;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread$1;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1330
    :goto_f
    iget-boolean v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mLoop:Z

    if-eqz v1, :cond_1e

    .line 1332
    const-wide/16 v1, 0xc8

    :try_start_15
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_f

    .line 1333
    :catch_19
    move-exception v0

    .line 1334
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_f

    .line 1337
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1e
    invoke-static {}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$3000()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mOverwriteCheckAll:Z

    .line 1339
    iget-boolean v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mOverwrite:Z

    return v1
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/16 v5, 0x63

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1007
    :try_start_4
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->setPowerWakeLock()V

    .line 1008
    sget-object v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_THUMBWORKER_SUSPEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sendBroadcast(Landroid/content/Intent;)V

    .line 1009
    iget v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mOperation:I
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_39

    packed-switch v0, :pswitch_data_62

    .line 1023
    :goto_18
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1024
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->releasePowerWakeLock()V

    .line 1025
    sget-object v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_THUMBWORKER_RESUME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sendBroadcast(Landroid/content/Intent;)V

    .line 1026
    iput v5, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mOperation:I

    .line 1027
    iput-boolean v4, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mAbortOperation:Z

    .line 1029
    return-void

    .line 1011
    :pswitch_31
    :try_start_31
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mSrcFiles:[Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mDstFolder:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->copyFiles([Ljava/io/File;Ljava/io/File;)V
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_39

    goto :goto_18

    .line 1023
    :catchall_39
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1024
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->releasePowerWakeLock()V

    .line 1025
    sget-object v1, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sMyThis:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_THUMBWORKER_RESUME"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->sendBroadcast(Landroid/content/Intent;)V

    .line 1026
    iput v5, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mOperation:I

    .line 1027
    iput-boolean v4, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mAbortOperation:Z

    throw v0

    .line 1014
    :pswitch_53
    :try_start_53
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mSrcFiles:[Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mDstFolder:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->moveFiles([Ljava/io/File;Ljava/io/File;)V

    goto :goto_18

    .line 1017
    :pswitch_5b
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mSrcFiles:[Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->deleteFiles([Ljava/io/File;)V
    :try_end_60
    .catchall {:try_start_53 .. :try_end_60} :catchall_39

    goto :goto_18

    .line 1009
    nop

    :pswitch_data_62
    .packed-switch 0x2
        :pswitch_5b
        :pswitch_31
        :pswitch_53
    .end packed-switch
.end method

.method public declared-synchronized setAbortOperation(Z)V
    .registers 5
    .parameter "isAborted"

    .prologue
    .line 1363
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mAbortOperation:Z

    .line 1364
    const-string v0, "MyFiles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAbortOperation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$FileOperationThread;->mAbortOperation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 1365
    monitor-exit p0

    return-void

    .line 1363
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
