.class final Ldbxyzptlk/o/d;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field final synthetic a:Ldbxyzptlk/o/a;


# direct methods
.method constructor <init>(Ldbxyzptlk/o/a;)V
    .registers 2
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Ldbxyzptlk/o/d;->a:Ldbxyzptlk/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 292
    const-string v0, "Accept-Encoding"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 293
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_f
    return-void
.end method
