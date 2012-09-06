.class final Laif;
.super Laic;
.source "ComputingConcurrentHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Laic",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method constructor <init>(Lajl;LafH;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajl;",
            "LafH",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 385
    invoke-direct {p0, p1, p2}, Laic;-><init>(Lajl;LafH;)V

    .line 386
    return-void
.end method


# virtual methods
.method bridge synthetic a(I)Lakb;
    .registers 3
    .parameter

    .prologue
    .line 379
    invoke-super {p0, p1}, Laic;->a(I)Laig;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 393
    :try_start_0
    invoke-virtual {p0, p1}, Laif;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_3} :catch_2b

    move-result-object v0

    .line 400
    if-nez v0, :cond_3b

    .line 401
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Laif;->a:LafH;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned null for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :catch_2b
    move-exception v0

    .line 395
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 396
    const-class v1, Laib;

    invoke-static {v0, v1}, Lagd;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 397
    new-instance v1, Laib;

    invoke-direct {v1, v0}, Laib;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 403
    :cond_3b
    return-object v0
.end method
