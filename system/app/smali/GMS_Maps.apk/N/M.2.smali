.class public Ln/M;
.super Ln/aF;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/HashSet;

.field private d:Ljava/util/ArrayList;

.field private e:Ljava/util/ArrayList;

.field private f:J


# direct methods
.method public constructor <init>(Ln/aF;)V
    .registers 20
    .parameter

    .prologue
    .line 100
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Ln/aF;->d()Ln/am;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ln/aF;->e()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ln/aF;->m()B

    move-result v6

    invoke-virtual/range {p1 .. p1}, Ln/aF;->h()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Ln/aF;->p()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Ln/aF;->g()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v12

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    invoke-virtual/range {p1 .. p1}, Ln/aF;->b()J

    move-result-wide v16

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v17}, Ln/aF;-><init>(Ln/ah;[Ljava/lang/String;Ln/am;IBI[Ljava/lang/String;[Ljava/lang/String;I[Ln/l;Lcom/google/android/maps/driveabout/vector/dg;[Ln/aC;JJ)V

    .line 29
    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    iput-wide v1, v0, Ln/M;->f:J

    .line 105
    invoke-virtual/range {p1 .. p1}, Ln/aF;->q()[Ln/l;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Ln/M;->a:Ljava/util/List;

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Ln/M;->b:Ljava/util/ArrayList;

    .line 107
    invoke-virtual/range {p1 .. p1}, Ln/aF;->k()Ln/aI;

    move-result-object v1

    .line 108
    :goto_4c
    invoke-interface {v1}, Ln/aI;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Ln/M;->b:Ljava/util/ArrayList;

    invoke-interface {v1}, Ln/aI;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 111
    :cond_5e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Ln/M;->d:Ljava/util/ArrayList;

    .line 112
    invoke-virtual/range {p1 .. p1}, Ln/aF;->f()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7c

    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Ln/M;->d:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ln/aF;->f()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 115
    :cond_7c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Ln/M;->e:Ljava/util/ArrayList;

    .line 116
    invoke-virtual/range {p1 .. p1}, Ln/aF;->c()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9a

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Ln/M;->e:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ln/aF;->c()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 120
    :cond_9a
    invoke-virtual/range {p1 .. p1}, Ln/aF;->a()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Ln/M;->f:J

    .line 121
    return-void
.end method

.method static synthetic a(Ln/M;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Ln/M;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static a(Ln/aF;Ln/aF;)Ln/aF;
    .registers 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 43
    invoke-virtual {p0}, Ln/aF;->a()J

    move-result-wide v0

    .line 44
    cmp-long v2, v0, v4

    if-ltz v2, :cond_1a

    invoke-virtual {p1}, Ln/aF;->a()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_a9

    invoke-virtual {p1}, Ln/aF;->a()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_a9

    .line 47
    :cond_1a
    invoke-virtual {p1}, Ln/aF;->a()J

    move-result-wide v0

    move-wide v1, v0

    .line 50
    :goto_1f
    invoke-virtual {p1}, Ln/aF;->r()I

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Ln/aF;->a()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-nez v0, :cond_2e

    .line 89
    :goto_2d
    return-object p0

    .line 56
    :cond_2e
    invoke-virtual {p1}, Ln/aF;->r()I

    move-result v0

    if-lez v0, :cond_48

    .line 58
    instance-of v0, p0, Ln/M;

    if-eqz v0, :cond_41

    .line 59
    check-cast p0, Ln/M;

    .line 63
    :goto_3a
    invoke-virtual {p0, p1}, Ln/M;->a(Ln/aF;)V

    .line 64
    invoke-direct {p0, v1, v2}, Ln/M;->a(J)V

    goto :goto_2d

    .line 61
    :cond_41
    new-instance v0, Ln/M;

    invoke-direct {v0, p0}, Ln/M;-><init>(Ln/aF;)V

    move-object p0, v0

    goto :goto_3a

    .line 69
    :cond_48
    instance-of v0, p0, Ln/M;

    if-eqz v0, :cond_53

    move-object v0, p0

    .line 72
    check-cast v0, Ln/M;

    invoke-direct {v0, v1, v2}, Ln/M;->a(J)V

    goto :goto_2d

    .line 77
    :cond_53
    new-instance v0, Ln/aH;

    invoke-direct {v0}, Ln/aH;-><init>()V

    invoke-virtual {p0}, Ln/aF;->d()Ln/am;

    move-result-object v3

    invoke-virtual {v0, v3}, Ln/aH;->a(Ln/am;)Ln/aH;

    move-result-object v0

    invoke-virtual {p0}, Ln/aF;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Ln/aH;->b(I)Ln/aH;

    move-result-object v0

    invoke-virtual {p0}, Ln/aF;->h()I

    move-result v3

    invoke-virtual {v0, v3}, Ln/aH;->a(I)Ln/aH;

    move-result-object v0

    invoke-virtual {p0}, Ln/aF;->c()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ln/aH;->a([Ljava/lang/String;)Ln/aH;

    move-result-object v0

    invoke-virtual {p0}, Ln/aF;->f()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ln/aH;->b([Ljava/lang/String;)Ln/aH;

    move-result-object v0

    invoke-virtual {p0}, Ln/aF;->p()I

    move-result v3

    invoke-virtual {v0, v3}, Ln/aH;->c(I)Ln/aH;

    move-result-object v0

    invoke-virtual {p0}, Ln/aF;->q()[Ln/l;

    move-result-object v3

    invoke-virtual {v0, v3}, Ln/aH;->a([Ln/l;)Ln/aH;

    move-result-object v0

    invoke-virtual {p0}, Ln/aF;->g()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v3

    invoke-virtual {v0, v3}, Ln/aH;->a(Lcom/google/android/maps/driveabout/vector/dg;)Ln/aH;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ln/aH;->a(J)Ln/aH;

    move-result-object v0

    invoke-virtual {p0}, Ln/aF;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ln/aH;->b(J)Ln/aH;

    move-result-object v0

    invoke-virtual {v0}, Ln/aH;->a()Ln/aF;

    move-result-object p0

    goto :goto_2d

    :cond_a9
    move-wide v1, v0

    goto/16 :goto_1f
.end method

.method private a(J)V
    .registers 3
    .parameter

    .prologue
    .line 267
    iput-wide p1, p0, Ln/M;->f:J

    .line 268
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 275
    iget-wide v0, p0, Ln/M;->f:J

    return-wide v0
.end method

.method public a(I)Ln/l;
    .registers 3
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Ln/M;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/l;

    return-object v0
.end method

.method public a(Ln/aF;)V
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ln/M;->c:Ljava/util/HashSet;

    .line 130
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 131
    :goto_e
    invoke-virtual {p1}, Ln/aF;->r()I

    move-result v0

    if-ge v1, v0, :cond_31

    .line 132
    invoke-virtual {p1, v1}, Ln/aF;->b(I)Ln/aC;

    move-result-object v0

    .line 133
    instance-of v4, v0, Ln/aE;

    if-eqz v4, :cond_2b

    .line 134
    iget-object v4, p0, Ln/M;->c:Ljava/util/HashSet;

    check-cast v0, Ln/aE;

    invoke-virtual {v0}, Ln/aE;->a()Ln/m;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    :goto_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 136
    :cond_2b
    check-cast v0, Ln/aD;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 139
    :cond_31
    iget-object v0, p0, Ln/M;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 140
    :cond_37
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/l;

    .line 142
    iget-object v4, p0, Ln/M;->c:Ljava/util/HashSet;

    invoke-interface {v0}, Ln/l;->a()Ln/m;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_37

    .line 146
    :cond_53
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_57
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_112

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/aD;

    move v1, v2

    .line 151
    :goto_64
    invoke-virtual {v0}, Ln/aD;->a()Ln/l;

    move-result-object v4

    invoke-interface {v4}, Ln/l;->l()[I

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_85

    .line 152
    invoke-virtual {v0}, Ln/aD;->a()Ln/l;

    move-result-object v4

    invoke-interface {v4}, Ln/l;->l()[I

    move-result-object v4

    aget v5, v4, v1

    iget-object v6, p0, Ln/M;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v4, v1

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 154
    :cond_85
    invoke-virtual {v0}, Ln/aD;->b()Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-virtual {v0}, Ln/aD;->c()I

    move-result v1

    iget-object v4, p0, Ln/M;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_d1

    .line 157
    iget-object v1, p0, Ln/M;->a:Ljava/util/List;

    invoke-virtual {v0}, Ln/aD;->c()I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/l;

    .line 158
    iget-object v4, p0, Ln/M;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 159
    if-ltz v1, :cond_c7

    .line 160
    invoke-virtual {v0}, Ln/aD;->d()Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 161
    iget-object v4, p0, Ln/M;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ln/aD;->a()Ln/l;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_57

    .line 163
    :cond_bb
    iget-object v4, p0, Ln/M;->b:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ln/aD;->a()Ln/l;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_57

    .line 166
    :cond_c7
    iget-object v1, p0, Ln/M;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ln/aD;->a()Ln/l;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 169
    :cond_d1
    invoke-virtual {v0}, Ln/aD;->c()I

    move-result v1

    iget-object v4, p0, Ln/M;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_107

    .line 171
    const-string v1, "MutableVectorTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid plane index on tile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ln/aF;->g()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ln/aF;->d()Ln/am;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_107
    iget-object v1, p0, Ln/M;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ln/aD;->a()Ln/l;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_57

    .line 179
    :cond_112
    invoke-virtual {p1}, Ln/aF;->c()[Ljava/lang/String;

    move-result-object v0

    .line 180
    :goto_116
    array-length v1, v0

    if-ge v2, v1, :cond_12d

    .line 181
    iget-object v1, p0, Ln/M;->e:Ljava/util/ArrayList;

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12a

    .line 182
    iget-object v1, p0, Ln/M;->e:Ljava/util/ArrayList;

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_12a
    add-int/lit8 v2, v2, 0x1

    goto :goto_116

    .line 186
    :cond_12d
    iget-object v0, p0, Ln/M;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ln/aF;->f()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 187
    return-void
.end method

.method public a(Lcom/google/googlenav/common/a;)Z
    .registers 6
    .parameter

    .prologue
    .line 280
    iget-wide v0, p0, Ln/M;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_14

    invoke-interface {p1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iget-wide v2, p0, Ln/M;->f:J

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

    .prologue
    .line 191
    iget-object v0, p0, Ln/M;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Ln/M;->e:Ljava/util/ArrayList;

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

    .prologue
    .line 196
    iget-object v0, p0, Ln/M;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Ln/M;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public j()I
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Ln/M;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public k()Ln/aI;
    .registers 3

    .prologue
    .line 211
    new-instance v0, Ln/O;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ln/O;-><init>(Ln/M;Ln/N;)V

    return-object v0
.end method

.method public l()Ljava/util/Set;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Ln/M;->c:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
