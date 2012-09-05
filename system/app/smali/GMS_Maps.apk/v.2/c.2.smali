.class public Lv/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/LinkedList;)V
    .registers 3

    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/p;

    invoke-virtual {v0}, Lv/p;->a()I

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Lv/p;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_16
    return-void
.end method

.method static a(Ljava/util/List;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/p;

    move-object v1, v0

    :goto_13
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/p;

    :goto_1f
    move-object v2, v1

    move-object v1, v0

    :goto_21
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/p;

    invoke-virtual {v0}, Lv/p;->a()I

    move-result v4

    if-nez v4, :cond_7e

    invoke-virtual {v1}, Lv/p;->a()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7e

    invoke-virtual {v2}, Lv/p;->a()I

    move-result v4

    if-ne v4, v6, :cond_7e

    invoke-virtual {v2}, Lv/p;->b()I

    move-result v4

    invoke-static {v2, v4}, Lv/c;->a(Lv/p;I)Z

    move-result v4

    if-eqz v4, :cond_7e

    const-string v4, ""

    invoke-virtual {v1, v4}, Lv/p;->a(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    invoke-virtual {v0}, Lv/p;->b()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_6a

    invoke-virtual {v0}, Lv/p;->b()I

    move-result v0

    const/16 v4, 0xa

    if-eq v0, v4, :cond_6a

    invoke-virtual {v1}, Lv/p;->b()I

    move-result v0

    const/16 v4, 0xc

    if-ne v0, v4, :cond_79

    :cond_6a
    invoke-virtual {v1}, Lv/p;->b()I

    move-result v0

    const/4 v4, 0x7

    if-eq v0, v4, :cond_79

    invoke-virtual {v1}, Lv/p;->b()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_86

    :cond_79
    invoke-virtual {v2, v6}, Lv/p;->a(Z)V

    move-object v0, v1

    move-object v1, v2

    :cond_7e
    :goto_7e
    move-object v2, v1

    move-object v1, v0

    goto :goto_21

    :cond_81
    move-object v1, v2

    goto :goto_13

    :cond_83
    move-object v0, v2

    goto :goto_1f

    :cond_85
    return-void

    :cond_86
    move-object v0, v1

    move-object v1, v2

    goto :goto_7e
.end method

.method static a(Lv/q;Ljava/util/List;)V
    .registers 15

    const/16 v10, 0x64

    const/4 v1, 0x0

    move v3, v1

    :goto_4
    invoke-virtual {p0}, Lv/q;->a()I

    move-result v0

    if-ge v3, v0, :cond_37

    new-instance v0, Lv/p;

    const/16 v5, 0x1e

    const/16 v6, 0xc8

    move-object v2, p0

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lv/p;-><init>(ILv/q;IIII)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lv/p;

    const/4 v5, 0x1

    const/16 v9, 0xa

    move-object v6, p0

    move v7, v3

    move v8, v1

    invoke-direct/range {v4 .. v10}, Lv/p;-><init>(ILv/q;IIII)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lv/p;

    const/4 v7, 0x2

    const/16 v12, 0x63

    move-object v8, p0

    move v9, v3

    move v11, v1

    invoke-direct/range {v6 .. v12}, Lv/p;-><init>(ILv/q;IIII)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_37
    return-void
.end method

.method private static a(Lv/p;I)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lv/p;->e()Lu/I;

    move-result-object v2

    if-nez v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    if-ne p1, v1, :cond_1d

    invoke-virtual {v2}, Lu/I;->f()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_1b

    invoke-virtual {v2}, Lu/I;->e()I

    move-result v2

    const/16 v3, 0x64

    if-gt v2, v3, :cond_8

    :cond_1b
    move v0, v1

    goto :goto_8

    :cond_1d
    invoke-virtual {v2}, Lu/I;->f()I

    move-result v3

    const/16 v4, 0x1e

    if-le v3, v4, :cond_2d

    invoke-virtual {v2}, Lu/I;->e()I

    move-result v2

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_8

    :cond_2d
    move v0, v1

    goto :goto_8
.end method

.method static b(Lv/q;)Ljava/util/List;
    .registers 2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p0, v0}, Lv/c;->a(Lv/q;Ljava/util/List;)V

    invoke-static {v0}, Lv/c;->a(Ljava/util/LinkedList;)V

    invoke-static {v0}, Lv/c;->b(Ljava/util/LinkedList;)V

    invoke-static {v0}, Lv/c;->a(Ljava/util/List;)V

    invoke-static {v0}, Lv/c;->b(Ljava/util/List;)V

    invoke-static {v0}, Lv/c;->c(Ljava/util/List;)V

    invoke-static {v0}, Lv/c;->d(Ljava/util/List;)V

    return-object v0
.end method

.method static b(Ljava/util/LinkedList;)V
    .registers 5

    const/16 v3, 0x10

    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/p;

    invoke-virtual {v0}, Lv/p;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_34

    invoke-virtual {v0}, Lv/p;->b()I

    move-result v0

    if-ne v0, v3, :cond_34

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/p;

    invoke-virtual {v0}, Lv/p;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_34

    invoke-virtual {v0}, Lv/p;->b()I

    move-result v1

    if-ne v1, v3, :cond_34

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lv/p;->b(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lv/p;->a(I)V

    :cond_34
    return-void
.end method

.method static b(Ljava/util/List;)V
    .registers 6

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/p;

    :goto_10
    move-object v1, v0

    :goto_11
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/p;

    invoke-virtual {v0}, Lv/p;->a()I

    move-result v3

    if-nez v3, :cond_48

    invoke-virtual {v1}, Lv/p;->a()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_48

    invoke-virtual {v0}, Lv/p;->d()Lu/I;

    move-result-object v3

    invoke-virtual {v3}, Lu/I;->e()I

    move-result v3

    const/16 v4, 0x320

    if-ge v3, v4, :cond_48

    invoke-virtual {v0}, Lv/p;->d()Lu/I;

    move-result-object v3

    invoke-virtual {v3}, Lu/I;->e()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lv/p;->b(I)V

    const-string v3, ""

    invoke-virtual {v1, v3}, Lv/p;->a(Ljava/lang/String;)V

    :cond_48
    move-object v1, v0

    goto :goto_11

    :cond_4a
    const/4 v0, 0x0

    goto :goto_10

    :cond_4c
    return-void
.end method

.method static c(Ljava/util/List;)V
    .registers 5

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/p;

    invoke-virtual {v0}, Lv/p;->a()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    invoke-virtual {v0}, Lv/p;->c()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lv/p;->b()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_34

    invoke-virtual {v0}, Lv/p;->b()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_34

    invoke-virtual {v0}, Lv/p;->b()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_4

    :cond_34
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_4

    :cond_38
    return-void
.end method

.method static d(Ljava/util/List;)V
    .registers 9

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    :cond_4
    :goto_4
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lv/p;

    invoke-virtual {v3}, Lv/p;->a()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Lv/p;->b()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    invoke-virtual {v3}, Lv/p;->d()Lu/I;

    move-result-object v0

    invoke-virtual {v0}, Lu/I;->e()I

    move-result v0

    const/16 v1, 0xa28

    if-le v0, v1, :cond_4

    invoke-interface {v7}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    new-instance v0, Lv/p;

    const/4 v1, 0x0

    invoke-virtual {v3}, Lv/p;->f()Lv/q;

    move-result-object v2

    invoke-virtual {v3}, Lv/p;->g()I

    move-result v3

    const/16 v4, -0x960

    const/16 v5, 0x1e

    const/16 v6, 0xc8

    invoke-direct/range {v0 .. v6}, Lv/p;-><init>(ILv/q;IIII)V

    invoke-interface {v7, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_4

    :cond_49
    return-void
.end method


# virtual methods
.method public a(Lv/q;)I
    .registers 5

    invoke-virtual {p1}, Lv/q;->a()I

    move-result v0

    if-lez v0, :cond_23

    invoke-static {p1}, Lv/c;->b(Lv/q;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/p;

    invoke-virtual {v0}, Lv/p;->h()V

    goto :goto_e

    :cond_1e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method
