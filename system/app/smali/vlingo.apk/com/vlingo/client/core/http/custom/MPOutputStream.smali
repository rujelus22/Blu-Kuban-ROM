.class public Lcom/vlingo/client/core/http/custom/MPOutputStream;
.super Ljava/lang/Object;
.source "MPOutputStream.java"


# static fields
.field private static final ivEndLine:Ljava/lang/String; = "\r\n"


# instance fields
.field private ivBoundary:Ljava/lang/String;

.field private ivDout:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .registers 5
    .parameter "dout"
    .parameter "boundary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Output stream is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_d
    iput-object p1, p0, Lcom/vlingo/client/core/http/custom/MPOutputStream;->ivDout:Ljava/io/DataOutputStream;

    .line 36
    iput-object p2, p0, Lcom/vlingo/client/core/http/custom/MPOutputStream;->ivBoundary:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private write(Ljava/lang/String;)V
    .registers 4
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/MPOutputStream;->ivDout:Ljava/io/DataOutputStream;

    invoke-static {p1}, Lcom/vlingo/client/core/util/StringUtils;->convertStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 45
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/MPOutputStream;->ivDout:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 127
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/MPOutputStream;->ivDout:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 118
    return-void
.end method

.method public write([BII)V
    .registers 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/MPOutputStream;->ivDout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 109
    return-void
.end method

.method public writeBoundary()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/MPOutputStream;->ivBoundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->write(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public writeEndFieldValue()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const-string v0, "\r\n"

    invoke-direct {p0, v0}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->write(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public writeEndHeader()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    const-string v0, "\r\n"

    invoke-direct {p0, v0}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->write(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public writeField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "type"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->writeFieldHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0, p3}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->write(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->writeEndFieldValue()V

    .line 89
    invoke-virtual {p0}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->writeBoundary()V

    .line 90
    return-void
.end method

.method public writeFieldHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    const-string v0, "Content-Disposition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "form-data; name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->writeHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p2}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->writeHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->writeEndHeader()V

    .line 80
    return-void
.end method

.method public writeFileFieldHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const-string v0, "Content-Disposition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "form-data; name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"; filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->writeHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p2}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->writeHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "Content-Transfer-Encoding"

    const-string v1, "binary"

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->writeHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->writeEndHeader()V

    .line 100
    return-void
.end method

.method public writeHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->write(Ljava/lang/String;)V

    .line 57
    return-void
.end method
