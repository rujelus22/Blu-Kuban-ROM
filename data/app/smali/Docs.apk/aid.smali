.class final Laid;
.super Ljava/lang/Object;
.source "ComputingConcurrentHashMap.java"

# interfaces
.implements Lakr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lakr",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Laid;->a:Ljava/lang/Throwable;

    .line 215
    return-void
.end method


# virtual methods
.method public a()Laka;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;Laka;)Lakr;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;",
            "Laka",
            "<TK;TV;>;)",
            "Lakr",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 229
    return-object p0
.end method

.method public a()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 239
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Laid;->a:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Lakr;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakr",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 243
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method
