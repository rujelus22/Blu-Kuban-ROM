.class Lcom/google/common/collect/bP;
.super Lcom/google/common/collect/br;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/common/collect/bK;


# direct methods
.method constructor <init>(Lcom/google/common/collect/bK;)V
    .registers 2
    .parameter

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/google/common/collect/br;-><init>()V

    .line 569
    iput-object p1, p0, Lcom/google/common/collect/bP;->a:Lcom/google/common/collect/bK;

    .line 570
    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    .prologue
    .line 586
    const/4 v0, 0x1

    return v0
.end method

.method public b()Lcom/google/common/collect/dE;
    .registers 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/common/collect/bP;->a:Lcom/google/common/collect/bK;

    invoke-virtual {v0}, Lcom/google/common/collect/bK;->g()Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/common/collect/bP;->a:Lcom/google/common/collect/bK;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/bK;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/google/common/collect/bP;->b()Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/common/collect/bP;->a:Lcom/google/common/collect/bK;

    invoke-virtual {v0}, Lcom/google/common/collect/bK;->size()I

    move-result v0

    return v0
.end method
