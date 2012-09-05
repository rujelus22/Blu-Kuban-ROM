.class public Lcom/samsung/upnp/media/server/object/DIDLLite;
.super Ljava/lang/Object;
.source "DIDLLite.java"


# instance fields
.field private nodeList:Lcom/samsung/upnp/media/server/object/ContentNodeList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/samsung/upnp/media/server/object/ContentNodeList;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/object/ContentNodeList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/object/DIDLLite;->nodeList:Lcom/samsung/upnp/media/server/object/ContentNodeList;

    .line 84
    return-void
.end method


# virtual methods
.method public addContentNode(Lcom/samsung/upnp/media/server/object/ContentNode;)V
    .registers 3
    .parameter "node"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DIDLLite;->nodeList:Lcom/samsung/upnp/media/server/object/ContentNodeList;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/object/ContentNodeList;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public getContentNode(I)Lcom/samsung/upnp/media/server/object/ContentNode;
    .registers 3
    .parameter "n"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DIDLLite;->nodeList:Lcom/samsung/upnp/media/server/object/ContentNodeList;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/object/ContentNodeList;->getContentNode(I)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v0

    return-object v0
.end method

.method public getNContentNodes()I
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DIDLLite;->nodeList:Lcom/samsung/upnp/media/server/object/ContentNodeList;

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/ContentNodeList;->size()I

    move-result v0

    return v0
.end method

.method public output(Ljava/io/PrintWriter;)V
    .registers 10
    .parameter "ps"

    .prologue
    .line 120
    const-string v6, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    new-instance v1, Lcom/samsung/upnp/media/server/object/DIDLLiteNode;

    invoke-direct {v1}, Lcom/samsung/upnp/media/server/object/DIDLLiteNode;-><init>()V

    .line 124
    .local v1, didlNode:Lcom/samsung/upnp/media/server/object/DIDLLiteNode;
    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/DIDLLiteNode;->getName()Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/DIDLLiteNode;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, value:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1, p1}, Lcom/samsung/upnp/media/server/object/DIDLLiteNode;->outputAttributes(Ljava/io/PrintWriter;)V

    .line 129
    const-string v6, ">"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/DIDLLite;->getNContentNodes()I

    move-result v3

    .line 132
    .local v3, nNodes:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_31
    if-lt v2, v3, :cond_4c

    .line 137
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "</"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    return-void

    .line 133
    :cond_4c
    invoke-virtual {p0, v2}, Lcom/samsung/upnp/media/server/object/DIDLLite;->getContentNode(I)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v0

    .line 134
    .local v0, contentNode:Lcom/samsung/upnp/media/server/object/ContentNode;
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, p1, v6, v7}, Lcom/samsung/upnp/media/server/object/ContentNode;->output(Ljava/io/PrintWriter;IZ)V

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_31
.end method

.method public setContentNode(Lcom/samsung/upnp/media/server/object/ContentNode;)V
    .registers 3
    .parameter "node"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DIDLLite;->nodeList:Lcom/samsung/upnp/media/server/object/ContentNodeList;

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/ContentNodeList;->clear()V

    .line 95
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DIDLLite;->nodeList:Lcom/samsung/upnp/media/server/object/ContentNodeList;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/object/ContentNodeList;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 143
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 144
    .local v0, byteOut:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 145
    .local v3, writer:Ljava/io/Writer;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 146
    .local v2, pr:Ljava/io/PrintWriter;
    invoke-virtual {p0, v2}, Lcom/samsung/upnp/media/server/object/DIDLLite;->output(Ljava/io/PrintWriter;)V

    .line 147
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 148
    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v4

    .line 153
    .end local v0           #byteOut:Ljava/io/ByteArrayOutputStream;
    .end local v2           #pr:Ljava/io/PrintWriter;
    .end local v3           #writer:Ljava/io/Writer;
    :goto_1d
    return-object v4

    .line 150
    :catch_1e
    move-exception v1

    .line 151
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-static {v1}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V

    .line 153
    const-string v4, ""

    goto :goto_1d
.end method
