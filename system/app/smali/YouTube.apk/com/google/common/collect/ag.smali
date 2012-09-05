.class final Lcom/google/common/collect/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method synthetic constructor <init>(Lcom/google/common/collect/AbstractMultimap;)V
    .registers 3
    .parameter

    .prologue
    .line 1149
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ag;-><init>(Lcom/google/common/collect/AbstractMultimap;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/AbstractMultimap;B)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/google/common/collect/ag;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1150
    iget-object v0, p0, Lcom/google/common/collect/ag;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->createEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ag;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/google/common/collect/ag;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/google/common/collect/ag;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/google/common/collect/ag;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1160
    return-void
.end method
