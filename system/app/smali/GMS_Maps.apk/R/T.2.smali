.class public Lr/T;
.super Lr/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lac/p;ILjava/util/Locale;Ljava/io/File;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    const-string v2, "lts"

    new-instance v3, Lr/K;

    const/16 v0, 0x100

    invoke-direct {v3, v0}, Lr/K;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lr/f;-><init>(Lac/p;Ljava/lang/String;Lr/aE;Lr/s;IZILjava/util/Locale;Ljava/io/File;)V

    .line 118
    return-void
.end method

.method private static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    const/16 v2, 0x22

    .line 330
    const-string v0, ""

    .line 331
    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 332
    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 333
    if-ltz v1, :cond_14

    .line 336
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 339
    :cond_14
    return-object v0
.end method

.method private static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 343
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ln/ag;Ln/am;)Ln/l;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x7

    const/4 v0, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v9, 0x0

    .line 284
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 285
    if-nez v1, :cond_18

    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    if-nez v1, :cond_19

    .line 322
    :cond_18
    :goto_18
    return-object v0

    .line 292
    :cond_19
    invoke-virtual {p0, v5, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 293
    const/16 v1, 0x1f

    invoke-virtual {v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 296
    const/16 v1, 0x1f

    invoke-virtual {v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 299
    invoke-static {v1}, Lt/e;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/Q;

    move-result-object v1

    .line 300
    invoke-virtual {p2}, Ln/am;->h()Ln/aa;

    move-result-object v2

    invoke-virtual {v2, v1}, Ln/aa;->a(Ln/Q;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 305
    invoke-virtual {p0, v4, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 306
    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 307
    invoke-static {v0, v5}, Lr/T;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    .line 308
    const/4 v4, 0x4

    invoke-static {v0, v4}, Lr/T;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v4

    .line 309
    const/16 v5, 0xa

    invoke-static {v0, v5}, Lr/T;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v6

    .line 311
    invoke-virtual {v0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-virtual {v0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    div-int/lit8 v8, v0, 0xa

    .line 313
    :goto_5c
    invoke-static {v3}, Lr/T;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v3

    .line 314
    new-array v10, v9, [I

    .line 316
    sget-object v5, Ln/m;->a:Ln/m;

    .line 318
    :try_start_64
    invoke-static {v7}, Ln/m;->a(Ljava/lang/String;)Ln/m;
    :try_end_67
    .catch Ljava/lang/IllegalArgumentException; {:try_start_64 .. :try_end_67} :catch_71

    move-result-object v5

    :goto_68
    move-object v0, p2

    move-object v7, p1

    .line 322
    invoke-static/range {v0 .. v10}, Ln/R;->a(Ln/am;Ln/Q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln/m;Ljava/lang/String;Ln/ag;II[I)Ln/R;

    move-result-object v0

    goto :goto_18

    :cond_6f
    move v8, v9

    .line 311
    goto :goto_5c

    .line 319
    :catch_71
    move-exception v0

    goto :goto_68
.end method


# virtual methods
.method public a(Ln/am;Z)Ln/al;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 130
    instance-of v0, p1, Lr/V;

    if-nez v0, :cond_c

    .line 131
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "DashServerLayerTileStore only supports LayerCoords"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_c
    invoke-super {p0, p1, p2}, Lr/f;->a(Ln/am;Z)Ln/al;

    move-result-object v0

    return-object v0
.end method

.method public a(Ln/am;Lr/aF;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 122
    instance-of v0, p1, Lr/V;

    if-nez v0, :cond_c

    .line 123
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "DashServerLayerTileStore only supports LayerCoords"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_c
    invoke-super {p0, p1, p2}, Lr/f;->a(Ln/am;Lr/aF;)V

    .line 126
    return-void
.end method

.method public b()Lcom/google/android/maps/driveabout/vector/dg;
    .registers 2

    .prologue
    .line 138
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->h:Lcom/google/android/maps/driveabout/vector/dg;

    return-object v0
.end method

.method protected m()Lr/j;
    .registers 3

    .prologue
    .line 143
    new-instance v0, Lr/U;

    iget-object v1, p0, Lr/T;->d:Lcom/google/googlenav/common/a;

    invoke-direct {v0, v1}, Lr/U;-><init>(Lcom/google/googlenav/common/a;)V

    return-object v0
.end method
