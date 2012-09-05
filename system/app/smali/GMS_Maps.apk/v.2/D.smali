.class public Lv/D;
.super Ljava/lang/Object;


# instance fields
.field private a:Lv/A;


# direct methods
.method public constructor <init>(Lv/A;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/D;->a:Lv/A;

    return-void
.end method

.method private a(Lv/C;)D
    .registers 6

    invoke-virtual {p1}, Lv/C;->i()Lt/L;

    move-result-object v0

    invoke-virtual {p1}, Lv/C;->j()Lt/L;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt/L;->c(Lt/L;)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1}, Lv/C;->i()Lt/L;

    move-result-object v2

    invoke-virtual {v2}, Lt/L;->e()D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/util/LinkedList;)V
    .registers 2

    invoke-virtual {p0, p1}, Lv/D;->b(Ljava/util/LinkedList;)V

    invoke-virtual {p0, p1}, Lv/D;->c(Ljava/util/LinkedList;)V

    return-void
.end method

.method a(Ljava/util/ListIterator;)V
    .registers 14

    const/4 v7, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lv/C;

    invoke-virtual {v4}, Lv/C;->b()I

    move-result v0

    if-ne v0, v7, :cond_11

    :cond_10
    return-void

    :cond_11
    invoke-interface {p1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v11

    move v10, v9

    :goto_16
    if-gt v10, v8, :cond_96

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lv/C;

    invoke-virtual {v4}, Lv/C;->h()Lw/e;

    move-result-object v0

    invoke-virtual {v6}, Lv/C;->h()Lw/e;

    move-result-object v1

    invoke-static {v0, v1}, Lv/b;->a(Lw/e;Lw/e;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4325

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_a7

    invoke-virtual {v4}, Lv/C;->h()Lw/e;

    move-result-object v0

    invoke-virtual {v0, v9}, Lw/e;->c(I)Lw/f;

    move-result-object v0

    invoke-virtual {v6}, Lv/C;->g()Lw/e;

    move-result-object v1

    invoke-virtual {v1, v9}, Lw/e;->c(I)Lw/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    new-instance v0, Lv/C;

    iget-object v1, p0, Lv/D;->a:Lv/A;

    invoke-virtual {v4}, Lv/C;->f()I

    move-result v2

    invoke-virtual {v6}, Lv/C;->f()I

    move-result v3

    invoke-virtual {v4}, Lv/C;->j()Lt/L;

    move-result-object v4

    invoke-virtual {v6}, Lv/C;->j()Lt/L;

    move-result-object v5

    invoke-virtual {v6}, Lv/C;->d()[Lw/f;

    move-result-object v6

    invoke-direct/range {v0 .. v8}, Lv/C;-><init>(Lv/A;IILt/L;Lt/L;[Lw/f;II)V

    move v1, v9

    :goto_6e
    if-gt v1, v10, :cond_7b

    if-eqz v1, :cond_75

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    :cond_75
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    :cond_7b
    const-string v1, "Describer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created u-turn maneuver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ln/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    :cond_96
    invoke-interface {p1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    move v0, v9

    :goto_9b
    sub-int v2, v1, v11

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_10

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9b

    :cond_a7
    invoke-direct {p0, v6}, Lv/D;->a(Lv/C;)D

    move-result-wide v0

    const-wide v2, 0x4052c00000000000L

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_96

    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto/16 :goto_16
.end method

.method b(Ljava/util/LinkedList;)V
    .registers 4

    invoke-virtual {p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, v0}, Lv/D;->a(Ljava/util/ListIterator;)V

    goto :goto_4

    :cond_e
    return-void
.end method

.method c(Ljava/util/LinkedList;)V
    .registers 13

    invoke-virtual {p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    :cond_d
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/C;

    :goto_19
    move-object v9, v0

    :goto_1a
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lv/C;

    invoke-virtual {v9}, Lv/C;->a()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_7b

    new-instance v0, Lv/C;

    iget-object v1, p0, Lv/D;->a:Lv/A;

    invoke-virtual {v9}, Lv/C;->e()I

    move-result v2

    invoke-virtual {v8}, Lv/C;->f()I

    move-result v3

    invoke-virtual {v9}, Lv/C;->i()Lt/L;

    move-result-object v4

    invoke-virtual {v8}, Lv/C;->j()Lt/L;

    move-result-object v5

    invoke-virtual {v8}, Lv/C;->d()[Lw/f;

    move-result-object v6

    invoke-virtual {v8}, Lv/C;->b()I

    move-result v7

    invoke-virtual {v8}, Lv/C;->c()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lv/C;-><init>(Lv/A;IILt/L;Lt/L;[Lw/f;II)V

    const-string v1, "Describer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping short sub-path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ln/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/util/ListIterator;->remove()V

    invoke-interface {v10}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-interface {v10}, Ljava/util/ListIterator;->remove()V

    invoke-interface {v10, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    :goto_76
    move-object v9, v0

    goto :goto_1a

    :cond_78
    const/4 v0, 0x0

    goto :goto_19

    :cond_7a
    return-void

    :cond_7b
    move-object v0, v8

    goto :goto_76
.end method
