.class public final Ldbxyzptlk/C/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/LinkedList;

.field private b:Ldbxyzptlk/C/d;

.field private c:Ldbxyzptlk/C/e;

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ldbxyzptlk/C/d;

    move-object v0, v1

    check-cast v0, Ljava/io/Reader;

    invoke-direct {v2, v0}, Ldbxyzptlk/C/d;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Ldbxyzptlk/C/b;->b:Ldbxyzptlk/C/d;

    iput-object v1, p0, Ldbxyzptlk/C/b;->c:Ldbxyzptlk/C/e;

    const/4 v0, 0x0

    iput v0, p0, Ldbxyzptlk/C/b;->d:I

    return-void
.end method

.method private a(Ljava/util/LinkedList;)I
    .registers 3

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_7
.end method

.method private a(Ldbxyzptlk/C/a;)Ljava/util/Map;
    .registers 3

    if-nez p1, :cond_8

    new-instance v0, Ldbxyzptlk/B/c;

    invoke-direct {v0}, Ldbxyzptlk/B/c;-><init>()V

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p1}, Ldbxyzptlk/C/a;->a()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Ldbxyzptlk/B/c;

    invoke-direct {v0}, Ldbxyzptlk/B/c;-><init>()V

    goto :goto_7
.end method

.method private b(Ldbxyzptlk/C/a;)Ljava/util/List;
    .registers 3

    if-nez p1, :cond_8

    new-instance v0, Ldbxyzptlk/B/a;

    invoke-direct {v0}, Ldbxyzptlk/B/a;-><init>()V

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p1}, Ldbxyzptlk/C/a;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Ldbxyzptlk/B/a;

    invoke-direct {v0}, Ldbxyzptlk/B/a;-><init>()V

    goto :goto_7
.end method

