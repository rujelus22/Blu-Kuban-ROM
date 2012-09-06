.class final Lcom/google/common/collect/gb;
.super Lcom/google/common/collect/fu;
.source "SourceFile"


# instance fields
.field a:Lcom/google/common/collect/gg;

.field b:Lcom/google/common/collect/gg;

.field final synthetic c:Lcom/google/common/collect/ga;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ga;)V
    .registers 2
    .parameter

    .prologue
    .line 3285
    iput-object p1, p0, Lcom/google/common/collect/gb;->c:Lcom/google/common/collect/ga;

    invoke-direct {p0}, Lcom/google/common/collect/fu;-><init>()V

    .line 3295
    iput-object p0, p0, Lcom/google/common/collect/gb;->a:Lcom/google/common/collect/gg;

    .line 3307
    iput-object p0, p0, Lcom/google/common/collect/gb;->b:Lcom/google/common/collect/gg;

    return-void
.end method


# virtual methods
.method public final getExpirationTime()J
    .registers 3

    .prologue
    .line 3289
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public final getNextExpirable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 3299
    iget-object v0, p0, Lcom/google/common/collect/gb;->a:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public final getPreviousExpirable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 3311
    iget-object v0, p0, Lcom/google/common/collect/gb;->b:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public final setExpirationTime(J)V
    .registers 3
    .parameter

    .prologue
    .line 3293
    return-void
.end method

.method public final setNextExpirable(Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter

    .prologue
    .line 3304
    iput-object p1, p0, Lcom/google/common/collect/gb;->a:Lcom/google/common/collect/gg;

    .line 3305
    return-void
.end method

.method public final setPreviousExpirable(Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter

    .prologue
    .line 3316
    iput-object p1, p0, Lcom/google/common/collect/gb;->b:Lcom/google/common/collect/gg;

    .line 3317
    return-void
.end method
