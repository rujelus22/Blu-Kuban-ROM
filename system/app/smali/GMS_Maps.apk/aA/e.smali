.class LaA/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaA/c;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln/al;I)Ljava/util/List;
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 341
    move-object v0, p1

    check-cast v0, Ln/aF;

    .line 342
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 343
    const/4 v1, 0x0

    move v2, v1

    :goto_a
    invoke-virtual {v0}, Ln/aF;->j()I

    move-result v1

    if-ge v2, v1, :cond_a3

    .line 344
    invoke-virtual {v0, v2}, Ln/aF;->a(I)Ln/l;

    move-result-object v4

    .line 345
    invoke-static {v4}, LaA/a;->a(Ln/l;)Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-static {v4}, LaA/a;->b(Ln/l;)Lat/B;

    move-result-object v5

    .line 347
    if-eqz v1, :cond_9e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_9e

    if-eqz v5, :cond_9e

    .line 348
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 349
    const-string v7, "label"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v1, "tile_type"

    invoke-interface {p1}, Ln/al;->g()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/dg;->f()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    const-string v1, "shard_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    const-string v7, "tile_key"

    invoke-interface {p1}, Ln/al;->g()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v1

    invoke-interface {p1}, Ln/al;->d()Ln/am;

    move-result-object v8

    invoke-static {v1, v8}, Lh/a;->a(Lcom/google/android/maps/driveabout/vector/dg;Ln/am;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 354
    invoke-interface {v4}, Ln/l;->a()Ln/m;

    move-result-object v1

    if-eqz v1, :cond_72

    .line 355
    const-string v1, "feature_id"

    invoke-interface {v4}, Ln/l;->a()Ln/m;

    move-result-object v7

    invoke-virtual {v7}, Ln/m;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_72
    if-eqz v5, :cond_8e

    .line 359
    const-string v1, "latitude"

    invoke-virtual {v5}, Lat/B;->c()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 360
    const-string v1, "longitude"

    invoke-virtual {v5}, Lat/B;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 362
    :cond_8e
    const-string v1, "rank"

    invoke-interface {v4}, Ln/l;->i()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 363
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_9e
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_a

    .line 366
    :cond_a3
    return-object v3
.end method