.method private c()V
    .registers 4

    iget-object v0, p0, Ldbxyzptlk/C/b;->b:Ldbxyzptlk/C/d;

    invoke-virtual {v0}, Ldbxyzptlk/C/d;->c()Ldbxyzptlk/C/e;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/C/b;->c:Ldbxyzptlk/C/e;

    iget-object v0, p0, Ldbxyzptlk/C/b;->c:Ldbxyzptlk/C/e;

    if-nez v0, :cond_15

    new-instance v0, Ldbxyzptlk/C/e;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldbxyzptlk/C/e;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Ldbxyzptlk/C/b;->c:Ldbxyzptlk/C/e;

    :cond_15
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/Reader;Ldbxyzptlk/C/a;)Ljava/lang/Object;
    .registers 10

    const/4 v6, -0x1

    const/4 v5, 0x1

    invoke-virtual {p0, p1}, Ldbxyzptlk/C/b;->a(Ljava/io/Reader;)V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    :cond_f
    :try_start_f
    invoke-direct {p0}, Ldbxyzptlk/C/b;->c()V

    iget v0, p0, Ldbxyzptlk/C/b;->d:I

    packed-switch v0, :pswitch_data_1e0

    :goto_17
    :pswitch_17
    iget v0, p0, Ldbxyzptlk/C/b;->d:I

    if-ne v0, v6, :cond_1ce

    new-instance v0, Ldbxyzptlk/C/c;

    invoke-virtual {p0}, Ldbxyzptlk/C/b;->b()I

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Ldbxyzptlk/C/b;->c:Ldbxyzptlk/C/e;

    invoke-direct {v0, v1, v2, v3}, Ldbxyzptlk/C/c;-><init>(IILjava/lang/Object;)V

    throw v0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_28} :catch_28

    :catch_28
    move-exception v0

    throw v0

    :pswitch_2a
    :try_start_2a
    iget-object v0, p0, Ldbxyzptlk/C/b;->c:Ldbxyzptlk/C/e;

    iget v0, v0, Ldbxyzptlk/C/e;->a:I

    packed-switch v0, :pswitch_data_1f0

    :pswitch_31
    const/4 v0, -0x1

    iput v0, p0, Ldbxyzptlk/C/b;->d:I

    goto :goto_17

    :pswitch_35
    const/4 v0, 0x1

    iput v0, p0, Ldbxyzptlk/C/b;->d:I

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Ldbxyzptlk/C/b;->d:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-object v0, p0, Ldbxyzptlk/C/b;->c:Ldbxyzptlk/C/e;

    iget-object v0, v0, Ldbxyzptlk/C/e;->b:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_17

    :pswitch_4a
    const/4 v0, 0x2

    iput v0, p0, Ldbxyzptlk/C/b;->d:I

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Ldbxyzptlk/C/b;->d:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Ldbxyzptlk/C/b;->a(Ldbxyzptlk/C/a;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_17

    :pswitch_5f
    const/4 v0, 0x3

    iput v0, p0, Ldbxyzptlk/C/b;->d:I

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Ldbxyzptlk/C/b;->d:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Ldbxyzptlk/C/b;->b(Ldbxyzptlk/C/a;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_17

    :pswitch_74
    iget-object v0, p0, Ldbxyzptlk/C/b;->c:Ldbxyzptlk/C/e;

    iget v0, v0, Ldbxyzptlk/C/e;->a:I

    if-ne v0, v6, :cond_7f

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7f
    new-instance v0, Ldbxyzptlk/C/c;

    invoke-virtual {p0}, Ldbxyzptlk/C/b;->b()I

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Ldbxyzptlk/C/b;->c:Ldbxyzptlk/C/e;

    invoke-direct {v0, v1, v2, v3}, Ldbxyzptlk/C/c;-><init>(IILjava/lang/Object;)V

    throw v0

    :pswitch_8c
    iget-object v0, p0, Ldbxyzptlk/C/b;->c:Ldbxyzptlk/C/e;

    iget v0, v0, Ldbxyzptlk/C/e;->a:I

    packed-switch v0, :pswitch_data_1fc

    :pswitch_93
    const/4 v0, -0x1

    iput v0, p0, Ldbxyzptlk/C/b;->d:I

    goto :goto_17

    :pswitch_97
    iget-object v0, p0, Ldbxyzptlk/C/b;->c:Ldbxyzptlk/C/e;

    iget-object v0, v0, Ldbxyzptlk/C/e;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_b7

    iget-object v0, p0, Ldbxyzptlk/C/b;->c:Ldbxyzptlk/C/e;

    iget-object v0, v0, Ldbxyzptlk/C/e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const/4 v0, 0x4

    iput v0, p0, Ldbxyzptlk/C/b;->d:I

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Ldbxyzptlk/C/b;->d:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_17

    :cond_b7
    const/4 v0, -0x1

    iput v0, p0, Ldbxyzptlk/C/b;->d:I

    goto/16 :goto_17

    :pswitch_bc
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v5, :cond_d0

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-direct {p0, v2}, Ldbxyzptlk/C/b;->a(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Ldbxyzptlk/C/b;->d:I

    goto/16 :goto_17

    :cond_d0
    const/4 v0, 0x1

    iput v0, p0, Ldbxyzptlk/C/b;->d:I

    goto/16 :goto_17

    :pswitch_d5
    iget-object v0, p0, Ldbxyzptlk/C/b;->c:Ldbxyzptlk/C/e;

    iget v0, v0, Ldbxyzptlk/C/e;->a:I

    packed-switch v0, :pswitch_data_20c

    :pswitch_dc
    const/4 v0, -0x1

    iput v0, p0, Ldbxyzptlk/C/b;->d:I

    goto/16 :goto_17

    :pswitch_e1
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v4, p0, Ldbxyzptlk/C/b;->c:Ldbxyzptlk/C/e;

    iget-object v4, v4, Ldbxyzptlk/C/e;->b:Ljava/lang/Object;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v2}, Ldbxyzptlk/C/b;->a(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Ldbxyzptlk/C/b;->d:I

    goto/16 :goto_17

    :pswitch_ff
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, p2}, Ldbxyzptlk/C/b;->b(Ldbxyzptlk/C/a;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, p0, Ldbxyzptlk/C/b;->d:I

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Ldbxyzptlk/C/b;->d:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_127
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, p2}, Ldbxyzptlk/C/b;->a(Ldbxyzptlk/C/a;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, p0, Ldbxyzptlk/C/b;->d:I

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Ldbxyzptlk/C/b;->d:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_14f
    iget-object v0, p0, Ldbxyzptlk/C/b;->c:Ldbxyzptlk/C/e;

    iget v0, v0, Ldbxyzptlk/C/e;->a:I

    packed-switch v0, :pswitch_data_21e

    :pswitch_156
    const/4 v0, -0x1

    iput v0, p0, Ldbxyzptlk/C/b;->d:I

    goto/16 :goto_17

    :pswitch_15b
    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Ldbxyzptlk/C/b;->c:Ldbxyzptlk/C/e;

    iget-object v1, v1, Ldbxyzptlk/C/e;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    :pswitch_16a
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v5, :cond_17e

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-direct {p0, v2}, Ldbxyzptlk/C/b;->a(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Ldbxyzptlk/C/b;->d:I

    goto/16 :goto_17

    :cond_17e
    const/4 v0, 0x1

    iput v0, p0, Ldbxyzptlk/C/b;->d:I

    goto/16 :goto_17

    :pswitch_183
    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, p2}, Ldbxyzptlk/C/b;->a(Ldbxyzptlk/C/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    iput v0, p0, Ldbxyzptlk/C/b;->d:I

    new-instance v0, Ljava/lang/Integer;

    iget v4, p0, Ldbxyzptlk/C/b;->d:I

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_1a2
    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, p2}, Ldbxyzptlk/C/b;->b(Ldbxyzptlk/C/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    iput v0, p0, Ldbxyzptlk/C/b;->d:I

    new-instance v0, Ljava/lang/Integer;

    iget v4, p0, Ldbxyzptlk/C/b;->d:I

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_1c1
    new-instance v0, Ldbxyzptlk/C/c;

    invoke-virtual {p0}, Ldbxyzptlk/C/b;->b()I

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Ldbxyzptlk/C/b;->c:Ldbxyzptlk/C/e;

    invoke-direct {v0, v1, v2, v3}, Ldbxyzptlk/C/c;-><init>(IILjava/lang/Object;)V

    throw v0

    :cond_1ce
    iget-object v0, p0, Ldbxyzptlk/C/b;->c:Ldbxyzptlk/C/e;

    iget v0, v0, Ldbxyzptlk/C/e;->a:I
    :try_end_1d2
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_1d2} :catch_28

    if-ne v0, v6, :cond_f

    new-instance v0, Ldbxyzptlk/C/c;

    invoke-virtual {p0}, Ldbxyzptlk/C/b;->b()I

    move-result v1

    iget-object v2, p0, Ldbxyzptlk/C/b;->c:Ldbxyzptlk/C/e;

    invoke-direct {v0, v1, v5, v2}, Ldbxyzptlk/C/c;-><init>(IILjava/lang/Object;)V

    throw v0

    :pswitch_data_1e0
    .packed-switch -0x1
        :pswitch_1c1
        :pswitch_2a
        :pswitch_74
        :pswitch_8c
        :pswitch_14f
        :pswitch_d5
    .end packed-switch

    :pswitch_data_1f0
    .packed-switch 0x0
        :pswitch_35
        :pswitch_4a
        :pswitch_31
        :pswitch_5f
    .end packed-switch

    :pswitch_data_1fc
    .packed-switch 0x0
        :pswitch_97
        :pswitch_93
        :pswitch_bc
        :pswitch_93
        :pswitch_93
        :pswitch_17
    .end packed-switch

    :pswitch_data_20c
    .packed-switch 0x0
        :pswitch_e1
        :pswitch_127
        :pswitch_dc
        :pswitch_ff
        :pswitch_dc
        :pswitch_dc
        :pswitch_17
    .end packed-switch

    :pswitch_data_21e
    .packed-switch 0x0
        :pswitch_15b
        :pswitch_183
        :pswitch_156
        :pswitch_1a2
        :pswitch_16a
        :pswitch_17
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    check-cast v0, Ldbxyzptlk/C/a;

    invoke-virtual {p0, p1, v0}, Ldbxyzptlk/C/b;->a(Ljava/lang/String;Ldbxyzptlk/C/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ldbxyzptlk/C/a;)Ljava/lang/Object;
    .registers 7

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    :try_start_5
    invoke-virtual {p0, v0, p2}, Ldbxyzptlk/C/b;->a(Ljava/io/Reader;Ldbxyzptlk/C/a;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-object v0

    return-object v0

    :catch_a
    move-exception v0

    new-instance v1, Ldbxyzptlk/C/c;

    const/4 v2, -0x1

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v0}, Ldbxyzptlk/C/c;-><init>(IILjava/lang/Object;)V

    throw v1
.end method

.method public final a()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Ldbxyzptlk/C/b;->c:Ldbxyzptlk/C/e;

    const/4 v0, 0x0

    iput v0, p0, Ldbxyzptlk/C/b;->d:I

    iput-object v1, p0, Ldbxyzptlk/C/b;->a:Ljava/util/LinkedList;

    return-void
.end method

.method public final a(Ljava/io/Reader;)V
    .registers 3

    iget-object v0, p0, Ldbxyzptlk/C/b;->b:Ldbxyzptlk/C/d;

    invoke-virtual {v0, p1}, Ldbxyzptlk/C/d;->a(Ljava/io/Reader;)V

    invoke-virtual {p0}, Ldbxyzptlk/C/b;->a()V

    return-void
.end method

.method public final b()I
    .registers 2

    iget-object v0, p0, Ldbxyzptlk/C/b;->b:Ldbxyzptlk/C/d;

    invoke-virtual {v0}, Ldbxyzptlk/C/d;->a()I

    move-result v0

    return v0
.end method

.method public final b(Ljava/io/Reader;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    check-cast v0, Ldbxyzptlk/C/a;

    invoke-virtual {p0, p1, v0}, Ldbxyzptlk/C/b;->a(Ljava/io/Reader;Ldbxyzptlk/C/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
