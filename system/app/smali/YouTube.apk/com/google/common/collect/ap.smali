.class final Lcom/google/common/collect/ap;
.super Lcom/google/common/collect/ki;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/an;


# direct methods
.method constructor <init>(Lcom/google/common/collect/an;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/common/collect/ap;->a:Lcom/google/common/collect/an;

    invoke-direct {p0}, Lcom/google/common/collect/ki;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/common/collect/kg;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/common/collect/ap;->a:Lcom/google/common/collect/an;

    return-object v0
.end method

.method final b()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/common/collect/ap;->a:Lcom/google/common/collect/an;

    invoke-virtual {v0}, Lcom/google/common/collect/an;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/common/collect/ap;->a:Lcom/google/common/collect/an;

    invoke-virtual {v0}, Lcom/google/common/collect/an;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
