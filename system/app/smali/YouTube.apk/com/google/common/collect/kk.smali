.class final Lcom/google/common/collect/kk;
.super Lcom/google/common/collect/iy;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ki;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ki;)V
    .registers 2
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/common/collect/kk;->a:Lcom/google/common/collect/ki;

    invoke-direct {p0}, Lcom/google/common/collect/iy;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/common/collect/iq;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/common/collect/kk;->a:Lcom/google/common/collect/ki;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/common/collect/kk;->a:Lcom/google/common/collect/ki;

    invoke-virtual {v0}, Lcom/google/common/collect/ki;->b()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/common/collect/kk;->a:Lcom/google/common/collect/ki;

    invoke-virtual {v0}, Lcom/google/common/collect/ki;->a()Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kg;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
