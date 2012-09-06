.class final Lcom/google/common/collect/fy;
.super Lcom/google/common/collect/fu;
.source "SourceFile"


# instance fields
.field a:Lcom/google/common/collect/gg;

.field b:Lcom/google/common/collect/gg;

.field final synthetic c:Lcom/google/common/collect/fx;


# direct methods
.method constructor <init>(Lcom/google/common/collect/fx;)V
    .registers 2
    .parameter

    .prologue
    .line 3157
    iput-object p1, p0, Lcom/google/common/collect/fy;->c:Lcom/google/common/collect/fx;

    invoke-direct {p0}, Lcom/google/common/collect/fu;-><init>()V

    .line 3159
    iput-object p0, p0, Lcom/google/common/collect/fy;->a:Lcom/google/common/collect/gg;

    .line 3171
    iput-object p0, p0, Lcom/google/common/collect/fy;->b:Lcom/google/common/collect/gg;

    return-void
.end method


# virtual methods
.method public final getNextEvictable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 3163
    iget-object v0, p0, Lcom/google/common/collect/fy;->a:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public final getPreviousEvictable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 3175
    iget-object v0, p0, Lcom/google/common/collect/fy;->b:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public final setNextEvictable(Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter

    .prologue
    .line 3168
    iput-object p1, p0, Lcom/google/common/collect/fy;->a:Lcom/google/common/collect/gg;

    .line 3169
    return-void
.end method

.method public final setPreviousEvictable(Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter

    .prologue
    .line 3180
    iput-object p1, p0, Lcom/google/common/collect/fy;->b:Lcom/google/common/collect/gg;

    .line 3181
    return-void
.end method
