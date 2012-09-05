.class public Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;
.super Lcom/samsung/upnp/media/server/object/item/ItemNode;
.source "DOARecordedItemNode.java"


# direct methods
.method public constructor <init>(Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;->setArtist(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;->setTitle(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;->setDate(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getCreator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;->setCreator(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getParser()Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getUPnPClassByMimetype(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;->setUPnPClass(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getAlbumArtUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 44
    const-string v0, "upnp:albumArtURI"

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->getAlbumArtUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/media/server/object/item/sat/DOARecordedItemNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_41
    return-void
.end method
