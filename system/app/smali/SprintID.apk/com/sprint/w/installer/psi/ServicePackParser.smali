.class public Lcom/sprint/w/installer/psi/ServicePackParser;
.super Ljava/lang/Object;
.source "ServicePackParser.java"


# static fields
.field private static log:Lcom/sprint/id/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/sprint/w/installer/psi/ServicePackParser;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/psi/ServicePackParser;->log:Lcom/sprint/id/logger/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private static nodeListToFolders(Lorg/w3c/dom/NodeList;Ljava/util/ArrayList;)V
    .registers 7
    .parameter "nl"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/Folder;>;"
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 81
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v3, :cond_28

    .line 82
    new-instance v1, Lcom/sprint/w/installer/psi/Folder;

    invoke-direct {v1}, Lcom/sprint/w/installer/psi/Folder;-><init>()V

    .line 83
    .local v1, f:Lcom/sprint/w/installer/psi/Folder;
    invoke-interface {p0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 84
    .local v0, elem:Lorg/w3c/dom/Element;
    const-string v4, "id"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/sprint/w/installer/psi/Folder;->id:Ljava/lang/String;

    .line 85
    const-string v4, "n"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/sprint/w/installer/psi/Folder;->title:Ljava/lang/String;

    .line 86
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 88
    .end local v0           #elem:Lorg/w3c/dom/Element;
    .end local v1           #f:Lcom/sprint/w/installer/psi/Folder;
    :cond_28
    return-void
.end method

.method private static nodeListToPacks(Lorg/w3c/dom/NodeList;Ljava/util/ArrayList;Z)V
    .registers 14
    .parameter "nl"
    .parameter
    .parameter "filterByType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/ServicePack;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, packs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/ServicePack;>;"
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 61
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v2, :cond_87

    .line 62
    new-instance v3, Lcom/sprint/w/installer/psi/ServicePack;

    invoke-direct {v3}, Lcom/sprint/w/installer/psi/ServicePack;-><init>()V

    .line 63
    .local v3, pack:Lcom/sprint/w/installer/psi/ServicePack;
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 64
    .local v4, product:Lorg/w3c/dom/Element;
    const-string v8, "id"

    invoke-interface {v4, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, id:Ljava/lang/String;
    const-string v8, "n"

    invoke-interface {v4, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, title:Ljava/lang/String;
    const-string v8, "t"

    invoke-interface {v4, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, type:Ljava/lang/String;
    invoke-virtual {v3, v5}, Lcom/sprint/w/installer/psi/ServicePack;->setTitle(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v3, v1}, Lcom/sprint/w/installer/psi/ServicePack;->setId(Ljava/lang/String;)V

    .line 69
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-static {v9}, Lcom/sprint/w/installer/util/Util;->getStoredContentBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/dme/Preview?t=HS&id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, url:Ljava/lang/String;
    invoke-virtual {v3, v7}, Lcom/sprint/w/installer/psi/ServicePack;->setIconUrl(Ljava/lang/String;)V

    .line 71
    if-eqz p2, :cond_5e

    const-string v8, "SPK"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5e

    const-string v8, "THE"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_64

    .line 72
    :cond_5e
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :goto_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 74
    :cond_64
    sget-object v8, Lcom/sprint/w/installer/psi/ServicePackParser;->log:Lcom/sprint/id/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping unsupported content type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    goto :goto_61

    .line 77
    .end local v1           #id:Ljava/lang/String;
    .end local v3           #pack:Lcom/sprint/w/installer/psi/ServicePack;
    .end local v4           #product:Lorg/w3c/dom/Element;
    .end local v5           #title:Ljava/lang/String;
    .end local v6           #type:Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    :cond_87
    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 11
    .parameter "xmldata"
    .parameter
    .parameter
    .parameter
    .parameter "filterByType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/Folder;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/ServicePack;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/ServicePack;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    .local p1, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/Folder;>;"
    .local p2, packs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/ServicePack;>;"
    .local p3, featuredPacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/ServicePack;>;"
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 39
    .local v1, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 40
    .local v0, db:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v4, Lorg/xml/sax/InputSource;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 43
    .local v2, doc:Lorg/w3c/dom/Document;
    if-eqz p2, :cond_21

    .line 44
    const-string v4, "p"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 45
    .local v3, nl:Lorg/w3c/dom/NodeList;
    invoke-static {v3, p2, p4}, Lcom/sprint/w/installer/psi/ServicePackParser;->nodeListToPacks(Lorg/w3c/dom/NodeList;Ljava/util/ArrayList;Z)V

    .line 48
    .end local v3           #nl:Lorg/w3c/dom/NodeList;
    :cond_21
    if-eqz p3, :cond_2c

    .line 49
    const-string v4, "f"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 50
    .restart local v3       #nl:Lorg/w3c/dom/NodeList;
    invoke-static {v3, p3, p4}, Lcom/sprint/w/installer/psi/ServicePackParser;->nodeListToPacks(Lorg/w3c/dom/NodeList;Ljava/util/ArrayList;Z)V

    .line 53
    .end local v3           #nl:Lorg/w3c/dom/NodeList;
    :cond_2c
    if-eqz p1, :cond_37

    .line 54
    const-string v4, "l"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 55
    .restart local v3       #nl:Lorg/w3c/dom/NodeList;
    invoke-static {v3, p1}, Lcom/sprint/w/installer/psi/ServicePackParser;->nodeListToFolders(Lorg/w3c/dom/NodeList;Ljava/util/ArrayList;)V

    .line 57
    .end local v3           #nl:Lorg/w3c/dom/NodeList;
    :cond_37
    return-void
.end method

.method public static parseMetaData(Lcom/sprint/w/installer/psi/ServicePack;Ljava/lang/String;)V
    .registers 24
    .parameter "pack"
    .parameter "xml"

    .prologue
    .line 184
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 185
    .local v5, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 186
    .local v4, db:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v18, Lorg/xml/sax/InputSource;

    new-instance v19, Ljava/io/StringReader;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v18 .. v19}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v7

    .line 187
    .local v7, doc:Lorg/w3c/dom/Document;
    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v18

    const/16 v19, 0x0

    const-string v20, "rs"

    const-string v21, "cd"

    invoke-static/range {v18 .. v21}, Lcom/sprint/w/installer/util/Util;->getChildElementAttrs(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, code:Ljava/lang/String;
    const-string v18, "0"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_bd

    .line 189
    const-string v18, "pk"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 190
    .local v11, nl:Lorg/w3c/dom/NodeList;
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    if-lez v18, :cond_bc

    .line 191
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    .line 192
    .local v12, pk:Lorg/w3c/dom/Element;
    const-string v18, "by"

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, creator:Ljava/lang/String;
    const-string v18, "ve"

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 194
    .local v15, version:Ljava/lang/String;
    const-string v18, "s1"

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 195
    .local v13, screenShot1:Ljava/lang/String;
    const-string v18, "s2"

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 196
    .local v14, screenShot2:Ljava/lang/String;
    const-string v18, "vi"

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 197
    .local v16, video:Ljava/lang/String;
    const-string v18, "sw"

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 198
    .local v17, website:Ljava/lang/String;
    const-string v18, "se"

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 199
    .local v9, email:Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "ds"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v12, v0, v1}, Lcom/sprint/w/installer/util/Util;->getChildElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 200
    .local v6, descr:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sprint/w/installer/psi/ServicePack;->setSupportName(Ljava/lang/String;)V

    .line 201
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sprint/w/installer/psi/ServicePack;->setVersion(Ljava/lang/String;)V

    .line 202
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sprint/w/installer/psi/ServicePack;->setScreenShot1(Ljava/lang/String;)V

    .line 203
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sprint/w/installer/psi/ServicePack;->setScreenShot2(Ljava/lang/String;)V

    .line 204
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/psi/ServicePack;->setVideoUrl(Ljava/lang/String;)V

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/psi/ServicePack;->setSupportWebsite(Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sprint/w/installer/psi/ServicePack;->setSupportEmail(Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sprint/w/installer/psi/ServicePack;->setDescription(Ljava/lang/String;)V

    .line 216
    .end local v2           #code:Ljava/lang/String;
    .end local v3           #creator:Ljava/lang/String;
    .end local v4           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v5           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6           #descr:Ljava/lang/String;
    .end local v7           #doc:Lorg/w3c/dom/Document;
    .end local v9           #email:Ljava/lang/String;
    .end local v11           #nl:Lorg/w3c/dom/NodeList;
    .end local v12           #pk:Lorg/w3c/dom/Element;
    .end local v13           #screenShot1:Ljava/lang/String;
    .end local v14           #screenShot2:Ljava/lang/String;
    .end local v15           #version:Ljava/lang/String;
    .end local v16           #video:Ljava/lang/String;
    .end local v17           #website:Ljava/lang/String;
    :cond_bc
    :goto_bc
    return-void

    .line 210
    .restart local v2       #code:Ljava/lang/String;
    .restart local v4       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v7       #doc:Lorg/w3c/dom/Document;
    :cond_bd
    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v18

    const/16 v19, 0x0

    const-string v20, "rs"

    const-string v21, "msg"

    invoke-static/range {v18 .. v21}, Lcom/sprint/w/installer/util/Util;->getChildElementAttrs(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 211
    .local v10, message:Ljava/lang/String;
    sget-object v18, Lcom/sprint/w/installer/psi/ServicePackParser;->log:Lcom/sprint/id/logger/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error return code from RIA API: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f1} :catch_f2

    goto :goto_bc

    .line 213
    .end local v2           #code:Ljava/lang/String;
    .end local v4           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v5           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7           #doc:Lorg/w3c/dom/Document;
    .end local v10           #message:Ljava/lang/String;
    :catch_f2
    move-exception v8

    .line 214
    .local v8, e:Ljava/lang/Exception;
    sget-object v18, Lcom/sprint/w/installer/psi/ServicePackParser;->log:Lcom/sprint/id/logger/Logger;

    const-string v19, "Error parsing metadata"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_bc
.end method

.method public static parseMore(Lcom/sprint/w/installer/psi/ServicePack;Ljava/lang/String;)V
    .registers 16
    .parameter "pack"
    .parameter "xmldata"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 92
    .local v1, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 93
    .local v0, db:Ljavax/xml/parsers/DocumentBuilder;
    const-string v12, "&id="

    const-string v13, "&amp;id="

    invoke-virtual {p1, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 96
    new-instance v12, Lorg/xml/sax/InputSource;

    new-instance v13, Ljava/io/StringReader;

    invoke-direct {v13, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v13}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 107
    .local v3, doc:Lorg/w3c/dom/Document;
    const-string v12, "product"

    invoke-interface {v3, v12}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 108
    .local v10, nl:Lorg/w3c/dom/NodeList;
    const/4 v12, 0x0

    invoke-interface {v10, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 109
    .local v11, productNode:Lorg/w3c/dom/Node;
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    .line 110
    .local v8, map:Lorg/w3c/dom/NamedNodeMap;
    const-string v12, "t"

    invoke-interface {v8, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 111
    .local v9, name:Ljava/lang/String;
    const-string v12, "img-src"

    invoke-interface {v8, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, iconUrl:Ljava/lang/String;
    const-string v12, "descr"

    invoke-interface {v8, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, description:Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/sprint/w/installer/psi/ServicePack;->setTitle(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/psi/ServicePack;->setIconUrl(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/psi/ServicePack;->setDescription(Ljava/lang/String;)V

    .line 119
    const-string v12, "license"

    invoke-interface {v3, v12}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 120
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-eqz v12, :cond_77

    .line 121
    const/4 v12, 0x0

    invoke-interface {v10, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 122
    .local v7, licenseNode:Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    .line 123
    const-string v12, "id"

    invoke-interface {v8, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v6, id:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/sprint/w/installer/psi/ServicePack;->setLicenseId(Ljava/lang/String;)V

    .line 138
    .end local v6           #id:Ljava/lang/String;
    .end local v7           #licenseNode:Lorg/w3c/dom/Node;
    :cond_76
    :goto_76
    return-void

    .line 127
    :cond_77
    const-string v12, "drm"

    invoke-interface {v3, v12}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 130
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-eqz v12, :cond_76

    .line 131
    const/4 v12, 0x0

    invoke-interface {v10, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 132
    .local v4, drmNode:Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    .line 133
    const-string v12, "l"

    invoke-interface {v8, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 134
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/sprint/w/installer/psi/ServicePack;->setLicenseId(Ljava/lang/String;)V

    .line 135
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/sprint/w/installer/psi/ServicePack;->setPurchasedFlag(Z)V

    goto :goto_76
.end method

.method public static parseSearchResult(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 11
    .parameter "xmldata"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/ServicePack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/ServicePack;>;"
    :try_start_5
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 144
    .local v7, xpp:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 145
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 146
    .local v1, eventType:I
    const/4 v3, 0x0

    .line 147
    .local v3, pack:Lcom/sprint/w/installer/psi/ServicePack;
    const/4 v4, 0x0

    .line 148
    .local v4, tag:Ljava/lang/String;
    const/4 v6, 0x0

    .line 149
    .local v6, value:Ljava/lang/String;
    :goto_1c
    const/4 v8, 0x1

    if-eq v1, v8, :cond_52

    .line 150
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 151
    const/4 v8, 0x2

    if-ne v1, v8, :cond_38

    .line 152
    const-string v8, "item"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 153
    new-instance v3, Lcom/sprint/w/installer/psi/ServicePack;

    .end local v3           #pack:Lcom/sprint/w/installer/psi/ServicePack;
    invoke-direct {v3}, Lcom/sprint/w/installer/psi/ServicePack;-><init>()V

    .line 173
    .restart local v3       #pack:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_33
    :goto_33
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1c

    .line 155
    :cond_38
    const/4 v8, 0x3

    if-ne v1, v8, :cond_9d

    .line 156
    if-eqz v3, :cond_33

    .line 157
    const-string v8, "id"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 158
    invoke-virtual {v3, v6}, Lcom/sprint/w/installer/psi/ServicePack;->setId(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_48} :catch_49

    goto :goto_33

    .line 175
    .end local v1           #eventType:I
    .end local v3           #pack:Lcom/sprint/w/installer/psi/ServicePack;
    .end local v4           #tag:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    .end local v7           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_49
    move-exception v0

    .line 176
    .local v0, e:Ljava/lang/Exception;
    sget-object v8, Lcom/sprint/w/installer/psi/ServicePackParser;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "Error parsing search result"

    invoke-virtual {v8, v9, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    const/4 v2, 0x0

    .line 179
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/ServicePack;>;"
    :cond_52
    return-object v2

    .line 159
    .restart local v1       #eventType:I
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/ServicePack;>;"
    .restart local v3       #pack:Lcom/sprint/w/installer/psi/ServicePack;
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v6       #value:Ljava/lang/String;
    .restart local v7       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_53
    :try_start_53
    const-string v8, "title"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    .line 160
    invoke-virtual {v3, v6}, Lcom/sprint/w/installer/psi/ServicePack;->setTitle(Ljava/lang/String;)V

    goto :goto_33

    .line 161
    :cond_5f
    const-string v8, "item"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 162
    invoke-virtual {v3}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_33

    invoke-virtual {v3}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_33

    .line 164
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-static {v9}, Lcom/sprint/w/installer/util/Util;->getStoredContentBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/dme/Preview?t=HS&id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, url:Ljava/lang/String;
    invoke-virtual {v3, v5}, Lcom/sprint/w/installer/psi/ServicePack;->setIconUrl(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 170
    .end local v5           #url:Ljava/lang/String;
    :cond_9d
    const/4 v8, 0x4

    if-ne v1, v8, :cond_33

    .line 171
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_a3} :catch_49

    move-result-object v6

    goto :goto_33
.end method

.method public static parseTermsAndConditions(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "xml"

    .prologue
    .line 220
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 221
    .local v2, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 222
    .local v1, db:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v11, Lorg/xml/sax/InputSource;

    new-instance v12, Ljava/io/StringReader;

    invoke-direct {v12, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v12}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1, v11}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 223
    .local v3, doc:Lorg/w3c/dom/Document;
    const-string v11, "tc"

    invoke-interface {v3, v11}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 224
    .local v8, nl:Lorg/w3c/dom/NodeList;
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_5c

    .line 225
    const/4 v11, 0x0

    invoke-interface {v8, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 226
    .local v5, el:Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 227
    .local v0, chl:Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2e
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v6, v11, :cond_5c

    .line 228
    invoke-interface {v0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 229
    .local v7, n:Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    .line 230
    .local v9, type:S
    const/4 v11, 0x3

    if-eq v9, v11, :cond_42

    const/4 v11, 0x4

    if-ne v9, v11, :cond_51

    .line 231
    :cond_42
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 232
    .local v10, value:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_54

    move-result v11

    if-lez v11, :cond_51

    .line 241
    .end local v0           #chl:Lorg/w3c/dom/NodeList;
    .end local v1           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3           #doc:Lorg/w3c/dom/Document;
    .end local v5           #el:Lorg/w3c/dom/Element;
    .end local v6           #i:I
    .end local v7           #n:Lorg/w3c/dom/Node;
    .end local v8           #nl:Lorg/w3c/dom/NodeList;
    .end local v9           #type:S
    .end local v10           #value:Ljava/lang/String;
    :goto_50
    return-object v10

    .line 227
    .restart local v0       #chl:Lorg/w3c/dom/NodeList;
    .restart local v1       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v3       #doc:Lorg/w3c/dom/Document;
    .restart local v5       #el:Lorg/w3c/dom/Element;
    .restart local v6       #i:I
    .restart local v7       #n:Lorg/w3c/dom/Node;
    .restart local v8       #nl:Lorg/w3c/dom/NodeList;
    .restart local v9       #type:S
    :cond_51
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    .line 238
    .end local v0           #chl:Lorg/w3c/dom/NodeList;
    .end local v1           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3           #doc:Lorg/w3c/dom/Document;
    .end local v5           #el:Lorg/w3c/dom/Element;
    .end local v6           #i:I
    .end local v7           #n:Lorg/w3c/dom/Node;
    .end local v8           #nl:Lorg/w3c/dom/NodeList;
    .end local v9           #type:S
    :catch_54
    move-exception v4

    .line 239
    .local v4, e:Ljava/lang/Exception;
    sget-object v11, Lcom/sprint/w/installer/psi/ServicePackParser;->log:Lcom/sprint/id/logger/Logger;

    const-string v12, "Error parsing metadata"

    invoke-virtual {v11, v12, v4}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    .end local v4           #e:Ljava/lang/Exception;
    :cond_5c
    const/4 v10, 0x0

    goto :goto_50
.end method
