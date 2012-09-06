.class public Lcom/google/googlenav/bK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-direct {p0, p1}, Lcom/google/googlenav/bK;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/bK;->a:Ljava/util/List;

    .line 39
    :goto_d
    return-void

    .line 32
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/bK;->a:Ljava/util/List;

    .line 33
    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 34
    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v1, :cond_26

    .line 35
    invoke-virtual {p1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 36
    invoke-direct {p0, v2}, Lcom/google/googlenav/bK;->i(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 38
    :cond_26
    iget-object v0, p0, Lcom/google/googlenav/bK;->a:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/googlenav/bK;->a(Ljava/util/List;)V

    goto :goto_d
.end method

.method public static a(I)I
    .registers 2
    .parameter

    .prologue
    .line 193
    packed-switch p0, :pswitch_data_14

    .line 210
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 195
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 197
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_4

    .line 199
    :pswitch_9
    const/4 v0, 0x2

    goto :goto_4

    .line 201
    :pswitch_b
    const/4 v0, 0x3

    goto :goto_4

    .line 203
    :pswitch_d
    const/4 v0, 0x4

    goto :goto_4

    .line 205
    :pswitch_f
    const/4 v0, 0x5

    goto :goto_4

    .line 207
    :pswitch_11
    const/4 v0, 0x6

    goto :goto_4

    .line 193
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method private a(IILcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 230
    const/4 v0, 0x6

    invoke-virtual {p3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 231
    const/4 v1, 0x7

    invoke-virtual {p3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 232
    :goto_c
    if-ge p1, p2, :cond_3b

    .line 236
    add-int/lit8 v2, p1, 0x6

    rem-int/lit8 v2, v2, 0x7

    invoke-static {v0, v7}, Lcom/google/googlenav/common/io/protocol/b;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v0, v6}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/google/googlenav/ui/bi;->a(III)I

    move-result v2

    .line 242
    add-int/lit8 v3, p1, 0x6

    rem-int/lit8 v3, v3, 0x7

    invoke-static {v1, v7}, Lcom/google/googlenav/common/io/protocol/b;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v1, v6}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/google/googlenav/ui/bi;->a(III)I

    move-result v3

    .line 248
    new-instance v4, Lcom/google/googlenav/bL;

    invoke-direct {v4, v2, v3}, Lcom/google/googlenav/bL;-><init>(II)V

    invoke-direct {p0, v4}, Lcom/google/googlenav/bK;->a(Lcom/google/googlenav/bL;)V

    .line 232
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 250
    :cond_3b
    return-void
.end method

.method private a(Lcom/google/googlenav/bL;)V
    .registers 4
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/googlenav/bK;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/bK;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/googlenav/bK;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bL;

    invoke-virtual {p1, v0}, Lcom/google/googlenav/bL;->a(Lcom/google/googlenav/bL;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 216
    :cond_1e
    iget-object v0, p0, Lcom/google/googlenav/bK;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_23
    :goto_23
    return-void

    .line 218
    :cond_24
    const/4 v0, 0x0

    move v1, v0

    :goto_26
    iget-object v0, p0, Lcom/google/googlenav/bK;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 219
    iget-object v0, p0, Lcom/google/googlenav/bK;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bL;

    .line 220
    invoke-virtual {p1, v0}, Lcom/google/googlenav/bL;->a(Lcom/google/googlenav/bL;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 221
    iget-object v0, p0, Lcom/google/googlenav/bK;->a:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_23

    .line 218
    :cond_42
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_26
.end method

.method private a(Ljava/util/List;)V
    .registers 9
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 301
    move v2, v3

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3e

    .line 302
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bL;

    .line 303
    add-int/lit8 v1, v2, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v1, v4, :cond_37

    move v4, v3

    .line 304
    :goto_17
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/bL;

    .line 306
    invoke-virtual {v0}, Lcom/google/googlenav/bL;->b()I

    move-result v5

    invoke-virtual {v1}, Lcom/google/googlenav/bL;->a()I

    move-result v6

    if-ne v5, v6, :cond_3b

    .line 308
    invoke-virtual {v1}, Lcom/google/googlenav/bL;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bL;->a(I)V

    .line 311
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 312
    if-nez v4, :cond_3f

    .line 313
    add-int/lit8 v0, v2, -0x1

    :goto_35
    move v2, v0

    .line 318
    goto :goto_2

    .line 303
    :cond_37
    add-int/lit8 v1, v2, 0x1

    move v4, v1

    goto :goto_17

    .line 316
    :cond_3b
    add-int/lit8 v0, v2, 0x1

    goto :goto_35

    .line 319
    :cond_3e
    return-void

    :cond_3f
    move v0, v2

    goto :goto_35
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 77
    if-nez p1, :cond_4

    .line 85
    :cond_3
    :goto_3
    return v0

    .line 82
    :cond_4
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/google/googlenav/common/io/protocol/b;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 85
    const/4 v1, 0x5

    invoke-static {p1, v1}, Lcom/google/googlenav/common/io/protocol/b;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 90
    if-nez p1, :cond_4

    .line 98
    :cond_3
    :goto_3
    return v0

    .line 95
    :cond_4
    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/google/googlenav/common/io/protocol/b;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 98
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    invoke-static {p1, v3}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 106
    :goto_9
    return v1

    :cond_a
    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v2

    if-ne v2, v3, :cond_12

    :goto_10
    move v1, v0

    goto :goto_9

    :cond_12
    move v0, v1

    goto :goto_10
.end method

.method private d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 111
    if-nez p1, :cond_4

    .line 119
    :cond_3
    :goto_3
    return v0

    .line 114
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/googlenav/bK;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/bK;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/bK;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 124
    if-nez p1, :cond_4

    .line 132
    :cond_3
    :goto_3
    return v0

    .line 127
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/googlenav/bK;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/bK;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/bK;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 137
    if-nez p1, :cond_5

    .line 161
    :cond_4
    :goto_4
    return v0

    .line 142
    :cond_5
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 143
    if-ne v2, v1, :cond_14

    .line 146
    invoke-virtual {p1, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/bK;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    goto :goto_4

    .line 148
    :cond_14
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 152
    invoke-virtual {p1, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/googlenav/bK;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {p1, v1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/googlenav/bK;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v2

    if-nez v2, :cond_3f

    :cond_2b
    invoke-virtual {p1, v1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/googlenav/bK;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/googlenav/bK;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3f
    move v0, v1

    goto :goto_4
.end method

.method private g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 171
    if-nez p1, :cond_5

    .line 184
    :cond_4
    :goto_4
    return v0

    .line 176
    :cond_5
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    move v2, v0

    .line 177
    :goto_a
    if-ge v2, v3, :cond_19

    .line 178
    invoke-virtual {p1, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 179
    invoke-direct {p0, v4}, Lcom/google/googlenav/bK;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_19
    move v0, v1

    .line 184
    goto :goto_4
.end method

.method private h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 6
    .parameter

    .prologue
    .line 258
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 259
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v0

    .line 262
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private i(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 268
    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 269
    if-ne v0, v2, :cond_12

    .line 270
    invoke-virtual {p1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 273
    invoke-direct {p0, v3, v5, v0}, Lcom/google/googlenav/bK;->a(IILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 298
    :cond_11
    :goto_11
    return-void

    .line 275
    :cond_12
    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 278
    invoke-virtual {p1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/bK;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 279
    invoke-virtual {p1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 280
    invoke-virtual {p1, v2, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 288
    :goto_27
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 289
    invoke-virtual {v0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 292
    invoke-static {v2, v4}, Lcom/google/googlenav/common/io/protocol/b;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v2

    long-to-int v2, v2

    .line 294
    invoke-static {v0, v4}, Lcom/google/googlenav/common/io/protocol/b;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v3

    long-to-int v0, v3

    .line 296
    invoke-direct {p0, v2, v0, v1}, Lcom/google/googlenav/bK;->a(IILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_11

    .line 282
    :cond_3e
    invoke-virtual {p1, v2, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 283
    invoke-virtual {p1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto :goto_27
.end method


# virtual methods
.method public a(J)Lcom/google/googlenav/bM;
    .registers 9
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 48
    iget-object v0, p0, Lcom/google/googlenav/bK;->a:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/bK;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 49
    :cond_d
    const/4 v0, 0x0

    .line 70
    :goto_e
    return-object v0

    .line 52
    :cond_f
    invoke-static {p1, p2}, Lcom/google/googlenav/ui/bi;->a(J)I

    move-result v2

    .line 55
    iget-object v0, p0, Lcom/google/googlenav/bK;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bL;

    .line 56
    invoke-virtual {v0}, Lcom/google/googlenav/bL;->a()I

    move-result v3

    if-ge v2, v3, :cond_3f

    .line 57
    new-instance v1, Lcom/google/googlenav/bM;

    invoke-virtual {v0}, Lcom/google/googlenav/bL;->a()I

    move-result v3

    invoke-static {v3}, Lcom/google/googlenav/ui/bi;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/googlenav/bL;->a()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-direct {v1, v3, v5, v0}, Lcom/google/googlenav/bM;-><init>(Ljava/lang/String;ZI)V

    move-object v0, v1

    goto :goto_e

    .line 60
    :cond_3f
    invoke-virtual {v0}, Lcom/google/googlenav/bL;->b()I

    move-result v3

    if-ge v2, v3, :cond_19

    .line 61
    new-instance v1, Lcom/google/googlenav/bM;

    invoke-virtual {v0}, Lcom/google/googlenav/bL;->b()I

    move-result v3

    invoke-static {v3}, Lcom/google/googlenav/ui/bi;->b(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/google/googlenav/bL;->b()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-direct {v1, v3, v4, v0}, Lcom/google/googlenav/bM;-><init>(Ljava/lang/String;ZI)V

    move-object v0, v1

    goto :goto_e

    .line 69
    :cond_5a
    iget-object v0, p0, Lcom/google/googlenav/bK;->a:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bL;

    .line 70
    new-instance v1, Lcom/google/googlenav/bM;

    invoke-virtual {v0}, Lcom/google/googlenav/bL;->a()I

    move-result v3

    invoke-static {v3}, Lcom/google/googlenav/ui/bi;->b(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x93a80

    sub-int v2, v4, v2

    invoke-virtual {v0}, Lcom/google/googlenav/bL;->a()I

    move-result v0

    add-int/2addr v0, v2

    invoke-direct {v1, v3, v5, v0}, Lcom/google/googlenav/bM;-><init>(Ljava/lang/String;ZI)V

    move-object v0, v1

    goto :goto_e
.end method
