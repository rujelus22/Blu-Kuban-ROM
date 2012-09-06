.class final Lcom/google/common/collect/ie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:I

.field final synthetic b:Lcom/google/common/collect/id;


# direct methods
.method constructor <init>(Lcom/google/common/collect/id;)V
    .registers 2
    .parameter

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/google/common/collect/ie;->b:Lcom/google/common/collect/id;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    .prologue
    .line 1070
    iget v0, p0, Lcom/google/common/collect/ie;->a:I

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/common/collect/ie;->b:Lcom/google/common/collect/id;

    iget-object v0, v0, Lcom/google/common/collect/id;->b:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/ie;->b:Lcom/google/common/collect/id;

    iget-object v1, v1, Lcom/google/common/collect/id;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1075
    invoke-virtual {p0}, Lcom/google/common/collect/ie;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1076
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1078
    :cond_c
    iget v0, p0, Lcom/google/common/collect/ie;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/ie;->a:I

    .line 1079
    iget-object v0, p0, Lcom/google/common/collect/ie;->b:Lcom/google/common/collect/id;

    iget-object v0, v0, Lcom/google/common/collect/id;->b:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/ie;->b:Lcom/google/common/collect/id;

    iget-object v1, v1, Lcom/google/common/collect/id;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1084
    iget v1, p0, Lcom/google/common/collect/ie;->a:I

    if-ne v1, v0, :cond_19

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/ag;->b(Z)V

    .line 1085
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/ie;->a:I

    .line 1086
    iget-object v0, p0, Lcom/google/common/collect/ie;->b:Lcom/google/common/collect/id;

    iget-object v0, v0, Lcom/google/common/collect/id;->b:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/ie;->b:Lcom/google/common/collect/id;

    iget-object v1, v1, Lcom/google/common/collect/id;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    return-void

    .line 1084
    :cond_19
    const/4 v0, 0x0

    goto :goto_5
.end method
