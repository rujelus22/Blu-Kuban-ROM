.class public Lcom/samsung/upnp/media/server/object/DIDLLiteNode;
.super Lcom/samsung/xml/Node;
.source "DIDLLiteNode.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/samsung/xml/Node;-><init>()V

    .line 38
    const-string v0, "DIDL-Lite"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/DIDLLiteNode;->setName(Ljava/lang/String;)V

    .line 39
    const-string v0, "xmlns"

    const-string v1, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/media/server/object/DIDLLiteNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "xmlns:dc"

    const-string v1, "http://purl.org/dc/elements/1.1/"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/media/server/object/DIDLLiteNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, "xmlns:upnp"

    const-string v1, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/media/server/object/DIDLLiteNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "xmlns:dlna"

    const-string v1, "urn:schemas-dlna-org:metadata-1-0/"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/media/server/object/DIDLLiteNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "xmlns:sec"

    const-string v1, "http://www.sec.co.kr/dlna"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/media/server/object/DIDLLiteNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method
