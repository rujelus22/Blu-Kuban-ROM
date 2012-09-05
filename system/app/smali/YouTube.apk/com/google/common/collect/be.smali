.class final Lcom/google/common/collect/be;
.super Lcom/google/common/collect/bd;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V
    .registers 2
    .parameter

    .prologue
    .line 1729
    iput-object p1, p0, Lcom/google/common/collect/be;->a:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0, p1}, Lcom/google/common/collect/bd;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1732
    invoke-super {p0}, Lcom/google/common/collect/bd;->a()Lcom/google/common/collect/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/bi;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
