.class final Lcom/google/api/client/util/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lcom/google/api/client/util/j;

.field private b:I

.field private c:Lcom/google/api/client/util/n;

.field private d:Ljava/lang/Object;

.field private e:Z

.field private f:Z

.field private g:Lcom/google/api/client/util/n;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/j;)V
    .registers 3
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/api/client/util/l;->a:Lcom/google/api/client/util/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/api/client/util/l;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 152
    iget-boolean v0, p0, Lcom/google/api/client/util/l;->f:Z

    if-nez v0, :cond_45

    .line 153
    iput-boolean v1, p0, Lcom/google/api/client/util/l;->f:Z

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/util/l;->d:Ljava/lang/Object;

    .line 155
    :goto_a
    iget-object v0, p0, Lcom/google/api/client/util/l;->d:Ljava/lang/Object;

    if-nez v0, :cond_45

    iget v0, p0, Lcom/google/api/client/util/l;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/api/client/util/l;->b:I

    iget-object v2, p0, Lcom/google/api/client/util/l;->a:Lcom/google/api/client/util/j;

    iget-object v2, v2, Lcom/google/api/client/util/j;->b:Lcom/google/api/client/util/g;

    iget-object v2, v2, Lcom/google/api/client/util/g;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_45

    .line 156
    iget-object v0, p0, Lcom/google/api/client/util/l;->a:Lcom/google/api/client/util/j;

    iget-object v2, v0, Lcom/google/api/client/util/j;->b:Lcom/google/api/client/util/g;

    iget-object v0, p0, Lcom/google/api/client/util/l;->a:Lcom/google/api/client/util/j;

    iget-object v0, v0, Lcom/google/api/client/util/j;->b:Lcom/google/api/client/util/g;

    iget-object v0, v0, Lcom/google/api/client/util/g;->a:Ljava/util/List;

    iget v3, p0, Lcom/google/api/client/util/l;->b:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/api/client/util/g;->a(Ljava/lang/String;)Lcom/google/api/client/util/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/l;->c:Lcom/google/api/client/util/n;

    .line 157
    iget-object v0, p0, Lcom/google/api/client/util/l;->c:Lcom/google/api/client/util/n;

    iget-object v2, p0, Lcom/google/api/client/util/l;->a:Lcom/google/api/client/util/j;

    iget-object v2, v2, Lcom/google/api/client/util/j;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/google/api/client/util/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/l;->d:Ljava/lang/Object;

    goto :goto_a

    .line 160
    :cond_45
    iget-object v0, p0, Lcom/google/api/client/util/l;->d:Ljava/lang/Object;

    if-eqz v0, :cond_4b

    move v0, v1

    :goto_4a
    return v0

    :cond_4b
    const/4 v0, 0x0

    goto :goto_4a
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/google/api/client/util/l;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/google/api/client/util/l;->c:Lcom/google/api/client/util/n;

    iput-object v0, p0, Lcom/google/api/client/util/l;->g:Lcom/google/api/client/util/n;

    iget-object v0, p0, Lcom/google/api/client/util/l;->d:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/api/client/util/l;->f:Z

    iput-boolean v1, p0, Lcom/google/api/client/util/l;->e:Z

    iput-object v2, p0, Lcom/google/api/client/util/l;->c:Lcom/google/api/client/util/n;

    iput-object v2, p0, Lcom/google/api/client/util/l;->d:Ljava/lang/Object;

    new-instance v1, Lcom/google/api/client/util/k;

    iget-object v2, p0, Lcom/google/api/client/util/l;->a:Lcom/google/api/client/util/j;

    iget-object v3, p0, Lcom/google/api/client/util/l;->g:Lcom/google/api/client/util/n;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/api/client/util/k;-><init>(Lcom/google/api/client/util/j;Lcom/google/api/client/util/n;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final remove()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 177
    iget-object v0, p0, Lcom/google/api/client/util/l;->g:Lcom/google/api/client/util/n;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/api/client/util/l;->e:Z

    if-nez v0, :cond_1a

    move v0, v1

    :goto_a
    invoke-static {v0}, Lcom/google/common/base/ag;->b(Z)V

    .line 178
    iput-boolean v1, p0, Lcom/google/api/client/util/l;->e:Z

    .line 179
    iget-object v0, p0, Lcom/google/api/client/util/l;->g:Lcom/google/api/client/util/n;

    iget-object v1, p0, Lcom/google/api/client/util/l;->a:Lcom/google/api/client/util/j;

    iget-object v1, v1, Lcom/google/api/client/util/j;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/util/n;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    return-void

    .line 177
    :cond_1a
    const/4 v0, 0x0

    goto :goto_a
.end method
