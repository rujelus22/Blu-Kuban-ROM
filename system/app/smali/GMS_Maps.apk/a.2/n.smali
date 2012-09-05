.class La/n;
.super Ld/av;


# instance fields
.field final synthetic a:La/l;


# direct methods
.method private constructor <init>(La/l;)V
    .registers 2

    iput-object p1, p0, La/n;->a:La/l;

    invoke-direct {p0}, Ld/av;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/l;La/m;)V
    .registers 3

    invoke-direct {p0, p1}, La/n;-><init>(La/l;)V

    return-void
.end method

.method private a(Ljava/util/List;)LW/a;
    .registers 35

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-gez v2, :cond_d

    const/4 v2, 0x0

    :goto_c
    return-object v2

    :cond_d
    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-wide/from16 v21, v2

    move-wide/from16 v23, v4

    move-wide/from16 v3, v21

    move-wide/from16 v25, v6

    move-wide/from16 v5, v23

    move-wide/from16 v27, v8

    move-wide/from16 v7, v25

    move-wide/from16 v29, v10

    move-wide/from16 v9, v27

    move-wide/from16 v31, v12

    move-wide/from16 v13, v31

    move-wide/from16 v11, v29

    :goto_39
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LW/a;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, LW/a;->e(I)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    add-double v13, v13, v17

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, LW/a;->e(I)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    add-double v11, v11, v17

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, LW/a;->e(I)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    add-double v9, v9, v17

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, LW/a;->e(I)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    add-double v7, v7, v17

    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v2, v0}, LW/a;->e(I)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    add-double v5, v5, v17

    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v2, v0}, LW/a;->e(I)F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    add-double v2, v3, v17

    move-wide v3, v2

    goto :goto_39

    :cond_b1
    int-to-double v0, v15

    move-wide/from16 v16, v0

    div-double v13, v13, v16

    int-to-double v0, v15

    move-wide/from16 v16, v0

    div-double v9, v9, v16

    int-to-double v0, v15

    move-wide/from16 v16, v0

    div-double v5, v5, v16

    int-to-double v0, v15

    move-wide/from16 v16, v0

    div-double v11, v11, v16

    const-wide/high16 v16, 0x4000

    move-wide/from16 v0, v16

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    sub-double v11, v11, v16

    int-to-double v0, v15

    move-wide/from16 v16, v0

    div-double v7, v7, v16

    const-wide/high16 v16, 0x4000

    move-wide/from16 v0, v16

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    sub-double v7, v7, v16

    int-to-double v15, v15

    div-double v2, v3, v15

    const-wide/high16 v15, 0x4000

    move-wide v0, v15

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    sub-double/2addr v2, v15

    const-wide v15, 0x3ef4f8b588e368f1L

    cmpg-double v4, v11, v15

    if-gez v4, :cond_135

    const-wide v11, 0x3ef4f8b588e368f1L

    cmpg-double v4, v7, v11

    if-gez v4, :cond_135

    const-wide v7, 0x3ef4f8b588e368f1L

    cmpg-double v2, v2, v7

    if-gez v2, :cond_135

    new-instance v3, LW/a;

    sget-object v2, Lk/a;->Q:LW/d;

    invoke-direct {v3, v2}, LW/a;-><init>(LW/d;)V

    const/4 v2, 0x1

    double-to-float v4, v13

    invoke-virtual {v3, v2, v4}, LW/a;->a(IF)V

    const/4 v2, 0x2

    double-to-float v4, v9

    invoke-virtual {v3, v2, v4}, LW/a;->a(IF)V

    const/4 v2, 0x3

    double-to-float v4, v5

    invoke-virtual {v3, v2, v4}, LW/a;->a(IF)V

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, La/n;->a:La/l;

    iget-object v4, v4, La/l;->b:Li/E;

    invoke-interface {v4}, Li/E;->b()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, LW/a;->b(IJ)V

    new-instance v2, LW/a;

    sget-object v4, Lk/a;->l:LW/d;

    invoke-direct {v2, v4}, LW/a;-><init>(LW/d;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, LW/a;->b(ILW/a;)V

    goto/16 :goto_c

    :cond_135
    const/4 v2, 0x0

    goto/16 :goto_c
.end method

.method private a(LW/a;III)Le/v;
    .registers 23

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_a
    const/4 v6, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, LW/a;->i(I)I

    move-result v6

    if-ge v1, v6, :cond_89

    const/4 v6, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v1}, LW/a;->d(II)LW/a;

    move-result-object v6

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, LW/a;->h(I)Z

    move-result v7

    if-eqz v7, :cond_86

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, LW/a;->f(I)LW/a;

    move-result-object v11

    const/4 v7, 0x1

    const/4 v6, 0x0

    move/from16 v16, v6

    move/from16 v17, v7

    move v7, v5

    move-wide v5, v3

    move v4, v2

    move/from16 v3, v17

    move/from16 v2, v16

    :goto_35
    move/from16 v0, p2

    invoke-virtual {v11, v0}, LW/a;->i(I)I

    move-result v8

    if-ge v2, v8, :cond_83

    move/from16 v0, p2

    invoke-virtual {v11, v0, v2}, LW/a;->d(II)LW/a;

    move-result-object v9

    add-int/lit8 v7, v7, 0x1

    int-to-long v12, v7

    const-wide/16 v14, 0xa

    cmp-long v8, v12, v14

    if-lez v8, :cond_52

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_55

    const/4 v3, 0x0

    :cond_52
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_55
    const/16 v8, 0x1388

    if-ge v4, v8, :cond_52

    move/from16 v0, p3

    invoke-virtual {v9, v0}, LW/a;->h(I)Z

    move-result v8

    if-eqz v8, :cond_7f

    move/from16 v0, p3

    invoke-virtual {v9, v0}, LW/a;->c(I)I

    move-result v8

    :goto_67
    move/from16 v0, p4

    invoke-virtual {v9, v0}, LW/a;->h(I)Z

    move-result v12

    if-eqz v12, :cond_81

    move/from16 v0, p4

    invoke-virtual {v9, v0}, LW/a;->c(I)I

    move-result v9

    :goto_75
    int-to-long v12, v8

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    int-to-long v8, v9

    add-long/2addr v8, v12

    add-long/2addr v5, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    :cond_7f
    const/4 v8, 0x0

    goto :goto_67

    :cond_81
    const/4 v9, 0x0

    goto :goto_75

    :cond_83
    move v2, v4

    move-wide v3, v5

    move v5, v7

    :cond_86
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_89
    const/16 v1, 0x64

    if-ge v2, v1, :cond_8f

    const/4 v1, 0x0

    :goto_8e
    return-object v1

    :cond_8f
    long-to-double v3, v3

    int-to-double v1, v2

    div-double v1, v3, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v10, v1}, Le/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Le/v;

    move-result-object v1

    goto :goto_8e
