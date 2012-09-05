.class public Le/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Le/b;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Le/d;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Le/d;->a:Le/b;

    return-void
.end method

.method public static a(Le/b;J)LW/a;
    .registers 7

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Le/b;->k()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v1, LW/a;

    sget-object v0, Lk/a;->ag:LW/d;

    invoke-direct {v1, v0}, LW/a;-><init>(LW/d;)V

    const/4 v0, 0x2

    invoke-virtual {p0}, Le/b;->h()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-virtual {v1, v0, v2, v3}, LW/a;->b(IJ)V

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Le/b;->a(J)LW/a;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, LW/a;->b(ILW/a;)V

    invoke-virtual {p0}, Le/b;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c;

    const/4 v3, 0x3

    invoke-virtual {v0, p0}, Le/c;->a(Le/b;)LW/a;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, LW/a;->a(ILW/a;)V

    goto :goto_2e

    :cond_43
    move-object v0, v1

    goto :goto_9
.end method

.method public static a(Le/d;)LW/a;
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Le/d;->b()Le/b;

    move-result-object v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p0}, Le/d;->b()Le/b;

    move-result-object v0

    invoke-virtual {v0}, Le/b;->m()LW/a;

    move-result-object v0

    goto :goto_9
.end method


# virtual methods
.method public a()Le/d;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Le/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/d;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Le/d;->a:Le/b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Le/d;->a:Le/b;

    invoke-virtual {v0, p1}, Le/b;->a(I)V

    :cond_9
    return-void
.end method

.method public a(LW/a;J)V
    .registers 11

    iget-object v0, p0, Le/d;->a:Le/b;

    invoke-static {v0, p2, p3}, Le/d;->a(Le/b;J)LW/a;

    move-result-object v1

    if-eqz v1, :cond_37

    const/4 v0, 0x5

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, LW/a;->g(II)V

    iget-object v0, p0, Le/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b;

    iget-object v3, p0, Le/d;->a:Le/b;

    invoke-virtual {v3}, Le/b;->h()J

    move-result-wide v3

    invoke-virtual {v0}, Le/b;->h()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Le/b;->a(J)LW/a;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v0}, LW/a;->a(ILW/a;)V

    goto :goto_13

    :cond_33
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, LW/a;->b(ILW/a;)V

    :cond_37
    return-void
.end method

.method public a(Le/b;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Le/d;->a:Le/b;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Le/d;->a:Le/b;

    invoke-virtual {v0}, Le/b;->k()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Le/d;->a:Le/b;

    invoke-virtual {v0, p1}, Le/b;->a(Le/b;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Le/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_26

    iget-object v0, p0, Le/d;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_26
    iget-object v0, p0, Le/d;->b:Ljava/util/List;

    iget-object v1, p0, Le/d;->a:Le/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    iput-object p1, p0, Le/d;->a:Le/b;

    goto :goto_2
.end method

.method public b()Le/b;
    .registers 2

    iget-object v0, p0, Le/d;->a:Le/b;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Le/d;->b:Ljava/util/List;

    return-object v0
.end method

.method protected clone()Ljava/lang/Object;
    .registers 4

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/d;

    iget-object v1, p0, Le/d;->a:Le/b;

    if-eqz v1, :cond_12

    iget-object v1, p0, Le/d;->a:Le/b;

    invoke-virtual {v1}, Le/b;->a()Le/b;

    move-result-object v1

    iput-object v1, v0, Le/d;->a:Le/b;

    :cond_12
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Le/d;->b:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Le/d;->b:Ljava/util/List;

    return-object v0
.end method
