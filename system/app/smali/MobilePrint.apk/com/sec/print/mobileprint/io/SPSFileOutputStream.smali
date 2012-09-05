.class public Lcom/sec/print/mobileprint/io/SPSFileOutputStream;
.super Ljava/lang/Object;
.source "SPSFileOutputStream.java"

# interfaces
.implements Lcom/sec/print/mobileprint/io/ISPSOutputStream;


# instance fields
.field fileFullPath:Ljava/lang/String;

.field fileOutputStream:Ljava/io/FileOutputStream;

.field isCancel:Z

.field isOccurError:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "fileFullPath"

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;->isCancel:Z

    .line 17
    iput-boolean v0, p0, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;->isOccurError:Z

    .line 21
    iput-object p1, p0, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;->fileFullPath:Ljava/lang/String;

    .line 22
    iput-boolean v0, p0, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;->isCancel:Z

    .line 23
    iput-boolean v0, p0, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;->isOccurError:Z

    .line 24
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;->isCancel:Z

    .line 30
    return-void
.end method

.method public close()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 36
    :try_start_2
    iget-object v3, p0, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;->fileOutputStream:Ljava/io/FileOutputStream;

    if-nez v3, :cond_7

    .line 50
    :goto_6
    return v1

    .line 40
    :cond_7
    iget-object v3, p0, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 41
    iget-object v3, p0, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_11} :catch_13

    move v1, v2

    .line 50
    goto :goto_6

    .line 42
    :catch_13
    move-exception v0

    .line 44
    .local v0, e:Ljava/io/IOException;
    iput-boolean v2, p0, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;->isOccurError:Z

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6
.end method

.method public isConnect()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 80
    iget-boolean v1, p0, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;->isOccurError:Z

    if-ne v1, v0, :cond_6

    .line 82
    const/4 v0, 0x0

    .line 85
    :cond_6
    return v0
.end method

.method public open()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 92
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;->fileFullPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;->fileOutputStream:Ljava/io/FileOutputStream;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_a} :catch_b

    .line 101
    :goto_a
    return v1

    .line 93
    :catch_b
    move-exception v0

    .line 95
    .local v0, e:Ljava/io/FileNotFoundException;
    iput-boolean v1, p0, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;->isOccurError:Z

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 98
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public write([BI)Z
    .registers 9
    .parameter "buffer"
    .parameter "length"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 56
    iget-boolean v3, p0, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;->isOccurError:Z

    if-ne v3, v1, :cond_7

    .line 74
    :cond_6
    :goto_6
    return v1

    .line 61
    :cond_7
    :try_start_7
    iget-object v3, p0, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;->fileOutputStream:Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, p2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_e

    goto :goto_6

    .line 62
    :catch_e
    move-exception v0

    .line 64
    .local v0, e:Ljava/io/IOException;
    iput-boolean v1, p0, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;->isOccurError:Z

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "write exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-boolean v3, p0, Lcom/sec/print/mobileprint/io/SPSFileOutputStream;->isCancel:Z

    if-eq v3, v1, :cond_6

    .line 71
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v1, v2

    .line 72
    goto :goto_6
.end method
