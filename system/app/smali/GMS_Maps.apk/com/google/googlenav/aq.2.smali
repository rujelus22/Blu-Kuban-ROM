.class public Lcom/google/googlenav/aq;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/googlenav/ah;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ah;Lam/b;)V
    .registers 8

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    if-eqz v0, :cond_6d

    invoke-virtual {v0, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/aq;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aq;->c:Ljava/lang/String;

    :goto_19
    invoke-virtual {p2, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aq;->d:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aq;->i:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aq;->e:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aq;->f:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aq;->g:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aq;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/googlenav/aq;->a:Lcom/google/googlenav/ah;

    const/16 v1, 0x9

    invoke-virtual {p2, v1}, Lam/b;->l(I)I

    move-result v0

    if-lez v0, :cond_72

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/aq;->j:Ljava/util/List;

    const/4 v0, 0x0

    :goto_56
    invoke-virtual {p2, v1}, Lam/b;->l(I)I

    move-result v2

    if-ge v0, v2, :cond_72

    invoke-virtual {p2, v1, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/aq;->j:Ljava/util/List;

    new-instance v4, Lcom/google/googlenav/ar;

    invoke-direct {v4, v2}, Lcom/google/googlenav/ar;-><init>(Lam/b;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    :cond_6d
    iput-object v1, p0, Lcom/google/googlenav/aq;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/googlenav/aq;->c:Ljava/lang/String;

    goto :goto_19

    :cond_72
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/aq;->d:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/aq;->i:Ljava/lang/String;

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_18

    iget-object v3, p0, Lcom/google/googlenav/aq;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    if-nez v0, :cond_21

    if-nez v1, :cond_21

    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    if-nez v1, :cond_28

    iget-object v0, p0, Lcom/google/googlenav/aq;->i:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/aq;->h:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/aq;->h:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/aq;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :cond_1f
    iget-object v1, p0, Lcom/google/googlenav/aq;->d:Ljava/lang/String;

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    if-nez v0, :cond_2e

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    iget-object v0, p0, Lcom/google/googlenav/aq;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public c()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/aq;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/aq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/aq;->g:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/aq;->g:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/googlenav/aq;->f:Ljava/lang/String;

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v0, p0, Lcom/google/googlenav/aq;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :cond_1f
    iget-object v2, p0, Lcom/google/googlenav/aq;->e:Ljava/lang/String;

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33

    if-nez v0, :cond_2e

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    iget-object v0, p0, Lcom/google/googlenav/aq;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aq;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aq;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/google/googlenav/ah;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aq;->a:Lcom/google/googlenav/ah;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aq;->j:Ljava/util/List;

    return-object v0
.end method
