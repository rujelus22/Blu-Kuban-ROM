.class final Lcom/google/api/client/util/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lcom/google/api/client/util/p;

.field private b:Z

.field private final c:Ljava/util/Iterator;

.field private final d:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/p;Lcom/google/api/client/util/n;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/api/client/util/q;->a:Lcom/google/api/client/util/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    invoke-virtual {p2}, Lcom/google/api/client/util/n;->a()Lcom/google/api/client/util/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/q;->c:Ljava/util/Iterator;

    .line 202
    iget-object v0, p1, Lcom/google/api/client/util/p;->f:Lcom/google/api/client/util/a;

    invoke-virtual {v0}, Lcom/google/api/client/util/a;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/q;->d:Ljava/util/Iterator;

    .line 203
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/api/client/util/q;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/api/client/util/q;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/google/api/client/util/q;->b:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/api/client/util/q;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/api/client/util/q;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/util/q;->b:Z

    :cond_18
    iget-object v0, p0, Lcom/google/api/client/util/q;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_14
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/google/api/client/util/q;->b:Z

    if-eqz v0, :cond_9

    .line 221
    iget-object v0, p0, Lcom/google/api/client/util/q;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 223
    :cond_9
    iget-object v0, p0, Lcom/google/api/client/util/q;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 224
    return-void
.end method
