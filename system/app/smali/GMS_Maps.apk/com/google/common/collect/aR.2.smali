.class final Lcom/google/common/collect/aR;
.super Lcom/google/common/collect/ap;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lcom/google/common/collect/X;


# direct methods
.method constructor <init>(Lcom/google/common/collect/X;)V
    .registers 2
    .parameter

    .prologue
    .line 3540
    iput-object p1, p0, Lcom/google/common/collect/aR;->a:Lcom/google/common/collect/X;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ap;-><init>(Lcom/google/common/collect/X;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3543
    invoke-virtual {p0}, Lcom/google/common/collect/aR;->e()Lcom/google/common/collect/aZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/aZ;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
