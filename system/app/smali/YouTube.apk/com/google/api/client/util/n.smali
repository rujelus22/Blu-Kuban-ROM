.class final Lcom/google/api/client/util/n;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/api/client/util/k;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/k;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/api/client/util/n;->a:Lcom/google/api/client/util/k;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/api/client/util/m;
    .registers 3

    .prologue
    .line 86
    new-instance v0, Lcom/google/api/client/util/m;

    iget-object v1, p0, Lcom/google/api/client/util/n;->a:Lcom/google/api/client/util/k;

    invoke-direct {v0, v1}, Lcom/google/api/client/util/m;-><init>(Lcom/google/api/client/util/k;)V

    return-object v0
.end method

.method public final clear()V
    .registers 5

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/api/client/util/n;->a:Lcom/google/api/client/util/k;

    iget-object v0, v0, Lcom/google/api/client/util/k;->b:Lcom/google/api/client/util/h;

    iget-object v0, v0, Lcom/google/api/client/util/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    iget-object v2, p0, Lcom/google/api/client/util/n;->a:Lcom/google/api/client/util/k;

    iget-object v2, v2, Lcom/google/api/client/util/k;->b:Lcom/google/api/client/util/h;

    invoke-virtual {v2, v0}, Lcom/google/api/client/util/h;->a(Ljava/lang/String;)Lcom/google/api/client/util/o;

    move-result-object v0

    iget-object v2, p0, Lcom/google/api/client/util/n;->a:Lcom/google/api/client/util/k;

    iget-object v2, v2, Lcom/google/api/client/util/k;->a:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/api/client/util/o;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    .line 105
    :cond_27
    return-void
.end method

.method public final isEmpty()Z
    .registers 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/api/client/util/n;->a:Lcom/google/api/client/util/k;

    iget-object v0, v0, Lcom/google/api/client/util/k;->b:Lcom/google/api/client/util/h;

    iget-object v0, v0, Lcom/google/api/client/util/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    iget-object v2, p0, Lcom/google/api/client/util/n;->a:Lcom/google/api/client/util/k;

    iget-object v2, v2, Lcom/google/api/client/util/k;->b:Lcom/google/api/client/util/h;

    invoke-virtual {v2, v0}, Lcom/google/api/client/util/h;->a(Ljava/lang/String;)Lcom/google/api/client/util/o;

    move-result-object v0

    iget-object v2, p0, Lcom/google/api/client/util/n;->a:Lcom/google/api/client/util/k;

    iget-object v2, v2, Lcom/google/api/client/util/k;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/google/api/client/util/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 111
    const/4 v0, 0x0

    .line 114
    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x1

    goto :goto_29
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/api/client/util/n;->a()Lcom/google/api/client/util/m;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 5

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 92
    iget-object v1, p0, Lcom/google/api/client/util/n;->a:Lcom/google/api/client/util/k;

    iget-object v1, v1, Lcom/google/api/client/util/k;->b:Lcom/google/api/client/util/h;

    iget-object v1, v1, Lcom/google/api/client/util/h;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    iget-object v3, p0, Lcom/google/api/client/util/n;->a:Lcom/google/api/client/util/k;

    iget-object v3, v3, Lcom/google/api/client/util/k;->b:Lcom/google/api/client/util/h;

    invoke-virtual {v3, v0}, Lcom/google/api/client/util/h;->a(Ljava/lang/String;)Lcom/google/api/client/util/o;

    move-result-object v0

    iget-object v3, p0, Lcom/google/api/client/util/n;->a:Lcom/google/api/client/util/k;

    iget-object v3, v3, Lcom/google/api/client/util/k;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/google/api/client/util/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 94
    add-int/lit8 v0, v1, 0x1

    :goto_2c
    move v1, v0

    goto :goto_c

    .line 97
    :cond_2e
    return v1

    :cond_2f
    move v0, v1

    goto :goto_2c
.end method
