.class Lcom/google/common/collect/am;
.super Lcom/google/common/collect/iy;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ak;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ak;)V
    .registers 2
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/common/collect/am;->a:Lcom/google/common/collect/ak;

    invoke-direct {p0}, Lcom/google/common/collect/iy;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/google/common/collect/iq;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/common/collect/am;->a:Lcom/google/common/collect/ak;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/common/collect/am;->a:Lcom/google/common/collect/ak;

    invoke-virtual {v0}, Lcom/google/common/collect/ak;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/common/collect/am;->a:Lcom/google/common/collect/ak;

    invoke-virtual {v0}, Lcom/google/common/collect/ak;->distinctElements()I

    move-result v0

    return v0
.end method
