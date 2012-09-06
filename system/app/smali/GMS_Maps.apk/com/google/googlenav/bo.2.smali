.class public Lcom/google/googlenav/bO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/F;


# instance fields
.field private a:B

.field private final b:LaM/bG;

.field private final c:[Lcom/google/googlenav/bU;

.field private final d:[Lcom/google/googlenav/bT;

.field private e:I

.field private final f:Lcom/google/common/collect/ImmutableList;

.field private final g:I

.field private final h:Z


# direct methods
.method public constructor <init>(LaM/bG;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 22
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlenav/bO;->b:LaM/bG;

    .line 89
    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 90
    new-array v4, v3, [Lcom/google/googlenav/cq;

    .line 93
    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_33

    .line 94
    new-instance v5, Lcom/google/googlenav/ca;

    const/4 v6, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    sget-object v7, Lcom/google/wireless/googlenav/proto/j2me/hz;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/google/googlenav/ca;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBufType;Lcom/google/googlenav/ce;)V

    .line 99
    new-instance v6, Lcom/google/googlenav/cq;

    invoke-direct {v6, v5}, Lcom/google/googlenav/cq;-><init>(Lcom/google/googlenav/ca;)V

    aput-object v6, v4, v2

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 101
    :cond_33
    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->a([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/googlenav/bO;->f:Lcom/google/common/collect/ImmutableList;

    .line 103
    const/4 v2, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v13

    .line 104
    invoke-static {}, Lcom/google/common/collect/cj;->a()Lcom/google/common/collect/cj;

    move-result-object v14

    .line 105
    const/4 v10, 0x0

    .line 106
    invoke-virtual/range {p1 .. p1}, LaM/bG;->a()Lcom/google/googlenav/cn;

    move-result-object v15

    .line 107
    invoke-virtual {v15}, Lcom/google/googlenav/cn;->f()[Lcom/google/googlenav/cc;

    move-result-object v2

    if-eqz v2, :cond_58

    invoke-virtual {v15}, Lcom/google/googlenav/cn;->f()[Lcom/google/googlenav/cc;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_a0

    :cond_58
    const/4 v2, 0x1

    :goto_59
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/googlenav/bO;->h:Z

    .line 108
    const/4 v2, 0x0

    move v12, v2

    :goto_5f
    if-ge v12, v13, :cond_f7

    .line 109
    const/4 v2, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v12}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v16

    .line 114
    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v17

    .line 115
    move/from16 v0, v17

    new-array v0, v0, [Lcom/google/googlenav/bW;

    move-object/from16 v18, v0

    .line 117
    const/4 v8, 0x0

    .line 118
    const/4 v2, 0x0

    move v11, v2

    :goto_78
    move/from16 v0, v17

    if-ge v11, v0, :cond_c3

    .line 119
    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 121
    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v4

    .line 124
    if-nez v8, :cond_180

    move-object v9, v4

    .line 128
    :goto_8c
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v5

    .line 130
    new-array v6, v5, [I

    .line 131
    const/4 v2, 0x0

    :goto_94
    if-ge v2, v5, :cond_a2

    .line 132
    const/4 v7, 0x1

    invoke-virtual {v3, v7, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(II)I

    move-result v7

    aput v7, v6, v2

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_94

    .line 107
    :cond_a0
    const/4 v2, 0x0

    goto :goto_59

    .line 136
    :cond_a2
    new-instance v2, Lcom/google/googlenav/bW;

    invoke-virtual {v15, v4}, Lcom/google/googlenav/cn;->a(Ljava/lang/String;)Lcom/google/googlenav/cp;

    move-result-object v5

    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_c1

    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v7

    :goto_b4
    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/google/googlenav/bW;-><init>(Lcom/google/googlenav/bO;Ljava/lang/String;Lcom/google/googlenav/cp;[III)V

    aput-object v2, v18, v11

    .line 118
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    move-object v8, v9

    goto :goto_78

    .line 136
    :cond_c1
    const/4 v7, -0x1

    goto :goto_b4

    .line 143
    :cond_c3
    const/4 v2, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2, v10}, Lcom/google/googlenav/bO;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/util/List;

    move-result-object v5

    .line 145
    const/4 v2, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2, v10}, Lcom/google/googlenav/bO;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/util/List;

    move-result-object v6

    .line 150
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/googlenav/bO;->h:Z

    if-nez v2, :cond_e1

    invoke-virtual {v15, v8}, Lcom/google/googlenav/cn;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17d

    .line 152
    :cond_e1
    new-instance v2, Lcom/google/googlenav/bU;

    add-int/lit8 v9, v10, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, v18

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/google/googlenav/bU;-><init>(Lcom/google/googlenav/bO;[Lcom/google/googlenav/bW;Ljava/util/List;Ljava/util/List;I)V

    invoke-virtual {v14, v8, v2}, Lcom/google/common/collect/cj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v2, v9

    .line 108
    :goto_f1
    add-int/lit8 v3, v12, 0x1

    move v12, v3

    move v10, v2

    goto/16 :goto_5f

    .line 157
    :cond_f7
    invoke-virtual {v14}, Lcom/google/common/collect/cj;->f()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v14}, Lcom/google/common/collect/cj;->c()I

    move-result v3

    new-array v3, v3, [Lcom/google/googlenav/bU;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/googlenav/bU;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/googlenav/bO;->c:[Lcom/google/googlenav/bU;

    .line 159
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/googlenav/bO;->h:Z

    if-eqz v2, :cond_176

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/googlenav/bO;->c:[Lcom/google/googlenav/bU;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/googlenav/bO;->a([Lcom/google/googlenav/bU;)Ljava/util/Collection;

    move-result-object v2

    .line 164
    :goto_11b
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/googlenav/bT;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/googlenav/bT;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/googlenav/bO;->d:[Lcom/google/googlenav/bT;

    .line 166
    invoke-virtual/range {p1 .. p1}, LaM/bG;->b()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/googlenav/bO;->g:I

    .line 167
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/googlenav/bO;->g:I

    if-ltz v2, :cond_175

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/googlenav/bO;->d:[Lcom/google/googlenav/bT;

    if-eqz v2, :cond_175

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/googlenav/bO;->d:[Lcom/google/googlenav/bT;

    array-length v2, v2

    if-lez v2, :cond_175

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/googlenav/bO;->d:[Lcom/google/googlenav/bT;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/googlenav/bO;->g:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/google/googlenav/bT;->a()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlenav/bU;

    invoke-virtual {v2}, Lcom/google/googlenav/bU;->f()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/bO;->a(II)V

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/google/googlenav/bO;->b()Lcom/google/googlenav/bW;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/bW;->c()I

    move-result v2

    .line 171
    if-gez v2, :cond_170

    .line 172
    const/4 v2, 0x0

    .line 174
    :cond_170
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bO;->a(I)V

    .line 176
    :cond_175
    return-void

    .line 162
    :cond_176
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/google/googlenav/bO;->a(Lcom/google/googlenav/cn;Lcom/google/common/collect/cL;)Ljava/util/List;

    move-result-object v2

    goto :goto_11b

    :cond_17d
    move v2, v10

    goto/16 :goto_f1

    :cond_180
    move-object v9, v8

    goto/16 :goto_8c
.end method

.method static synthetic a(Lcom/google/googlenav/bO;Ljava/util/List;[I[Lcom/google/googlenav/ui/view/android/bj;[[Lcom/google/googlenav/bP;I)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct/range {p0 .. p5}, Lcom/google/googlenav/bO;->a(Ljava/util/List;[I[Lcom/google/googlenav/ui/view/android/bj;[[Lcom/google/googlenav/bP;I)I

    move-result v0

    return v0
.end method

.method private a(Ljava/util/List;[I[Lcom/google/googlenav/ui/view/android/bj;[[Lcom/google/googlenav/bP;I)I
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 579
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/bZ;

    .line 580
    const/4 v3, 0x0

    .line 581
    invoke-static {v1}, Lcom/google/googlenav/bZ;->b(Lcom/google/googlenav/bZ;)[Lcom/google/googlenav/bY;

    move-result-object v6

    array-length v7, v6

    const/4 v2, 0x0

    move v13, v2

    move v2, v3

    move v3, v13

    :goto_1a
    if-ge v3, v7, :cond_49

    aget-object v4, v6, v3

    .line 583
    :goto_1e
    move-object/from16 v0, p2

    array-length v8, v0

    if-ge v2, v8, :cond_3f

    move-object/from16 v0, p3

    array-length v8, v0

    if-ge v2, v8, :cond_3f

    invoke-static {v4}, Lcom/google/googlenav/bY;->b(Lcom/google/googlenav/bY;)I

    move-result v8

    aget v9, p2, v2

    if-eq v8, v9, :cond_3f

    .line 584
    aget-object v8, p4, p5

    new-instance v9, Lcom/google/googlenav/bP;

    const-string v10, "-"

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Lcom/google/googlenav/bP;-><init>(Ljava/lang/String;Z)V

    aput-object v9, v8, v2

    .line 585
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 587
    :cond_3f
    move-object/from16 v0, p3

    array-length v8, v0

    if-ge v2, v8, :cond_49

    move-object/from16 v0, p2

    array-length v8, v0

    if-lt v2, v8, :cond_4c

    .line 609
    :cond_49
    :goto_49
    add-int/lit8 p5, p5, 0x1

    .line 610
    goto :goto_4

    .line 590
    :cond_4c
    aget-object v8, p3, v2

    invoke-virtual {v8}, Lcom/google/googlenav/ui/view/android/bj;->a()Z

    move-result v8

    if-eqz v8, :cond_a5

    .line 591
    invoke-static {v1}, Lcom/google/googlenav/bZ;->c(Lcom/google/googlenav/bZ;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/google/googlenav/bO;->d(I)Lcom/google/googlenav/bU;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/googlenav/bU;->e()Ljava/lang/String;

    move-result-object v8

    .line 592
    aget-object v9, p3, v2

    invoke-virtual {v9, v8}, Lcom/google/googlenav/ui/view/android/bj;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_83

    .line 593
    aget-object v1, p4, p5

    new-instance v3, Lcom/google/googlenav/bQ;

    invoke-static {v4}, Lcom/google/googlenav/bY;->c(Lcom/google/googlenav/bY;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lcom/google/googlenav/bY;->c(Lcom/google/googlenav/bY;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-static {v4}, Lcom/google/googlenav/ui/bi;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v4

    invoke-direct {v3, v6, v4, v8}, Lcom/google/googlenav/bQ;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    aput-object v3, v1, v2

    goto :goto_49

    .line 598
    :cond_83
    aget-object v9, p4, p5

    new-instance v10, Lcom/google/googlenav/bQ;

    invoke-static {v4}, Lcom/google/googlenav/bY;->c(Lcom/google/googlenav/bY;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4}, Lcom/google/googlenav/bY;->c(Lcom/google/googlenav/bY;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-static {v4}, Lcom/google/googlenav/ui/bi;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v4

    invoke-direct {v10, v11, v4, v8}, Lcom/google/googlenav/bQ;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    aput-object v10, v9, v2

    .line 607
    :goto_9d
    add-int/lit8 v4, v2, 0x1

    .line 581
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto/16 :goto_1a

    .line 603
    :cond_a5
    aget-object v8, p4, p5

    new-instance v9, Lcom/google/googlenav/bP;

    invoke-static {v4}, Lcom/google/googlenav/bY;->c(Lcom/google/googlenav/bY;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4}, Lcom/google/googlenav/bY;->c(Lcom/google/googlenav/bY;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-static {v4}, Lcom/google/googlenav/ui/bi;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v4

    invoke-direct {v9, v10, v4}, Lcom/google/googlenav/bP;-><init>(Ljava/lang/String;Z)V

    aput-object v9, v8, v2

    goto :goto_9d

    .line 611
    :cond_c0
    return p5
.end method

.method static synthetic a(Lcom/google/googlenav/bO;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/googlenav/bO;->f:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method private a([Lcom/google/googlenav/bU;)Ljava/util/Collection;
    .registers 6
    .parameter

    .prologue
    .line 238
    invoke-static {}, Lcom/google/common/collect/Maps;->b()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 239
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    array-length v0, p1

    if-ge v1, v0, :cond_28

    .line 240
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lcom/google/googlenav/bU;->g()Ljava/lang/String;

    move-result-object v3

    .line 241
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bT;

    .line 242
    if-nez v0, :cond_1f

    .line 243
    new-instance v0, Lcom/google/googlenav/bT;

    invoke-direct {v0, p0, v3}, Lcom/google/googlenav/bT;-><init>(Lcom/google/googlenav/bO;Ljava/lang/String;)V

    .line 244
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_1f
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bT;->a(Lcom/google/googlenav/bU;)V

    .line 239
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 248
    :cond_28
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/googlenav/cn;Lcom/google/common/collect/cL;)Ljava/util/List;
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 210
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 211
    invoke-virtual {p1}, Lcom/google/googlenav/cn;->f()[Lcom/google/googlenav/cc;

    move-result-object v3

    .line 212
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    array-length v0, v3

    if-ge v1, v0, :cond_60

    .line 213
    aget-object v0, v3, v1

    .line 214
    new-instance v4, Lcom/google/googlenav/bT;

    invoke-virtual {v0}, Lcom/google/googlenav/cc;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/google/googlenav/bT;-><init>(Lcom/google/googlenav/bO;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Lcom/google/googlenav/cc;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/cf;

    .line 216
    invoke-virtual {v0}, Lcom/google/googlenav/cf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/common/collect/cL;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 217
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_38
    :goto_38
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bU;

    .line 218
    invoke-virtual {v0}, Lcom/google/googlenav/bU;->g()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Lcom/google/googlenav/bT;->a(Lcom/google/googlenav/bT;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 219
    invoke-virtual {v0, v1}, Lcom/google/googlenav/bU;->d(I)V

    .line 220
    invoke-virtual {v4, v0}, Lcom/google/googlenav/bT;->a(Lcom/google/googlenav/bU;)V

    goto :goto_38

    .line 224
    :cond_59
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 226
    :cond_60
    return-object v2
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/util/List;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-virtual {p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 189
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 190
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_1a

    .line 191
    invoke-virtual {p1, p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 192
    new-instance v4, Lcom/google/googlenav/bZ;

    invoke-direct {v4, v3, p3}, Lcom/google/googlenav/bZ;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 194
    :cond_1a
    return-object v2
.end method

.method private a(Lcom/google/googlenav/bT;Ljava/util/List;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 382
    new-instance v1, Lcom/google/googlenav/bS;

    const/16 v0, 0x4ac

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Lcom/google/googlenav/bT;->a(Lcom/google/googlenav/bT;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/google/googlenav/bT;->b(Lcom/google/googlenav/bT;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bU;

    invoke-virtual {v0}, Lcom/google/googlenav/bU;->f()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/bS;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-static {p1}, Lcom/google/googlenav/bT;->b(Lcom/google/googlenav/bT;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bU;

    .line 386
    new-instance v2, Lcom/google/googlenav/bS;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/googlenav/bU;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/googlenav/bU;->f()I

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/google/googlenav/bS;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 389
    :cond_62
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/google/googlenav/bO;->b()Lcom/google/googlenav/bW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bW;->c()I

    move-result v0

    return v0
.end method

.method public a(B)V
    .registers 2
    .parameter

    .prologue
    .line 263
    iput-byte p1, p0, Lcom/google/googlenav/bO;->a:B

    .line 264
    return-void
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/google/googlenav/bO;->i()Lcom/google/googlenav/bU;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/bU;->b(I)V

    .line 254
    return-void
.end method

.method public a(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 308
    iput p1, p0, Lcom/google/googlenav/bO;->e:I

    .line 309
    iget-object v0, p0, Lcom/google/googlenav/bO;->c:[Lcom/google/googlenav/bU;

    iget v1, p0, Lcom/google/googlenav/bO;->e:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/google/googlenav/bU;->c(I)V

    .line 310
    return-void
.end method

.method public b(I)Lcom/google/googlenav/E;
    .registers 3
    .parameter

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/googlenav/bO;->i()Lcom/google/googlenav/bU;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/bU;->a(I)Lcom/google/googlenav/E;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/googlenav/bW;
    .registers 2

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/google/googlenav/bO;->i()Lcom/google/googlenav/bU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bU;->d()Lcom/google/googlenav/bW;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/google/googlenav/bO;->i()Lcom/google/googlenav/bU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bU;->c()I

    move-result v0

    return v0
.end method

.method public c(I)I
    .registers 2
    .parameter

    .prologue
    .line 280
    return p1
.end method

.method public d()B
    .registers 2

    .prologue
    .line 268
    iget-byte v0, p0, Lcom/google/googlenav/bO;->a:B

    return v0
.end method

.method public d(I)Lcom/google/googlenav/bU;
    .registers 3
    .parameter

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/googlenav/bO;->c:[Lcom/google/googlenav/bU;

    array-length v0, v0

    if-ltz v0, :cond_a

    .line 346
    iget-object v0, p0, Lcom/google/googlenav/bO;->c:[Lcom/google/googlenav/bU;

    aget-object v0, v0, p1

    .line 348
    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public e()Lcom/google/googlenav/E;
    .registers 2

    .prologue
    .line 285
    iget-byte v0, p0, Lcom/google/googlenav/bO;->a:B

    if-nez v0, :cond_6

    .line 286
    const/4 v0, 0x0

    .line 288
    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/googlenav/bO;->i()Lcom/google/googlenav/bU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bU;->a()Lcom/google/googlenav/E;

    move-result-object v0

    goto :goto_5
.end method

.method public f()I
    .registers 2

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/google/googlenav/bO;->i()Lcom/google/googlenav/bU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bU;->b()I

    move-result v0

    return v0
.end method

.method public g()Ljava/util/List;
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/googlenav/bO;->f:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public h()LaM/bG;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/googlenav/bO;->b:LaM/bG;

    return-object v0
.end method

.method public i()Lcom/google/googlenav/bU;
    .registers 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/googlenav/bO;->c:[Lcom/google/googlenav/bU;

    array-length v0, v0

    if-ltz v0, :cond_c

    .line 338
    iget-object v0, p0, Lcom/google/googlenav/bO;->c:[Lcom/google/googlenav/bU;

    iget v1, p0, Lcom/google/googlenav/bO;->e:I

    aget-object v0, v0, v1

    .line 340
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public j()Ljava/util/List;
    .registers 5

    .prologue
    .line 363
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 364
    iget-boolean v0, p0, Lcom/google/googlenav/bO;->h:Z

    if-eqz v0, :cond_14

    .line 365
    const/4 v0, -0x1

    .line 372
    :goto_9
    const/4 v1, 0x0

    :goto_a
    iget-object v3, p0, Lcom/google/googlenav/bO;->d:[Lcom/google/googlenav/bT;

    array-length v3, v3

    if-ge v1, v3, :cond_2c

    .line 373
    if-ne v1, v0, :cond_24

    .line 372
    :goto_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 367
    :cond_14
    invoke-virtual {p0}, Lcom/google/googlenav/bO;->i()Lcom/google/googlenav/bU;

    move-result-object v0

    .line 368
    invoke-static {v0}, Lcom/google/googlenav/bU;->a(Lcom/google/googlenav/bU;)I

    move-result v0

    .line 369
    iget-object v1, p0, Lcom/google/googlenav/bO;->d:[Lcom/google/googlenav/bT;

    aget-object v1, v1, v0

    .line 370
    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/bO;->a(Lcom/google/googlenav/bT;Ljava/util/List;)V

    goto :goto_9

    .line 376
    :cond_24
    iget-object v3, p0, Lcom/google/googlenav/bO;->d:[Lcom/google/googlenav/bT;

    aget-object v3, v3, v1

    invoke-direct {p0, v3, v2}, Lcom/google/googlenav/bO;->a(Lcom/google/googlenav/bT;Ljava/util/List;)V

    goto :goto_11

    .line 378
    :cond_2c
    return-object v2
.end method

.method public k()Lcom/google/googlenav/bT;
    .registers 7

    .prologue
    .line 423
    iget-object v2, p0, Lcom/google/googlenav/bO;->d:[Lcom/google/googlenav/bT;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_1c

    aget-object v0, v2, v1

    .line 424
    invoke-static {v0}, Lcom/google/googlenav/bT;->b(Lcom/google/googlenav/bT;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/googlenav/bO;->i()Lcom/google/googlenav/bU;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 428
    :goto_17
    return-object v0

    .line 423
    :cond_18
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 428
    :cond_1c
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public l()[Lcom/google/googlenav/ui/view/android/bj;
    .registers 2

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/google/googlenav/bO;->k()Lcom/google/googlenav/bT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bT;->b()[Lcom/google/googlenav/ui/view/android/bj;

    move-result-object v0

    return-object v0
.end method

.method public m()I
    .registers 2

    .prologue
    .line 983
    iget-object v0, p0, Lcom/google/googlenav/bO;->b:LaM/bG;

    invoke-virtual {v0}, LaM/bG;->a()Lcom/google/googlenav/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/cn;->l()I

    move-result v0

    return v0
.end method
