.class public final Ldbxyzptlk/p/s;
.super Ldbxyzptlk/p/q;
.source "panda.py"


# instance fields
.field final synthetic c:Ldbxyzptlk/p/i;


# direct methods
.method public constructor <init>(Ldbxyzptlk/p/i;Lorg/apache/http/client/methods/HttpUriRequest;Ldbxyzptlk/o/m;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 951
    iput-object p1, p0, Ldbxyzptlk/p/s;->c:Ldbxyzptlk/p/i;

    .line 952
    invoke-direct {p0, p2, p3}, Ldbxyzptlk/p/q;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Ldbxyzptlk/o/m;)V

    .line 953
    return-void
.end method


# virtual methods
.method public final bridge synthetic a()V
    .registers 1

    .prologue
    .line 947
    invoke-super {p0}, Ldbxyzptlk/p/q;->a()V

    return-void
.end method

.method public final b()Ldbxyzptlk/p/t;
    .registers 5

    .prologue
    .line 959
    :try_start_0
    iget-object v0, p0, Ldbxyzptlk/p/s;->b:Ldbxyzptlk/o/m;

    iget-object v1, p0, Ldbxyzptlk/p/s;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    const v2, 0x2bf20

    invoke-static {v0, v1, v2}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/o/m;Lorg/apache/http/client/methods/HttpUriRequest;I)Lorg/apache/http/HttpResponse;
    :try_end_a
    .catch Ldbxyzptlk/m/b; {:try_start_0 .. :try_end_a} :catch_23

    move-result-object v1

    .line 968
    invoke-static {v1}, Ldbxyzptlk/l/t;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    .line 970
    check-cast v0, Ljava/util/Map;

    .line 972
    const-string v2, "dropbox-chillout"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ldbxyzptlk/p/i;->a(Lorg/apache/http/HttpResponse;Ljava/lang/String;F)F

    move-result v1

    .line 973
    new-instance v2, Ldbxyzptlk/l/k;

    invoke-direct {v2, v0}, Ldbxyzptlk/l/k;-><init>(Ljava/util/Map;)V

    .line 974
    new-instance v0, Ldbxyzptlk/p/t;

    invoke-direct {v0, v2, v1}, Ldbxyzptlk/p/t;-><init>(Ldbxyzptlk/l/k;F)V

    return-object v0

    .line 960
    :catch_23
    move-exception v0

    .line 961
    iget-object v1, p0, Ldbxyzptlk/p/s;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 962
    new-instance v0, Ldbxyzptlk/m/e;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ldbxyzptlk/m/e;-><init>(I)V

    throw v0

    .line 964
    :cond_33
    throw v0
.end method

.method public final synthetic c()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 947
    invoke-virtual {p0}, Ldbxyzptlk/p/s;->b()Ldbxyzptlk/p/t;

    move-result-object v0

    return-object v0
.end method
