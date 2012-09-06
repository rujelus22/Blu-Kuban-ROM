.class public Lp/D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lp/A;


# direct methods
.method public constructor <init>(Lp/A;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lp/D;->a:Lp/A;

    .line 53
    return-void
.end method

.method private a(Lp/C;)D
    .registers 6
    .parameter

    .prologue
    .line 167
    invoke-virtual {p1}, Lp/C;->i()Ln/Q;

    move-result-object v0

    invoke-virtual {p1}, Lp/C;->j()Ln/Q;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln/Q;->c(Ln/Q;)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1}, Lp/C;->i()Ln/Q;

    move-result-object v2

    invoke-virtual {v2}, Ln/Q;->e()D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/util/LinkedList;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lp/D;->b(Ljava/util/LinkedList;)V

    .line 62
    invoke-virtual {p0, p1}, Lp/D;->c(Ljava/util/LinkedList;)V

    .line 63
    return-void
.end method

.method a(Ljava/util/ListIterator;)V
    .registers 14
    .parameter

    .prologue
    const/4 v7, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 117
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lp/C;

    .line 118
    invoke-virtual {v4}, Lp/C;->b()I

    move-result v0

    if-ne v0, v7, :cond_11

    .line 164
    :cond_10
    return-void

    .line 122
    :cond_11
    invoke-interface {p1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v11

    move v10, v9

    .line 123
    :goto_16
    if-gt v10, v8, :cond_7e

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 124
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lp/C;

    .line 125
    invoke-virtual {v4}, Lp/C;->h()Lq/e;

    move-result-object v0

    invoke-virtual {v6}, Lp/C;->h()Lq/e;

    move-result-object v1

    invoke-static {v0, v1}, Lp/b;->a(Lq/e;Lq/e;)I

    move-result v0

    int-to-float v0, v0

    .line 131
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4325

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_8f

    invoke-virtual {v4}, Lp/C;->h()Lq/e;

    move-result-object v0

    invoke-virtual {v0, v9}, Lq/e;->c(I)Lq/f;

    move-result-object v0

    invoke-virtual {v6}, Lp/C;->g()Lq/e;

    move-result-object v1

    invoke-virtual {v1, v9}, Lq/e;->c(I)Lq/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 137
    new-instance v0, Lp/C;

    iget-object v1, p0, Lp/D;->a:Lp/A;

    invoke-virtual {v4}, Lp/C;->f()I

    move-result v2

    invoke-virtual {v6}, Lp/C;->f()I

    move-result v3

    invoke-virtual {v4}, Lp/C;->j()Ln/Q;

    move-result-object v4

    invoke-virtual {v6}, Lp/C;->j()Ln/Q;

    move-result-object v5

    invoke-virtual {v6}, Lp/C;->d()[Lq/f;

    move-result-object v6

    invoke-direct/range {v0 .. v8}, Lp/C;-><init>(Lp/A;IILn/Q;Ln/Q;[Lq/f;II)V

    move v1, v9

    .line 141
    :goto_6e
    if-gt v1, v10, :cond_7b

    .line 142
    if-eqz v1, :cond_75

    .line 143
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 145
    :cond_75
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    .line 150
    :cond_7b
    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 160
    :cond_7e
    invoke-interface {p1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    move v0, v9

    .line 161
    :goto_83
    sub-int v2, v1, v11

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_10

    .line 162
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_83

    .line 155
    :cond_8f
    invoke-direct {p0, v6}, Lp/D;->a(Lp/C;)D

    move-result-wide v0

    const-wide v2, 0x4052c00000000000L

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_7e

    .line 123
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto/16 :goto_16
.end method

.method b(Ljava/util/LinkedList;)V
    .registers 4
    .parameter

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 70
    :goto_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 71
    invoke-virtual {p0, v0}, Lp/D;->a(Ljava/util/ListIterator;)V

    goto :goto_4

    .line 73
    :cond_e
    return-void
.end method

.method c(Ljava/util/LinkedList;)V
    .registers 12
    .parameter

    .prologue
    .line 79
    invoke-virtual {p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v9

    .line 80
    invoke-interface {v9}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 81
    invoke-interface {v9}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 83
    :cond_d
    invoke-interface {v9}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v9}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/C;

    :goto_19
    move-object v4, v0

    .line 84
    :goto_1a
    invoke-interface {v9}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 85
    invoke-interface {v9}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lp/C;

    .line 86
    invoke-virtual {v4}, Lp/C;->a()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_63

    .line 93
    new-instance v0, Lp/C;

    iget-object v1, p0, Lp/D;->a:Lp/A;

    invoke-virtual {v4}, Lp/C;->e()I

    move-result v2

    invoke-virtual {v8}, Lp/C;->f()I

    move-result v3

    invoke-virtual {v4}, Lp/C;->i()Ln/Q;

    move-result-object v4

    invoke-virtual {v8}, Lp/C;->j()Ln/Q;

    move-result-object v5

    invoke-virtual {v8}, Lp/C;->d()[Lq/f;

    move-result-object v6

    invoke-virtual {v8}, Lp/C;->b()I

    move-result v7

    invoke-virtual {v8}, Lp/C;->c()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lp/C;-><init>(Lp/A;IILn/Q;Ln/Q;[Lq/f;II)V

    .line 101
    invoke-interface {v9}, Ljava/util/ListIterator;->remove()V

    .line 102
    invoke-interface {v9}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 103
    invoke-interface {v9}, Ljava/util/ListIterator;->remove()V

    .line 104
    invoke-interface {v9, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    :goto_5e
    move-object v4, v0

    .line 108
    goto :goto_1a

    .line 83
    :cond_60
    const/4 v0, 0x0

    goto :goto_19

    .line 109
    :cond_62
    return-void

    :cond_63
    move-object v0, v8

    goto :goto_5e
.end method
