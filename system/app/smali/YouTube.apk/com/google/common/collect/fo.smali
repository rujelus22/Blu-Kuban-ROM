.class final Lcom/google/common/collect/fo;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/Multisets$SetMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$SetMultiset;)V
    .registers 2
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/google/common/collect/fo;->a:Lcom/google/common/collect/Multisets$SetMultiset;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 293
    new-instance v0, Lcom/google/common/collect/fp;

    invoke-direct {v0, p0}, Lcom/google/common/collect/fp;-><init>(Lcom/google/common/collect/fo;)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/common/collect/fo;->a:Lcom/google/common/collect/Multisets$SetMultiset;

    iget-object v0, v0, Lcom/google/common/collect/Multisets$SetMultiset;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
