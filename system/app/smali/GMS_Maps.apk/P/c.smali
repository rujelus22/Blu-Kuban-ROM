.class public Lp/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method static a(Ljava/util/LinkedList;)V
    .registers 3
    .parameter

    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/p;

    .line 155
    invoke-virtual {v0}, Lp/p;->a()I

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Lp/p;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 157
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 159
    :cond_16
    return-void
.end method

.method static a(Ljava/util/List;)V
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 202
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 203
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/p;

    move-object v1, v0

    .line 204
    :goto_13
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/p;

    :goto_1f
    move-object v2, v1

    move-object v1, v0

    .line 205
    :goto_21
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 206
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/p;

    .line 207
    invoke-virtual {v0}, Lp/p;->a()I

    move-result v4

    if-nez v4, :cond_7e

    invoke-virtual {v1}, Lp/p;->a()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7e

    invoke-virtual {v2}, Lp/p;->a()I

    move-result v4

    if-ne v4, v6, :cond_7e

    invoke-virtual {v2}, Lp/p;->b()I

    move-result v4

    invoke-static {v2, v4}, Lp/c;->a(Lp/p;I)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 213
    const-string v4, ""

    invoke-virtual {v1, v4}, Lp/p;->a(Ljava/lang/String;)V

    .line 214
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    .line 219
    invoke-virtual {v0}, Lp/p;->b()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_6a

    invoke-virtual {v0}, Lp/p;->b()I

    move-result v0

    const/16 v4, 0xa

    if-eq v0, v4, :cond_6a

    invoke-virtual {v1}, Lp/p;->b()I

    move-result v0

    const/16 v4, 0xc

    if-ne v0, v4, :cond_79

    :cond_6a
    invoke-virtual {v1}, Lp/p;->b()I

    move-result v0

    const/4 v4, 0x7

    if-eq v0, v4, :cond_79

    invoke-virtual {v1}, Lp/p;->b()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_86

    .line 224
    :cond_79
    invoke-virtual {v2, v6}, Lp/p;->a(Z)V

    move-object v0, v1

    move-object v1, v2

    :cond_7e
    :goto_7e
    move-object v2, v1

    move-object v1, v0

    .line 230
    goto :goto_21

    :cond_81
    move-object v1, v2

    .line 203
    goto :goto_13

    :cond_83
    move-object v0, v2

    .line 204
    goto :goto_1f

    .line 231
    :cond_85
    return-void

    :cond_86
    move-object v0, v1

    move-object v1, v2

    goto :goto_7e
.end method

.method static a(Lp/q;Ljava/util/List;)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x64

    const/4 v1, 0x0

    .line 117
    move v3, v1

    :goto_4
    invoke-virtual {p0}, Lp/q;->a()I

    move-result v0

    if-ge v3, v0, :cond_37

    .line 118
    new-instance v0, Lp/p;

    const/16 v5, 0x1e

    const/16 v6, 0xc8

    move-object v2, p0

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lp/p;-><init>(ILp/q;IIII)V

    .line 125
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v4, Lp/p;

    const/4 v5, 0x1

    const/16 v9, 0xa

    move-object v6, p0

    move v7, v3

    move v8, v1

    invoke-direct/range {v4 .. v10}, Lp/p;-><init>(ILp/q;IIII)V

    .line 134
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v6, Lp/p;

    const/4 v7, 0x2

    const/16 v12, 0x63

    move-object v8, p0

    move v9, v3

    move v11, v1

    invoke-direct/range {v6 .. v12}, Lp/p;-><init>(ILp/q;IIII)V

    .line 143
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 145
    :cond_37
    return-void
.end method

.method private static a(Lp/p;I)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 317
    invoke-virtual {p0}, Lp/p;->e()Lo/I;

    move-result-object v2

    .line 318
    if-nez v2, :cond_9

    .line 326
    :cond_8
    :goto_8
    return v0

    .line 321
    :cond_9
    if-ne p1, v1, :cond_1d

    .line 322
    invoke-virtual {v2}, Lo/I;->f()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_1b

    invoke-virtual {v2}, Lo/I;->e()I

    move-result v2

    const/16 v3, 0x64

    if-gt v2, v3, :cond_8

    :cond_1b
    move v0, v1

    goto :goto_8

    .line 326
    :cond_1d
    invoke-virtual {v2}, Lo/I;->f()I

    move-result v3

    const/16 v4, 0x1e

    if-le v3, v4, :cond_2d

    invoke-virtual {v2}, Lo/I;->e()I

    move-result v2

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_8

    :cond_2d
    move v0, v1

    goto :goto_8
.end method

