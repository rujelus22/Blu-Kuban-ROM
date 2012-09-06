.class public final Ldbxyzptlk/l/d;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ldbxyzptlk/l/p;


# instance fields
.field private final a:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final b:Ldbxyzptlk/o/m;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;Ldbxyzptlk/o/m;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    iput-object p1, p0, Ldbxyzptlk/l/d;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 698
    iput-object p2, p0, Ldbxyzptlk/l/d;->b:Ldbxyzptlk/o/m;

    .line 699
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 707
    iget-object v0, p0, Ldbxyzptlk/l/d;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 708
    return-void
.end method

.method public final b()Ldbxyzptlk/l/k;
    .registers 4

    .prologue
    .line 733
    :try_start_0
    iget-object v0, p0, Ldbxyzptlk/l/d;->b:Ldbxyzptlk/o/m;

    iget-object v1, p0, Ldbxyzptlk/l/d;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    const v2, 0x2bf20

    invoke-static {v0, v1, v2}, Ldbxyzptlk/l/t;->a(Ldbxyzptlk/o/m;Lorg/apache/http/client/methods/HttpUriRequest;I)Lorg/apache/http/HttpResponse;
    :try_end_a
    .catch Ldbxyzptlk/m/b; {:try_start_0 .. :try_end_a} :catch_17

    move-result-object v0

    .line 743
    invoke-static {v0}, Ldbxyzptlk/l/t;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    .line 746
    check-cast v0, Ljava/util/Map;

    .line 748
    new-instance v1, Ldbxyzptlk/l/k;

    invoke-direct {v1, v0}, Ldbxyzptlk/l/k;-><init>(Ljava/util/Map;)V

    return-object v1

    .line 735
    :catch_17
    move-exception v0

    .line 736
    iget-object v1, p0, Ldbxyzptlk/l/d;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 737
    new-instance v0, Ldbxyzptlk/m/e;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ldbxyzptlk/m/e;-><init>(I)V

    throw v0

    .line 739
    :cond_27
    throw v0
.end method
