.class public Lcom/samsung/upnp/media/server/object/item/ImportItemNode;
.super Lcom/samsung/upnp/media/server/object/item/ItemNode;
.source "ImportItemNode.java"


# instance fields
.field public final LIFE_TIME:I

.field private lastAutodestroyCheckTime:J

.field private lifeTime:I


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    const v2, 0x88b8

    .line 100
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;-><init>()V

    .line 20
    iput v2, p0, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->LIFE_TIME:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->lifeTime:I

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->lastAutodestroyCheckTime:J

    .line 101
    const-string v0, "item"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->setName(Ljava/lang/String;)V

    .line 102
    iput v2, p0, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->lifeTime:I

    .line 103
    return-void
.end method

.method public static createImportItemNode(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/media/server/object/item/ImportItemNode;
    .registers 15
    .parameter "node"

    .prologue
    const/4 v11, 0x0

    .line 27
    if-nez p0, :cond_5

    move-object v2, v11

    .line 97
    :goto_4
    return-object v2

    .line 29
    :cond_5
    :try_start_5
    new-instance v2, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;

    invoke-direct {v2}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;-><init>()V

    .line 32
    .local v2, item:Lcom/samsung/upnp/media/server/object/item/ImportItemNode;
    invoke-virtual {p0}, Lcom/samsung/xml/Node;->getNAttributes()I

    move-result v3

    .line 33
    .local v3, nAttr:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-lt v1, v3, :cond_2c

    .line 37
    invoke-virtual {p0}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v4

    .line 38
    .local v4, nProp:I
    const/4 v1, 0x0

    :goto_16
    if-lt v1, v4, :cond_42

    .line 45
    invoke-virtual {v2}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getTitle()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2a

    invoke-virtual {v2}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getTitle()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_52

    :cond_2a
    move-object v2, v11

    .line 46
    goto :goto_4

    .line 34
    .end local v4           #nProp:I
    :cond_2c
    invoke-virtual {p0, v1}, Lcom/samsung/xml/Node;->getAttribute(I)Lcom/samsung/xml/Attribute;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v1}, Lcom/samsung/xml/Node;->getAttribute(I)Lcom/samsung/xml/Attribute;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 39
    .restart local v4       #nProp:I
    :cond_42
    invoke-virtual {p0, v1}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/upnp/media/server/object/ContentProperty;->CreateContentProperty(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/media/server/object/ContentProperty;

    move-result-object v6

    .line 40
    .local v6, prop:Lcom/samsung/upnp/media/server/object/ContentProperty;
    if-eqz v6, :cond_4f

    .line 41
    invoke-direct {v2, v6}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->setProperty(Lcom/samsung/upnp/media/server/object/ContentProperty;)V

    .line 38
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 48
    .end local v6           #prop:Lcom/samsung/upnp/media/server/object/ContentProperty;
    :cond_52
    invoke-virtual {v2}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->setTitle(Ljava/lang/String;)V

    .line 50
    const-string v12, "restricted"

    invoke-virtual {v2, v12}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getAttribute(Ljava/lang/String;)Lcom/samsung/xml/Attribute;

    move-result-object v12

    if-eqz v12, :cond_7b

    const-string v12, "restricted"

    invoke-virtual {v2, v12}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7b

    invoke-virtual {v2}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getRestricted()I

    move-result v12

    if-eqz v12, :cond_7b

    move-object v2, v11

    .line 51
    goto :goto_4

    .line 52
    :cond_7b
    const-string v12, "restricted"

    invoke-virtual {v2, v12}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8f

    .line 53
    const-string v12, "restricted"

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->setAttribute(Ljava/lang/String;I)V

    .line 54
    :cond_8f
    const-string v12, "dlna:dlnaManaged"

    invoke-virtual {v2, v12}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getAttribute(Ljava/lang/String;)Lcom/samsung/xml/Attribute;

    move-result-object v12

    if-eqz v12, :cond_9e

    .line 55
    const-string v12, "dlna:dlnaManaged"

    const-string v13, "00000004"

    invoke-virtual {v2, v12, v13}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_9e
    const/4 v0, 0x0

    .line 60
    .local v0, ctRes:I
    const/4 v8, 0x0

    .line 61
    .local v8, res:Lcom/samsung/upnp/media/server/object/ContentProperty;
    const/4 v1, 0x0

    :goto_a1
    invoke-virtual {v2}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getNProperties()I

    move-result v12

    if-lt v1, v12, :cond_ad

    .line 69
    const/4 v12, 0x1

    if-eq v0, v12, :cond_c6

    move-object v2, v11

    .line 70
    goto/16 :goto_4

    .line 62
    :cond_ad
    invoke-virtual {v2, v1}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getProperty(I)Lcom/samsung/upnp/media/server/object/ContentProperty;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "res"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c3

    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 64
    invoke-virtual {v2, v1}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getProperty(I)Lcom/samsung/upnp/media/server/object/ContentProperty;

    move-result-object v8

    .line 61
    :cond_c3
    add-int/lit8 v1, v1, 0x1

    goto :goto_a1

    .line 73
    :cond_c6
    const-string v12, "protocolInfo"

    invoke-virtual {v8, v12}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, protocol:Ljava/lang/String;
    const-string v5, ""

    .line 75
    .local v5, newProtocol:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getParser()Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->convertToValidateProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getParser()Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->isSupportedProtocol(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_f5

    .line 77
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getParser()Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->convertToValidateProtocolWithout4thField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getParser()Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->isSupportedProtocol(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_f5

    move-object v2, v11

    .line 79
    goto/16 :goto_4

    .line 83
    :cond_f5
    const-string v12, "protocolInfo"

    invoke-virtual {v8, v12, v5}, Lcom/samsung/upnp/media/server/object/ContentProperty;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v12, "dlna:resumeUpload"

    invoke-virtual {v8, v12}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getAttribute(Ljava/lang/String;)Lcom/samsung/xml/Attribute;

    move-result-object v10

    .line 87
    .local v10, resume:Lcom/samsung/xml/Attribute;
    if-eqz v10, :cond_111

    .line 88
    const-string v12, "res"

    invoke-virtual {p0, v12}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v9

    .line 89
    .local v9, resNode:Lcom/samsung/xml/Node;
    if-eqz v9, :cond_111

    .line 90
    const-string v12, "dlna:resumeUpload"

    const-string v13, "0"

    invoke-virtual {v9, v12, v13}, Lcom/samsung/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .end local v9           #resNode:Lcom/samsung/xml/Node;
    :cond_111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v2, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->lastAutodestroyCheckTime:J
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_117} :catch_119

    goto/16 :goto_4

    .line 95
    .end local v0           #ctRes:I
    .end local v1           #i:I
    .end local v2           #item:Lcom/samsung/upnp/media/server/object/item/ImportItemNode;
    .end local v3           #nAttr:I
    .end local v4           #nProp:I
    .end local v5           #newProtocol:Ljava/lang/String;
    .end local v7           #protocol:Ljava/lang/String;
    .end local v8           #res:Lcom/samsung/upnp/media/server/object/ContentProperty;
    .end local v10           #resume:Lcom/samsung/xml/Attribute;
    :catch_119
    move-exception v12

    move-object v2, v11

    .line 97
    goto/16 :goto_4
.end method

.method private setProperty(Lcom/samsung/upnp/media/server/object/ContentProperty;)V
    .registers 4
    .parameter "prop"

    .prologue
    .line 118
    if-nez p1, :cond_3

    .line 124
    :goto_2
    return-void

    .line 120
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getProperty(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentProperty;

    move-result-object v0

    .line 121
    .local v0, old:Lcom/samsung/upnp/media/server/object/ContentProperty;
    if-eqz v0, :cond_10

    .line 122
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->removeProperty(Lcom/samsung/upnp/media/server/object/ContentProperty;)Z

    .line 123
    :cond_10
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->addProperty(Lcom/samsung/upnp/media/server/object/ContentProperty;)V

    goto :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .parameter "o"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 148
    if-nez p1, :cond_6

    move v6, v7

    .line 181
    :goto_5
    return v6

    .line 150
    :cond_6
    instance-of v6, p1, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;

    if-eqz v6, :cond_4f

    move-object v1, p1

    .line 151
    check-cast v1, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;

    .line 152
    .local v1, object:Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getDefaultResource()Lcom/samsung/upnp/media/server/object/ResourceProperty;

    move-result-object v4

    .line 155
    .local v4, resource:Lcom/samsung/upnp/media/server/object/ResourceProperty;
    if-nez v4, :cond_15

    move v6, v7

    .line 156
    goto :goto_5

    .line 158
    :cond_15
    instance-of v6, v4, Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;

    if-eqz v6, :cond_35

    move-object v6, v4

    .line 159
    check-cast v6, Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;

    iget-object v0, v6, Lcom/samsung/upnp/media/server/object/item/ImportResourceProperty;->mediaFile:Ljava/io/File;

    .line 160
    .local v0, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 161
    .local v2, path1:Ljava/lang/String;
    if-eqz v0, :cond_25

    .line 162
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 163
    :cond_25
    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getDataPath()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, path2:Ljava/lang/String;
    if-eqz v2, :cond_35

    if-eqz v3, :cond_35

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_35

    move v6, v8

    .line 167
    goto :goto_5

    .line 171
    .end local v0           #file:Ljava/io/File;
    .end local v2           #path1:Ljava/lang/String;
    .end local v3           #path2:Ljava/lang/String;
    :cond_35
    invoke-virtual {v4}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, resourceurl:Ljava/lang/String;
    if-nez v5, :cond_3d

    move v6, v7

    .line 173
    goto :goto_5

    .line 175
    :cond_3d
    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d

    move v6, v8

    .line 176
    goto :goto_5

    :cond_4d
    move v6, v7

    .line 178
    goto :goto_5

    .line 181
    .end local v1           #object:Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;
    .end local v4           #resource:Lcom/samsung/upnp/media/server/object/ResourceProperty;
    .end local v5           #resourceurl:Ljava/lang/String;
    :cond_4f
    invoke-super {p0, p1}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_5
.end method

.method public isPostAble()Z
    .registers 2

    .prologue
    .line 127
    iget v0, p0, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->lifeTime:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public rebirth()V
    .registers 2

    .prologue
    .line 143
    const v0, 0x88b8

    iput v0, p0, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->lifeTime:I

    .line 144
    return-void
.end method

.method public reduceLifeTime(J)V
    .registers 6
    .parameter "currTime"

    .prologue
    .line 131
    iget-wide v1, p0, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->lastAutodestroyCheckTime:J

    sub-long v1, p1, v1

    long-to-int v0, v1

    .line 132
    .local v0, theta:I
    iget v1, p0, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->lifeTime:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->lifeTime:I

    .line 133
    iput-wide p1, p0, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->lastAutodestroyCheckTime:J

    .line 135
    return-void
.end method

.method public setContentDirectory(Lcom/samsung/upnp/media/server/ContentDirectory;)V
    .registers 6
    .parameter "cdir"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->setContentDirectory(Lcom/samsung/upnp/media/server/ContentDirectory;)V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 114
    const-string v0, "res"

    const-string v1, "importUri"

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/upnp/media/server/ContentDirectory;->getContentImportURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->setPropertyAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_1c
    return-void
.end method

.method public setID(I)V
    .registers 6
    .parameter "id"

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->setID(I)V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 108
    const-string v0, "res"

    const-string v1, "importUri"

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/upnp/media/server/ContentDirectory;->getContentImportURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/upnp/media/server/object/item/ImportItemNode;->setPropertyAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_1c
    return-void
.end method
