.class Lcom/google/common/cache/z;
.super Ljava/lang/ref/SoftReference;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/ag;


# instance fields
.field final a:Lcom/google/common/cache/x;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/x;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1687
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1688
    iput-object p3, p0, Lcom/google/common/cache/z;->a:Lcom/google/common/cache/x;

    .line 1689
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 1693
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/cache/x;)Lcom/google/common/cache/ag;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1706
    new-instance v0, Lcom/google/common/cache/z;

    invoke-virtual {p0}, Lcom/google/common/cache/z;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/google/common/cache/z;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/x;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1702
    return-void
.end method

.method public final b()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/google/common/cache/z;->a:Lcom/google/common/cache/x;

    return-object v0
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 1711
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 1716
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1721
    invoke-virtual {p0}, Lcom/google/common/cache/z;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
