.class LK/D;
.super LK/B;

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic d:LK/C;


# direct methods
.method constructor <init>(LK/C;)V
    .registers 2

    iput-object p1, p0, LK/D;->d:LK/C;

    invoke-direct {p0, p1}, LK/B;-><init>(LK/A;)V

    return-void
.end method

.method public constructor <init>(LK/C;I)V
    .registers 4

    iput-object p1, p0, LK/D;->d:LK/C;

    invoke-virtual {p1}, LK/C;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, LK/B;-><init>(LK/A;Ljava/util/Iterator;)V

    return-void
.end method

.method private c()Ljava/util/ListIterator;
    .registers 2

    invoke-virtual {p0}, LK/D;->b()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, LK/D;->d:LK/C;

    invoke-virtual {v0}, LK/C;->isEmpty()Z

    move-result v0

    invoke-direct {p0}, LK/D;->c()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object v1, p0, LK/D;->d:LK/C;

    iget-object v1, v1, LK/C;->g:LK/r;

    invoke-static {v1}, LK/r;->c(LK/r;)I

    if-eqz v0, :cond_1b

    iget-object v0, p0, LK/D;->d:LK/C;

    invoke-virtual {v0}, LK/C;->d()V

    :cond_1b
    return-void
.end method

.method public hasPrevious()Z
    .registers 2

    invoke-direct {p0}, LK/D;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .registers 2

    invoke-direct {p0}, LK/D;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, LK/D;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .registers 2

    invoke-direct {p0}, LK/D;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, LK/D;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
