.class public Lcom/google/android/apps/translate/offline/ModelDownloader;
.super Ljava/lang/Object;
.source "ModelDownloader.java"


# static fields
.field private static final BUFFER_SIZE:I = 0xc800

.field private static final CONNECTION_TIMEOUT:I = 0xc350

.field private static final SOCKET_TIMEOUT:I = 0x493e0

.field private static final TAG:Ljava/lang/String; = "ModelDownloader"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 21
    .parameter "urlAddress"
    .parameter "targetFile"

    .prologue
    .line 28
    :try_start_0
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 29
    .local v12, url:Ljava/net/URL;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 30
    .local v10, startTime:J
    const-string v13, "ModelDownloader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Download file at: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 36
    .local v2, connection:Ljava/net/URLConnection;
    const v13, 0x493e0

    invoke-virtual {v2, v13}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 37
    const v13, 0xc350

    invoke-virtual {v2, v13}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 41
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 43
    .local v3, dir:Ljava/io/File;
    const/4 v4, 0x0

    .line 44
    .local v4, dirExists:Z
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_4e

    .line 45
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_74

    .line 46
    const/4 v4, 0x1

    .line 56
    :cond_4e
    if-nez v4, :cond_98

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v13

    if-nez v13, :cond_98

    .line 58
    const-string v13, "ModelDownloader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not create directory="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v13, 0x0

    .line 86
    .end local v2           #connection:Ljava/net/URLConnection;
    .end local v3           #dir:Ljava/io/File;
    .end local v4           #dirExists:Z
    .end local v6           #file:Ljava/io/File;
    .end local v10           #startTime:J
    .end local v12           #url:Ljava/net/URL;
    :goto_73
    return v13

    .line 48
    .restart local v2       #connection:Ljava/net/URLConnection;
    .restart local v3       #dir:Ljava/io/File;
    .restart local v4       #dirExists:Z
    .restart local v6       #file:Ljava/io/File;
    .restart local v10       #startTime:J
    .restart local v12       #url:Ljava/net/URL;
    :cond_74
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v13

    if-nez v13, :cond_4e

    .line 50
    const-string v13, "ModelDownloader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not remove existng non-directory file="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v13, 0x0

    goto :goto_73

    .line 63
    :cond_98
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    const v14, 0xc800

    invoke-direct {v7, v13, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 65
    .local v7, inStream:Ljava/io/BufferedInputStream;
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 68
    .local v9, outStream:Ljava/io/FileOutputStream;
    const v13, 0xc800

    new-array v1, v13, [B

    .line 70
    .local v1, buff:[B
    :goto_b0
    invoke-virtual {v7, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8

    .local v8, len:I
    const/4 v13, -0x1

    if-eq v8, v13, :cond_c9

    .line 71
    const/4 v13, 0x0

    invoke-virtual {v9, v1, v13, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_bb} :catch_bc

    goto :goto_b0

    .line 83
    .end local v1           #buff:[B
    .end local v2           #connection:Ljava/net/URLConnection;
    .end local v3           #dir:Ljava/io/File;
    .end local v4           #dirExists:Z
    .end local v6           #file:Ljava/io/File;
    .end local v7           #inStream:Ljava/io/BufferedInputStream;
    .end local v8           #len:I
    .end local v9           #outStream:Ljava/io/FileOutputStream;
    .end local v10           #startTime:J
    .end local v12           #url:Ljava/net/URL;
    :catch_bc
    move-exception v5

    .line 84
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    const-string v13, "ModelDownloader"

    const-string v14, "Exception in downloadFile"

    invoke-static {v13, v14, v5}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    const/4 v13, 0x0

    goto :goto_73

    .line 75
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v1       #buff:[B
    .restart local v2       #connection:Ljava/net/URLConnection;
    .restart local v3       #dir:Ljava/io/File;
    .restart local v4       #dirExists:Z
    .restart local v6       #file:Ljava/io/File;
    .restart local v7       #inStream:Ljava/io/BufferedInputStream;
    .restart local v8       #len:I
    .restart local v9       #outStream:Ljava/io/FileOutputStream;
    .restart local v10       #startTime:J
    .restart local v12       #url:Ljava/net/URL;
    :cond_c9
    :try_start_c9
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 76
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 77
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 79
    const-string v13, "ModelDownloader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Download completed in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v10

    const-wide/16 v17, 0x3e8

    div-long v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " seconds"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_f9} :catch_bc

    .line 82
    const/4 v13, 0x1

    goto/16 :goto_73
.end method
