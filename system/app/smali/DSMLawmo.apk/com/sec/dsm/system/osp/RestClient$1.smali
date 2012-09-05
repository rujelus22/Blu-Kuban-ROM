.class Lcom/sec/dsm/system/osp/RestClient$1;
.super Ljava/lang/Object;
.source "RestClient.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/dsm/system/osp/RestClient;->execute(Lcom/sec/dsm/system/osp/RestClient$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;)Lorg/apache/http/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/dsm/system/osp/RestClient;


# direct methods
.method constructor <init>(Lcom/sec/dsm/system/osp/RestClient;)V
    .registers 2
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/sec/dsm/system/osp/RestClient$1;->this$0:Lcom/sec/dsm/system/osp/RestClient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .registers 9
    .parameter "response"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 325
    .local v2, entity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_2e

    .line 326
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 327
    .local v0, ceheader:Lorg/apache/http/Header;
    if-eqz v0, :cond_2e

    .line 328
    invoke-interface {v0}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v1

    .line 329
    .local v1, codecs:[Lorg/apache/http/HeaderElement;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_11
    array-length v4, v1

    if-ge v3, v4, :cond_2e

    .line 330
    aget-object v4, v1, v3

    invoke-interface {v4}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gzip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 331
    new-instance v4, Lcom/sec/dsm/system/osp/GzipDecompressingEntity;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sec/dsm/system/osp/GzipDecompressingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 338
    .end local v0           #ceheader:Lorg/apache/http/Header;
    .end local v1           #codecs:[Lorg/apache/http/HeaderElement;
    .end local v3           #i:I
    :cond_2e
    return-void

    .line 329
    .restart local v0       #ceheader:Lorg/apache/http/Header;
    .restart local v1       #codecs:[Lorg/apache/http/HeaderElement;
    .restart local v3       #i:I
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_11
.end method
