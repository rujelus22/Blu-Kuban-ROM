.class Lcom/google/android/location/localizer/u;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([D)D
    .registers 8

    const-wide/16 v1, 0x0

    array-length v3, p1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_c

    aget-wide v4, p1, v0

    add-double/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    return-wide v1
.end method


# virtual methods
.method public a(Ljava/util/List;[D)Le/f;
    .registers 21

    const-wide/16 v5, 0x0

    const-wide/16 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p2

    array-length v7, v0

    if-eq v2, v7, :cond_37

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Required List<Position>.size() == weights.length. Input was List<Position>=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and weights.length=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_37
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/location/localizer/u;->a([D)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v2, v8, v10

    if-nez v2, :cond_47

    const/4 v2, 0x0

    :goto_46
    return-object v2

    :cond_47
    const/4 v2, 0x0

    move-wide v14, v3

    move v3, v2

    move-wide/from16 v16, v5

    move-wide/from16 v6, v16

    move-wide v4, v14

    :goto_4f
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_6f

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/f;

    aget-wide v10, p2, v3

    iget v12, v2, Le/f;->a:I

    int-to-double v12, v12

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    aget-wide v10, p2, v3

    iget v2, v2, Le/f;->b:I

    int-to-double v12, v2

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4f

    :cond_6f
    div-double v2, v6, v8

    double-to-int v3, v2

    div-double/2addr v4, v8

    double-to-int v4, v4

    new-instance v2, Le/f;

    invoke-direct {v2, v3, v4}, Le/f;-><init>(II)V

    goto :goto_46
.end method
