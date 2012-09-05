.class Lcom/google/android/location/localizer/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/location/localizer/v;


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/location/localizer/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/localizer/x;->a:Ljava/util/logging/Logger;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/localizer/x;->b:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(IILe/x;Le/x;ILe/v;)D
    .registers 19

    mul-int v9, p5, p5

    mul-int v10, p1, p1

    mul-int v11, p2, p2

    invoke-static {p3}, Lcom/google/android/location/localizer/b;->a(Le/x;)D

    move-result-wide v1

    invoke-static {p3}, Lcom/google/android/location/localizer/b;->b(Le/x;)D

    move-result-wide v3

    move-object/from16 v0, p6

    iget-object v5, v0, Le/v;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    move-object/from16 v0, p6

    iget-object v7, v0, Le/v;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static/range {v1 .. v8}, Lcom/google/android/location/localizer/b;->b(DDDD)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int v2, v1, v1

    add-int v3, v9, v10

    sub-int/2addr v3, v11

    int-to-double v3, v3

    mul-int/lit8 v5, p1, 0x2

    mul-int v5, v5, p5

    int-to-double v5, v5

    div-double/2addr v3, v5

    add-int/2addr v2, v10

    int-to-double v5, v2

    mul-int/lit8 v2, p1, 0x2

    mul-int/2addr v1, v2

    int-to-double v1, v1

    mul-double/2addr v1, v3

    sub-double v1, v5, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private a()Lcom/google/android/location/localizer/w;
    .registers 5

    new-instance v0, Lcom/google/android/location/localizer/w;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/location/localizer/x;->b:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/localizer/w;-><init>(Le/x;ILjava/util/Set;)V

    return-object v0
.end method

