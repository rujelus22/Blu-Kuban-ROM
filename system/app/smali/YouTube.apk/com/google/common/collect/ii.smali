.class final Lcom/google/common/collect/ii;
.super Lcom/google/common/collect/q;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/common/collect/ih;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ih;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1211
    iput-object p1, p0, Lcom/google/common/collect/ii;->b:Lcom/google/common/collect/ih;

    iput-object p2, p0, Lcom/google/common/collect/ii;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/google/common/collect/ii;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final synthetic getValue()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/google/common/collect/ii;->b:Lcom/google/common/collect/ih;

    iget-object v0, v0, Lcom/google/common/collect/ih;->b:Lcom/google/common/collect/ig;

    iget-object v0, v0, Lcom/google/common/collect/ig;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v1, p0, Lcom/google/common/collect/ii;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Multimaps$MapMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
