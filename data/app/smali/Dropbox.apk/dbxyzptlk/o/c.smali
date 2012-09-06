.class final Ldbxyzptlk/o/c;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "panda.py"


# instance fields
.field final synthetic a:Ldbxyzptlk/o/a;


# direct methods
.method constructor <init>(Ldbxyzptlk/o/a;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Ldbxyzptlk/o/c;->a:Ldbxyzptlk/o/a;

    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected final createConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .registers 3

    .prologue
    .line 278
    new-instance v0, Ldbxyzptlk/o/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldbxyzptlk/o/h;-><init>(Ldbxyzptlk/o/b;)V

    return-object v0
.end method

.method protected final createConnectionReuseStrategy()Lorg/apache/http/ConnectionReuseStrategy;
    .registers 3

    .prologue
    .line 283
    new-instance v0, Ldbxyzptlk/o/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldbxyzptlk/o/g;-><init>(Ldbxyzptlk/o/b;)V

    return-object v0
.end method
