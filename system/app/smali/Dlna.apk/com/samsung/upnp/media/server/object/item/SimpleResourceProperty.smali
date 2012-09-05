.class public Lcom/samsung/upnp/media/server/object/item/SimpleResourceProperty;
.super Lcom/samsung/upnp/media/server/object/ResourceProperty;
.source "SimpleResourceProperty.java"


# instance fields
.field private contentFile:Ljava/io/File;

.field private contentInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/xml/AttributeList;Ljava/io/File;)V
    .registers 6
    .parameter "url"
    .parameter "protocol"
    .parameter "attrs"
    .parameter "content"

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/upnp/media/server/object/ResourceProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/xml/AttributeList;)V

    .line 20
    iput-object v0, p0, Lcom/samsung/upnp/media/server/object/item/SimpleResourceProperty;->contentFile:Ljava/io/File;

    .line 21
    iput-object v0, p0, Lcom/samsung/upnp/media/server/object/item/SimpleResourceProperty;->contentInputStream:Ljava/io/InputStream;

    .line 100
    iput-object p4, p0, Lcom/samsung/upnp/media/server/object/item/SimpleResourceProperty;->contentFile:Ljava/io/File;

    .line 101
    return-void
.end method

.method public static createSimpleResourceProperty(Ljava/lang/String;Ljava/util/HashMap;)Lcom/samsung/upnp/media/server/object/item/SimpleResourceProperty;
    .registers 21
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/upnp/media/server/object/item/SimpleResourceProperty;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, contentInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 55
    .local v3, attr:Lcom/samsung/xml/Attribute;
    new-instance v4, Lcom/samsung/xml/AttributeList;

    invoke-direct {v4}, Lcom/samsung/xml/AttributeList;-><init>()V

    .line 56
    .local v4, attrs:Lcom/samsung/xml/AttributeList;
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getParser()Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    move-result-object v10

    .line 58
    .local v10, parser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;
    const-string v16, "mime_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 59
    .local v9, mimeType:Ljava/lang/String;
    const-string v16, "_size"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 60
    .local v13, size:Ljava/lang/String;
    const-string v16, "width"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 61
    .local v15, width:Ljava/lang/String;
    const-string v16, "height"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 62
    .local v8, height:Ljava/lang/String;
    const-string v16, "resolution"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 63
    .local v12, resolution:Ljava/lang/String;
    const-string v16, "duration"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 65
    .local v6, durationStr:Ljava/lang/String;
    if-nez v6, :cond_56

    .line 66
    const-string v6, "0"

    .line 72
    :cond_56
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->formatTime(J)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, duration:Ljava/lang/String;
    const/4 v14, 0x0

    .line 75
    .local v14, w:I
    const/4 v7, 0x0

    .line 78
    .local v7, h:I
    :try_start_6b
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_c0

    move-result v14

    .line 83
    :goto_6f
    :try_start_6f
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_c2

    move-result v7

    .line 87
    :goto_73
    sget v16, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->PROTOCOL_TYPE_ORIGIN:I

    move/from16 v0, v16

    invoke-virtual {v10, v9, v14, v7, v0}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->buildProtocol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v11

    .line 88
    .local v11, protocol:Ljava/lang/String;
    new-instance v3, Lcom/samsung/xml/Attribute;

    .end local v3           #attr:Lcom/samsung/xml/Attribute;
    const-string v16, "resolution"

    move-object/from16 v0, v16

    invoke-direct {v3, v0, v12}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .restart local v3       #attr:Lcom/samsung/xml/Attribute;
    invoke-virtual {v4, v3}, Lcom/samsung/xml/AttributeList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v3, Lcom/samsung/xml/Attribute;

    .end local v3           #attr:Lcom/samsung/xml/Attribute;
    const-string v16, "size"

    move-object/from16 v0, v16

    invoke-direct {v3, v0, v13}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .restart local v3       #attr:Lcom/samsung/xml/Attribute;
    invoke-virtual {v4, v3}, Lcom/samsung/xml/AttributeList;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v3, Lcom/samsung/xml/Attribute;

    .end local v3           #attr:Lcom/samsung/xml/Attribute;
    const-string v16, "duration"

    move-object/from16 v0, v16

    invoke-direct {v3, v0, v5}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .restart local v3       #attr:Lcom/samsung/xml/Attribute;
    invoke-virtual {v4, v3}, Lcom/samsung/xml/AttributeList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v17, Lcom/samsung/upnp/media/server/object/item/SimpleResourceProperty;

    new-instance v18, Ljava/io/File;

    const-string v16, "_data"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v11, v4, v2}, Lcom/samsung/upnp/media/server/object/item/SimpleResourceProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/xml/AttributeList;Ljava/io/File;)V

    return-object v17

    .line 79
    .end local v11           #protocol:Ljava/lang/String;
    :catch_c0
    move-exception v16

    goto :goto_6f

    .line 84
    :catch_c2
    move-exception v16

    goto :goto_73
.end method


# virtual methods
.method public deleteContent()V
    .registers 1

    .prologue
    .line 105
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 4

    .prologue
    .line 110
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/samsung/upnp/media/server/object/item/SimpleResourceProperty;->contentFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_7} :catch_8

    .line 112
    :goto_7
    return-object v1

    .line 111
    :catch_8
    move-exception v0

    .line 112
    .local v0, e:Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    goto :goto_7
.end method
