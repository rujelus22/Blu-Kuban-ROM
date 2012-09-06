.class final Ldbxyzptlk/p/r;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field private final a:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final b:Ldbxyzptlk/o/m;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;Ldbxyzptlk/o/m;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1031
    iput-object p1, p0, Ldbxyzptlk/p/r;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 1032
    iput-object p2, p0, Ldbxyzptlk/p/r;->b:Ldbxyzptlk/o/m;

    .line 1033
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 1036
    iget-object v0, p0, Ldbxyzptlk/p/r;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 1037
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1045
    :try_start_0
    iget-object v0, p0, Ldbxyzptlk/p/r;->b:Ldbxyzptlk/o/m;

    iget-object v1, p0, Ldbxyzptlk/p/r;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    const/16 v2, 0x7530

    invoke-static {v0, v1, v2}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/o/m;Lorg/apache/http/client/methods/HttpUriRequest;I)Lorg/apache/http/HttpResponse;
    :try_end_9
    .catch Ldbxyzptlk/m/b; {:try_start_0 .. :try_end_9} :catch_19

    move-result-object v0

    .line 1055
    invoke-static {v0}, Ldbxyzptlk/l/t;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1056
    const-string v1, "block_hash"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1046
    :catch_19
    move-exception v0

    .line 1047
    iget-object v1, p0, Ldbxyzptlk/p/r;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1048
    new-instance v0, Ldbxyzptlk/m/e;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ldbxyzptlk/m/e;-><init>(I)V

    throw v0

    .line 1050
    :cond_29
    throw v0
.end method
