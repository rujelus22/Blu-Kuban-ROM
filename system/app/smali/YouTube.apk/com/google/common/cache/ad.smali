.class Lcom/google/common/cache/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/ag;


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1732
    iput-object p1, p0, Lcom/google/common/cache/ad;->a:Ljava/lang/Object;

    .line 1733
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 1742
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/cache/x;)Lcom/google/common/cache/ag;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1752
    return-object p0
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1771
    return-void
.end method

.method public final b()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1747
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 1757
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 1762
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1767
    invoke-virtual {p0}, Lcom/google/common/cache/ad;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/google/common/cache/ad;->a:Ljava/lang/Object;

    return-object v0
.end method
