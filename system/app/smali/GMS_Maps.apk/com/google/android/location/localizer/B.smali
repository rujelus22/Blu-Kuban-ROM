.class public Lcom/google/android/location/localizer/B;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/location/localizer/v;

.field private final b:Lcom/google/android/location/localizer/v;

.field private final c:Lcom/google/android/location/localizer/n;

.field private final d:Lc/t;

.field private final e:Li/c;


# direct methods
.method public constructor <init>(Lcom/google/android/location/localizer/x;Lcom/google/android/location/localizer/e;Lcom/google/android/location/localizer/n;Lc/t;Li/c;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/location/localizer/B;->a:Lcom/google/android/location/localizer/v;

    iput-object p2, p0, Lcom/google/android/location/localizer/B;->b:Lcom/google/android/location/localizer/v;

    iput-object p3, p0, Lcom/google/android/location/localizer/B;->c:Lcom/google/android/location/localizer/n;

    iput-object p4, p0, Lcom/google/android/location/localizer/B;->d:Lc/t;

    iput-object p5, p0, Lcom/google/android/location/localizer/B;->e:Li/c;

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;J)Lcom/google/android/location/localizer/w;
    .registers 7

    invoke-direct {p0, p1}, Lcom/google/android/location/localizer/B;->a(Ljava/util/Map;)Le/J;

    move-result-object v0

    sget-object v1, Le/J;->a:Le/J;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    sget-object v1, Le/J;->b:Le/J;

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/google/android/location/localizer/B;->a:Lcom/google/android/location/localizer/v;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/location/localizer/v;->a(Ljava/util/Map;Ljava/util/Map;J)Lcom/google/android/location/localizer/w;

    move-result-object v0

    goto :goto_9

    :cond_15
    iget-object v0, p0, Lcom/google/android/location/localizer/B;->b:Lcom/google/android/location/localizer/v;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/location/localizer/v;->a(Ljava/util/Map;Ljava/util/Map;J)Lcom/google/android/location/localizer/w;

    move-result-object v0

    goto :goto_9
.end method

.method private a(Ljava/util/Map;)Le/J;
    .registers 7

    const/4 v1, -0x1

    sget-object v0, Le/J;->a:Le/J;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    move-object v1, v0

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/H;

    iget-object v0, v0, Le/H;->i:Le/J;

    invoke-virtual {v0}, Le/J;->ordinal()I

    move-result v4

    if-le v4, v2, :cond_37

    invoke-static {}, Le/J;->a()Le/J;

    move-result-object v1

    if-ne v0, v1, :cond_2e

    :goto_2d
    return-object v0

    :cond_2e
    invoke-virtual {v0}, Le/J;->ordinal()I

    move-result v1

    :goto_32
    move v2, v1

    move-object v1, v0

    goto :goto_d

    :cond_35
    move-object v0, v1

    goto :goto_2d

    :cond_37
    move-object v0, v1

    move v1, v2

    goto :goto_32
.end method

.method private a(Le/K;Le/K;)Le/K;
    .registers 5

    if-eqz p1, :cond_6

    iget-object v0, p1, Le/K;->c:Le/x;

    if-nez v0, :cond_8

    :cond_6
    move-object p1, p2

    :cond_7
    :goto_7
    return-object p1

    :cond_8
    if-eqz p2, :cond_7

    iget-object v0, p2, Le/K;->c:Le/x;

    if-eqz v0, :cond_7

    iget-object v0, p1, Le/K;->c:Le/x;

    iget v0, v0, Le/x;->c:I

    iget-object v1, p2, Le/K;->c:Le/x;

    iget v1, v1, Le/x;->c:I

    if-le v0, v1, :cond_7

    move-object p1, p2

    goto :goto_7
.end method

.method private a(Ljava/lang/String;III)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " hasLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int v1, p2, p3

    sub-int v1, p4, v1

    const-string v2, " noLocation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cacheMiss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method static a(Ljava/util/Collection;D)Z
    .registers 15

    const/4 v9, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    move v0, v9

    :goto_9
    return v0

    :cond_a
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Le/H;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Le/H;

    if-eq v8, v6, :cond_1f

    iget v0, v8, Le/x;->a:I

    int-to-double v0, v0

    iget v2, v8, Le/x;->b:I

    int-to-double v2, v2

    iget v4, v6, Le/x;->a:I

    int-to-double v4, v4

    iget v6, v6, Le/x;->b:I

    int-to-double v6, v6

    invoke-static/range {v0 .. v7}, Le/g;->a(DDDD)D

    move-result-wide v0

    cmpg-double v0, v0, p1

    if-gez v0, :cond_1f

    move v0, v9

    goto :goto_9

    :cond_44
    const/4 v0, 0x1

    goto :goto_9
.end method

