.class public Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;
.super Lcom/samsung/upnp/media/server/object/ResourceProperty;
.source "DOAThumbnailProperty.java"


# instance fields
.field private array:Ljava/io/ByteArrayOutputStream;

.field private isThumbnailCreated:Z

.field private media_store_uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/samsung/xml/AttributeList;)V
    .registers 6
    .parameter "url"
    .parameter "protocol"
    .parameter "media_store_url"
    .parameter "attrList"

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/upnp/media/server/object/ResourceProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/xml/AttributeList;)V

    .line 20
    iput-object v0, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->media_store_uri:Landroid/net/Uri;

    .line 21
    iput-object v0, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->array:Ljava/io/ByteArrayOutputStream;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->isThumbnailCreated:Z

    .line 27
    iput-object p3, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->media_store_uri:Landroid/net/Uri;

    .line 29
    return-void
.end method

.method private declared-synchronized buildThumbnail()V
    .registers 7

    .prologue
    .line 52
    monitor-enter p0

    :try_start_1
    iget-boolean v3, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->isThumbnailCreated:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_42

    if-eqz v3, :cond_7

    .line 74
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 54
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->getInstance()Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->media_store_uri:Landroid/net/Uri;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->getThumbnail(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_42

    move-result-object v0

    .line 55
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 58
    const/16 v3, 0x78

    const/16 v4, 0x78

    const/4 v5, 0x0

    :try_start_19
    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 59
    .local v2, scaleBitmap:Landroid/graphics/Bitmap;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x2710

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v3, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->array:Ljava/io/ByteArrayOutputStream;

    .line 60
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x50

    iget-object v5, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->array:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 61
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 62
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_35
    .catchall {:try_start_19 .. :try_end_35} :catchall_58
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_35} :catch_45

    .line 67
    :try_start_35
    iget-object v3, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->array:Ljava/io/ByteArrayOutputStream;

    if-eqz v3, :cond_3e

    .line 68
    iget-object v3, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->array:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_42
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3e} :catch_68

    .line 73
    .end local v2           #scaleBitmap:Landroid/graphics/Bitmap;
    :cond_3e
    :goto_3e
    const/4 v3, 0x1

    :try_start_3f
    iput-boolean v3, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->isThumbnailCreated:Z
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_42

    goto :goto_5

    .line 52
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catchall_42
    move-exception v3

    monitor-exit p0

    throw v3

    .line 63
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :catch_45
    move-exception v1

    .line 64
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    :try_start_47
    iput-object v3, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->array:Ljava/io/ByteArrayOutputStream;
    :try_end_49
    .catchall {:try_start_47 .. :try_end_49} :catchall_58

    .line 67
    :try_start_49
    iget-object v3, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->array:Ljava/io/ByteArrayOutputStream;

    if-eqz v3, :cond_3e

    .line 68
    iget-object v3, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->array:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_42
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_52} :catch_53

    goto :goto_3e

    .line 69
    :catch_53
    move-exception v1

    .line 70
    :try_start_54
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_42

    goto :goto_3e

    .line 65
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_58
    move-exception v3

    .line 67
    :try_start_59
    iget-object v4, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->array:Ljava/io/ByteArrayOutputStream;

    if-eqz v4, :cond_62

    .line 68
    iget-object v4, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->array:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_62
    .catchall {:try_start_59 .. :try_end_62} :catchall_42
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_62} :catch_63

    .line 72
    :cond_62
    :goto_62
    :try_start_62
    throw v3

    .line 69
    :catch_63
    move-exception v1

    .line 70
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_62

    .line 69
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #scaleBitmap:Landroid/graphics/Bitmap;
    :catch_68
    move-exception v1

    .line 70
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_42

    goto :goto_3e
.end method


# virtual methods
.method public deleteContent()V
    .registers 1

    .prologue
    .line 49
    return-void
.end method

.method public declared-synchronized getContentLength()J
    .registers 3

    .prologue
    .line 32
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->isThumbnailCreated:Z

    if-nez v0, :cond_8

    .line 33
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->buildThumbnail()V

    .line 34
    :cond_8
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->array:Ljava/io/ByteArrayOutputStream;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_18

    if-nez v0, :cond_10

    .line 35
    const-wide/16 v0, 0x0

    .line 36
    :goto_e
    monitor-exit p0

    return-wide v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->array:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_18

    move-result v0

    int-to-long v0, v0

    goto :goto_e

    .line 32
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 40
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->isThumbnailCreated:Z

    if-nez v0, :cond_8

    .line 41
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->buildThumbnail()V

    .line 42
    :cond_8
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->array:Ljava/io/ByteArrayOutputStream;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1b

    if-nez v0, :cond_f

    .line 43
    const/4 v0, 0x0

    .line 44
    :goto_d
    monitor-exit p0

    return-object v0

    :cond_f
    :try_start_f
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;->array:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1b

    goto :goto_d

    .line 40
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
