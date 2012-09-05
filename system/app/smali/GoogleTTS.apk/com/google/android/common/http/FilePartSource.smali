.class public Lcom/google/android/common/http/FilePartSource;
.super Ljava/lang/Object;
.source "FilePartSource.java"

# interfaces
.implements Lcom/google/android/common/http/PartSource;


# instance fields
.field private file:Ljava/io/File;

.field private fileName:Ljava/lang/String;


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/common/http/FilePartSource;->file:Ljava/io/File;

    if-eqz v0, :cond_c

    .line 125
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/android/common/http/FilePartSource;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 127
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_b
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/common/http/FilePartSource;->fileName:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "noname"

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/common/http/FilePartSource;->fileName:Ljava/lang/String;

    goto :goto_6
.end method

.method public getLength()J
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/common/http/FilePartSource;->file:Ljava/io/File;

    if-eqz v0, :cond_b

    .line 102
    iget-object v0, p0, Lcom/google/android/common/http/FilePartSource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 104
    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method