.end method

.method private a(Z)V
    .registers 5

    if-eqz p1, :cond_c

    iget-object v0, p0, La/n;->a:La/l;

    iget-object v1, p0, La/n;->a:La/l;

    invoke-static {v1}, La/l;->e(La/l;)J

    move-result-wide v1

    iput-wide v1, v0, La/l;->h:J

    :cond_c
    iget-object v0, p0, La/n;->a:La/l;

    sget-object v1, La/e;->b:La/e;

    iput-object v1, v0, La/l;->f:La/e;

    iget-object v0, p0, La/n;->a:La/l;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, La/l;->a(La/l;J)V

    return-void
.end method

.method private a(DD)Z
    .registers 12

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, La/n;->a:La/l;

    invoke-static {v0}, La/l;->a(La/l;)I

    move-result v0

    const-wide v1, 0x415b3f7249249249L

    cmpg-double v1, p1, v1

    if-gez v1, :cond_1b

    iget-object v0, p0, La/n;->a:La/l;

    invoke-static {v0}, La/l;->a(La/l;)I

    move-result v0

    invoke-direct {p0, v0}, La/n;->b(I)I

    move-result v0

    :cond_1b
    iget-object v1, p0, La/n;->a:La/l;

    invoke-static {v1}, La/l;->b(La/l;)I

    move-result v1

    const-wide v5, 0x416d5804e0000000L

    cmpg-double v2, p3, v5

    if-gez v2, :cond_34

    iget-object v1, p0, La/n;->a:La/l;

    invoke-static {v1}, La/l;->b(La/l;)I

    move-result v1

    invoke-direct {p0, v1}, La/n;->b(I)I

    move-result v1

    :cond_34
    iget-object v2, p0, La/n;->a:La/l;

    invoke-static {v2}, La/l;->a(La/l;)I

    move-result v2

    if-ne v0, v2, :cond_44

    iget-object v2, p0, La/n;->a:La/l;

    invoke-static {v2}, La/l;->b(La/l;)I

    move-result v2

    if-eq v1, v2, :cond_7d

    :cond_44
    move v2, v4

    :goto_45
    iget-object v5, p0, La/n;->a:La/l;

    invoke-static {v5}, La/l;->c(La/l;)La/o;

    move-result-object v5

    invoke-virtual {v5}, La/o;->i()Z

    move-result v5

    if-eqz v5, :cond_5f

    iget-object v5, p0, La/n;->a:La/l;

    invoke-static {v5}, La/l;->c(La/l;)La/o;

    move-result-object v5

    invoke-virtual {v5}, La/o;->j()Z

    move-result v5

    if-eqz v5, :cond_5f

    if-eqz v2, :cond_7a

    :cond_5f
    iget-object v5, p0, La/n;->a:La/l;

    invoke-static {v5}, La/l;->c(La/l;)La/o;

    move-result-object v5

    invoke-virtual {v5, v0}, La/o;->a(I)V

    iget-object v0, p0, La/n;->a:La/l;

    invoke-static {v0}, La/l;->c(La/l;)La/o;

    move-result-object v0

    invoke-virtual {v0, v1}, La/o;->b(I)V

    iget-object v0, p0, La/n;->a:La/l;

    invoke-static {v0}, La/l;->c(La/l;)La/o;

    move-result-object v0

    invoke-virtual {v0}, La/o;->b()V

    :cond_7a
    if-eqz v2, :cond_7f

    :goto_7c
    return v4

    :cond_7d
    move v2, v3

    goto :goto_45

    :cond_7f
    move v4, v3

    goto :goto_7c
