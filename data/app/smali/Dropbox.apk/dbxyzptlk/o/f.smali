.class final Ldbxyzptlk/o/f;
.super Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
.source "panda.py"


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 488
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 489
    return-void
.end method


# virtual methods
.method public final requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 494
    const/16 v0, 0x14

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Ldbxyzptlk/o/j;->a(Ldbxyzptlk/o/f;II)V

    .line 495
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;

    move-result-object v0

    return-object v0
.end method