.method static a(Ljava/util/Set;)Z
    .registers 14

    const/4 v4, 0x1

    const/4 v7, 0x0

    const-wide/16 v0, 0x0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v3, v4

    move-wide v11, v0

    move-wide v1, v11

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide v9, 0xfcffff000000L

    and-long/2addr v5, v9

    if-eqz v3, :cond_29

    move-wide v0, v5

    move v2, v7

    :goto_25
    move v3, v2

    move-wide v11, v0

    move-wide v1, v11

    goto :goto_b

    :cond_29
    cmp-long v0, v5, v1

    if-eqz v0, :cond_31

    move v0, v4

    :goto_2e
    if-eqz v0, :cond_35

    :goto_30
    return v4

    :cond_31
    move v0, v7

    goto :goto_2e

    :cond_33
    move v4, v7

    goto :goto_30

    :cond_35
    move-wide v11, v1

    move-wide v0, v11

    move v2, v3

    goto :goto_25
.end method

.method private b(Ljava/util/List;)I
    .registers 5

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2b

    add-int/lit8 v0, v1, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    :goto_2a
    return v0

    :cond_2b
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2a
.end method


# virtual methods
.method a(Ljava/util/Set;Le/x;)Lcom/google/android/location/localizer/C;
    .registers 23

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/localizer/B;->e:Li/c;

    invoke-interface {v2}, Li/c;->b()J

    move-result-wide v14

    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v10, v1

    :goto_18
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_81

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/location/localizer/B;->d:Lc/t;

    invoke-virtual {v1, v9, v14, v15}, Lc/t;->a(Ljava/lang/Object;J)Lc/b;

    move-result-object v17

    if-eqz v17, :cond_7e

    invoke-virtual/range {v17 .. v17}, Lc/b;->d()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Le/H;

    invoke-virtual {v3}, Le/H;->a()Z

    move-result v1

    if-eqz v1, :cond_73

    iget-object v1, v3, Le/H;->i:Le/J;

    sget-object v2, Le/J;->a:Le/J;

    if-eq v1, v2, :cond_73

    const/4 v11, 0x1

    if-eqz p2, :cond_185

    move-object/from16 v0, p2

    iget v1, v0, Le/x;->c:I

    int-to-double v1, v1

    const-wide v4, 0x408f400000000000L

    div-double v18, v1, v4

    iget v1, v3, Le/H;->a:I

    int-to-double v1, v1

    iget v3, v3, Le/H;->b:I

    int-to-double v3, v3

    move-object/from16 v0, p2

    iget v5, v0, Le/x;->a:I

    int-to-double v5, v5

    move-object/from16 v0, p2

    iget v7, v0, Le/x;->b:I

    int-to-double v7, v7

    invoke-static/range {v1 .. v8}, Le/g;->a(DDDD)D

    move-result-wide v1

    cmpl-double v1, v1, v18

    if-lez v1, :cond_185

    const/4 v1, 0x0

    :goto_6a
    if-eqz v1, :cond_76

    invoke-virtual/range {v17 .. v17}, Lc/b;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v12, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_73
    :goto_73
    move v1, v10

    :goto_74
    move v10, v1

    goto :goto_18

    :cond_76
    invoke-virtual/range {v17 .. v17}, Lc/b;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v13, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_73

    :cond_7e
    add-int/lit8 v1, v10, 0x1

    goto :goto_74

    :cond_81
    if-nez p2, :cond_9d

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    const-wide v2, 0x40b3880000000000L

    invoke-static {v1, v2, v3}, Lcom/google/android/location/localizer/B;->a(Ljava/util/Collection;D)Z

    move-result v1

    if-eqz v1, :cond_9d

    new-instance v1, Lcom/google/android/location/localizer/C;

    sget-object v2, Le/p;->b:Le/p;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v3, v13}, Lcom/google/android/location/localizer/C;-><init>(Lcom/google/android/location/localizer/B;Le/p;Ljava/util/Map;Ljava/util/Map;)V

    :goto_9c
    return-object v1

    :cond_9d
    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_10b

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_10b

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/location/localizer/B;->a(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_db

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_d5

    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    const-wide v2, 0x40b3880000000000L

    invoke-static {v1, v2, v3}, Lcom/google/android/location/localizer/B;->a(Ljava/util/Collection;D)Z

    move-result v1

    if-eqz v1, :cond_d5

    new-instance v1, Lcom/google/android/location/localizer/C;

    sget-object v2, Le/p;->b:Le/p;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v3, v13}, Lcom/google/android/location/localizer/C;-><init>(Lcom/google/android/location/localizer/B;Le/p;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_9c

    :cond_d5
    invoke-interface {v12, v13}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v13}, Ljava/util/Map;->clear()V

    :cond_db
    :goto_db
    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v8

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_e7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/location/localizer/B;->d:Lc/t;

    invoke-virtual {v1, v3, v14, v15}, Lc/t;->a(Ljava/lang/Object;J)Lc/b;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/location/localizer/B;->d:Lc/t;

    const/4 v2, 0x0

    invoke-virtual {v4}, Lc/b;->c()I

    move-result v4

    sget-object v5, Le/H;->j:Le/H;

    move-wide v6, v14

    invoke-virtual/range {v1 .. v7}, Lc/t;->a(ZLjava/lang/Object;ILjava/lang/Object;J)V

    goto :goto_e7

    :cond_10b
    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_db

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_db

    invoke-interface {v12, v13}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v13}, Ljava/util/Map;->clear()V

    goto :goto_db

    :cond_11f
    if-lez v8, :cond_155

    const/4 v1, 0x5

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lt v8, v1, :cond_13e

    const-string v1, "Good cache hits. Computing WiFi location locally"

    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->size()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v8, v10, v2}, Lcom/google/android/location/localizer/B;->a(Ljava/lang/String;III)V

    new-instance v1, Lcom/google/android/location/localizer/C;

    sget-object v2, Le/p;->a:Le/p;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v12, v13}, Lcom/google/android/location/localizer/C;-><init>(Lcom/google/android/location/localizer/B;Le/p;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_9c

    :cond_13e
    const-string v1, "Not enough positive cache hits compared to misses. Need server request."

    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->size()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v8, v10, v2}, Lcom/google/android/location/localizer/B;->a(Ljava/lang/String;III)V

    new-instance v1, Lcom/google/android/location/localizer/C;

    sget-object v2, Le/p;->c:Le/p;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v3, v13}, Lcom/google/android/location/localizer/C;-><init>(Lcom/google/android/location/localizer/B;Le/p;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_9c

    :cond_155
    if-lez v10, :cond_16e

    const-string v1, "Too many cache  misses. Need server request."

    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->size()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v8, v10, v2}, Lcom/google/android/location/localizer/B;->a(Ljava/lang/String;III)V

    new-instance v1, Lcom/google/android/location/localizer/C;

    sget-object v2, Le/p;->c:Le/p;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v3, v13}, Lcom/google/android/location/localizer/C;-><init>(Lcom/google/android/location/localizer/B;Le/p;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_9c

    :cond_16e
    const-string v1, "Too many no-location APs. Will not compute a location nor go to the server."

    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->size()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v8, v10, v2}, Lcom/google/android/location/localizer/B;->a(Ljava/lang/String;III)V

    new-instance v1, Lcom/google/android/location/localizer/C;

    sget-object v2, Le/p;->b:Le/p;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v3, v13}, Lcom/google/android/location/localizer/C;-><init>(Lcom/google/android/location/localizer/B;Le/p;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_9c

    :cond_185
    move v1, v11

    goto/16 :goto_6a
.end method

.method public a(Ljava/util/List;Le/x;J)Le/K;
    .registers 16

    const/4 v7, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/location/localizer/B;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/location/localizer/B;->a(Ljava/util/Set;Le/x;)Lcom/google/android/location/localizer/C;

    move-result-object v0

    iget-object v6, v0, Lcom/google/android/location/localizer/C;->b:Ljava/util/Map;

    iget-object v10, v0, Lcom/google/android/location/localizer/C;->a:Le/p;

    iget-object v0, v0, Lcom/google/android/location/localizer/C;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v9, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_2b
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/L;

    iget-object v0, p0, Lcom/google/android/location/localizer/B;->c:Lcom/google/android/location/localizer/n;

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/google/android/location/localizer/B;->c:Lcom/google/android/location/localizer/n;

    invoke-virtual {v0, v7, v9, p3, p4}, Lcom/google/android/location/localizer/n;->a(Ljava/util/Map;Ljava/util/Map;J)Lcom/google/android/location/localizer/w;

    move-result-object v8

    if-eqz v8, :cond_e6

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_63

    new-instance v0, Le/K;

    invoke-virtual {v8}, Lcom/google/android/location/localizer/w;->a()Le/x;

    move-result-object v1

    sget-object v2, Le/p;->a:Le/p;

    iget-object v3, p0, Lcom/google/android/location/localizer/B;->e:Li/c;

    invoke-interface {v3}, Li/c;->a()J

    move-result-wide v3

    invoke-direct/range {v0 .. v6}, Le/K;-><init>(Le/x;Le/p;JLe/L;Ljava/util/Map;)V

    iget-object v1, v0, Le/K;->c:Le/x;

    if-eqz v1, :cond_64

    iget-object v1, v0, Le/K;->c:Le/x;

    iget v1, v1, Le/x;->c:I

    const/16 v2, 0x7530

    if-ge v1, v2, :cond_64

    :goto_62
    return-object v0

    :cond_63
    move-object v0, v7

    :cond_64
    invoke-virtual {v8}, Lcom/google/android/location/localizer/w;->a()Le/x;

    move-result-object v1

    iget-object v1, v1, Le/x;->e:Ljava/lang/String;

    move-object v8, v0

    move-object v0, v1

    :goto_6c
    sget-object v1, Le/p;->a:Le/p;

    if-eq v10, v1, :cond_82

    new-instance v0, Le/K;

    iget-object v1, p0, Lcom/google/android/location/localizer/B;->e:Li/c;

    invoke-interface {v1}, Li/c;->a()J

    move-result-wide v3

    move-object v1, v7

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Le/K;-><init>(Le/x;Le/p;JLe/L;Ljava/util/Map;)V

    invoke-direct {p0, v8, v0}, Lcom/google/android/location/localizer/B;->a(Le/K;Le/K;)Le/K;

    move-result-object v0

    goto :goto_62

    :cond_82
    invoke-direct {p0, v6, v9, p3, p4}, Lcom/google/android/location/localizer/B;->a(Ljava/util/Map;Ljava/util/Map;J)Lcom/google/android/location/localizer/w;

    move-result-object v1

    if-eqz v1, :cond_8e

    invoke-virtual {v1}, Lcom/google/android/location/localizer/w;->a()Le/x;

    move-result-object v2

    if-nez v2, :cond_a1

    :cond_8e
    new-instance v0, Le/K;

    sget-object v2, Le/p;->b:Le/p;

    iget-object v1, p0, Lcom/google/android/location/localizer/B;->e:Li/c;

    invoke-interface {v1}, Li/c;->a()J

    move-result-wide v3

    move-object v1, v7

    invoke-direct/range {v0 .. v6}, Le/K;-><init>(Le/x;Le/p;JLe/L;Ljava/util/Map;)V

    invoke-direct {p0, v8, v0}, Lcom/google/android/location/localizer/B;->a(Le/K;Le/K;)Le/K;

    move-result-object v0

    goto :goto_62

    :cond_a1
    invoke-virtual {v1}, Lcom/google/android/location/localizer/w;->a()Le/x;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/location/localizer/b;->c(Le/x;)Z

    move-result v2

    if-nez v2, :cond_be

    new-instance v0, Le/K;

    sget-object v2, Le/p;->b:Le/p;

    iget-object v1, p0, Lcom/google/android/location/localizer/B;->e:Li/c;

    invoke-interface {v1}, Li/c;->a()J

    move-result-wide v3

    move-object v1, v7

    invoke-direct/range {v0 .. v6}, Le/K;-><init>(Le/x;Le/p;JLe/L;Ljava/util/Map;)V

    invoke-direct {p0, v8, v0}, Lcom/google/android/location/localizer/B;->a(Le/K;Le/K;)Le/K;

    move-result-object v0

    goto :goto_62

    :cond_be
    new-instance v2, Le/z;

    invoke-virtual {v1}, Lcom/google/android/location/localizer/w;->a()Le/x;

    move-result-object v3

    invoke-direct {v2, v3}, Le/z;-><init>(Le/x;)V

    invoke-virtual {v1}, Lcom/google/android/location/localizer/w;->b()I

    move-result v1

    iput v1, v2, Le/z;->d:I

    iput-object v0, v2, Le/z;->e:Ljava/lang/String;

    new-instance v0, Le/K;

    invoke-virtual {v2}, Le/z;->a()Le/x;

    move-result-object v1

    sget-object v2, Le/p;->a:Le/p;

    iget-object v3, p0, Lcom/google/android/location/localizer/B;->e:Li/c;

    invoke-interface {v3}, Li/c;->a()J

    move-result-wide v3

    invoke-direct/range {v0 .. v6}, Le/K;-><init>(Le/x;Le/p;JLe/L;Ljava/util/Map;)V

    invoke-direct {p0, v8, v0}, Lcom/google/android/location/localizer/B;->a(Le/K;Le/K;)Le/K;

    move-result-object v0

    goto/16 :goto_62

    :cond_e6
    move-object v8, v7

    move-object v0, v7

    goto :goto_6c
.end method

.method a(Ljava/util/List;)Ljava/util/Map;
    .registers 10

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/L;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Le/L;->a()I

    move-result v5

    const/4 v1, 0x0

    move v2, v1

    :goto_1d
    if-ge v2, v5, :cond_9

    invoke-virtual {v0, v2}, Le/L;->a(I)Le/M;

    move-result-object v6

    iget-object v1, v6, Le/M;->a:Ljava/lang/Long;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_37

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v6, Le/M;->a:Ljava/lang/Long;

    invoke-interface {v3, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    iget v6, v6, Le/M;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1d

    :cond_44
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/google/android/location/localizer/B;->b(Ljava/util/List;)I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_51

    :cond_73
    return-object v2
.end method
