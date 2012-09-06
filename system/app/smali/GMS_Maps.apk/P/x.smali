.class public Lp/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lq/b;

.field private volatile b:Z


# direct methods
.method public constructor <init>(Lq/b;)V
    .registers 3
    .parameter

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lp/x;->a:Lq/b;

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lp/x;->b:Z

    .line 133
    return-void
.end method

.method private a(Ljava/util/HashMap;Lp/d;)Lp/A;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 273
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 274
    iget-object v0, p2, Lp/d;->c:Lq/e;

    .line 275
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/B;

    .line 276
    :goto_e
    if-eqz v0, :cond_16

    .line 277
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, v0, Lp/B;->f:Lp/B;

    goto :goto_e

    .line 280
    :cond_16
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/z;

    iget-object v5, v0, Lp/z;->a:Lp/d;

    .line 282
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [Lq/e;

    .line 283
    array-length v0, v6

    new-array v7, v0, [I

    move v2, v1

    .line 285
    :goto_2e
    array-length v0, v6

    if-ge v1, v0, :cond_4a

    .line 286
    array-length v0, v6

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/B;

    .line 287
    iget-object v3, v0, Lp/B;->b:Lq/e;

    aput-object v3, v6, v1

    .line 288
    iget v3, v0, Lp/B;->c:I

    .line 289
    sub-int v0, v3, v2

    aput v0, v7, v1

    .line 285
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v2, v3

    goto :goto_2e

    .line 292
    :cond_4a
    new-instance v0, Lp/A;

    invoke-direct {v0, v5, p2, v6, v7}, Lp/A;-><init>(Lp/d;Lp/d;[Lq/e;[I)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Collection;Ljava/util/Collection;)Lp/A;
    .registers 22
    .parameter
    .parameter

    .prologue
    .line 151
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lp/x;->b:Z

    .line 153
    new-instance v8, Ljava/util/PriorityQueue;

    const/16 v2, 0x64

    new-instance v3, Lp/y;

    invoke-direct {v3}, Lp/y;-><init>()V

    invoke-direct {v8, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 155
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 157
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp/d;

    .line 158
    new-instance v4, Lp/z;

    iget v5, v2, Lp/d;->h:I

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v2}, Lp/z;-><init>(ILp/B;Lp/d;)V

    .line 160
    iget-object v2, v2, Lp/d;->c:Lq/e;

    invoke-virtual {v9, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {v8, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 173
    :cond_37
    const/4 v4, 0x0

    .line 174
    const v3, 0x7fffffff

    .line 175
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp/d;

    .line 176
    new-instance v6, Lp/z;

    const v7, 0x7fffffff

    const/4 v10, 0x0

    invoke-direct {v6, v7, v10, v2}, Lp/z;-><init>(ILp/B;Lp/d;)V

    .line 177
    iget-object v7, v2, Lp/d;->c:Lq/e;

    invoke-virtual {v9, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget v6, v2, Lp/d;->h:I

    if-ge v6, v3, :cond_12b

    .line 179
    iget-object v3, v2, Lp/d;->b:Ln/Q;

    .line 180
    iget v2, v2, Lp/d;->h:I

    :goto_61
    move-object v4, v3

    move v3, v2

    .line 182
    goto :goto_3f

    .line 183
    :cond_64
    if-nez v4, :cond_68

    .line 184
    const/4 v2, 0x0

    .line 257
    :goto_67
    return-object v2

    .line 188
    :cond_68
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v2

    invoke-virtual {v2}, Lt/k;->C()Lt/l;

    move-result-object v2

    invoke-virtual {v2}, Lt/l;->l()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v4}, Ln/Q;->e()D

    move-result-wide v5

    mul-double v10, v2, v5

    .line 191
    const/4 v7, 0x0

    .line 197
    const v6, 0x7fffffff

    .line 199
    :cond_7f
    :goto_7f
    invoke-virtual {v8}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8c

    .line 200
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lp/x;->b:Z

    if-nez v2, :cond_95

    .line 203
    const/4 v7, 0x0

    .line 257
    :cond_8c
    if-eqz v7, :cond_125

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7}, Lp/x;->a(Ljava/util/HashMap;Lp/d;)Lp/A;

    move-result-object v2

    goto :goto_67

    .line 208
    :cond_95
    invoke-virtual {v8}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lp/B;

    .line 209
    iget-boolean v2, v3, Lp/B;->g:Z

    if-nez v2, :cond_7f

    .line 212
    const/4 v2, 0x1

    iput-boolean v2, v3, Lp/B;->g:Z

    .line 214
    instance-of v2, v3, Lp/z;

    if-eqz v2, :cond_128

    move-object v2, v3

    .line 215
    check-cast v2, Lp/z;

    .line 216
    iget-object v5, v2, Lp/z;->a:Lp/d;

    iget-boolean v5, v5, Lp/d;->a:Z

    if-nez v5, :cond_128

    .line 217
    iget v5, v3, Lp/B;->c:I

    iget-object v12, v2, Lp/z;->a:Lp/d;

    iget v12, v12, Lp/d;->h:I

    add-int/2addr v5, v12

    .line 218
    if-ge v5, v6, :cond_128

    .line 222
    iget-object v2, v2, Lp/z;->a:Lp/d;

    move-object v6, v2

    .line 228
    :goto_bc
    iget-object v12, v3, Lp/B;->b:Lq/e;

    .line 229
    invoke-virtual {v12}, Lq/e;->d()I

    move-result v13

    .line 230
    const/4 v2, 0x0

    move v7, v2

    :goto_c4
    if-ge v7, v13, :cond_121

    .line 231
    invoke-virtual {v12, v7}, Lq/e;->a(I)Lq/a;

    move-result-object v14

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lp/x;->a:Lq/b;

    invoke-virtual {v14, v2}, Lq/a;->a(Lq/b;)Lq/e;

    move-result-object v15

    .line 233
    if-nez v15, :cond_d8

    .line 230
    :cond_d4
    :goto_d4
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_c4

    .line 236
    :cond_d8
    invoke-virtual {v9, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp/B;

    .line 237
    if-nez v2, :cond_105

    .line 238
    new-instance v2, Lp/B;

    const v16, 0x7fffffff

    invoke-virtual {v15}, Lq/e;->e()Ln/Q;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ln/Q;->c(Ln/Q;)F

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

    invoke-direct {v2, v0, v15, v3, v1}, Lp/B;-><init>(ILq/e;Lp/B;I)V

    .line 240
    invoke-virtual {v9, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_105
    iget v15, v3, Lp/B;->c:I

    invoke-virtual {v14}, Lq/a;->a()I

    move-result v14

    add-int/2addr v14, v15

    .line 246
    iget v15, v2, Lp/B;->c:I

    if-ge v14, v15, :cond_d4

    .line 248
    iput v14, v2, Lp/B;->c:I

    .line 249
    iget v15, v2, Lp/B;->d:I

    add-int/2addr v14, v15

    iput v14, v2, Lp/B;->e:I

    .line 250
    iput-object v3, v2, Lp/B;->f:Lp/B;

    .line 251
    iget v14, v2, Lp/B;->c:I

    if-gt v14, v5, :cond_d4

    .line 252
    invoke-virtual {v8, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_d4

    :cond_121
    move-object v7, v6

    move v6, v5

    .line 256
    goto/16 :goto_7f

    .line 257
    :cond_125
    const/4 v2, 0x0

    goto/16 :goto_67

    :cond_128
    move v5, v6

    move-object v6, v7

    goto :goto_bc

    :cond_12b
    move v2, v3

    move-object v3, v4

    goto/16 :goto_61
.end method

.method public a()V
    .registers 2

    .prologue
    .line 262
    iget-boolean v0, p0, Lp/x;->b:Z

    if-eqz v0, :cond_4

    .line 265
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lp/x;->b:Z

    .line 266
    return-void
.end method
