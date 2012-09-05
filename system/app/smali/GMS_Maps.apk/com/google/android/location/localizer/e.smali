.class Lcom/google/android/location/localizer/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/location/localizer/v;


# static fields
.field static final a:[[I

.field private static final b:Ljava/util/logging/Logger;

.field private static final c:Ljava/util/Set;

.field private static final d:Lcom/google/android/location/localizer/v;

.field private static final g:Ljava/util/Comparator;

.field private static final h:Ljava/util/Comparator;


# instance fields
.field private final e:Ljava/util/List;

.field private final f:Lcom/google/android/location/localizer/j;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v1, 0x0

    const/16 v5, 0x78

    const-class v0, Lcom/google/android/location/localizer/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/localizer/e;->b:Ljava/util/logging/Logger;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/localizer/e;->c:Ljava/util/Set;

    filled-new-array {v5, v5}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/google/android/location/localizer/e;->a:[[I

    new-instance v0, Lcom/google/android/location/localizer/x;

    invoke-direct {v0}, Lcom/google/android/location/localizer/x;-><init>()V

    sput-object v0, Lcom/google/android/location/localizer/e;->d:Lcom/google/android/location/localizer/v;

    move v2, v1

    :goto_2b
    if-ge v2, v5, :cond_41

    move v0, v1

    :goto_2e
    if-ge v0, v5, :cond_3d

    sget-object v3, Lcom/google/android/location/localizer/e;->a:[[I

    aget-object v3, v3, v2

    invoke-static {v2, v0}, Lcom/google/android/location/localizer/e;->a(II)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_3d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2b

    :cond_41
    new-instance v0, Lcom/google/android/location/localizer/f;

    invoke-direct {v0}, Lcom/google/android/location/localizer/f;-><init>()V

    sput-object v0, Lcom/google/android/location/localizer/e;->g:Ljava/util/Comparator;

    new-instance v0, Lcom/google/android/location/localizer/g;

    invoke-direct {v0}, Lcom/google/android/location/localizer/g;-><init>()V

    sput-object v0, Lcom/google/android/location/localizer/e;->h:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/location/localizer/j;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lcom/google/android/location/localizer/j;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/localizer/e;->f:Lcom/google/android/location/localizer/j;

    iput-object p1, p0, Lcom/google/android/location/localizer/e;->e:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Le/H;)D
    .registers 3

    invoke-static {p0}, Lcom/google/android/location/localizer/e;->b(Le/H;)D

    move-result-wide v0

    return-wide v0
.end method

.method static a(II)I
    .registers 8

    const-wide/high16 v4, 0x400e

    int-to-double v0, p0

    mul-double/2addr v0, v4

    int-to-double v2, p1

    mul-double/2addr v2, v4

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private a(I)Lcom/google/android/location/localizer/DistanceDist;
    .registers 6

    const/4 v2, -0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/location/localizer/DistanceDist;

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/google/android/location/localizer/DistanceDist;-><init>(III[F)V

    iget-object v2, p0, Lcom/google/android/location/localizer/e;->e:Ljava/util/List;

    sget-object v3, Lcom/google/android/location/localizer/e;->g:Ljava/util/Comparator;

    invoke-static {v2, v0, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_13

    move-object v0, v1

    :cond_12
    :goto_12
    return-object v0

    :cond_13
    iget-object v2, p0, Lcom/google/android/location/localizer/e;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/localizer/DistanceDist;

    iget v2, v0, Lcom/google/android/location/localizer/DistanceDist;->b:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_12

    move-object v0, v1

    goto :goto_12
.end method

.method private a(Ljava/util/List;)Lcom/google/android/location/localizer/h;
    .registers 6

    new-instance v1, Lcom/google/android/location/localizer/h;

    invoke-direct {v1}, Lcom/google/android/location/localizer/h;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/localizer/h;

    invoke-virtual {v1}, Lcom/google/android/location/localizer/h;->a()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/location/localizer/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    :cond_21
    return-object v1
.end method

.method private a()Lcom/google/android/location/localizer/w;
    .registers 5

    new-instance v0, Lcom/google/android/location/localizer/w;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/location/localizer/e;->c:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/localizer/w;-><init>(Le/x;ILjava/util/Set;)V

    return-object v0
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;Le/x;Lcom/google/android/location/localizer/j;)Le/v;
    .registers 16

    const-wide/16 v4, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v4

    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/H;

    iget-object v7, v0, Le/H;->i:Le/J;

    sget-object v10, Le/J;->d:Le/J;

    if-ne v7, v10, :cond_43

    new-instance v7, Le/v;

    invoke-direct {v7, v1, v0}, Le/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/google/android/location/localizer/e;->b(Le/H;)D

    move-result-wide v0

    add-double/2addr v2, v0

    move-wide v0, v2

    :goto_41
    move-wide v2, v0

    goto :goto_15

    :cond_43
    sget-object v10, Le/J;->c:Le/J;

    if-ne v7, v10, :cond_4f

    new-instance v7, Le/v;

    invoke-direct {v7, v1, v0}, Le/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4f
    move-wide v0, v2

    goto :goto_41

    :cond_51
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6e

    sget-object v0, Lcom/google/android/location/localizer/e;->b:Ljava/util/logging/Logger;

    const-string v1, "No lre nor minK results found. Returning matrixCenter"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    new-instance v0, Le/v;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Le/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6d
    return-object v0

    :cond_6e
    sget-object v0, Lcom/google/android/location/localizer/e;->h:Ljava/util/Comparator;

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v6, v4

    :goto_78
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/v;

    iget-object v2, v0, Le/v;->b:Ljava/lang/Object;

    check-cast v2, Le/H;

    invoke-static {v2}, Lcom/google/android/location/localizer/e;->b(Le/H;)D

    move-result-wide v3

    add-double/2addr v6, v3

    iget-object v1, v0, Le/v;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/localizer/e;->a(Ljava/lang/Long;Le/H;ILe/x;Lcom/google/android/location/localizer/j;)V

    goto :goto_78

    :cond_a2
    const/4 v0, 0x0

    const-wide/high16 v1, 0x4020

    cmpg-double v1, v6, v1

    if-gez v1, :cond_d4

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_ad
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/v;

    const/4 v8, 0x1

    iget-object v2, v0, Le/v;->b:Ljava/lang/Object;

    check-cast v2, Le/H;

    iget-object v1, v0, Le/v;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/localizer/e;->a(Ljava/lang/Long;Le/H;ILe/x;Lcom/google/android/location/localizer/j;)V

    move v0, v8

    goto :goto_ad

    :cond_d4
    move v8, v0

    const-wide v1, 0x3fd999999999999aL

    const-wide/high16 v4, 0x400e

    move-object v0, p4

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/location/localizer/j;->a(DLe/x;D)Le/z;

    move-result-object v0

    invoke-direct {p0, v0, v9}, Lcom/google/android/location/localizer/e;->a(Le/z;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_f3

    if-eqz v8, :cond_f3

    iget v1, v0, Le/z;->c:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff8

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Le/z;->c:I

    :cond_f3
    invoke-virtual {v0}, Le/z;->a()Le/x;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/location/localizer/e;->a(Le/x;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_107

    sget-object v0, Lcom/google/android/location/localizer/e;->b:Ljava/util/logging/Logger;

    const-string v1, "Not returning location as no APs within 75 meters of location."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_6d

    :cond_107
    const-wide v1, 0x3fd3333333333333L

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Le/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Le/v;

    move-result-object v0

    goto/16 :goto_6d
.end method

.method private a(Ljava/util/Map;)Le/x;
    .registers 12

    const-wide/16 v0, 0x0

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v3, v0

    move-wide v8, v0

    move-wide v1, v8

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/H;

    iget v6, v0, Le/H;->a:I

    invoke-static {v6}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v6

    add-double/2addr v3, v6

    iget v0, v0, Le/H;->b:I

    invoke-static {v0}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v6

    add-double v0, v1, v6

    move-wide v1, v0

    goto :goto_d

    :cond_2a
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v3, v5

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-double v5, v0

    div-double v0, v1, v5

    new-instance v2, Le/x;

    invoke-static {v3, v4}, Lcom/google/android/location/localizer/b;->b(D)I

    move-result v3

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/b;->b(D)I

    move-result v0

    const v1, 0x124f8

    invoke-direct {v2, v3, v0, v1}, Le/x;-><init>(III)V

    return-object v2
.end method

.method private a(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;
    .registers 7

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_2f
    return-object v1
.end method

.method private a(Ljava/util/Map;J)Ljava/util/Set;
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/location/localizer/e;->b(Ljava/util/Map;J)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/location/localizer/e;->b(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private a(Ljava/lang/Long;Le/H;ILe/x;Lcom/google/android/location/localizer/j;)V
    .registers 21

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/b;->c(Le/x;Le/x;)D

    move-result-wide v2

    const-wide/high16 v4, 0x400e

    div-double/2addr v2, v4

    double-to-int v10, v2

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/b;->d(Le/x;Le/x;)D

    move-result-wide v2

    const-wide/high16 v4, 0x400e

    div-double/2addr v2, v4

    double-to-int v11, v2

    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/google/android/location/localizer/e;->a(I)Lcom/google/android/location/localizer/DistanceDist;

    move-result-object v12

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz v12, :cond_2e

    iget-object v5, v12, Lcom/google/android/location/localizer/DistanceDist;->d:[F

    array-length v5, v5

    if-lez v5, :cond_2e

    iget-object v2, v12, Lcom/google/android/location/localizer/DistanceDist;->d:[F

    array-length v4, v2

    iget v3, v12, Lcom/google/android/location/localizer/DistanceDist;->c:I

    const/4 v2, 0x0

    :cond_2e
    const/16 v5, -0x28

    move v9, v5

    :goto_31
    const/16 v5, 0x28

    if-gt v9, v5, :cond_96

    sub-int v5, v9, v10

    if-gez v5, :cond_3a

    neg-int v5, v5

    :cond_3a
    const/16 v6, -0x28

    move v8, v6

    :goto_3d
    const/16 v6, 0x28

    if-gt v8, v6, :cond_92

    sub-int v6, v8, v11

    if-gez v6, :cond_46

    neg-int v6, v6

    :cond_46
    const/16 v7, 0x78

    if-ge v6, v7, :cond_4e

    const/16 v7, 0x78

    if-lt v5, v7, :cond_69

    :cond_4e
    invoke-static {v5, v6}, Lcom/google/android/location/localizer/e;->a(II)I

    move-result v6

    :goto_52
    if-eqz v2, :cond_76

    int-to-double v6, v6

    const-wide v13, 0x4052c00000000000L

    cmpg-double v6, v6, v13

    if-gez v6, :cond_70

    const-wide/high16 v6, 0x3fe0

    :goto_60
    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v8, v6, v7}, Lcom/google/android/location/localizer/j;->a(IID)V

    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_3d

    :cond_69
    sget-object v7, Lcom/google/android/location/localizer/e;->a:[[I

    aget-object v7, v7, v5

    aget v6, v7, v6

    goto :goto_52

    :cond_70
    const-wide v6, 0x3fa999999999999aL

    goto :goto_60

    :cond_76
    if-ge v6, v3, :cond_7f

    iget-object v6, v12, Lcom/google/android/location/localizer/DistanceDist;->d:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    float-to-double v6, v6

    goto :goto_60

    :cond_7f
    add-int v7, v3, v4

    if-lt v6, v7, :cond_8b

    iget-object v6, v12, Lcom/google/android/location/localizer/DistanceDist;->d:[F

    add-int/lit8 v7, v4, -0x1

    aget v6, v6, v7

    float-to-double v6, v6

    goto :goto_60

    :cond_8b
    iget-object v7, v12, Lcom/google/android/location/localizer/DistanceDist;->d:[F

    sub-int/2addr v6, v3

    aget v6, v7, v6

    float-to-double v6, v6

    goto :goto_60

    :cond_92
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    goto :goto_31

    :cond_96
    return-void
.end method

.method private a(Le/H;Lcom/google/android/location/localizer/h;)Z
    .registers 5

    invoke-virtual {p2}, Lcom/google/android/location/localizer/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/v;

    iget-object v0, v0, Le/v;->b:Ljava/lang/Object;

    check-cast v0, Le/H;

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/localizer/e;->a(Le/H;Le/H;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private a(Le/H;Le/H;)Z
    .registers 5

    invoke-static {p1, p2}, Lcom/google/android/location/localizer/b;->a(Le/x;Le/x;)I

    move-result v0

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private a(Le/x;Ljava/util/Map;)Z
    .registers 9

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/H;

    invoke-static {p1, v0}, Lcom/google/android/location/localizer/b;->b(Le/x;Le/x;)D

    move-result-wide v2

    const-wide v4, 0x4052c00000000000L

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_8

    const/4 v0, 0x0

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x1

    goto :goto_22
.end method

.method private a(Le/z;Ljava/util/List;)Z
    .registers 9

    const-wide/16 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/v;

    iget-object v0, v0, Le/v;->b:Ljava/lang/Object;

    check-cast v0, Le/H;

    iget v4, v0, Le/H;->h:I

    const v5, 0x9c40

    if-ge v4, v5, :cond_40

    invoke-static {p1, v0}, Lcom/google/android/location/localizer/b;->b(Le/z;Le/x;)D

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    :goto_26
    move-wide v1, v0

    goto :goto_7

    :cond_28
    const-wide v3, 0x408f400000000000L

    mul-double v0, v3, v1

    const-wide v2, 0x3ff3333333333333L

    div-double/2addr v0, v2

    double-to-int v0, v0

    iget v1, p1, Le/z;->c:I

    if-le v0, v1, :cond_3e

    iput v0, p1, Le/z;->c:I

    const/4 v0, 0x1

    :goto_3d
    return v0

    :cond_3e
    const/4 v0, 0x0

    goto :goto_3d

    :cond_40
    move-wide v0, v1

    goto :goto_26
.end method

.method private static b(Le/H;)D
    .registers 5

    iget v0, p0, Le/H;->h:I

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4024

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4034

    div-double v0, v2, v0

    return-wide v0
.end method

.method private b(Ljava/util/Map;)Ljava/util/Set;
    .registers 10

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    new-instance v2, Lcom/google/android/location/localizer/h;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v1, v7}, Le/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Le/v;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/location/localizer/h;-><init>(Le/v;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/localizer/h;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/H;

    invoke-direct {p0, v2, v1}, Lcom/google/android/location/localizer/e;->a(Le/H;Lcom/google/android/location/localizer/h;)Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_59
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_5d
    invoke-direct {p0, v5}, Lcom/google/android/location/localizer/e;->a(Ljava/util/List;)Lcom/google/android/location/localizer/h;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/List;->clear()V

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_17

    :cond_71
    new-instance v0, Lcom/google/android/location/localizer/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/localizer/i;-><init>(Lcom/google/android/location/localizer/e;Lcom/google/android/location/localizer/f;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c6

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/localizer/h;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/h;->a()Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x1

    move v1, v0

    :goto_92
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_c6

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/localizer/h;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_c2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/v;

    iget-object v0, v0, Le/v;->a:Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b0

    :cond_c2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_92

    :cond_c6
    return-object v2
.end method

.method private b(Ljava/util/Map;J)Ljava/util/Set;
    .registers 6

    sget-object v0, Lcom/google/android/location/localizer/e;->d:Lcom/google/android/location/localizer/v;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/google/android/location/localizer/v;->a(Ljava/util/Map;Ljava/util/Map;J)Lcom/google/android/location/localizer/w;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/w;->c()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method


# virtual methods
.method public a(Ljava/util/Map;Ljava/util/Map;J)Lcom/google/android/location/localizer/w;
    .registers 13

    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/location/localizer/e;->a(Ljava/util/Map;J)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_13

    invoke-direct {p0}, Lcom/google/android/location/localizer/e;->a()Lcom/google/android/location/localizer/w;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    invoke-direct {p0, p1, v3}, Lcom/google/android/location/localizer/e;->a(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/localizer/e;->f:Lcom/google/android/location/localizer/j;

    invoke-virtual {v1}, Lcom/google/android/location/localizer/j;->a()V

    invoke-direct {p0, v0}, Lcom/google/android/location/localizer/e;->a(Ljava/util/Map;)Le/x;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/localizer/e;->f:Lcom/google/android/location/localizer/j;

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/google/android/location/localizer/e;->a(Ljava/util/Map;Ljava/util/Map;Le/x;Lcom/google/android/location/localizer/j;)Le/v;

    move-result-object v1

    if-nez v1, :cond_2d

    invoke-direct {p0}, Lcom/google/android/location/localizer/e;->a()Lcom/google/android/location/localizer/w;

    move-result-object v0

    goto :goto_12

    :cond_2d
    iget-object v0, v1, Le/v;->a:Ljava/lang/Object;

    check-cast v0, Le/x;

    if-nez v0, :cond_3f

    sget-object v0, Lcom/google/android/location/localizer/e;->b:Ljava/util/logging/Logger;

    const-string v1, "No location found by lre localizer"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/location/localizer/e;->a()Lcom/google/android/location/localizer/w;

    move-result-object v0

    goto :goto_12

    :cond_3f
    iget-object v1, v1, Le/v;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/16 v1, 0x50

    const-wide v6, 0x3fd3333333333333L

    cmpg-double v2, v4, v6

    if-gtz v2, :cond_54

    const/16 v1, 0x4e

    :cond_54
    new-instance v2, Lcom/google/android/location/localizer/w;

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/location/localizer/w;-><init>(Le/x;ILjava/util/Set;)V

    move-object v0, v2

    goto :goto_12
.end method
