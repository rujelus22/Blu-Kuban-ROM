.class LK/bU;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field a:Z

.field b:Z

.field final synthetic c:Ljava/util/ListIterator;

.field final synthetic d:LK/bT;


# direct methods
.method constructor <init>(LK/bT;Ljava/util/ListIterator;)V
    .registers 3

    iput-object p1, p0, LK/bU;->d:LK/bT;

    iput-object p2, p0, LK/bU;->c:Ljava/util/ListIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, LK/bU;->c:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object v0, p0, LK/bU;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, LK/bU;->a:Z

    iput-boolean v0, p0, LK/bU;->b:Z

    return-void
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, LK/bU;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    iget-object v0, p0, LK/bU;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LK/bU;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, LK/bU;->a:Z

    iput-boolean v0, p0, LK/bU;->b:Z

    iget-object v0, p0, LK/bU;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .registers 3

    iget-object v0, p0, LK/bU;->d:LK/bT;

    iget-object v1, p0, LK/bU;->c:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    invoke-static {v0, v1}, LK/bT;->a(LK/bT;I)I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LK/bU;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, LK/bU;->a:Z

    iput-boolean v0, p0, LK/bU;->b:Z

    iget-object v0, p0, LK/bU;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .registers 2

    invoke-virtual {p0}, LK/bU;->nextIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .registers 2

    iget-boolean v0, p0, LK/bU;->a:Z

    invoke-static {v0}, Lcom/google/common/base/v;->b(Z)V

    iget-object v0, p0, LK/bU;->c:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LK/bU;->b:Z

    iput-boolean v0, p0, LK/bU;->a:Z

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3

    iget-boolean v0, p0, LK/bU;->b:Z

    invoke-static {v0}, Lcom/google/common/base/v;->b(Z)V

    iget-object v0, p0, LK/bU;->c:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
