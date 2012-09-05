.class Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection$MultiplexOutputStream;
.super Ljava/io/DataOutputStream;
.source "MultiplexHttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiplexOutputStream"
.end annotation


# instance fields
.field private ivRequest:Lcom/vlingo/client/core/http/custom/HttpRequest;

.field final synthetic this$0:Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;


# direct methods
.method constructor <init>(Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;Ljava/io/OutputStream;Lcom/vlingo/client/core/http/custom/HttpRequest;)V
    .registers 4
    .parameter
    .parameter "out"
    .parameter "request"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection$MultiplexOutputStream;->this$0:Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;

    .line 206
    invoke-direct {p0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 207
    iput-object p3, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection$MultiplexOutputStream;->ivRequest:Lcom/vlingo/client/core/http/custom/HttpRequest;

    .line 208
    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection$MultiplexOutputStream;->this$0:Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;

    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection$MultiplexOutputStream;->ivRequest:Lcom/vlingo/client/core/http/custom/HttpRequest;

    #calls: Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->write(Lcom/vlingo/client/core/http/custom/HttpRequest;I)V
    invoke-static {v0, v1, p1}, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->access$200(Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;Lcom/vlingo/client/core/http/custom/HttpRequest;I)V

    .line 216
    return-void
.end method

.method public write([B)V
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection$MultiplexOutputStream;->this$0:Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;

    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection$MultiplexOutputStream;->ivRequest:Lcom/vlingo/client/core/http/custom/HttpRequest;

    #calls: Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->write(Lcom/vlingo/client/core/http/custom/HttpRequest;[B)V
    invoke-static {v0, v1, p1}, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->access$300(Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;Lcom/vlingo/client/core/http/custom/HttpRequest;[B)V

    .line 220
    return-void
.end method

.method public write([BII)V
    .registers 6
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection$MultiplexOutputStream;->this$0:Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;

    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection$MultiplexOutputStream;->ivRequest:Lcom/vlingo/client/core/http/custom/HttpRequest;

    #calls: Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->write(Lcom/vlingo/client/core/http/custom/HttpRequest;[BII)V
    invoke-static {v0, v1, p1, p2, p3}, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->access$100(Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;Lcom/vlingo/client/core/http/custom/HttpRequest;[BII)V

    .line 212
    return-void
.end method
