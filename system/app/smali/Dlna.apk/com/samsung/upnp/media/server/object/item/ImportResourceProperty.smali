.class public Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;
.super Lcom/samsung/upnp/media/server/object/ResourceProperty;
.source "ImportResourceProperty.java"


# static fields
.field private static final parser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;


# instance fields
.field mediaFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getParser()Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    move-result-object v0

    sput-object v0, Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;->parser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    .line 20
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 5
    .parameter "url"
    .parameter "protocol"
    .parameter "file"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/samsung/upnp/media/server/object/ResourceProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;->mediaFile:Ljava/io/File;

    .line 103
    iput-object p3, p0, Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;->mediaFile:Ljava/io/File;

    .line 104
    return-void
.end method

.method private static createDestFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 8
    .parameter "path"
    .parameter "title"
    .parameter "mime"

    .prologue
    .line 25
    if-eqz p0, :cond_a

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 26
    :cond_a
    const-string p0, "/sdcard/"

    .line 27
    :cond_c
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getParser()Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getPostfixByMimetype(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, postFix:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, destFile:Ljava/io/File;
    const/4 v1, 0x0

    .line 31
    .local v1, index:I
    :goto_2f
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_36

    .line 34
    return-object v0

    .line 32
    :cond_36
    new-instance v0, Ljava/io/File;

    .end local v0           #destFile:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #destFile:Ljava/io/File;
    goto :goto_2f
.end method

.method public static createImportResourceProperty(Ljava/lang/String;Lcom/samsung/upnp/media/server/object/item/ImportItemNode;Lcom/samsung/upnp/media/server/object/ContentProperty;Ljava/io/File;)Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;
    .registers 10
    .parameter "path"
    .parameter "parent"
    .parameter "prop"
    .parameter "tempFile"

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/upnp/media/server/ContentDirectory;->getContentExportURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, uri:Ljava/lang/String;
    const-string v1, ""

    .line 85
    .local v1, protocol:Ljava/lang/String;
    if-eqz p2, :cond_16

    .line 86
    const-string v4, "protocolInfo"

    invoke-virtual {p2, v4}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    :cond_16
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/xml/XML;->unEscapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;->parser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    invoke-virtual {v5, v1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;->createDestFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 91
    .local v0, destFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 92
    invoke-virtual {p3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 93
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 95
    sget-object v4, Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;->parser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    sget v5, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->PROTOCOL_TYPE_ORIGIN:I

    invoke-virtual {v4, v1, v5}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->attachAdditionalFlags(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 96
    new-instance v2, Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;

    invoke-direct {v2, v3, v1, v0}, Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 97
    .local v2, res:Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;
    return-object v2
.end method

.method public static createImportResourceProperty(Ljava/lang/String;Lcom/samsung/upnp/media/server/object/item/ImportItemNode;Lcom/samsung/upnp/media/server/object/ContentProperty;Ljava/io/InputStream;)Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;
    .registers 16
    .parameter "path"
    .parameter "parent"
    .parameter "prop"
    .parameter "is"

    .prologue
    const/4 v7, 0x0

    .line 40
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v10

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/upnp/media/server/ContentDirectory;->getContentExportURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 41
    .local v9, uri:Ljava/lang/String;
    const-string v5, ""

    .line 42
    .local v5, protocol:Ljava/lang/String;
    if-eqz p2, :cond_17

    .line 43
    const-string v10, "protocolInfo"

    invoke-virtual {p2, v10}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    :cond_17
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 45
    .local v8, title:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/xml/XML;->unEscapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 46
    const-string v10, "[\\\\/:*?\"<>|]"

    const-string v11, "_"

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 47
    sget-object v10, Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;->parser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    invoke-virtual {v10, v5}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v8, v10}, Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;->createDestFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 49
    .local v1, destFile:Ljava/io/File;
    const/4 v3, 0x0

    .line 51
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_32
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_85
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_37} :catch_a1
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_37} :catch_71

    .line 52
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 53
    .local v6, read:I
    const v10, 0x4b000

    :try_start_3b
    new-array v0, v10, [B

    .line 54
    .local v0, buffer:[B
    if-eqz p3, :cond_46

    .line 55
    :goto_3f
    invoke-virtual {p3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_9b
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_42} :catch_5c
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_42} :catch_9e

    move-result v6

    const/4 v10, -0x1

    if-ne v6, v10, :cond_57

    .line 66
    :cond_46
    if-eqz p3, :cond_4b

    .line 67
    :try_start_48
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 68
    :cond_4b
    if-eqz v4, :cond_50

    .line 69
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_50} :catch_96

    .line 75
    :cond_50
    :goto_50
    new-instance v7, Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;

    invoke-direct {v7, v9, v5, v1}, Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .local v7, res:Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;
    move-object v3, v4

    .line 76
    .end local v0           #buffer:[B
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v6           #read:I
    .end local v7           #res:Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :cond_56
    :goto_56
    return-object v7

    .line 56
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #read:I
    :cond_57
    const/4 v10, 0x0

    :try_start_58
    invoke-virtual {v4, v0, v10, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_9b
    .catch Ljava/io/FileNotFoundException; {:try_start_58 .. :try_end_5b} :catch_5c
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_9e

    goto :goto_3f

    .line 58
    .end local v0           #buffer:[B
    :catch_5c
    move-exception v2

    move-object v3, v4

    .line 59
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v6           #read:I
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :goto_5e
    :try_start_5e
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_85

    .line 66
    if-eqz p3, :cond_66

    .line 67
    :try_start_63
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 68
    :cond_66
    if-eqz v3, :cond_56

    .line 69
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6b} :catch_6c

    goto :goto_56

    .line 70
    :catch_6c
    move-exception v2

    .line 71
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_56

    .line 61
    .end local v2           #e:Ljava/io/IOException;
    :catch_71
    move-exception v2

    .line 62
    .restart local v2       #e:Ljava/io/IOException;
    :goto_72
    :try_start_72
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_85

    .line 66
    if-eqz p3, :cond_7a

    .line 67
    :try_start_77
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 68
    :cond_7a
    if-eqz v3, :cond_56

    .line 69
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7f} :catch_80

    goto :goto_56

    .line 70
    :catch_80
    move-exception v2

    .line 71
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_56

    .line 64
    .end local v2           #e:Ljava/io/IOException;
    :catchall_85
    move-exception v10

    .line 66
    :goto_86
    if-eqz p3, :cond_8b

    .line 67
    :try_start_88
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 68
    :cond_8b
    if-eqz v3, :cond_90

    .line 69
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_90} :catch_91

    .line 73
    :cond_90
    :goto_90
    throw v10

    .line 70
    :catch_91
    move-exception v2

    .line 71
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_90

    .line 70
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #read:I
    :catch_96
    move-exception v2

    .line 71
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50

    .line 64
    .end local v0           #buffer:[B
    .end local v2           #e:Ljava/io/IOException;
    :catchall_9b
    move-exception v10

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_86

    .line 61
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_9e
    move-exception v2

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_72

    .line 58
    .end local v6           #read:I
    :catch_a1
    move-exception v2

    goto :goto_5e
.end method


# virtual methods
.method public deleteContent()V
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;->mediaFile:Ljava/io/File;

    if-eqz v0, :cond_9

    .line 122
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;->mediaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 123
    :cond_9
    return-void
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;->mediaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 4

    .prologue
    .line 113
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;->mediaFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_7} :catch_8

    .line 115
    :goto_7
    return-object v1

    .line 114
    :catch_8
    move-exception v0

    .line 115
    .local v0, e:Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    goto :goto_7
.end method
