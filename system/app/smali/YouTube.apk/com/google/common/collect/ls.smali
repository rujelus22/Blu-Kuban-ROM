.class abstract Lcom/google/common/collect/ls;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic c:Lcom/google/common/collect/StandardTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .registers 2
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/google/common/collect/ls;->c:Lcom/google/common/collect/StandardTable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/google/common/collect/ls;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/common/collect/ls;->c:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 258
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/common/collect/ls;->c:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method
