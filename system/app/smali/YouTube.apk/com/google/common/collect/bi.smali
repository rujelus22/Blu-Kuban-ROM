.class final Lcom/google/common/collect/bi;
.super Lcom/google/common/collect/p;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field final synthetic c:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1751
    iput-object p1, p0, Lcom/google/common/collect/bi;->c:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Lcom/google/common/collect/p;-><init>()V

    .line 1752
    iput-object p2, p0, Lcom/google/common/collect/bi;->a:Ljava/lang/Object;

    .line 1753
    iput-object p3, p0, Lcom/google/common/collect/bi;->b:Ljava/lang/Object;

    .line 1754
    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/google/common/collect/bi;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/google/common/collect/bi;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 1773
    if-nez p1, :cond_8

    .line 1774
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1776
    :cond_8
    iget-object v0, p0, Lcom/google/common/collect/bi;->c:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {p0}, Lcom/google/common/collect/bi;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1777
    iput-object p1, p0, Lcom/google/common/collect/bi;->b:Ljava/lang/Object;

    .line 1778
    return-object v0
.end method
