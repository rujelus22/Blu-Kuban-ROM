.class final Lcom/google/common/collect/fi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/fh;


# direct methods
.method constructor <init>(Lcom/google/common/collect/fh;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 790
    iput-object p1, p0, Lcom/google/common/collect/fi;->b:Lcom/google/common/collect/fh;

    iput-object p2, p0, Lcom/google/common/collect/fi;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/google/common/collect/fi;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 790
    iget-object v0, p0, Lcom/google/common/collect/fi;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/fj;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/fj;-><init>(Lcom/google/common/collect/fi;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/google/common/collect/fi;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 812
    return-void
.end method
