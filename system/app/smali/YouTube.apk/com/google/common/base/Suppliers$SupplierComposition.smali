.class Lcom/google/common/base/Suppliers$SupplierComposition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/w;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final first:Lcom/google/common/base/w;

.field final function:Lcom/google/common/base/k;


# direct methods
.method constructor <init>(Lcom/google/common/base/k;Lcom/google/common/base/w;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/common/base/Suppliers$SupplierComposition;->function:Lcom/google/common/base/k;

    .line 61
    iput-object p2, p0, Lcom/google/common/base/Suppliers$SupplierComposition;->first:Lcom/google/common/base/w;

    .line 62
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/common/base/Suppliers$SupplierComposition;->function:Lcom/google/common/base/k;

    iget-object v1, p0, Lcom/google/common/base/Suppliers$SupplierComposition;->first:Lcom/google/common/base/w;

    invoke-interface {v1}, Lcom/google/common/base/w;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/k;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
