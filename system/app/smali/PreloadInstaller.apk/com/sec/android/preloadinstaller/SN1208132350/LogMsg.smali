.class public Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;
.super Ljava/lang/Object;
.source "LogMsg.java"


# instance fields
.field outputContents:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;->outputContents:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public out(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 14
    :try_start_0
    const-string v0, "PreloadInstaller"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;->outputContents:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;->outputContents:Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    .line 17
    :goto_20
    return-void

    .line 16
    :catch_21
    move-exception v0

    goto :goto_20
.end method

.method public write()V
    .registers 6

    .prologue
    .line 20
    const/4 v1, 0x0

    .line 22
    .local v1, fos:Ljava/io/OutputStreamWriter;
    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/log/PreloadInstaller.txt"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .local v0, file:Ljava/io/File;
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_23

    .line 24
    .end local v1           #fos:Ljava/io/OutputStreamWriter;
    .local v2, fos:Ljava/io/OutputStreamWriter;
    :try_start_14
    iget-object v3, p0, Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;->outputContents:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_35
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_38

    .line 28
    if-eqz v2, :cond_1e

    .line 29
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_20

    :cond_1e
    move-object v1, v2

    .line 32
    .end local v0           #file:Ljava/io/File;
    .end local v2           #fos:Ljava/io/OutputStreamWriter;
    .restart local v1       #fos:Ljava/io/OutputStreamWriter;
    :cond_1f
    :goto_1f
    return-void

    .line 30
    .end local v1           #fos:Ljava/io/OutputStreamWriter;
    .restart local v0       #file:Ljava/io/File;
    .restart local v2       #fos:Ljava/io/OutputStreamWriter;
    :catch_20
    move-exception v3

    move-object v1, v2

    .line 31
    .end local v2           #fos:Ljava/io/OutputStreamWriter;
    .restart local v1       #fos:Ljava/io/OutputStreamWriter;
    goto :goto_1f

    .line 25
    .end local v0           #file:Ljava/io/File;
    :catch_23
    move-exception v3

    .line 28
    :goto_24
    if-eqz v1, :cond_1f

    .line 29
    :try_start_26
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_1f

    .line 30
    :catch_2a
    move-exception v3

    goto :goto_1f

    .line 27
    :catchall_2c
    move-exception v3

    .line 28
    :goto_2d
    if-eqz v1, :cond_32

    .line 29
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    .line 30
    :cond_32
    :goto_32
    throw v3

    :catch_33
    move-exception v4

    goto :goto_32

    .line 27
    .end local v1           #fos:Ljava/io/OutputStreamWriter;
    .restart local v0       #file:Ljava/io/File;
    .restart local v2       #fos:Ljava/io/OutputStreamWriter;
    :catchall_35
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/OutputStreamWriter;
    .restart local v1       #fos:Ljava/io/OutputStreamWriter;
    goto :goto_2d

    .line 25
    .end local v1           #fos:Ljava/io/OutputStreamWriter;
    .restart local v2       #fos:Ljava/io/OutputStreamWriter;
    :catch_38
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/OutputStreamWriter;
    .restart local v1       #fos:Ljava/io/OutputStreamWriter;
    goto :goto_24
.end method
