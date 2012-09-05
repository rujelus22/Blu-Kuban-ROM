.class final Lcom/google/common/collect/ap;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ao;


# direct methods
.method synthetic constructor <init>(Lcom/google/common/collect/ao;)V
    .registers 3
    .parameter

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ap;-><init>(Lcom/google/common/collect/ao;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/ao;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/common/collect/ap;->a:Lcom/google/common/collect/ao;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/common/collect/ap;->a:Lcom/google/common/collect/ao;

    invoke-virtual {v0}, Lcom/google/common/collect/ao;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 227
    new-instance v1, Lcom/google/common/collect/aq;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/aq;-><init>(Lcom/google/common/collect/ap;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/common/collect/ap;->a:Lcom/google/common/collect/ao;

    invoke-virtual {v0}, Lcom/google/common/collect/ao;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
