.class public Lt/I;
.super Lt/ao;


# instance fields
.field private final a:Ljava/util/List;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/HashSet;

.field private d:Ljava/util/ArrayList;

.field private e:Ljava/util/ArrayList;

.field private f:J


# direct methods
.method public constructor <init>(Lt/ao;)V
    .registers 19

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lt/ao;->d()Lt/af;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lt/ao;->e()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lt/ao;->h()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Lt/ao;->l()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Lt/ao;->g()Lcom/google/android/maps/driveabout/vector/cU;

    move-result-object v11

    const/4 v12, 0x0

    const-wide/16 v13, -0x1

    invoke-virtual/range {p1 .. p1}, Lt/ao;->b()J

    move-result-wide v15

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v16}, Lt/ao;-><init>(Lt/aa;[Ljava/lang/String;Lt/af;II[Ljava/lang/String;[Ljava/lang/String;I[Lt/l;Lcom/google/android/maps/driveabout/vector/cU;[Lt/al;JJ)V

    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lt/I;->f:J

    invoke-virtual/range {p1 .. p1}, Lt/ao;->m()[Lt/l;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lt/I;->a:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lt/I;->b:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lt/ao;->j()Lt/ar;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Lt/ar;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    move-object/from16 v0, p0

    iget-object v2, v0, Lt/I;->b:Ljava/util/ArrayList;

    invoke-interface {v1}, Lt/ar;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_5a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lt/I;->d:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lt/ao;->f()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_78

    move-object/from16 v0, p0

    iget-object v1, v0, Lt/I;->d:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lt/ao;->f()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lt/I;->e:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lt/ao;->c()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_96

    move-object/from16 v0, p0

    iget-object v1, v0, Lt/I;->e:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lt/ao;->c()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_96
    invoke-virtual/range {p1 .. p1}, Lt/ao;->a()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lt/I;->f:J

    return-void
.end method

.method static synthetic a(Lt/I;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lt/I;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static a(Lt/ao;Lt/ao;)Lt/ao;
    .registers 8

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lt/ao;->a()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-ltz v2, :cond_1a

    invoke-virtual {p1}, Lt/ao;->a()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_a9

    invoke-virtual {p1}, Lt/ao;->a()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_a9

    :cond_1a
    invoke-virtual {p1}, Lt/ao;->a()J

    move-result-wide v0

    move-wide v1, v0

    :goto_1f
    invoke-virtual {p1}, Lt/ao;->n()I

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Lt/ao;->a()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-nez v0, :cond_2e

    :goto_2d
    return-object p0

    :cond_2e
    invoke-virtual {p1}, Lt/ao;->n()I

    move-result v0

    if-lez v0, :cond_48

    instance-of v0, p0, Lt/I;

    if-eqz v0, :cond_41

    check-cast p0, Lt/I;

    :goto_3a
    invoke-virtual {p0, p1}, Lt/I;->a(Lt/ao;)V

    invoke-direct {p0, v1, v2}, Lt/I;->a(J)V

    goto :goto_2d

    :cond_41
    new-instance v0, Lt/I;

    invoke-direct {v0, p0}, Lt/I;-><init>(Lt/ao;)V

    move-object p0, v0

    goto :goto_3a

    :cond_48
    instance-of v0, p0, Lt/I;

    if-eqz v0, :cond_53

    move-object v0, p0

    check-cast v0, Lt/I;

    invoke-direct {v0, v1, v2}, Lt/I;->a(J)V

    goto :goto_2d

    :cond_53
    new-instance v0, Lt/aq;

    invoke-direct {v0}, Lt/aq;-><init>()V

    invoke-virtual {p0}, Lt/ao;->d()Lt/af;

    move-result-object v3

    invoke-virtual {v0, v3}, Lt/aq;->a(Lt/af;)Lt/aq;

    move-result-object v0

    invoke-virtual {p0}, Lt/ao;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Lt/aq;->b(I)Lt/aq;

    move-result-object v0

    invoke-virtual {p0}, Lt/ao;->h()I

    move-result v3

    invoke-virtual {v0, v3}, Lt/aq;->a(I)Lt/aq;

    move-result-object v0

    invoke-virtual {p0}, Lt/ao;->c()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lt/aq;->a([Ljava/lang/String;)Lt/aq;

    move-result-object v0

    invoke-virtual {p0}, Lt/ao;->f()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lt/aq;->b([Ljava/lang/String;)Lt/aq;

    move-result-object v0

    invoke-virtual {p0}, Lt/ao;->l()I

    move-result v3

    invoke-virtual {v0, v3}, Lt/aq;->c(I)Lt/aq;

    move-result-object v0

    invoke-virtual {p0}, Lt/ao;->m()[Lt/l;

    move-result-object v3

    invoke-virtual {v0, v3}, Lt/aq;->a([Lt/l;)Lt/aq;

    move-result-object v0

    invoke-virtual {p0}, Lt/ao;->g()Lcom/google/android/maps/driveabout/vector/cU;

    move-result-object v3

    invoke-virtual {v0, v3}, Lt/aq;->a(Lcom/google/android/maps/driveabout/vector/cU;)Lt/aq;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lt/aq;->a(J)Lt/aq;

    move-result-object v0

    invoke-virtual {p0}, Lt/ao;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lt/aq;->b(J)Lt/aq;

    move-result-object v0

    invoke-virtual {v0}, Lt/aq;->a()Lt/ao;

    move-result-object p0

    goto :goto_2d

    :cond_a9
    move-wide v1, v0

    goto/16 :goto_1f
.end method

.method private a(J)V
    .registers 3

    iput-wide p1, p0, Lt/I;->f:J

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lt/I;->f:J

    return-wide v0
.end method

.method public a(I)Lt/l;
    .registers 3

    iget-object v0, p0, Lt/I;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/l;

    return-object v0
.end method

.method public a(Lt/ao;)V
    .registers 9

    const/4 v2, 0x0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lt/I;->c:Ljava/util/HashSet;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_e
    invoke-virtual {p1}, Lt/ao;->n()I

    move-result v0

    if-ge v1, v0, :cond_31

    invoke-virtual {p1, v1}, Lt/ao;->b(I)Lt/al;

    move-result-object v0

    instance-of v4, v0, Lt/an;

    if-eqz v4, :cond_2b

    iget-object v4, p0, Lt/I;->c:Ljava/util/HashSet;

    check-cast v0, Lt/an;

    invoke-virtual {v0}, Lt/an;->a()Lt/m;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_2b
    check-cast v0, Lt/am;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_31
    iget-object v0, p0, Lt/I;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_37
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/l;

    iget-object v4, p0, Lt/I;->c:Ljava/util/HashSet;

    invoke-interface {v0}, Lt/l;->a()Lt/m;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_37

    :cond_53
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_57
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_112

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/am;

    move v1, v2

    :goto_64
    invoke-virtual {v0}, Lt/am;->a()Lt/l;

    move-result-object v4

    invoke-interface {v4}, Lt/l;->k()[I

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_85

    invoke-virtual {v0}, Lt/am;->a()Lt/l;

    move-result-object v4

    invoke-interface {v4}, Lt/l;->k()[I

    move-result-object v4

    aget v5, v4, v1

    iget-object v6, p0, Lt/I;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    :cond_85
    invoke-virtual {v0}, Lt/am;->b()Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-virtual {v0}, Lt/am;->c()I

    move-result v1

    iget-object v4, p0, Lt/I;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_d1

    iget-object v1, p0, Lt/I;->a:Ljava/util/List;

    invoke-virtual {v0}, Lt/am;->c()I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/l;

    iget-object v4, p0, Lt/I;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_c7

    invoke-virtual {v0}, Lt/am;->d()Z

    move-result v4

    if-eqz v4, :cond_bb

    iget-object v4, p0, Lt/I;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lt/am;->a()Lt/l;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_57

    :cond_bb
    iget-object v4, p0, Lt/I;->b:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lt/am;->a()Lt/l;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_57

    :cond_c7
    iget-object v1, p0, Lt/I;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lt/am;->a()Lt/l;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_57

    :cond_d1
    invoke-virtual {v0}, Lt/am;->c()I

    move-result v1

    iget-object v4, p0, Lt/I;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_107

    const-string v1, "MutableVectorTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid plane index on tile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lt/ao;->g()Lcom/google/android/maps/driveabout/vector/cU;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lt/ao;->d()Lt/af;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_107
    iget-object v1, p0, Lt/I;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lt/am;->a()Lt/l;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_57

    :cond_112
    invoke-virtual {p1}, Lt/ao;->c()[Ljava/lang/String;

    move-result-object v0

    :goto_116
    array-length v1, v0

    if-ge v2, v1, :cond_12d

    iget-object v1, p0, Lt/I;->e:Ljava/util/ArrayList;

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12a

    iget-object v1, p0, Lt/I;->e:Ljava/util/ArrayList;

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12a
    add-int/lit8 v2, v2, 0x1

    goto :goto_116

    :cond_12d
    iget-object v0, p0, Lt/I;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lt/ao;->f()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public a(Laf/a;)Z
    .registers 6

    iget-wide v0, p0, Lt/I;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_14

    invoke-interface {p1}, Laf/a;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lt/I;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public c()[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lt/I;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lt/I;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public f()[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lt/I;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lt/I;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .registers 2

    iget-object v0, p0, Lt/I;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public j()Lt/ar;
    .registers 3

    new-instance v0, Lt/K;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lt/K;-><init>(Lt/I;Lt/J;)V

    return-object v0
.end method

.method public k()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lt/I;->c:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