.method static b(Lp/q;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 80
    invoke-static {p0, v0}, Lp/c;->a(Lp/q;Ljava/util/List;)V

    .line 87
    invoke-static {v0}, Lp/c;->a(Ljava/util/LinkedList;)V

    .line 88
    invoke-static {v0}, Lp/c;->b(Ljava/util/LinkedList;)V

    .line 89
    invoke-static {v0}, Lp/c;->a(Ljava/util/List;)V

    .line 90
    invoke-static {v0}, Lp/c;->b(Ljava/util/List;)V

    .line 91
    invoke-static {v0}, Lp/c;->c(Ljava/util/List;)V

    .line 92
    invoke-static {v0}, Lp/c;->d(Ljava/util/List;)V

    .line 93
    return-object v0
.end method

.method static b(Ljava/util/LinkedList;)V
    .registers 5
    .parameter

    .prologue
    const/16 v3, 0x10

    .line 171
    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/p;

    .line 172
    invoke-virtual {v0}, Lp/p;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_34

    invoke-virtual {v0}, Lp/p;->b()I

    move-result v0

    if-ne v0, v3, :cond_34

    .line 174
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 175
    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/p;

    .line 176
    invoke-virtual {v0}, Lp/p;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_34

    invoke-virtual {v0}, Lp/p;->b()I

    move-result v1

    if-ne v1, v3, :cond_34

    .line 181
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lp/p;->b(I)V

    .line 183
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lp/p;->a(I)V

    .line 186
    :cond_34
    return-void
.end method

.method static b(Ljava/util/List;)V
    .registers 6
    .parameter

    .prologue
    .line 243
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 244
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/p;

    :goto_10
    move-object v1, v0

    .line 245
    :goto_11
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 246
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/p;

    .line 247
    invoke-virtual {v0}, Lp/p;->a()I

    move-result v3

    if-nez v3, :cond_48

    invoke-virtual {v1}, Lp/p;->a()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_48

    invoke-virtual {v0}, Lp/p;->d()Lo/I;

    move-result-object v3

    invoke-virtual {v3}, Lo/I;->e()I

    move-result v3

    const/16 v4, 0x320

    if-ge v3, v4, :cond_48

    .line 250
    invoke-virtual {v0}, Lp/p;->d()Lo/I;

    move-result-object v3

    invoke-virtual {v3}, Lo/I;->e()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lp/p;->b(I)V

    .line 251
    const-string v3, ""

    invoke-virtual {v1, v3}, Lp/p;->a(Ljava/lang/String;)V

    :cond_48
    move-object v1, v0

    .line 254
    goto :goto_11

    .line 244
    :cond_4a
    const/4 v0, 0x0

    goto :goto_10

    .line 255
    :cond_4c
    return-void
.end method

.method static c(Ljava/util/List;)V
    .registers 5
    .parameter

    .prologue
    .line 267
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 268
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 269
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/p;

    .line 270
    invoke-virtual {v0}, Lp/p;->a()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    invoke-virtual {v0}, Lp/p;->c()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lp/p;->b()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_34

    invoke-virtual {v0}, Lp/p;->b()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_34

    invoke-virtual {v0}, Lp/p;->b()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_4

    .line 275
    :cond_34
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_4

    .line 278
    :cond_38
    return-void
.end method

.method static d(Ljava/util/List;)V
    .registers 9
    .parameter

    .prologue
    .line 287
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    .line 292
    :cond_4
    :goto_4
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 293
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lp/p;

    .line 294
    invoke-virtual {v3}, Lp/p;->a()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Lp/p;->b()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    invoke-virtual {v3}, Lp/p;->d()Lo/I;

    move-result-object v0

    invoke-virtual {v0}, Lo/I;->e()I

    move-result v0

    const/16 v1, 0xa28

    if-le v0, v1, :cond_4

    .line 298
    invoke-interface {v7}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 300
    new-instance v0, Lp/p;

    const/4 v1, 0x0

    invoke-virtual {v3}, Lp/p;->f()Lp/q;

    move-result-object v2

    invoke-virtual {v3}, Lp/p;->g()I

    move-result v3

    const/16 v4, -0x960

    const/16 v5, 0x1e

    const/16 v6, 0xc8

    invoke-direct/range {v0 .. v6}, Lp/p;-><init>(ILp/q;IIII)V

    invoke-interface {v7, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 306
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_4

    .line 309
    :cond_49
    return-void
.end method


# virtual methods
.method public a(Lp/q;)I
    .registers 5
    .parameter

    .prologue
    .line 59
    invoke-virtual {p1}, Lp/q;->a()I

    move-result v0

    if-lez v0, :cond_23

    .line 60
    invoke-static {p1}, Lp/c;->b(Lp/q;)Ljava/util/List;

    move-result-object v1

    .line 61
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/p;

    .line 62
    invoke-virtual {v0}, Lp/p;->h()V

    goto :goto_e

    .line 64
    :cond_1e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 66
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method
