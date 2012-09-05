.class public Lcom/samsung/upnp/media/server/object/item/sat/VideoAlbumartProperty;
.super Lcom/samsung/upnp/media/server/object/ResourceProperty;
.source "VideoAlbumartProperty.java"


# instance fields
.field private filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "url"
    .parameter "protocol"
    .parameter "filepath"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/samsung/upnp/media/server/object/ResourceProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/upnp/media/server/object/item/sat/VideoAlbumartProperty;->filePath:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/samsung/upnp/media/server/object/item/sat/VideoAlbumartProperty;->filePath:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public deleteContent()V
    .registers 1

    .prologue
    .line 50
    return-void
.end method

.method public getContentLength()J
    .registers 4

    .prologue
    .line 24
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/upnp/media/server/object/item/sat/VideoAlbumartProperty;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    return-wide v1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 8

    .prologue
    .line 29
    const/4 v3, 0x0

    .line 31
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/samsung/upnp/media/server/object/item/sat/VideoAlbumartProperty;->filePath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v0, v5, [B

    .line 33
    .local v0, buffer:[B
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_35
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_28

    .line 34
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_14
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 35
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_41
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1c} :catch_44

    .line 39
    if-eqz v4, :cond_21

    .line 41
    :try_start_1e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_23

    :cond_21
    :goto_21
    move-object v3, v4

    .line 37
    .end local v0           #buffer:[B
    .end local v2           #file:Ljava/io/File;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :goto_22
    return-object v5

    .line 42
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_23
    move-exception v1

    .line 43
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 36
    .end local v0           #buffer:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_28
    move-exception v1

    .line 39
    .restart local v1       #e:Ljava/io/IOException;
    :goto_29
    if-eqz v3, :cond_2e

    .line 41
    :try_start_2b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_30

    .line 37
    :cond_2e
    :goto_2e
    const/4 v5, 0x0

    goto :goto_22

    .line 42
    :catch_30
    move-exception v1

    .line 43
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    .line 38
    .end local v1           #e:Ljava/io/IOException;
    :catchall_35
    move-exception v5

    .line 39
    :goto_36
    if-eqz v3, :cond_3b

    .line 41
    :try_start_38
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 45
    :cond_3b
    :goto_3b
    throw v5

    .line 42
    :catch_3c
    move-exception v1

    .line 43
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    .line 38
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_41
    move-exception v5

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_36

    .line 36
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_44
    move-exception v1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_29
.end method