.end method

.method private b(I)I
    .registers 3

    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_a

    :goto_4
    :pswitch_4
    return v0

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method private b(LW/a;)V
    .registers 6

    iget-object v0, p0, La/n;->a:La/l;

    iget-object v0, v0, La/l;->b:Li/E;

    invoke-interface {v0}, Li/E;->t()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2d

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create sensorCacheDir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2d
    new-instance v1, Ljava/io/File;

    const-string v2, "calibration"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, LW/a;->e()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method


# virtual methods
.method public a(LW/a;)V
    .registers 10

    const/16 v3, 0x8

    const/4 v2, 0x7

    const/4 v7, 0x1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, v2, v3}, La/n;->a(LW/a;III)Le/v;

    move-result-object v1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, v2, v3}, La/n;->a(LW/a;III)Le/v;

    move-result-object v2

    if-eqz v1, :cond_12

    if-nez v2, :cond_16

    :cond_12
    invoke-direct {p0, v7}, La/n;->a(Z)V

    :goto_15
    return-void

    :cond_16
    iget-object v0, v1, Le/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object v0, v2, Le/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-direct {p0, v3, v4, v5, v6}, La/n;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/n;->a(Z)V

    goto :goto_15

    :cond_31
    iget-object v0, v1, Le/v;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, La/n;->a(Ljava/util/List;)LW/a;

    move-result-object v0

    if-eqz v0, :cond_4d

    :try_start_3b
    invoke-direct {p0, v0}, La/n;->b(LW/a;)V

    iget-object v1, p0, La/n;->a:La/l;

    invoke-static {v1, v0}, La/l;->a(La/l;LW/a;)LW/a;

    iget-object v1, p0, La/n;->a:La/l;

    iget-object v2, p0, La/n;->a:La/l;

    invoke-static {v2, v0}, La/l;->b(La/l;LW/a;)J

    move-result-wide v2

    iput-wide v2, v1, La/l;->g:J
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_4d} :catch_51

    :cond_4d
    :goto_4d
    invoke-direct {p0, v7}, La/n;->a(Z)V

    goto :goto_15

    :catch_51
    move-exception v0

    goto :goto_4d
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, La/n;->a:La/l;

    invoke-static {v0}, La/l;->d(La/l;)Ld/J;

    move-result-object v0

    invoke-interface {v0}, Ld/J;->b()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, La/n;->a(Z)V

    return-void
.end method
