.class final Lcom/google/common/collect/gl;
.super Ljava/lang/ref/SoftReference;
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
    .line 1782
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1783
    iput-object p3, p0, Lcom/google/common/collect/gl;->a:Lcom/google/common/collect/gg;

    .line 1784
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/google/common/collect/gl;->a:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/gg;)Lcom/google/common/collect/gs;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1798
    new-instance v0, Lcom/google/common/collect/gl;

    invoke-virtual {p0}, Lcom/google/common/collect/gl;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/google/common/collect/gl;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/gg;)V

    return-object v0
.end method

.method public final a(Lcom/google/common/collect/gs;)V
    .registers 2
    .parameter

    .prologue
    .line 1793
    invoke-virtual {p0}, Lcom/google/common/collect/gl;->clear()V

    .line 1794
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 1803
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1808
    invoke-virtual {p0}, Lcom/google/common/collect/gl;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
