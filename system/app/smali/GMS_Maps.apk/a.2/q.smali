.class La/q;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/SortedMap;[Ljava/lang/Double;)D
    .registers 13

    const/4 v9, 0x1

    new-instance v0, Ll/c;

    invoke-direct {v0, p2}, Ll/c;-><init>([Ljava/lang/Double;)V

    invoke-virtual {v0}, Ll/c;->b()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_15
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, LW/a;

    invoke-virtual {v5, v9}, LW/a;->e(I)F

    move-result v1

    float-to-double v1, v1

    const/4 v3, 0x2

    invoke-virtual {v5, v3}, LW/a;->e(I)F

    move-result v3

    float-to-double v3, v3

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, LW/a;->e(I)F

    move-result v5

    float-to-double v5, v5

    invoke-virtual/range {v0 .. v6}, Ll/c;->b(DDD)Ll/c;

    move-result-object v3

    invoke-virtual {v3}, Ll/c;->a()D

    move-result-wide v1

    invoke-virtual {v3, v0}, Ll/c;->a(Ll/c;)V

    invoke-virtual {v3}, Ll/c;->a()D

    move-result-wide v3

    cmpg-double v3, v3, v1

    if-gez v3, :cond_4f

    const-wide/high16 v3, -0x4010

    mul-double/2addr v1, v3

    :cond_4f
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_57
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_64

    invoke-direct {p0, v7}, La/q;->a(Ljava/util/List;)[D

    move-result-object v0

    aget-wide v0, v0, v9

    :goto_63
    return-wide v0

    :cond_64
    const-wide/16 v0, 0x0

    goto :goto_63
.end method

.method private a(Ljava/util/SortedMap;Ljava/util/Map;)V
    .registers 51

    const-wide/16 v28, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v18, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    invoke-interface/range {p1 .. p1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    const-wide/16 v16, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/SortedMap;->size()I

    move-result v36

    if-lez v36, :cond_1e5

    invoke-interface/range {p1 .. p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v37

    move-wide/from16 v30, v28

    move-wide/from16 v28, v26

    move-wide/from16 v26, v24

    move-wide/from16 v24, v22

    move-wide/from16 v22, v20

    move-wide/from16 v20, v18

    move-wide/from16 v18, v16

    move-wide/from16 v16, v14

    move-wide v14, v12

    move v13, v11

    move-wide v11, v9

    move-wide v9, v7

    move-wide v7, v5

    move v6, v4

    :goto_52
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ed

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LW/a;

    const/16 v38, 0x1

    move/from16 v0, v38

    invoke-virtual {v5, v0}, LW/a;->e(I)F

    move-result v38

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v38, v0

    const/16 v40, 0x2

    move/from16 v0, v40

    invoke-virtual {v5, v0}, LW/a;->e(I)F

    move-result v40

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    const/16 v42, 0x3

    move/from16 v0, v42

    invoke-virtual {v5, v0}, LW/a;->e(I)F

    move-result v5

    float-to-double v0, v5

    move-wide/from16 v42, v0

    add-double v30, v30, v38

    add-double v26, v26, v40

    add-double v22, v22, v42

    const-wide/high16 v44, 0x4000

    move-wide/from16 v0, v38

    move-wide/from16 v2, v44

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v44

    add-double v28, v28, v44

    const-wide/high16 v44, 0x4000

    move-wide/from16 v0, v40

    move-wide/from16 v2, v44

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v44

    add-double v24, v24, v44

    const-wide/high16 v44, 0x4000

    invoke-static/range {v42 .. v45}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v44

    add-double v20, v20, v44

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v44

    sub-long v44, v44, v32

    const-wide/32 v46, 0x59682f00

    cmp-long v5, v44, v46

    if-gtz v5, :cond_ca

    add-int/lit8 v13, v13, 0x1

    add-double v18, v18, v38

    add-double v16, v16, v40

    add-double v14, v14, v42

    :cond_ca
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v34, v4

    const-wide/32 v44, 0x59682f00

    cmp-long v4, v4, v44

    if-gtz v4, :cond_1e6

    add-int/lit8 v4, v6, 0x1

    add-double v11, v11, v38

    add-double v9, v9, v40

    add-double v5, v7, v42

    move-wide v7, v9

    move-wide v9, v11

    :goto_e7
    move-wide v11, v9

    move-wide v9, v7

    move-wide v7, v5

    move v6, v4

    goto/16 :goto_52

    :cond_ed
    move/from16 v0, v36

    int-to-double v4, v0

    div-double v4, v30, v4

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v26, v26, v30

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v22, v22, v30

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    const-wide/high16 v30, 0x4000

    move-wide/from16 v0, v30

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    sub-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v24, v24, v30

    const-wide/high16 v30, 0x4000

    move-wide/from16 v0, v26

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    sub-double v24, v24, v30

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v20, v20, v30

    const-wide/high16 v30, 0x4000

    move-wide/from16 v0, v22

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    sub-double v20, v20, v30

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    sget-object v30, La/r;->a:La/r;

    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Double;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v31, v32

    const/4 v4, 0x1

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v31, v4

    const/4 v4, 0x2

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v31, v4

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, La/r;->b:La/r;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Double;

    const/16 v22, 0x0

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    aput-object v23, v5, v22

    const/16 v22, 0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    aput-object v23, v5, v22

    const/16 v22, 0x2

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    aput-object v20, v5, v22

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, La/r;->d:La/r;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Double;

    const/16 v20, 0x0

    int-to-double v0, v13

    move-wide/from16 v21, v0

    div-double v18, v18, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v5, v20

    const/16 v18, 0x1

    int-to-double v0, v13

    move-wide/from16 v19, v0

    div-double v16, v16, v19

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v5, v18

    const/16 v16, 0x2

    int-to-double v0, v13

    move-wide/from16 v17, v0

    div-double v13, v14, v17

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v5, v16

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, La/r;->e:La/r;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Double;

    const/4 v13, 0x0

    int-to-double v14, v6

    div-double/2addr v11, v14

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v5, v13

    const/4 v11, 0x1

    int-to-double v12, v6

    div-double/2addr v9, v12

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v5, v11

    const/4 v9, 0x2

    int-to-double v10, v6

    div-double v6, v7, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v9

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e5
    return-void

    :cond_1e6
    move v4, v6

    move-wide v5, v7

    move-wide v7, v9

    move-wide v9, v11

    goto/16 :goto_e7
.end method

.method private a(Ljava/util/List;)[D
    .registers 15

    const-wide/high16 v9, 0x4000

    const-wide/16 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v3, v0

    move-wide v11, v0

    move-wide v1, v11

    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    add-double/2addr v3, v7

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double v0, v1, v7

    move-wide v1, v0

    goto :goto_13

    :cond_30
    int-to-double v6, v5

    div-double/2addr v3, v6

    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v6, 0x0

    aput-wide v3, v0, v6

    const/4 v6, 0x1

    int-to-double v7, v5

    div-double/2addr v1, v7

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    aput-wide v1, v0, v6

    goto :goto_b
.end method


# virtual methods
.method a(Ljava/util/SortedMap;)Ljava/util/Map;
    .registers 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move-object v0, v1

    :goto_e
    return-object v0

    :cond_f
    invoke-direct {p0, p1, v1}, La/q;->a(Ljava/util/SortedMap;Ljava/util/Map;)V

    sget-object v0, La/r;->a:La/r;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    if-eqz v0, :cond_2f

    invoke-direct {p0, p1, v0}, La/q;->a(Ljava/util/SortedMap;[Ljava/lang/Double;)D

    move-result-wide v2

    sget-object v0, La/r;->c:La/r;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Double;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    move-object v0, v1

    goto :goto_e
.end method
