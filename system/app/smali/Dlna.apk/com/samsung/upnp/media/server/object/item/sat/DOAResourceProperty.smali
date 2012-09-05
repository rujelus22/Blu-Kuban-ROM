.class public Lcom/samsung/upnp/media/server/object/item/sat/DOAResourceProperty;
.super Lcom/samsung/upnp/media/server/object/ResourceProperty;
.source "DOAResourceProperty.java"


# static fields
.field static parser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;


# instance fields
.field private attrs:Lcom/samsung/xml/AttributeList;

.field private inputStreamUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getParser()Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    move-result-object v0

    sput-object v0, Lcom/samsung/upnp/media/server/object/item/sat/DOAResourceProperty;->parser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/xml/AttributeList;Landroid/net/Uri;)V
    .registers 6
    .parameter "string"
    .parameter "protocol"
    .parameter "attrs"
    .parameter "inputStreamUri"

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/upnp/media/server/object/ResourceProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/xml/AttributeList;)V

    .line 23
    iput-object v0, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAResourceProperty;->inputStreamUri:Landroid/net/Uri;

    .line 24
    iput-object v0, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAResourceProperty;->attrs:Lcom/samsung/xml/AttributeList;

    .line 29
    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/item/sat/DOAResourceProperty;->setInputstreamUriString(Ljava/lang/String;)V

    .line 30
    iput-object p4, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAResourceProperty;->inputStreamUri:Landroid/net/Uri;

    .line 31
    iput-object p3, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAResourceProperty;->attrs:Lcom/samsung/xml/AttributeList;

    .line 32
    return-void
.end method

