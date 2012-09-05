.class final Lcom/google/common/collect/cx;
.super Lcom/google/common/collect/gf;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/common/collect/cx;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/gf;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/common/collect/cx;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/common/collect/cx;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
