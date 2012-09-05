.class Lcom/util/http/HTTPRequestHelper$1;
.super Ljava/lang/Object;
.source "HTTPRequestHelper.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/util/http/HTTPRequestHelper;->performRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/util/http/HTTPRequestHelper;

.field final synthetic val$sendHeaders:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/util/http/HTTPRequestHelper;Ljava/util/Map;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/util/http/HTTPRequestHelper$1;->this$0:Lcom/util/http/HTTPRequestHelper;

    iput-object p2, p0, Lcom/util/http/HTTPRequestHelper$1;->val$sendHeaders:Ljava/util/Map;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 6
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v2, p0, Lcom/util/http/HTTPRequestHelper$1;->val$sendHeaders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 181
    .local v1, key:Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 186
    iget-object v2, p0, Lcom/util/http/HTTPRequestHelper$1;->val$sendHeaders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 189
    .end local v1           #key:Ljava/lang/String;
    :cond_28
    return-void
.end method
