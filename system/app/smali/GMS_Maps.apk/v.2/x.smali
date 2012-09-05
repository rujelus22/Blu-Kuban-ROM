.class public Lv/x;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lw/b;

.field private volatile b:Z


# direct methods
.method public constructor <init>(Lw/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/x;->a:Lw/b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv/x;->b:Z

    return-void
.end method

.method private a(Ljava/util/HashMap;Lv/d;)Lv/A;
    .registers 11

    const/4 v1, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p2, Lv/d;->c:Lw/e;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/B;

    :goto_e
    if-eqz v0, :cond_16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lv/B;->f:Lv/B;

    goto :goto_e

    :cond_16
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/z;

    iget-object v5, v0, Lv/z;->a:Lv/d;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [Lw/e;

    array-length v0, v6

    new-array v7, v0, [I

    move v2, v1

    :goto_2e
    array-length v0, v6

    if-ge v1, v0, :cond_4a

    array-length v0, v6

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/B;

    iget-object v3, v0, Lv/B;->b:Lw/e;

    aput-object v3, v6, v1

    iget v3, v0, Lv/B;->c:I

    sub-int v0, v3, v2

    aput v0, v7, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v2, v3

    goto :goto_2e

    :cond_4a
    new-instance v0, Lv/A;

    invoke-direct {v0, v5, p2, v6, v7}, Lv/A;-><init>(Lv/d;Lv/d;[Lw/e;[I)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Collection;Ljava/util/Collection;)Lv/A;
    .registers 22

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lv/x;->b:Z

    new-instance v8, Ljava/util/PriorityQueue;

    const/16 v2, 0x64

    new-instance v3, Lv/y;

    invoke-direct {v3}, Lv/y;-><init>()V

    invoke-direct {v8, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv/d;

    new-instance v4, Lv/z;

    iget v5, v2, Lv/d;->h:I

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v2}, Lv/z;-><init>(ILv/B;Lv/d;)V

    iget-object v2, v2, Lv/d;->c:Lw/e;

    invoke-virtual {v9, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_37
    const/4 v4, 0x0

    const v3, 0x7fffffff

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv/d;

    new-instance v6, Lv/z;

    const v7, 0x7fffffff

    const/4 v10, 0x0

    invoke-direct {v6, v7, v10, v2}, Lv/z;-><init>(ILv/B;Lv/d;)V

    iget-object v7, v2, Lv/d;->c:Lw/e;

    invoke-virtual {v9, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v6, v2, Lv/d;->h:I

    if-ge v6, v3, :cond_12d

    iget-object v3, v2, Lv/d;->b:Lt/L;

    iget v2, v2, Lv/d;->h:I

    :goto_61
    move-object v4, v3

    move v3, v2

    goto :goto_3f

    :cond_64
    if-nez v4, :cond_68

    const/4 v2, 0x0

    :goto_67
    return-object v2

    :cond_68
    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v2

    invoke-virtual {v2}, Lz/l;->C()Lz/m;

    move-result-object v2

    invoke-virtual {v2}, Lz/m;->l()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v4}, Lt/L;->e()D

    move-result-wide v5

    mul-double v10, v2, v5

    const/4 v7, 0x0

    const v6, 0x7fffffff

    :cond_7f
    :goto_7f
    invoke-virtual {v8}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lv/x;->b:Z

    if-nez v2, :cond_95

    const/4 v7, 0x0

    :cond_8c
    if-eqz v7, :cond_127

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7}, Lv/x;->a(Ljava/util/HashMap;Lv/d;)Lv/A;

    move-result-object v2

    goto :goto_67

    :cond_95
    invoke-virtual {v8}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lv/B;

    iget-boolean v2, v3, Lv/B;->g:Z

    if-nez v2, :cond_7f

    const/4 v2, 0x1

    iput-boolean v2, v3, Lv/B;->g:Z

    if-eqz v3, :cond_12a

    instance-of v2, v3, Lv/z;

    if-eqz v2, :cond_12a

    move-object v2, v3

    check-cast v2, Lv/z;

    iget-object v5, v2, Lv/z;->a:Lv/d;

    iget-boolean v5, v5, Lv/d;->a:Z

    if-nez v5, :cond_12a

    iget v5, v3, Lv/B;->c:I

    iget-object v12, v2, Lv/z;->a:Lv/d;

    iget v12, v12, Lv/d;->h:I

    add-int/2addr v5, v12

    if-ge v5, v6, :cond_12a

    iget-object v2, v2, Lv/z;->a:Lv/d;

    move-object v6, v2

    :goto_be
    iget-object v12, v3, Lv/B;->b:Lw/e;

    invoke-virtual {v12}, Lw/e;->d()I

    move-result v13

    const/4 v2, 0x0

    move v7, v2

    :goto_c6
    if-ge v7, v13, :cond_123

    invoke-virtual {v12, v7}, Lw/e;->a(I)Lw/a;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lv/x;->a:Lw/b;

    invoke-virtual {v14, v2}, Lw/a;->a(Lw/b;)Lw/e;

    move-result-object v15

    if-nez v15, :cond_da

    :cond_d6
    :goto_d6
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_c6

    :cond_da
    invoke-virtual {v9, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv/B;

    if-nez v2, :cond_107

    new-instance v2, Lv/B;

    const v16, 0x7fffffff

    invoke-virtual {v15}, Lw/e;->e()Lt/L;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lt/L;->c(Lt/L;)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v17, v17, v10

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v2, v0, v15, v3, v1}, Lv/B;-><init>(ILw/e;Lv/B;I)V

    invoke-virtual {v9, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_107
    iget v15, v3, Lv/B;->c:I

    invoke-virtual {v14}, Lw/a;->a()I

    move-result v14

    add-int/2addr v14, v15

    iget v15, v2, Lv/B;->c:I

    if-ge v14, v15, :cond_d6

    iput v14, v2, Lv/B;->c:I

    iget v15, v2, Lv/B;->d:I

    add-int/2addr v14, v15

    iput v14, v2, Lv/B;->e:I

    iput-object v3, v2, Lv/B;->f:Lv/B;

    iget v14, v2, Lv/B;->c:I

    if-gt v14, v5, :cond_d6

    invoke-virtual {v8, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_d6

    :cond_123
    move-object v7, v6

    move v6, v5

    goto/16 :goto_7f

    :cond_127
    const/4 v2, 0x0

    goto/16 :goto_67

    :cond_12a
    move v5, v6

    move-object v6, v7

    goto :goto_be

    :cond_12d
    move v2, v3

    move-object v3, v4

    goto/16 :goto_61
.end method

.method public a()V
    .registers 2

    iget-boolean v0, p0, Lv/x;->b:Z

    if-eqz v0, :cond_4

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lv/x;->b:Z

    return-void
.end method
