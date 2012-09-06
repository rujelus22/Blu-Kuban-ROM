.class public LRq;
.super Ljava/lang/Object;
.source "InMemoryFileSource.java"

# interfaces
.implements LRd;


# instance fields
.field private final a:LRd;

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LRs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LRd;)V
    .registers 3
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LRq;->a:Ljava/util/Map;

    .line 43
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LRd;

    iput-object v0, p0, LRq;->a:LRd;

    .line 44
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, LRq;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 64
    iget-object v0, p0, LRq;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LRs;

    invoke-static {v0}, LRs;->a(LRs;)Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, LRq;->a:LRd;

    invoke-interface {v0, p1}, LRd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public a(Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, LRq;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 49
    iget-object v0, p0, LRq;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LRs;

    invoke-static {v0}, LRs;->a(LRs;)[B

    move-result-object v0

    .line 50
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 54
    :goto_1d
    return-void

    .line 52
    :cond_1e
    iget-object v0, p0, LRq;->a:LRd;

    invoke-interface {v0, p1, p2}, LRd;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    goto :goto_1d
.end method

.method public a(Ljava/lang/String;[BLjava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, LRq;->a:Ljava/util/Map;

    new-instance v1, LRs;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p3, v2}, LRs;-><init>([BLjava/lang/String;LRr;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method
