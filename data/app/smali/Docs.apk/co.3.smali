.class Lco;
.super Ljava/lang/Object;
.source "ContextScopeImpl.java"

# interfaces
.implements LanD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LanD",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lant;

.field final synthetic a:Lcl;

.field final synthetic a:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcl;Lant;Ljava/util/concurrent/Callable;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lco;->a:Lcl;

    iput-object p2, p0, Lco;->a:Lant;

    iput-object p3, p0, Lco;->a:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lco;->a:Lcl;

    invoke-static {v0}, Lcl;->a(Lcl;)Lagj;

    move-result-object v0

    .line 68
    :try_start_6
    iget-object v1, p0, Lco;->a:Lant;

    iget-object v2, p0, Lco;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1, v2}, Lagj;->a(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_d} :catch_30

    move-result-object v0

    .line 74
    invoke-static {}, Lcl;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2f

    .line 75
    const-string v0, "ContextScopeImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lco;->a:Lant;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v0, 0x0

    .line 81
    :cond_2f
    return-object v0

    .line 69
    :catch_30
    move-exception v0

    .line 70
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An exception occured when trying to get an instance for key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lco;->a:Lant;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
