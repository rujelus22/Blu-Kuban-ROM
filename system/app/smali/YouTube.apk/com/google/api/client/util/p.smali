.class final Lcom/google/api/client/util/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lcom/google/api/client/util/o;

.field private b:Z

.field private final c:Ljava/util/Iterator;

.field private final d:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/o;Lcom/google/api/client/util/m;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/google/api/client/util/p;->a:Lcom/google/api/client/util/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-virtual {p2}, Lcom/google/api/client/util/m;->a()Lcom/google/api/client/util/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/p;->c:Ljava/util/Iterator;

    .line 196
    iget-object v0, p1, Lcom/google/api/client/util/o;->unknownFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/p;->d:Ljava/util/Iterator;

    .line 197
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/api/client/util/p;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/api/client/util/p;->d:Ljava/util/Iterator;

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
    .line 183
    iget-boolean v0, p0, Lcom/google/api/client/util/p;->b:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/api/client/util/p;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/api/client/util/p;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/util/p;->b:Z

    :cond_18
    iget-object v0, p0, Lcom/google/api/client/util/p;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_14
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/google/api/client/util/p;->b:Z

    if-eqz v0, :cond_9

    .line 215
    iget-object v0, p0, Lcom/google/api/client/util/p;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 217
    :cond_9
    iget-object v0, p0, Lcom/google/api/client/util/p;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 218
    return-void
.end method