.method private a(Le/v;Le/v;)Le/v;
    .registers 19

    move-object/from16 v0, p1

    iget-object v1, v0, Le/v;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move-object/from16 v0, p2

    iget-object v1, v0, Le/v;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object/from16 v0, p1

    iget-object v1, v0, Le/v;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-object/from16 v0, p2

    iget-object v1, v0, Le/v;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    sub-double/2addr v8, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    add-double/2addr v4, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    add-double/2addr v12, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    add-double/2addr v14, v10

    mul-double/2addr v12, v14

    mul-double v14, v8, v8

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    add-double/2addr v1, v10

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    add-double/2addr v1, v6

    new-instance v3, Le/v;

    invoke-static {v4, v5}, Lcom/google/android/location/localizer/b;->c(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v1, v2}, Lcom/google/android/location/localizer/b;->d(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Le/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method private a(Le/x;Le/x;)Le/x;
    .registers 15

    invoke-static {p1, p2}, Lcom/google/android/location/localizer/b;->a(Le/x;Le/x;)I

    move-result v6

    iget v0, p1, Le/x;->c:I

    invoke-static {v0}, Lcom/google/android/location/localizer/b;->b(I)I

    move-result v7

    iget v0, p2, Le/x;->c:I

    invoke-static {v0}, Lcom/google/android/location/localizer/b;->b(I)I

    move-result v8

    sub-int v0, v7, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v6, v0, :cond_1d

    if-ge v7, v8, :cond_1b

    :goto_1a
    return-object p1

    :cond_1b
    move-object p1, p2

    goto :goto_1a

    :cond_1d
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/localizer/x;->b(Le/x;Le/x;)D

    move-result-wide v4

    add-int v0, v6, v8

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v1, p1, Le/x;->a:I

    iget v9, p2, Le/x;->a:I

    iget v2, p1, Le/x;->b:I

    iget v10, p2, Le/x;->b:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/location/localizer/x;->a(IIID)Le/v;

    move-result-object v11

    const-wide v0, 0x400921fb54442d18L

    add-double/2addr v4, v0

    add-int v0, v6, v7

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object v0, p0

    move v1, v9

    move v2, v10

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/location/localizer/x;->a(IIID)Le/v;

    move-result-object v9

    invoke-direct {p0, v11, v9}, Lcom/google/android/location/localizer/x;->a(Le/v;Le/v;)Le/v;

    move-result-object v10

    add-int v0, v7, v8

    if-le v6, v0, :cond_97

    iget-object v0, v11, Le/v;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, v11, Le/v;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, v9, Le/v;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v6, v9, Le/v;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/b;->b(DDDD)D

    move-result-wide v0

    move-wide v1, v0

    :goto_74
    new-instance p1, Le/x;

    iget-object v0, v10, Le/v;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/location/localizer/b;->e(D)I

    move-result v3

    iget-object v0, v10, Le/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/location/localizer/b;->e(D)I

    move-result v0

    double-to-int v1, v1

    invoke-static {v1}, Lcom/google/android/location/localizer/b;->c(I)I

    move-result v1

    invoke-direct {p1, v3, v0, v1}, Le/x;-><init>(III)V

    goto :goto_1a

    :cond_97
    move-object v0, p0

    move v1, v7

    move v2, v8

    move-object v3, p1

    move-object v4, p2

    move v5, v6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/localizer/x;->a(IILe/x;Le/x;ILe/v;)D

    move-result-wide v0

    move-wide v1, v0

    goto :goto_74
.end method

.method private a(Ljava/util/Set;Lcom/google/android/location/localizer/A;)Ljava/util/List;
    .registers 6

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/localizer/A;

    invoke-direct {p0, v1, p2}, Lcom/google/android/location/localizer/x;->a(Lcom/google/android/location/localizer/A;Lcom/google/android/location/localizer/A;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private a(Le/x;Ljava/util/Map;)Ljava/util/Set;
    .registers 8

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/x;

    invoke-static {v1, p1}, Lcom/google/android/location/localizer/b;->a(Le/x;Le/x;)I

    move-result v1

    const/16 v4, 0xfa

    if-le v1, v4, :cond_d

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_2f
    return-object v2
.end method

.method private a(Ljava/util/List;)V
    .registers 7

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/localizer/A;

    invoke-virtual {v0, v1}, Lcom/google/android/location/localizer/A;->a(I)V

    goto :goto_5

    :cond_15
    move v2, v1

    :goto_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_45

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/localizer/A;

    add-int/lit8 v1, v2, 0x1

    move v3, v1

    :goto_25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_41

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/localizer/A;

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/localizer/x;->a(Lcom/google/android/location/localizer/A;Lcom/google/android/location/localizer/A;)Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-virtual {v0}, Lcom/google/android/location/localizer/A;->a()V

    invoke-virtual {v1}, Lcom/google/android/location/localizer/A;->a()V

    :cond_3d
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_25

    :cond_41
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_16

    :cond_45
    return-void
.end method

.method private a(Ljava/util/List;I)V
    .registers 5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/localizer/A;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/A;->b()I

    move-result v0

    if-ne v0, p2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_1a
    return-void
.end method

.method private a(Lcom/google/android/location/localizer/A;Lcom/google/android/location/localizer/A;)Z
    .registers 6

    invoke-virtual {p1}, Lcom/google/android/location/localizer/A;->c()Le/x;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/location/localizer/A;->c()Le/x;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/b;->a(Le/x;Le/x;)I

    move-result v2

    iget v0, v0, Le/x;->c:I

    invoke-static {v0}, Lcom/google/android/location/localizer/b;->b(I)I

    move-result v0

    iget v1, v1, Le/x;->c:I

    invoke-static {v1}, Lcom/google/android/location/localizer/b;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    if-gt v2, v0, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private b(Le/x;Le/x;)D
    .registers 15

    const-wide v8, 0x416312d000000000L

    iget v0, p1, Le/x;->a:I

    invoke-static {v0}, Lcom/google/android/location/localizer/b;->d(I)D

    move-result-wide v0

    iget v2, p2, Le/x;->a:I

    invoke-static {v2}, Lcom/google/android/location/localizer/b;->d(I)D

    move-result-wide v2

    iget v4, p2, Le/x;->b:I

    int-to-double v4, v4

    div-double/2addr v4, v8

    iget v6, p1, Le/x;->b:I

    int-to-double v6, v6

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    sub-double v0, v8, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private b(Ljava/util/List;)Le/v;
    .registers 7

    const v1, 0x7fffffff

    const/high16 v0, -0x8000

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    move v1, v0

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/localizer/A;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/A;->b()I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/location/localizer/A;->b()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v0

    goto :goto_b

    :cond_29
    new-instance v0, Le/v;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Le/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private c(Ljava/util/List;)Le/x;
    .registers 7

    const v4, 0x249f0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/localizer/A;

    invoke-direct {p0, v2, v0}, Lcom/google/android/location/localizer/x;->a(Ljava/util/Set;Lcom/google/android/location/localizer/A;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_26

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_26
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_2a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/android/location/localizer/x;->e(Ljava/util/List;)Le/x;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_47
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_65

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/x;

    :goto_55
    iget v1, v0, Le/x;->c:I

    if-ge v1, v4, :cond_64

    new-instance v1, Le/z;

    invoke-direct {v1, v0}, Le/z;-><init>(Le/x;)V

    iput v4, v1, Le/z;->c:I

    invoke-virtual {v1}, Le/z;->a()Le/x;

    move-result-object v0

    :cond_64
    return-object v0

    :cond_65
    invoke-direct {p0, v1}, Lcom/google/android/location/localizer/x;->d(Ljava/util/List;)Le/x;

    move-result-object v0

    goto :goto_55
.end method

.method private d(Ljava/util/List;)Le/x;
    .registers 14

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v7, v0

    move-object v8, v1

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_53

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/x;

    add-int/lit8 v1, v7, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Le/x;

    invoke-direct {p0, v0, v6}, Lcom/google/android/location/localizer/x;->b(Le/x;Le/x;)D

    move-result-wide v4

    iget v1, v0, Le/x;->a:I

    iget v2, v0, Le/x;->b:I

    iget v0, v0, Le/x;->c:I

    invoke-static {v0}, Lcom/google/android/location/localizer/b;->b(I)I

    move-result v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/location/localizer/x;->a(IIID)Le/v;

    move-result-object v9

    iget v1, v6, Le/x;->a:I

    iget v2, v6, Le/x;->b:I

    iget v0, v6, Le/x;->c:I

    invoke-static {v0}, Lcom/google/android/location/localizer/b;->b(I)I

    move-result v3

    const-wide v10, 0x400921fb54442d18L

    add-double/2addr v4, v10

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/location/localizer/x;->a(IIID)Le/v;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/google/android/location/localizer/x;->a(Le/v;Le/v;)Le/v;

    move-result-object v0

    if-nez v8, :cond_4e

    :goto_49
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move-object v8, v0

    goto :goto_4

    :cond_4e
    invoke-direct {p0, v8, v0}, Lcom/google/android/location/localizer/x;->a(Le/v;Le/v;)Le/v;

    move-result-object v0

    goto :goto_49

    :cond_53
    new-instance v1, Le/z;

    invoke-direct {v1}, Le/z;-><init>()V

    iget-object v0, v8, Le/v;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/location/localizer/b;->e(D)I

    move-result v2

    iget-object v0, v8, Le/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/location/localizer/b;->e(D)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Le/z;->a(II)Le/z;

    move-result-object v2

    const v0, 0x7fffffff

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_7c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/x;

    invoke-static {v2, v0}, Lcom/google/android/location/localizer/b;->a(Le/z;Le/x;)I

    move-result v0

    if-ge v0, v1, :cond_9b

    :goto_8e
    move v1, v0

    goto :goto_7c

    :cond_90
    invoke-static {v1}, Lcom/google/android/location/localizer/b;->c(I)I

    move-result v0

    iput v0, v2, Le/z;->c:I

    invoke-virtual {v2}, Le/z;->a()Le/x;

    move-result-object v0

    return-object v0

    :cond_9b
    move v0, v1

    goto :goto_8e
.end method

.method private e(Ljava/util/List;)Le/x;
    .registers 5

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/localizer/A;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/A;->c()Le/x;

    move-result-object v1

    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    :goto_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_26

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/localizer/A;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/A;->c()Le/x;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/google/android/location/localizer/x;->a(Le/x;Le/x;)Le/x;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_26
    return-object v2
.end method


# virtual methods
.method public a(Ljava/util/Map;Ljava/util/Map;J)Lcom/google/android/location/localizer/w;
    .registers 14

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_a
    invoke-direct {p0}, Lcom/google/android/location/localizer/x;->a()Lcom/google/android/location/localizer/w;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/H;

    iget-object v2, v0, Le/H;->i:Le/J;

    sget-object v5, Le/J;->c:Le/J;

    if-eq v2, v5, :cond_2f

    iget-object v0, v0, Le/H;->i:Le/J;

    sget-object v2, Le/J;->d:Le/J;

    if-ne v0, v2, :cond_17

    :cond_2f
    move v2, v3

    :goto_30
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3d
    :goto_3d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/H;

    if-nez v2, :cond_5d

    iget-object v7, v1, Le/H;->i:Le/J;

    sget-object v8, Le/J;->c:Le/J;

    if-eq v7, v8, :cond_5d

    iget-object v1, v1, Le/H;->i:Le/J;

    sget-object v7, Le/J;->d:Le/J;

    if-ne v1, v7, :cond_3d

    :cond_5d
    new-instance v7, Lcom/google/android/location/localizer/A;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/x;

    invoke-direct {v7, v1, v0}, Lcom/google/android/location/localizer/A;-><init>(Ljava/lang/Long;Le/x;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_72
    new-instance v0, Lcom/google/android/location/localizer/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/localizer/z;-><init>(Lcom/google/android/location/localizer/x;Lcom/google/android/location/localizer/y;)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_7b
    invoke-direct {p0, v5}, Lcom/google/android/location/localizer/x;->a(Ljava/util/List;)V

    invoke-direct {p0, v5}, Lcom/google/android/location/localizer/x;->b(Ljava/util/List;)Le/v;

    move-result-object v0

    iget-object v1, v0, Le/v;->a:Ljava/lang/Object;

    iget-object v2, v0, Le/v;->b:Ljava/lang/Object;

    if-eq v1, v2, :cond_c9

    move v1, v4

    :goto_89
    if-eqz v1, :cond_96

    iget-object v0, v0, Le/v;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v5, v0}, Lcom/google/android/location/localizer/x;->a(Ljava/util/List;I)V

    :cond_96
    if-nez v1, :cond_7b

    invoke-direct {p0, v5}, Lcom/google/android/location/localizer/x;->c(Ljava/util/List;)Le/x;

    move-result-object v1

    iget v0, v1, Le/x;->c:I

    const v2, 0x16e360

    if-le v0, v2, :cond_cb

    sget-object v0, Lcom/google/android/location/localizer/x;->a:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring computed location since accuracy too high: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Le/x;->c:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mm."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/location/localizer/x;->a()Lcom/google/android/location/localizer/w;

    move-result-object v0

    goto/16 :goto_e

    :cond_c9
    move v1, v3

    goto :goto_89

    :cond_cb
    const/16 v2, 0x50

    invoke-direct {p0, v1, p1}, Lcom/google/android/location/localizer/x;->a(Le/x;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_ef

    sget-object v0, Lcom/google/android/location/localizer/x;->a:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not returning location for the following outliers: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_ef
    new-instance v0, Lcom/google/android/location/localizer/w;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/localizer/w;-><init>(Le/x;ILjava/util/Set;)V

    goto/16 :goto_e

    :cond_f6
    move v2, v4

    goto/16 :goto_30
.end method

.method a(IIID)Le/v;
    .registers 18

    int-to-double v0, p3

    const-wide v2, 0x4158554c00000000L

    div-double/2addr v0, v2

    invoke-static {p1}, Lcom/google/android/location/localizer/b;->d(I)D

    move-result-wide v2

    invoke-static {p2}, Lcom/google/android/location/localizer/b;->d(I)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v2, v10

    sub-double/2addr v0, v2

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    add-double/2addr v0, v4

    const-wide v2, 0x400921fb54442d18L

    add-double/2addr v0, v2

    const-wide v2, 0x401921fb54442d18L

    rem-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L

    sub-double/2addr v0, v2

    new-instance v2, Le/v;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Le/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method
