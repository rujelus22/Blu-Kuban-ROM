.class Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection$MultiplexInputStream;
.super Ljava/io/DataInputStream;
.source "MultiplexHttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiplexInputStream"
.end annotation


# instance fields
.field private ivResponse:Lcom/vlingo/client/core/http/custom/HttpResponse;

.field final synthetic this$0:Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;


# direct methods
.method constructor <init>(Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;Ljava/io/InputStream;Lcom/vlingo/client/core/http/custom/HttpResponse;)V
    .registers 4
    .parameter
    .parameter "in"
    .parameter "response"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection$MultiplexInputStream;->this$0:Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;

    .line 188
    invoke-direct {p0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 189
    iput-object p3, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection$MultiplexInputStream;->ivResponse:Lcom/vlingo/client/core/http/custom/HttpResponse;

    .line 190
    return-void
.end method


# virtual methods
.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection$MultiplexInputStream;->this$0:Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;

    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection$MultiplexInputStream;->ivResponse:Lcom/vlingo/client/core/http/custom/HttpResponse;

    #calls: Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->read(Lcom/vlingo/client/core/http/custom/HttpResponse;)I
    invoke-static {v0, v1}, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->access$000(Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;Lcom/vlingo/client/core/http/custom/HttpResponse;)I

    move-result v0

    return v0
.end method
