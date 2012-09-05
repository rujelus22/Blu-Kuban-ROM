.class public abstract Lcom/samsung/upnp/media/server/object/ResourceProperty;
.super Lcom/samsung/upnp/media/server/object/ContentProperty;
.source "ResourceProperty.java"


# static fields
.field static parser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;


# instance fields
.field feature:Ljava/lang/String;

.field inputStreamUriString:Ljava/lang/String;

.field mime:Ljava/lang/String;

.field protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getParser()Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    move-result-object v0

    sput-object v0, Lcom/samsung/upnp/media/server/object/ResourceProperty;->parser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "url"
    .parameter "protocol"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/upnp/media/server/object/ResourceProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/xml/AttributeList;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/xml/AttributeList;)V
    .registers 7
    .parameter "url"
    .parameter "protocol"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/object/ContentProperty;-><init>()V

    .line 11
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/upnp/media/server/object/ResourceProperty;->protocol:Ljava/lang/String;

    .line 12
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/upnp/media/server/object/ResourceProperty;->mime:Ljava/lang/String;

    .line 13
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/upnp/media/server/object/ResourceProperty;->feature:Ljava/lang/String;

    .line 14
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/upnp/media/server/object/ResourceProperty;->inputStreamUriString:Ljava/lang/String;

    .line 17
    const-string v1, "res"

    invoke-virtual {p0, v1}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->setName(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->setValue(Ljava/lang/String;)V

    .line 19
    iput-object p2, p0, Lcom/samsung/upnp/media/server/object/ResourceProperty;->protocol:Ljava/lang/String;

    .line 21
    if-eqz p3, :cond_29

    .line 22
    invoke-virtual {p3}, Lcom/samsung/xml/AttributeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 25
    :cond_29
    const-string v1, "protocolInfo"

    invoke-virtual {p0, v1, p2}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void

    .line 22
    :cond_2f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/xml/Attribute;

    .line 23
    .local v0, attr:Lcom/samsung/xml/Attribute;
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->addAttribute(Lcom/samsung/xml/Attribute;)V

    goto :goto_23
.end method

.method public static getSubTitleFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "filePath"

    .prologue
    const/4 v4, 0x0

    .line 69
    const-string v5, "."

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 70
    .local v1, index:I
    if-gtz v1, :cond_b

    move-object v3, v4

    .line 80
    :cond_a
    :goto_a
    return-object v3

    .line 73
    :cond_b
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, name:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".smi"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, sub:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_a

    move-object v3, v4

    .line 80
    goto :goto_a
.end method


# virtual methods
.method public abstract deleteContent()V
.end method

.method public get4thfield()Ljava/lang/String;
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/ResourceProperty;->feature:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/ResourceProperty;->feature:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/ResourceProperty;->feature:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 61
    :cond_18
    sget-object v0, Lcom/samsung/upnp/media/server/object/ResourceProperty;->parser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->get4thField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/upnp/media/server/object/ResourceProperty;->feature:Ljava/lang/String;

    .line 62
    :cond_24
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/ResourceProperty;->feature:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .registers 4

    .prologue
    .line 47
    const-string v1, "size"

    invoke-virtual {p0, v1}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->getAttribute(Ljava/lang/String;)Lcom/samsung/xml/Attribute;

    move-result-object v0

    .line 48
    .local v0, attr:Lcom/samsung/xml/Attribute;
    if-nez v0, :cond_b

    .line 49
    const-wide/16 v1, 0x0

    .line 50
    :goto_a
    return-wide v1

    :cond_b
    invoke-virtual {v0}, Lcom/samsung/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_a
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public getInputstreamUriString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/ResourceProperty;->inputStreamUriString:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/ResourceProperty;->mime:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 55
    sget-object v0, Lcom/samsung/upnp/media/server/object/ResourceProperty;->parser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/upnp/media/server/object/ResourceProperty;->mime:Ljava/lang/String;

    .line 56
    :cond_16
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/ResourceProperty;->mime:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/ResourceProperty;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public setInputstreamUriString(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/upnp/media/server/object/ResourceProperty;->inputStreamUriString:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->setValue(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public updateProtocol(Ljava/lang/String;)V
    .registers 3
    .parameter "protocol"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/upnp/media/server/object/ResourceProperty;->protocol:Ljava/lang/String;

    .line 39
    const-string v0, "protocolInfo"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method
