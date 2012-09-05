.class LK/cy;
.super LK/cD;


# instance fields
.field a:Z

.field final synthetic b:I

.field final synthetic c:LK/cx;


# direct methods
.method constructor <init>(LK/cx;I)V
    .registers 4

    iput-object p1, p0, LK/cy;->c:LK/cx;

    iput p2, p0, LK/cy;->b:I

    invoke-direct {p0}, LK/cD;-><init>()V

    iget v0, p0, LK/cy;->b:I

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_c
    iput-boolean v0, p0, LK/cy;->a:Z

    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-boolean v0, p0, LK/cy;->a:Z

    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    iget-boolean v0, p0, LK/cy;->a:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    iget-boolean v0, p0, LK/cy;->a:Z

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, LK/cy;->a:Z

    iget-object v0, p0, LK/cy;->c:LK/cx;

    iget-object v0, v0, LK/cx;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public nextIndex()I
    .registers 2

    iget-boolean v0, p0, LK/cy;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public previous()Ljava/lang/Object;
    .registers 2

    iget-boolean v0, p0, LK/cy;->a:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, LK/cy;->a:Z

    iget-object v0, p0, LK/cy;->c:LK/cx;

    iget-object v0, v0, LK/cx;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public previousIndex()I
    .registers 2

    iget-boolean v0, p0, LK/cy;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
