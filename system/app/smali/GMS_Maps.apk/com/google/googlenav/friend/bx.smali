.class public Lcom/google/googlenav/friend/bx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/friend/aN;


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/google/googlenav/friend/aN;

    const-string v1, "location_history"

    const/16 v2, 0x1e

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/friend/aN;-><init>(Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/google/googlenav/friend/bx;->a:Lcom/google/googlenav/friend/aN;

    .line 55
    return-void
.end method

.method private a(Ljava/util/Vector;II)Ljava/util/Vector;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x6

    .line 177
    new-instance v2, Ljava/util/Vector;

    sub-int v0, p3, p2

    invoke-direct {v2, v0}, Ljava/util/Vector;-><init>(I)V

    .line 178
    :goto_8
    if-ge p2, p3, :cond_2c

    .line 179
    invoke-virtual {p1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 180
    invoke-virtual {v0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 181
    if-nez v3, :cond_19

    .line 178
    :cond_16
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    .line 185
    :cond_19
    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v3, :cond_16

    .line 186
    invoke-virtual {v0, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v4

    .line 187
    invoke-virtual {v2, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 188
    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 185
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 192
    :cond_2c
    return-object v2
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/googlenav/friend/bx;->a:Lcom/google/googlenav/friend/aN;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/friend/aN;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    return v0
.end method

.method private b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 224
    if-nez p1, :cond_4

    .line 227
    :cond_3
    :goto_3
    return v0

    :cond_4
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private d(I)J
    .registers 4
    .parameter

    .prologue
    .line 235
    const/4 v0, 0x2

    if-ne v0, p1, :cond_8

    .line 236
    invoke-virtual {p0}, Lcom/google/googlenav/friend/bx;->c()J

    move-result-wide v0

    .line 242
    :goto_7
    return-wide v0

    .line 237
    :cond_8
    const/4 v0, 0x1

    if-ne v0, p1, :cond_10

    .line 238
    invoke-virtual {p0}, Lcom/google/googlenav/friend/bx;->b()J

    move-result-wide v0

    goto :goto_7

    .line 242
    :cond_10
    invoke-virtual {p0}, Lcom/google/googlenav/friend/bx;->a()J

    move-result-wide v0

    goto :goto_7
.end method

.method private e(I)J
    .registers 4
    .parameter

    .prologue
    .line 262
    const-wide/32 v0, 0x493e0

    return-wide v0
.end method


# virtual methods
.method a()J
    .registers 3

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/friend/bx;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/util/Vector;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 275
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 276
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 277
    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v1, v3, :cond_2d

    .line 279
    const/4 v0, 0x1

    :try_start_f
    invoke-virtual {p1, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 280
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    if-ne v4, p2, :cond_1d

    .line 281
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_1d} :catch_21

    .line 277
    :cond_1d
    :goto_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 283
    :catch_21
    move-exception v0

    .line 286
    const-string v4, "Filter location failed"

    invoke-static {v4, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    iget-object v0, p0, Lcom/google/googlenav/friend/bx;->a:Lcom/google/googlenav/friend/aN;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aN;->d()V

    goto :goto_1d

    .line 290
    :cond_2d
    return-object v2
.end method

.method a(Ljava/util/Vector;J)Ljava/util/Vector;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x5

    .line 307
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 310
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v3

    sub-long v4, v3, p2

    .line 315
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move-object v0, v2

    :goto_1d
    if-ltz v3, :cond_31

    .line 316
    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 319
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 320
    invoke-virtual {v0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gtz v6, :cond_3d

    .line 330
    :cond_31
    if-eqz v0, :cond_40

    invoke-virtual {v0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-gtz v0, :cond_40

    move-object v0, v1

    .line 335
    :goto_3c
    return-object v0

    .line 315
    :cond_3d
    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    :cond_40
    move-object v0, v2

    .line 335
    goto :goto_3c
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/bx;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 70
    :goto_6
    return-void

    .line 69
    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/friend/bx;->a:Lcom/google/googlenav/friend/aN;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/friend/aN;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_6
.end method

.method public a(I)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/google/googlenav/friend/bx;->e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 82
    if-nez v3, :cond_d

    .line 121
    :cond_c
    :goto_c
    return v2

    .line 90
    :cond_d
    invoke-virtual {p0, v0, p1}, Lcom/google/googlenav/friend/bx;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/util/Vector;

    move-result-object v0

    .line 96
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/bx;->d(I)J

    move-result-wide v3

    .line 97
    invoke-virtual {p0, v0, v3, v4}, Lcom/google/googlenav/friend/bx;->a(Ljava/util/Vector;J)Ljava/util/Vector;

    move-result-object v3

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/bx;->b(I)I

    move-result v0

    .line 99
    if-eqz v3, :cond_25

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v4, v0, :cond_2b

    .line 102
    :cond_25
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    goto :goto_c

    .line 114
    :cond_2b
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 116
    if-ne p1, v1, :cond_44

    .line 117
    invoke-virtual {p0, v3}, Lcom/google/googlenav/friend/bx;->a(Ljava/util/Vector;)Z

    move-result v0

    if-nez v0, :cond_42

    move v0, v1

    :goto_40
    move v2, v0

    .line 121
    goto :goto_c

    :cond_42
    move v0, v2

    .line 117
    goto :goto_40

    .line 119
    :cond_44
    invoke-virtual {p0, v0, v3}, Lcom/google/googlenav/friend/bx;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/Vector;)Z

    move-result v0

    if-nez v0, :cond_4c

    :goto_4a
    move v0, v1

    goto :goto_40

    :cond_4c
    move v1, v2

    goto :goto_4a
.end method

.method a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/Vector;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 205
    move v1, v2

    :goto_2
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_15

    .line 206
    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 207
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/friend/bx;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 210
    const/4 v2, 0x1

    .line 213
    :cond_15
    return v2

    .line 205
    :cond_16
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method a(Ljava/util/Vector;)Z
    .registers 11
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 145
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 149
    invoke-direct {p0, p1, v1, v0}, Lcom/google/googlenav/friend/bx;->a(Ljava/util/Vector;II)Ljava/util/Vector;

    move-result-object v5

    .line 150
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {p0, p1, v0, v2}, Lcom/google/googlenav/friend/bx;->a(Ljava/util/Vector;II)Ljava/util/Vector;

    move-result-object v6

    .line 154
    const-wide/16 v2, 0x0

    move v0, v1

    .line 155
    :goto_17
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v0, v7, :cond_2d

    .line 156
    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    .line 157
    invoke-virtual {v6, v7}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 158
    const-wide/high16 v7, 0x3ff0

    add-double/2addr v2, v7

    .line 155
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 163
    :cond_2d
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/googlenav/friend/bx;->a(Ljava/util/Vector;II)Ljava/util/Vector;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v2, v5

    .line 167
    invoke-virtual {p0, v4}, Lcom/google/googlenav/friend/bx;->c(I)D

    move-result-wide v5

    cmpg-double v0, v2, v5

    if-gez v0, :cond_44

    move v1, v4

    :cond_44
    return v1
.end method

.method b(I)I
    .registers 3
    .parameter

    .prologue
    .line 126
    const/4 v0, 0x4

    return v0
.end method

.method b()J
    .registers 3

    .prologue
    .line 253
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/friend/bx;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method c(I)D
    .registers 4
    .parameter

    .prologue
    .line 172
    const-wide v0, 0x3fe3333333333333L

    return-wide v0
.end method

.method c()J
    .registers 3

    .prologue
    .line 258
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/googlenav/friend/bx;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()V
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/googlenav/friend/bx;->a:Lcom/google/googlenav/friend/aN;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aN;->c()V

    .line 344
    return-void
.end method

.method e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/googlenav/friend/bx;->a:Lcom/google/googlenav/friend/aN;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aN;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method
