.class public Lcom/samsung/upnp/media/server/CDSResponseBuilder;
.super Ljava/lang/Object;
.source "CDSResponseBuilder.java"


# static fields
.field static profileParser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getParser()Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    move-result-object v0

    sput-object v0, Lcom/samsung/upnp/media/server/CDSResponseBuilder;->profileParser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildResponse(Lcom/samsung/http/HTTPRequest;Lcom/samsung/upnp/media/server/object/item/ItemNode;)Lcom/samsung/http/HTTPResponse;
    .registers 14
    .parameter "httpReq"
    .parameter "itemNode"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/samsung/http/HTTPResponse;->buildHTTPResponse(Lcom/samsung/http/HTTPRequest;)Lcom/samsung/http/HTTPResponse;

    move-result-object v3

    .line 33
    .local v3, httpRes:Lcom/samsung/http/HTTPResponse;
    const/16 v9, 0xc8

    invoke-virtual {v3, v9}, Lcom/samsung/http/HTTPResponse;->setStatusCode(I)V

    .line 36
    invoke-virtual {p0}, Lcom/samsung/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->findResPropertyByURL(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ResourceProperty;

    move-result-object v6

    .line 37
    .local v6, res:Lcom/samsung/upnp/media/server/object/ResourceProperty;
    if-nez v6, :cond_19

    .line 38
    const/16 v9, 0x190

    invoke-virtual {v3, v9}, Lcom/samsung/http/HTTPResponse;->setStatusCode(I)V

    .line 116
    :cond_18
    :goto_18
    return-object v3

    .line 41
    :cond_19
    const-string v9, "protocolInfo"

    invoke-virtual {v6, v9}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, protocol:Ljava/lang/String;
    const-string v9, "getCaptionInfo.sec"

    invoke-virtual {p0, v9}, Lcom/samsung/http/HTTPRequest;->getHeader(Ljava/lang/String;)Lcom/samsung/http/HTTPHeader;

    move-result-object v2

    .line 45
    .local v2, header:Lcom/samsung/http/HTTPHeader;
    if-eqz v2, :cond_35

    .line 46
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->getResources()Lcom/samsung/upnp/media/server/object/ContentPropertyList;

    move-result-object v4

    .line 47
    .local v4, list:Lcom/samsung/upnp/media/server/object/ContentPropertyList;
    invoke-virtual {v4}, Lcom/samsung/upnp/media/server/object/ContentPropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2f
    :goto_2f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_64

    .line 56
    .end local v4           #list:Lcom/samsung/upnp/media/server/object/ContentPropertyList;
    :cond_35
    const-string v9, "getcontentFeatures.dlna.org"

    invoke-virtual {p0, v9}, Lcom/samsung/http/HTTPRequest;->getHeader(Ljava/lang/String;)Lcom/samsung/http/HTTPHeader;

    move-result-object v2

    .line 57
    if-eqz v2, :cond_56

    .line 58
    invoke-virtual {v2}, Lcom/samsung/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7b

    .line 60
    if-eqz v6, :cond_56

    .line 61
    const-string v9, "contentFeatures.dlna.org"

    sget-object v10, Lcom/samsung/upnp/media/server/CDSResponseBuilder;->profileParser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    invoke-virtual {v10, v5}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->get4thField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lcom/samsung/http/HTTPResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_56
    const-string v9, "TimeSeekRange.dlna.org"

    invoke-virtual {p0, v9}, Lcom/samsung/http/HTTPRequest;->getHeader(Ljava/lang/String;)Lcom/samsung/http/HTTPHeader;

    move-result-object v2

    .line 70
    if-eqz v2, :cond_81

    .line 71
    const/16 v9, 0x196

    invoke-virtual {v3, v9}, Lcom/samsung/http/HTTPResponse;->setStatusCode(I)V

    goto :goto_18

    .line 47
    .restart local v4       #list:Lcom/samsung/upnp/media/server/object/ContentPropertyList;
    :cond_64
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/upnp/media/server/object/ContentProperty;

    .line 48
    .local v1, cp:Lcom/samsung/upnp/media/server/object/ContentProperty;
    instance-of v10, v1, Lcom/samsung/upnp/media/server/object/item/sat/DOASubtitleProperty;

    if-eqz v10, :cond_2f

    move-object v7, v1

    .line 49
    check-cast v7, Lcom/samsung/upnp/media/server/object/item/sat/DOASubtitleProperty;

    .line 50
    .local v7, sub:Lcom/samsung/upnp/media/server/object/item/sat/DOASubtitleProperty;
    const-string v10, "CaptionInfo.sec"

    invoke-virtual {v7}, Lcom/samsung/upnp/media/server/object/item/sat/DOASubtitleProperty;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Lcom/samsung/http/HTTPResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 63
    .end local v1           #cp:Lcom/samsung/upnp/media/server/object/ContentProperty;
    .end local v4           #list:Lcom/samsung/upnp/media/server/object/ContentPropertyList;
    .end local v7           #sub:Lcom/samsung/upnp/media/server/object/item/sat/DOASubtitleProperty;
    :cond_7b
    const/16 v9, 0x190

    invoke-virtual {v3, v9}, Lcom/samsung/http/HTTPResponse;->setStatusCode(I)V

    goto :goto_18

    .line 76
    :cond_81
    const-string v9, "transferMode.dlna.org"

    invoke-virtual {p0, v9}, Lcom/samsung/http/HTTPRequest;->getHeader(Ljava/lang/String;)Lcom/samsung/http/HTTPHeader;

    move-result-object v2

    .line 77
    if-eqz v2, :cond_af

    .line 78
    invoke-virtual {v2}, Lcom/samsung/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, transferMode:Ljava/lang/String;
    const-string v9, "Streaming"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d0

    .line 81
    invoke-virtual {v6}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->getMimeType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "image"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a8

    .line 82
    const/16 v9, 0x196

    invoke-virtual {v3, v9}, Lcom/samsung/http/HTTPResponse;->setStatusCode(I)V

    goto/16 :goto_18

    .line 85
    :cond_a8
    const-string v9, "transferMode.dlna.org"

    const-string v10, "Streaming"

    invoke-virtual {v3, v9, v10}, Lcom/samsung/http/HTTPResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .end local v8           #transferMode:Ljava/lang/String;
    :cond_af
    :goto_af
    invoke-virtual {v3}, Lcom/samsung/http/HTTPResponse;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_18

    .line 107
    sget-object v9, Lcom/samsung/upnp/media/server/CDSResponseBuilder;->profileParser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    invoke-virtual {v9, v5}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, contentType:Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/samsung/http/HTTPResponse;->setContentType(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v6}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->getContentLength()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/samsung/http/HTTPResponse;->setContentLength(J)V

    .line 110
    invoke-virtual {v6}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/samsung/http/HTTPResponse;->setContentInputStream(Ljava/io/InputStream;)V

    goto/16 :goto_18

    .line 87
    .end local v0           #contentType:Ljava/lang/String;
    .restart local v8       #transferMode:Ljava/lang/String;
    :cond_d0
    const-string v9, "Interactive"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_106

    .line 88
    invoke-virtual {v6}, Lcom/samsung/upnp/media/server/object/ResourceProperty;->getMimeType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "image"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_eb

    .line 89
    const/16 v9, 0x196

    invoke-virtual {v3, v9}, Lcom/samsung/http/HTTPResponse;->setStatusCode(I)V

    goto/16 :goto_18

    .line 92
    :cond_eb
    invoke-virtual {p0}, Lcom/samsung/http/HTTPRequest;->getHeader()Ljava/lang/String;

    move-result-object v9

    const-string v10, "realTimeInfo.dlna.org"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_fe

    .line 93
    const/16 v9, 0x190

    invoke-virtual {v3, v9}, Lcom/samsung/http/HTTPResponse;->setStatusCode(I)V

    goto/16 :goto_18

    .line 96
    :cond_fe
    const-string v9, "transferMode.dlna.org"

    const-string v10, "Interactive"

    invoke-virtual {v3, v9, v10}, Lcom/samsung/http/HTTPResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_af

    .line 98
    :cond_106
    const-string v9, "Background"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_116

    .line 99
    const-string v9, "transferMode.dlna.org"

    const-string v10, "Background"

    invoke-virtual {v3, v9, v10}, Lcom/samsung/http/HTTPResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_af

    .line 101
    :cond_116
    const/16 v9, 0x190

    invoke-virtual {v3, v9}, Lcom/samsung/http/HTTPResponse;->setStatusCode(I)V

    goto/16 :goto_18
.end method