.method public static buildDOAResourceProperty(Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x78

    const/4 v6, 0x0

    .line 45
    if-eqz p0, :cond_7

    if-nez p1, :cond_8

    .line 153
    :cond_7
    :goto_7
    return-void

    .line 47
    :cond_8
    const-string v0, ""

    .line 48
    const-string v0, ""

    .line 50
    new-instance v0, Lcom/samsung/xml/AttributeList;

    invoke-direct {v0}, Lcom/samsung/xml/AttributeList;-><init>()V

    .line 54
    sget-object v1, Lcom/samsung/upnp/media/server/object/item/sat/DOAResourceProperty;->parser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getHeight()I

    move-result v4

    sget v5, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->PROTOCOL_TYPE_ORIGIN:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->buildProtocol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getResolution()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_43

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getResolution()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_43

    .line 56
    new-instance v2, Lcom/samsung/xml/Attribute;

    const-string v3, "resolution"

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getResolution()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, v2}, Lcom/samsung/xml/AttributeList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_43
    new-instance v2, Lcom/samsung/xml/Attribute;

    const-string v3, "size"

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, v2}, Lcom/samsung/xml/AttributeList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getDurationTime()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_69

    .line 62
    new-instance v2, Lcom/samsung/xml/Attribute;

    const-string v3, "duration"

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getDurationTime()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v2}, Lcom/samsung/xml/AttributeList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_69
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v2

    .line 66
    if-eqz v2, :cond_7

    .line 68
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/upnp/media/server/ContentDirectory;->getContentExportURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    new-instance v4, Lcom/samsung/upnp/media/server/object/item/sat/DOAResourceProperty;

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v3, v1, v0, v5}, Lcom/samsung/upnp/media/server/object/item/sat/DOAResourceProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/xml/AttributeList;Landroid/net/Uri;)V

    .line 70
    invoke-virtual {p0, v4}, Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;->addResource(Lcom/samsung/upnp/media/server/object/ResourceProperty;)V

    .line 71
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getImageDB_ID()I

    move-result v0

    iput v0, p0, Lcom/samsung/upnp/media/server/object/item/ItemNode;->imageDB_id:I

    .line 72
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getAudioDB_ID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;->setAudioAlbum_id(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getVideoDB_ID()I

    move-result v0

    iput v0, p0, Lcom/samsung/upnp/media/server/object/item/ItemNode;->videoDB_id:I

    .line 74
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getThumbmagic()I

    move-result v0

    iput v0, p0, Lcom/samsung/upnp/media/server/object/item/ItemNode;->thumbmagic:I

    .line 77
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getDataPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/upnp/media/server/object/item/ItemNode;->dataPath:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getTYPE()Lcom/samsung/upnp/media/server/directory/doa/FileType;

    move-result-object v0

    sget-object v1, Lcom/samsung/upnp/media/server/directory/doa/FileType;->Video:Lcom/samsung/upnp/media/server/directory/doa/FileType;

    if-ne v0, v1, :cond_dd

    .line 80
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getSubTitle()Ljava/lang/String;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_dd

    .line 82
    invoke-static {v0}, Lcom/samsung/xml/XML;->unEscapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/upnp/media/server/object/item/sat/DOAResourceProperty;->getSubTitleFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_dd

    .line 85
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/upnp/media/server/ContentDirectory;->getContentSubtitleExportURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    new-instance v3, Lcom/samsung/upnp/media/server/object/item/sat/DOASubtitleProperty;

    const-string v4, "sec:CaptionInfo"

    invoke-direct {v3, v4, v1, v0}, Lcom/samsung/upnp/media/server/object/item/sat/DOASubtitleProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, v3}, Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;->addProperty(Lcom/samsung/upnp/media/server/object/ContentProperty;)V

    .line 88
    new-instance v3, Lcom/samsung/upnp/media/server/object/item/sat/DOASubtitleProperty;

    const-string v4, "sec:CaptionInfoEx"

    invoke-direct {v3, v4, v1, v0}, Lcom/samsung/upnp/media/server/object/item/sat/DOASubtitleProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "sec:type"

    const-string v1, ".smi"

    invoke-virtual {v3, v0, v1}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, v3}, Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;->addProperty(Lcom/samsung/upnp/media/server/object/ContentProperty;)V

    .line 98
    :cond_dd
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getAlbumArtUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_128

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getAlbumArtUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_128

    .line 99
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getAlbumArtUri()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/upnp/media/server/ContentDirectory;->getContentAlbumArtExportURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    sget-object v3, Lcom/samsung/upnp/media/server/object/item/sat/DOAResourceProperty;->parser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    .line 102
    const-string v4, "image/jpeg"

    .line 105
    sget v5, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->PROTOCOL_TYPE_ORIGIN:I

    .line 101
    invoke-virtual {v3, v4, v6, v6, v5}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->buildProtocol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v3

    .line 106
    new-instance v4, Lcom/samsung/upnp/media/server/object/item/sat/DOAAlbumartProperty;

    invoke-direct {v4, v1, v3, v0}, Lcom/samsung/upnp/media/server/object/item/sat/DOAAlbumartProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, v4}, Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;->addResource(Lcom/samsung/upnp/media/server/object/ResourceProperty;)V

    .line 109
    const-string v4, "upnp:albumArtURI"

    invoke-virtual {p0, v4, v1}, Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getTYPE()Lcom/samsung/upnp/media/server/directory/doa/FileType;

    move-result-object v1

    sget-object v4, Lcom/samsung/upnp/media/server/directory/doa/FileType;->Video:Lcom/samsung/upnp/media/server/directory/doa/FileType;

    if-ne v1, v4, :cond_128

    .line 112
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/upnp/media/server/ContentDirectory;->getContentMicroThumbnailExportURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    new-instance v4, Lcom/samsung/upnp/media/server/object/item/sat/VideoAlbumartProperty;

    invoke-direct {v4, v1, v3, v0}, Lcom/samsung/upnp/media/server/object/item/sat/VideoAlbumartProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, v4}, Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;->addResource(Lcom/samsung/upnp/media/server/object/ResourceProperty;)V

    .line 119
    :cond_128
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getTYPE()Lcom/samsung/upnp/media/server/directory/doa/FileType;

    move-result-object v0

    sget-object v1, Lcom/samsung/upnp/media/server/directory/doa/FileType;->Image:Lcom/samsung/upnp/media/server/directory/doa/FileType;

    if-ne v0, v1, :cond_15f

    .line 121
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getContentMicroThumbnailExportURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    sget-object v1, Lcom/samsung/upnp/media/server/object/item/sat/DOAResourceProperty;->parser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    .line 123
    const-string v3, "image/jpeg"

    .line 126
    sget v4, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->PROTOCOL_TYPE_MICRO:I

    .line 122
    invoke-virtual {v1, v3, v7, v7, v4}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->buildProtocol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    .line 127
    new-instance v3, Lcom/samsung/xml/AttributeList;

    invoke-direct {v3}, Lcom/samsung/xml/AttributeList;-><init>()V

    .line 128
    new-instance v4, Lcom/samsung/xml/Attribute;

    const-string v5, "resolution"

    const-string v6, "120x120"

    invoke-direct {v4, v5, v6}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v3, v4}, Lcom/samsung/xml/AttributeList;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v4, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v0, v1, v5, v3}, Lcom/samsung/upnp/media/server/object/item/sat/DOAThumbnailProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/samsung/xml/AttributeList;)V

    .line 131
    invoke-virtual {p0, v4}, Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;->addResource(Lcom/samsung/upnp/media/server/object/ResourceProperty;)V

    .line 135
    :cond_15f
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getThumbnailsUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 136
    new-instance v0, Lcom/samsung/xml/AttributeList;

    invoke-direct {v0}, Lcom/samsung/xml/AttributeList;-><init>()V

    .line 137
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/upnp/media/server/ContentDirectory;->getContentSmallThumbnailExportURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    sget-object v2, Lcom/samsung/upnp/media/server/object/item/sat/DOAResourceProperty;->parser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    const-string v3, "image/jpeg"

    .line 139
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getThumbnailsWidth()J

    move-result-wide v4

    long-to-int v4, v4

    .line 140
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getThumbnailsHeight()J

    move-result-wide v5

    long-to-int v5, v5

    .line 141
    sget v6, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->PROTOCOL_TYPE_SMALL:I

    .line 138
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->buildProtocol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v2

    .line 143
    new-instance v3, Lcom/samsung/xml/Attribute;

    const-string v4, "size"

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getThumbnailsSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, v3}, Lcom/samsung/xml/AttributeList;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v3, Lcom/samsung/xml/Attribute;

    const-string v4, "resolution"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getThumbnailsWidth()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getThumbnailsHeight()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, v3}, Lcom/samsung/xml/AttributeList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v3, Lcom/samsung/upnp/media/server/object/item/sat/DOAResourceProperty;

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getThumbnailsUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v1, v2, v0, v4}, Lcom/samsung/upnp/media/server/object/item/sat/DOAResourceProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/xml/AttributeList;Landroid/net/Uri;)V

    .line 151
    invoke-virtual {p0, v3}, Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;->addResource(Lcom/samsung/upnp/media/server/object/ResourceProperty;)V

    goto/16 :goto_7
.end method


# virtual methods
.method public deleteContent()V
    .registers 1

    .prologue
    .line 180
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 174
    invoke-static {}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->getInstance()Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/upnp/media/server/object/item/sat/DOAResourceProperty;->inputStreamUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
