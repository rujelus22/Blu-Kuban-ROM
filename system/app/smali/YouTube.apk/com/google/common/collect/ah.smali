.class final Lcom/google/common/collect/ah;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method synthetic constructor <init>(Lcom/google/common/collect/AbstractMultimap;)V
    .registers 3
    .parameter

    .prologue
    .line 1129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ah;-><init>(Lcom/google/common/collect/AbstractMultimap;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/AbstractMultimap;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/google/common/collect/ah;->a:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/google/common/collect/ah;->a:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->clear()V

    .line 1141
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/google/common/collect/ah;->a:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/AbstractMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 1131
    new-instance v0, Lcom/google/common/collect/ag;

    iget-object v1, p0, Lcom/google/common/collect/ah;->a:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ag;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/google/common/collect/ah;->a:Lcom/google/common/collect/AbstractMultimap;

    #getter for: Lcom/google/common/collect/AbstractMultimap;->totalSize:I
    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$200(Lcom/google/common/collect/AbstractMultimap;)I

    move-result v0

    return v0
.end method
