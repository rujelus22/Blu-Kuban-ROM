.class Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;
.super Lcom/samsung/android/application/fileshare/api/TransferItem;
.source "DefaultTransferItemInfo.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/application/fileshare/api/TransferItem;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mUri:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mTitle:Ljava/lang/String;

    .line 19
    iput-wide v1, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mSize:J

    .line 20
    iput-wide v1, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mDownloadSize:J

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mMimeType:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mPhysicalType:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mRelativePath:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static parseString(Ljava/lang/String;)Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;
    .registers 13
    .parameter "value"

    .prologue
    const/4 v9, 0x0

    .line 27
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getXMLParser()Lcom/samsung/xml/Parser;

    move-result-object v6

    .line 29
    .local v6, parser:Lcom/samsung/xml/Parser;
    :try_start_5
    new-instance v1, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;

    invoke-direct {v1}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;-><init>()V

    .line 30
    .local v1, info:Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;
    invoke-virtual {v6, p0}, Lcom/samsung/xml/Parser;->parse(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 32
    .local v2, item:Lcom/samsung/xml/Node;
    const-string v10, "Length"

    invoke-virtual {v2, v10}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, length:Ljava/lang/String;
    const-string v10, "Name"

    invoke-virtual {v2, v10}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/xml/XML;->unEscapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 34
    .local v5, name:Ljava/lang/String;
    const-string v10, "Type"

    invoke-virtual {v2, v10}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 36
    .local v7, type:Ljava/lang/String;
    const-string v10, "Location"

    invoke-virtual {v2, v10}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v4

    .line 37
    .local v4, location:Lcom/samsung/xml/Node;
    const-string v10, "SourceURL"

    invoke-virtual {v4, v10}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 39
    .local v8, uri:Ljava/lang/String;
    if-eqz v3, :cond_48

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_48

    .line 40
    if-eqz v5, :cond_48

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_48

    if-eqz v8, :cond_48

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4a

    :cond_48
    move-object v1, v9

    .line 51
    .end local v1           #info:Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;
    .end local v2           #item:Lcom/samsung/xml/Node;
    .end local v3           #length:Ljava/lang/String;
    .end local v4           #location:Lcom/samsung/xml/Node;
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #type:Ljava/lang/String;
    .end local v8           #uri:Ljava/lang/String;
    :goto_49
    return-object v1

    .line 45
    .restart local v1       #info:Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;
    .restart local v2       #item:Lcom/samsung/xml/Node;
    .restart local v3       #length:Ljava/lang/String;
    .restart local v4       #location:Lcom/samsung/xml/Node;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v7       #type:Ljava/lang/String;
    .restart local v8       #uri:Ljava/lang/String;
    :cond_4a
    iput-object v8, v1, Lcom/samsung/android/application/fileshare/api/TransferItem;->mUri:Ljava/lang/String;

    .line 46
    iput-object v5, v1, Lcom/samsung/android/application/fileshare/api/TransferItem;->mTitle:Ljava/lang/String;

    .line 47
    iput-object v7, v1, Lcom/samsung/android/application/fileshare/api/TransferItem;->mMimeType:Ljava/lang/String;

    .line 48
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/samsung/android/application/fileshare/api/TransferItem;->mSize:J
    :try_end_56
    .catch Lcom/samsung/xml/ParserException; {:try_start_5 .. :try_end_56} :catch_57

    goto :goto_49

    .line 50
    .end local v1           #info:Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;
    .end local v2           #item:Lcom/samsung/xml/Node;
    .end local v3           #length:Ljava/lang/String;
    .end local v4           #location:Lcom/samsung/xml/Node;
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #type:Ljava/lang/String;
    .end local v8           #uri:Ljava/lang/String;
    :catch_57
    move-exception v0

    .local v0, e:Lcom/samsung/xml/ParserException;
    move-object v1, v9

    .line 51
    goto :goto_49
.end method


# virtual methods
.method setDownloadSize(J)V
    .registers 3
    .parameter "size"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mDownloadSize:J

    .line 69
    return-void
.end method

.method setDownloadedUri(Landroid/net/Uri;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mDownloadUri:Landroid/net/Uri;

    .line 73
    return-void
.end method

.method setSenderInfo(Lcom/samsung/android/application/fileshare/api/SenderInfo;)V
    .registers 2
    .parameter "info"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mSenderInfo:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    .line 89
    return-void
.end method
