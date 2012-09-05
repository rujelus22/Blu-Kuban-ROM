.class public Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;
.super Ljava/io/OutputStream;
.source "SSLSocketOutputStream.java"


# instance fields
.field private final owner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;


# direct methods
.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;)V
    .registers 2
    .parameter "owner"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;->owner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    .line 35
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
    .line 38
    invoke-static {p0, p1}, Llibcore/io/Streams;->writeSingleByte(Ljava/io/OutputStream;I)V

    .line 39
    return-void
.end method

.method public write([BII)V
    .registers 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;->owner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->writeAppData([BII)V

    .line 44
    return-void
.end method
