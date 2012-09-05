.class public Lc/t;
.super Ljava/lang/Object;

# interfaces
.implements Le/w;


# instance fields
.field final a:Lc/u;

.field private final b:Le/w;

.field private final c:Le/w;

.field private final d:Lc/s;


# direct methods
.method public constructor <init>(ILe/w;Le/w;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc/t;->b:Le/w;

    iput-object p3, p0, Lc/t;->c:Le/w;

    new-instance v0, Lc/s;

    invoke-direct {v0}, Lc/s;-><init>()V

    iput-object v0, p0, Lc/t;->d:Lc/s;

    new-instance v0, Lc/u;

    iget-object v1, p0, Lc/t;->d:Lc/s;

    invoke-direct {v0, p1, v1}, Lc/u;-><init>(ILc/s;)V

    iput-object v0, p0, Lc/t;->a:Lc/u;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lc/b;
    .registers 5

    iget-object v0, p0, Lc/t;->a:Lc/u;

    invoke-virtual {v0, p1}, Lc/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b;

    iget-object v2, p0, Lc/t;->d:Lc/s;

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    :goto_d
    invoke-virtual {v2, v1}, Lc/s;->a(Z)V

    return-object v0

    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public a(Ljava/lang/Object;J)Lc/b;
    .registers 7

    iget-object v0, p0, Lc/t;->a:Lc/u;

    invoke-virtual {v0, p1}, Lc/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p2, p3}, Lc/b;->a(J)V

    :cond_d
    iget-object v2, p0, Lc/t;->d:Lc/s;

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    :goto_12
    invoke-virtual {v2, v1}, Lc/s;->a(Z)V

    return-object v0

    :cond_16
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public a(Ljava/io/DataInput;)Lc/t;
    .registers 7

    :try_start_0
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-virtual {p0}, Lc/t;->b()V

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, v2, :cond_27

    iget-object v0, p0, Lc/t;->b:Le/w;

    invoke-interface {v0, p1}, Le/w;->b(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v3

    iget-object v0, p0, Lc/t;->c:Le/w;

    invoke-interface {v0, p1}, Le/w;->b(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b;

    iget-object v4, p0, Lc/t;->a:Lc/u;

    invoke-virtual {v4, v3, v0}, Lc/u;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_22

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :catch_22
    move-exception v0

    invoke-virtual {p0}, Lc/t;->b()V

    throw v0

    :cond_27
    return-object p0
.end method

.method a()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lc/t;->a:Lc/u;

    invoke-virtual {v0}, Lc/u;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(JJ)V
    .registers 9

    iget-object v0, p0, Lc/t;->a:Lc/u;

    invoke-virtual {v0}, Lc/u;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b;

    invoke-virtual {v0}, Lc/b;->b()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-gez v2, :cond_2d

    iget-object v0, p0, Lc/t;->d:Lc/s;

    invoke-virtual {v0}, Lc/s;->b()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_2d
    invoke-virtual {v0}, Lc/b;->a()J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-gez v0, :cond_a

    iget-object v0, p0, Lc/t;->d:Lc/s;

    invoke-virtual {v0}, Lc/s;->b()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_3e
    return-void
.end method

.method public a(Lc/t;Ljava/io/DataOutput;)V
    .registers 7

    iget-object v0, p1, Lc/t;->a:Lc/u;

    invoke-virtual {v0}, Lc/u;->size()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p1, Lc/t;->a:Lc/u;

    invoke-virtual {v0}, Lc/u;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lc/t;->b:Le/w;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Le/w;->a(Ljava/lang/Object;Ljava/io/DataOutput;)V

    iget-object v2, p0, Lc/t;->c:Le/w;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0, p2}, Le/w;->a(Ljava/lang/Object;Ljava/io/DataOutput;)V

    goto :goto_13

    :cond_32
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .registers 3

    check-cast p1, Lc/t;

    invoke-virtual {p0, p1, p2}, Lc/t;->a(Lc/t;Ljava/io/DataOutput;)V

    return-void
.end method

.method public a(ZLjava/lang/Object;ILjava/lang/Object;J)V
    .registers 9

    iget-object v0, p0, Lc/t;->a:Lc/u;

    invoke-virtual {v0, p2}, Lc/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b;

    if-nez v0, :cond_1c

    if-eqz p1, :cond_1b

    new-instance v0, Lc/b;

    invoke-direct {v0, p3, p4, p5, p6}, Lc/b;-><init>(ILjava/lang/Object;J)V

    iget-object v1, p0, Lc/t;->a:Lc/u;

    invoke-virtual {v1, p2, v0}, Lc/u;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc/t;->d:Lc/s;

    invoke-virtual {v0}, Lc/s;->c()V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    invoke-virtual {v0, p3, p4, p5, p6}, Lc/b;->a(ILjava/lang/Object;J)V

    goto :goto_1b
.end method

.method public synthetic b(Ljava/io/DataInput;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lc/t;->a(Ljava/io/DataInput;)Lc/t;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lc/t;->a:Lc/u;

    invoke-virtual {v0}, Lc/u;->clear()V

    return-void
.end method

.method public c()LW/a;
    .registers 4

    iget-object v0, p0, Lc/t;->d:Lc/s;

    iget-object v1, p0, Lc/t;->a:Lc/u;

    iget v1, v1, Lc/u;->a:I

    iget-object v2, p0, Lc/t;->a:Lc/u;

    invoke-virtual {v2}, Lc/u;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lc/s;->a(II)LW/a;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lc/t;->a:Lc/u;

    invoke-virtual {v0}, Lc/u;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
