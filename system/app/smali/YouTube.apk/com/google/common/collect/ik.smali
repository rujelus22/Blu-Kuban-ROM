.class final Lcom/google/common/collect/ik;
.super Lcom/google/common/collect/cw;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/ij;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ij;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 974
    iput-object p1, p0, Lcom/google/common/collect/ik;->b:Lcom/google/common/collect/ij;

    iput-object p2, p0, Lcom/google/common/collect/ik;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/cw;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 976
    iget-object v0, p0, Lcom/google/common/collect/ik;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 974
    iget-object v0, p0, Lcom/google/common/collect/ik;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 974
    iget-object v0, p0, Lcom/google/common/collect/ik;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lcom/google/common/collect/Multimaps;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
