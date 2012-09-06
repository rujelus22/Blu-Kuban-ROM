.class Lcom/google/common/cache/al;
.super Ljava/lang/ref/WeakReference;
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
    .line 1640
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1641
    iput-object p3, p0, Lcom/google/common/cache/al;->a:Lcom/google/common/cache/x;

    .line 1642
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 1646
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/cache/x;)Lcom/google/common/cache/ag;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1660
    new-instance v0, Lcom/google/common/cache/al;

    invoke-virtual {p0}, Lcom/google/common/cache/al;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/google/common/cache/al;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/x;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1655
    return-void
.end method

.method public final b()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/google/common/cache/al;->a:Lcom/google/common/cache/x;

    return-object v0
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 1665
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 1670
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1675
    invoke-virtual {p0}, Lcom/google/common/cache/al;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
