.class Lcom/google/common/collect/di;
.super Lcom/google/common/collect/k;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/dh;


# direct methods
.method constructor <init>(Lcom/google/common/collect/dh;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/common/collect/di;->a:Lcom/google/common/collect/dh;

    invoke-direct {p0, p2}, Lcom/google/common/collect/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/common/collect/di;->a:Lcom/google/common/collect/dh;

    iget-object v0, v0, Lcom/google/common/collect/dh;->a:Lcom/google/common/collect/db;

    invoke-static {v0}, Lcom/google/common/collect/db;->a(Lcom/google/common/collect/db;)[Lcom/google/common/collect/de;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/google/common/collect/de;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
