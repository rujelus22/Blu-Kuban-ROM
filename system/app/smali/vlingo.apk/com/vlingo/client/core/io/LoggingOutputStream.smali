.class public Lcom/vlingo/client/core/io/LoggingOutputStream;
.super Ljava/io/DataOutputStream;
.source "LoggingOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/DataOutputStream;)V
    .registers 2
    .parameter "out"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 24
    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-super {p0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 36
    return-void
.end method

.method public write([B)V
    .registers 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-super {p0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 42
    return-void
.end method

.method public write([BII)V
    .registers 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 30
    return-void
.end method
