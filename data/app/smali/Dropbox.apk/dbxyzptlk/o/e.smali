.class final Ldbxyzptlk/o/e;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# instance fields
.field final synthetic a:Ldbxyzptlk/o/a;


# direct methods
.method constructor <init>(Ldbxyzptlk/o/a;)V
    .registers 2
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Ldbxyzptlk/o/e;->a:Ldbxyzptlk/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 303
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_2e

    .line 305
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_2e

    .line 307
    invoke-interface {v0}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v1

    .line 308
    array-length v2, v1

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v2, :cond_2e

    aget-object v3, v1, v0

    .line 309
    invoke-interface {v3}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gzip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 310
    new-instance v0, Ldbxyzptlk/o/i;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-direct {v0, v1}, Ldbxyzptlk/o/i;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 317
    :cond_2e
    return-void

    .line 308
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method
