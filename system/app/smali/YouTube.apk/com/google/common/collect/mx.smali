.class final Lcom/google/common/collect/mx;
.super Lcom/google/common/collect/q;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/common/collect/mw;


# direct methods
.method constructor <init>(Lcom/google/common/collect/mw;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/common/collect/mx;->b:Lcom/google/common/collect/mw;

    iput-object p2, p0, Lcom/google/common/collect/mx;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/common/collect/mx;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/common/collect/mx;->b:Lcom/google/common/collect/mw;

    iget-object v0, v0, Lcom/google/common/collect/mw;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/mx;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/common/collect/mx;->b:Lcom/google/common/collect/mw;

    iget-object v0, v0, Lcom/google/common/collect/mw;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/mx;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
