.class abstract LK/ah;
.super Ljava/lang/Object;


# instance fields
.field b:I

.field c:I

.field d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field e:LK/am;

.field f:LK/aR;

.field g:LK/aR;

.field final synthetic h:LK/P;


# direct methods
.method constructor <init>(LK/P;)V
    .registers 3

    iput-object p1, p0, LK/ah;->h:LK/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, LK/P;->c:[LK/an;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LK/ah;->b:I

    const/4 v0, -0x1

    iput v0, p0, LK/ah;->c:I

    invoke-virtual {p0}, LK/ah;->b()V

    return-void
.end method


# virtual methods
.method a(LK/am;)Z
    .registers 6

    invoke-interface {p1}, LK/am;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, LK/am;->a()LK/aK;

    move-result-object v1

    invoke-interface {v1}, LK/aK;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_2b

    if-eqz v1, :cond_2b

    iget-object v2, p0, LK/ah;->h:LK/P;

    invoke-virtual {v2}, LK/P;->b()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, LK/ah;->h:LK/P;

    invoke-virtual {v2, p1}, LK/P;->b(LK/am;)Z

    move-result v2

    if-nez v2, :cond_2b

    :cond_20
    new-instance v2, LK/aR;

    iget-object v3, p0, LK/ah;->h:LK/P;

    invoke-direct {v2, v3, v0, v1}, LK/aR;-><init>(LK/P;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, LK/ah;->f:LK/aR;

    const/4 v0, 0x1

    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method final b()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, LK/ah;->f:LK/aR;

    invoke-virtual {p0}, LK/ah;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, LK/ah;->d()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_10
    iget v0, p0, LK/ah;->b:I

    if-ltz v0, :cond_9

    iget-object v0, p0, LK/ah;->h:LK/P;

    iget-object v0, v0, LK/P;->c:[LK/an;

    iget v1, p0, LK/ah;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, LK/ah;->b:I

    aget-object v0, v0, v1

    iget v1, v0, LK/an;->a:I

    if-eqz v1, :cond_10

    iget-object v0, v0, LK/an;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, LK/ah;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget-object v0, p0, LK/ah;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LK/ah;->c:I

    invoke-virtual {p0}, LK/ah;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_9
.end method

.method c()Z
    .registers 2

    iget-object v0, p0, LK/ah;->e:LK/am;

    if-eqz v0, :cond_23

    iget-object v0, p0, LK/ah;->e:LK/am;

    invoke-interface {v0}, LK/am;->b()LK/am;

    move-result-object v0

    iput-object v0, p0, LK/ah;->e:LK/am;

    :goto_c
    iget-object v0, p0, LK/ah;->e:LK/am;

    if-eqz v0, :cond_23

    iget-object v0, p0, LK/ah;->e:LK/am;

    invoke-virtual {p0, v0}, LK/ah;->a(LK/am;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    iget-object v0, p0, LK/ah;->e:LK/am;

    invoke-interface {v0}, LK/am;->b()LK/am;

    move-result-object v0

    iput-object v0, p0, LK/ah;->e:LK/am;

    goto :goto_c

    :cond_23
    const/4 v0, 0x0

    goto :goto_19
.end method

.method d()Z
    .registers 4

    :cond_0
    iget v0, p0, LK/ah;->c:I

    if-ltz v0, :cond_26

    iget-object v0, p0, LK/ah;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, LK/ah;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, LK/ah;->c:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/am;

    iput-object v0, p0, LK/ah;->e:LK/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, LK/ah;->e:LK/am;

    invoke-virtual {p0, v0}, LK/ah;->a(LK/am;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, LK/ah;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method e()LK/aR;
    .registers 2

    iget-object v0, p0, LK/ah;->f:LK/aR;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, LK/ah;->f:LK/aR;

    iput-object v0, p0, LK/ah;->g:LK/aR;

    invoke-virtual {p0}, LK/ah;->b()V

    iget-object v0, p0, LK/ah;->g:LK/aR;

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, LK/ah;->f:LK/aR;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public remove()V
    .registers 3

    iget-object v0, p0, LK/ah;->g:LK/aR;

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/v;->b(Z)V

    iget-object v0, p0, LK/ah;->h:LK/P;

    iget-object v1, p0, LK/ah;->g:LK/aR;

    invoke-virtual {v1}, LK/aR;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, LK/P;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, LK/ah;->g:LK/aR;

    return-void

    :cond_17
    const/4 v0, 0x0

    goto :goto_5
.end method
