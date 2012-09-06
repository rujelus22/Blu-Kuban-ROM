.class final Lcom/google/common/collect/gq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/gs;


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1819
    iput-object p1, p0, Lcom/google/common/collect/gq;->a:Ljava/lang/Object;

    .line 1820
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1829
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/gg;)Lcom/google/common/collect/gs;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1834
    return-object p0
.end method

.method public final a(Lcom/google/common/collect/gs;)V
    .registers 2
    .parameter

    .prologue
    .line 1848
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 1839
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1844
    invoke-virtual {p0}, Lcom/google/common/collect/gq;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/google/common/collect/gq;->a:Ljava/lang/Object;

    return-object v0
.end method
