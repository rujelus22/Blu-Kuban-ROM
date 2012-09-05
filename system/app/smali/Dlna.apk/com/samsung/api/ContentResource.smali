.class public Lcom/samsung/api/ContentResource;
.super Ljava/lang/Object;
.source "ContentResource.java"


# instance fields
.field protected mDuration:Ljava/lang/String;

.field protected mMediaProfile:Ljava/lang/String;

.field protected mMimeType:Ljava/lang/String;

.field protected mProtocolInfo:Ljava/lang/String;

.field protected mResolutionInfo:Ljava/lang/String;

.field protected mResuUrl:Ljava/lang/String;

.field protected mSize:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/api/ContentResource;->mResuUrl:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/api/ContentResource;->mProtocolInfo:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/api/ContentResource;->mSize:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/api/ContentResource;->mResolutionInfo:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/api/ContentResource;->mDuration:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/api/ContentResource;->mMimeType:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/api/ContentResource;->mMediaProfile:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public getCreateObjectProtocolInfo()Ljava/lang/String;
    .registers 6

    .prologue
    .line 122
    const-string v0, "*"

    .line 123
    .local v0, cProtocolInfo:Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/api/ContentResource;->mProtocolInfo:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, strSplit:[Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_b
    array-length v3, v2

    if-lt v1, v3, :cond_f

    .line 128
    return-object v0

    .line 126
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public getDuration()Ljava/lang/String;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/samsung/api/ContentResource;->mDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getFileExtension()Ljava/lang/String;
    .registers 3

    .prologue
    .line 217
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getParser()Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/api/ContentResource;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getPostfixByMimetype(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/samsung/api/ContentResource;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/api/ContentResource;->mProtocolInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getResolutionInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/api/ContentResource;->mResolutionInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/api/ContentResource;->mResuUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/api/ContentResource;->mSize:Ljava/lang/String;

    return-object v0
.end method

.method setDuration(Ljava/lang/String;)V
    .registers 3
    .parameter "duration"

    .prologue
    .line 195
    if-eqz p1, :cond_a

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 196
    :cond_a
    const-string p1, "00:00:00"

    .line 197
    :cond_c
    iput-object p1, p0, Lcom/samsung/api/ContentResource;->mDuration:Ljava/lang/String;

    .line 198
    return-void
.end method

.method setProtocolInfo(Ljava/lang/String;)V
    .registers 8
    .parameter "protocolInfo"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 138
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, strSplit:[Ljava/lang/String;
    array-length v3, v2

    if-le v3, v4, :cond_f

    .line 141
    aget-object v3, v2, v4

    iput-object v3, p0, Lcom/samsung/api/ContentResource;->mMimeType:Ljava/lang/String;

    .line 142
    :cond_f
    array-length v3, v2

    if-le v3, v5, :cond_16

    .line 143
    aget-object v3, v2, v5

    iput-object v3, p0, Lcom/samsung/api/ContentResource;->mMediaProfile:Ljava/lang/String;

    .line 144
    :cond_16
    iput-object p1, p0, Lcom/samsung/api/ContentResource;->mProtocolInfo:Ljava/lang/String;

    .line 147
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getParser()Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    move-result-object v0

    .line 148
    .local v0, parser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;
    iget-object v3, p0, Lcom/samsung/api/ContentResource;->mMimeType:Ljava/lang/String;

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/samsung/api/ContentResource;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getPostfixByMimetype(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 149
    invoke-static {p1}, Lcom/samsung/api/ProtocolInfo;->ParseProtocolInfo(Ljava/lang/String;)Lcom/samsung/api/ProtocolInfo;

    move-result-object v1

    .line 150
    .local v1, pi:Lcom/samsung/api/ProtocolInfo;
    if-eqz v1, :cond_3e

    .line 151
    invoke-virtual {v1}, Lcom/samsung/api/ProtocolInfo;->getDlnaPN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getMimeTypeByPN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/api/ContentResource;->mMimeType:Ljava/lang/String;

    .line 154
    .end local v1           #pi:Lcom/samsung/api/ProtocolInfo;
    :cond_3e
    return-void
.end method

.method setResolutionInfo(Ljava/lang/String;)V
    .registers 2
    .parameter "resolutionInfo"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/samsung/api/ContentResource;->mResolutionInfo:Ljava/lang/String;

    .line 184
    return-void
.end method

.method setResourceUrl(Ljava/lang/String;)V
    .registers 3
    .parameter "resuUrl"

    .prologue
    .line 87
    if-nez p1, :cond_7

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/api/ContentResource;->mResuUrl:Ljava/lang/String;

    .line 91
    :goto_6
    return-void

    .line 90
    :cond_7
    iput-object p1, p0, Lcom/samsung/api/ContentResource;->mResuUrl:Ljava/lang/String;

    goto :goto_6
.end method

.method setSize(Ljava/lang/String;)V
    .registers 2
    .parameter "size"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/samsung/api/ContentResource;->mSize:Ljava/lang/String;

    .line 170
    return-void
.end method
