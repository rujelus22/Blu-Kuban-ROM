.class final Lcom/google/common/collect/gy;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/gs;


# instance fields
.field final a:Lcom/google/common/collect/gg;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/gg;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1743
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1744
    iput-object p3, p0, Lcom/google/common/collect/gy;->a:Lcom/google/common/collect/gg;

    .line 1745
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/google/common/collect/gy;->a:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/gg;)Lcom/google/common/collect/gs;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1760
    new-instance v0, Lcom/google/common/collect/gy;

    invoke-virtual {p0}, Lcom/google/common/collect/gy;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/google/common/collect/gy;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/gg;)V

    return-object v0
.end method

.method public final a(Lcom/google/common/collect/gs;)V
    .registers 2
    .parameter

    .prologue
    .line 1754
    invoke-virtual {p0}, Lcom/google/common/collect/gy;->clear()V

    .line 1755
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 1765
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/google/common/collect/gy;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
