.class final Lcom/google/common/cache/CacheLoader$SupplierToCacheLoader;
.super Lcom/google/common/cache/CacheLoader;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final computingSupplier:Lcom/google/common/base/am;


# direct methods
.method public constructor <init>(Lcom/google/common/base/am;)V
    .registers 3
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/google/common/cache/CacheLoader;-><init>()V

    .line 138
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/am;

    iput-object v0, p0, Lcom/google/common/cache/CacheLoader$SupplierToCacheLoader;->computingSupplier:Lcom/google/common/base/am;

    .line 139
    return-void
.end method


# virtual methods
.method public final load(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/common/cache/CacheLoader$SupplierToCacheLoader;->computingSupplier:Lcom/google/common/base/am;

    invoke-interface {v0}, Lcom/google/common/base/am;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
