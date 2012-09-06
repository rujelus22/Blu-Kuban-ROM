.class final Lcom/google/common/collect/ci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/gs;


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
    iput-object p1, p0, Lcom/google/common/collect/ci;->a:Ljava/lang/Throwable;

    .line 215
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/gg;)Lcom/google/common/collect/gs;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 229
    return-object p0
.end method

.method public final a(Lcom/google/common/collect/gs;)V
    .registers 2
    .parameter

    .prologue
    .line 243
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 239
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/google/common/collect/ci;->a:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method
