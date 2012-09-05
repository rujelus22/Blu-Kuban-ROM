.class Lcom/google/android/location/localizer/j;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/util/Comparator;

.field private static final e:Ljava/util/Comparator;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:[[D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/location/localizer/k;

    invoke-direct {v0}, Lcom/google/android/location/localizer/k;-><init>()V

    sput-object v0, Lcom/google/android/location/localizer/j;->d:Ljava/util/Comparator;

    new-instance v0, Lcom/google/android/location/localizer/l;

    invoke-direct {v0}, Lcom/google/android/location/localizer/l;-><init>()V

    sput-object v0, Lcom/google/android/location/localizer/j;->e:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/location/localizer/j;->b:I

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/localizer/j;->a:I

    iget v0, p0, Lcom/google/android/location/localizer/j;->a:I

    iget v1, p0, Lcom/google/android/location/localizer/j;->a:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/google/android/location/localizer/j;->c:[[D

    invoke-virtual {p0}, Lcom/google/android/location/localizer/j;->a()V

    return-void
.end method

.method private a(II)Z
    .registers 4

    iget v0, p0, Lcom/google/android/location/localizer/j;->b:I

    if-gt p1, v0, :cond_14

    iget v0, p0, Lcom/google/android/location/localizer/j;->b:I

    neg-int v0, v0

    if-lt p1, v0, :cond_14

    iget v0, p0, Lcom/google/android/location/localizer/j;->b:I

    if-gt p2, v0, :cond_14

    iget v0, p0, Lcom/google/android/location/localizer/j;->b:I

    neg-int v0, v0

    if-lt p2, v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private b()V
    .registers 9

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v0, v1

    :goto_4
    iget v4, p0, Lcom/google/android/location/localizer/j;->a:I

    if-ge v0, v4, :cond_1c

    move v4, v1

    :goto_9
    iget v5, p0, Lcom/google/android/location/localizer/j;->a:I

    if-ge v4, v5, :cond_19

    iget-object v5, p0, Lcom/google/android/location/localizer/j;->c:[[D

    aget-object v5, v5, v0

    aget-wide v5, v5, v4

    add-double/2addr v5, v2

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v5

    goto :goto_9

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1c
    move v0, v1

    :goto_1d
    iget v4, p0, Lcom/google/android/location/localizer/j;->a:I

    if-ge v0, v4, :cond_35

    move v4, v1

    :goto_22
    iget v5, p0, Lcom/google/android/location/localizer/j;->a:I

    if-ge v4, v5, :cond_32

    iget-object v5, p0, Lcom/google/android/location/localizer/j;->c:[[D

    aget-object v5, v5, v0

    aget-wide v6, v5, v4

    div-double/2addr v6, v2

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_35
    return-void
.end method


# virtual methods
.method public a(DLe/x;D)Le/z;
    .registers 17

    invoke-direct {p0}, Lcom/google/android/location/localizer/j;->b()V

    new-instance v3, Ljava/util/PriorityQueue;

    const/16 v0, 0x64

    sget-object v1, Lcom/google/android/location/localizer/j;->e:Ljava/util/Comparator;

    invoke-direct {v3, v0, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    iget v0, p0, Lcom/google/android/location/localizer/j;->a:I

    if-ge v1, v0, :cond_4f

    const/4 v0, 0x0

    move v2, v0

    :goto_14
    iget v0, p0, Lcom/google/android/location/localizer/j;->a:I

    if-ge v2, v0, :cond_4b

    new-instance v4, Lcom/google/android/location/localizer/m;

    iget-object v0, p0, Lcom/google/android/location/localizer/j;->c:[[D

    aget-object v0, v0, v1

    aget-wide v5, v0, v2

    invoke-direct {v4, v1, v2, v5, v6}, Lcom/google/android/location/localizer/m;-><init>(IID)V

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    const/16 v5, 0x64

    if-ge v0, v5, :cond_32

    invoke-virtual {v3, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_2e
    :goto_2e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    :cond_32
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/localizer/m;

    invoke-static {v0}, Lcom/google/android/location/localizer/m;->a(Lcom/google/android/location/localizer/m;)D

    move-result-wide v5

    invoke-static {v4}, Lcom/google/android/location/localizer/m;->a(Lcom/google/android/location/localizer/m;)D

    move-result-wide v7

    cmpg-double v0, v5, v7

    if-gez v0, :cond_2e

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_4b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_4f
    const/16 v0, 0x64

    new-array v0, v0, [Lcom/google/android/location/localizer/m;

    invoke-virtual {v3, v0}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/localizer/m;

    sget-object v1, Lcom/google/android/location/localizer/j;->d:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    :goto_61
    array-length v4, v0

    if-ge v1, v4, :cond_72

    cmpg-double v4, v2, p1

    if-gez v4, :cond_72

    aget-object v4, v0, v1

    invoke-static {v4}, Lcom/google/android/location/localizer/m;->a(Lcom/google/android/location/localizer/m;)D

    move-result-wide v4

    add-double/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    :cond_72
    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_aa

    const/4 v2, 0x2

    if-lt v1, v2, :cond_aa

    add-int/lit8 v2, v1, -0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/google/android/location/localizer/m;->a(Lcom/google/android/location/localizer/m;)D

    move-result-wide v2

    add-int/lit8 v4, v1, -0x2

    aget-object v4, v0, v4

    invoke-static {v4}, Lcom/google/android/location/localizer/m;->a(Lcom/google/android/location/localizer/m;)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_aa

    add-int/lit8 v2, v1, -0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/google/android/location/localizer/m;->a(Lcom/google/android/location/localizer/m;)D

    move-result-wide v3

    add-int/lit8 v2, v1, -0x1

    :goto_99
    if-ltz v2, :cond_a7

    aget-object v5, v0, v2

    invoke-static {v5}, Lcom/google/android/location/localizer/m;->a(Lcom/google/android/location/localizer/m;)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v5

    if-eqz v5, :cond_de

    :cond_a7
    if-ltz v2, :cond_aa

    move v1, v2

    :cond_aa
    new-array v3, v1, [D

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_b2
    if-ge v2, v1, :cond_e1

    aget-object v5, v0, v2

    invoke-virtual {v5}, Lcom/google/android/location/localizer/m;->b()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, p4

    iget v8, p0, Lcom/google/android/location/localizer/j;->b:I

    int-to-double v8, v8

    mul-double/2addr v8, p4

    sub-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v5}, Lcom/google/android/location/localizer/m;->a()I

    move-result v7

    int-to-double v7, v7

    mul-double/2addr v7, p4

    iget v9, p0, Lcom/google/android/location/localizer/j;->b:I

    int-to-double v9, v9

    mul-double/2addr v9, p4

    sub-double/2addr v7, v9

    double-to-int v7, v7

    invoke-static {v6, v7, p3}, Lcom/google/android/location/localizer/b;->a(IILe/x;)Le/f;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lcom/google/android/location/localizer/m;->a(Lcom/google/android/location/localizer/m;)D

    move-result-wide v5

    aput-wide v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b2

    :cond_de
    add-int/lit8 v2, v2, -0x1

    goto :goto_99

    :cond_e1
    new-instance v2, Lcom/google/android/location/localizer/u;

    invoke-direct {v2}, Lcom/google/android/location/localizer/u;-><init>()V

    invoke-virtual {v2, v4, v3}, Lcom/google/android/location/localizer/u;->a(Ljava/util/List;[D)Le/f;

    move-result-object v5

    invoke-static {v5, p3}, Lcom/google/android/location/localizer/b;->a(Le/f;Le/x;)D

    move-result-wide v2

    const-wide/high16 v6, 0x400e

    div-double/2addr v2, v6

    iget v4, p0, Lcom/google/android/location/localizer/j;->b:I

    int-to-double v6, v4

    add-double/2addr v2, v6

    double-to-int v6, v2

    invoke-static {v5, p3}, Lcom/google/android/location/localizer/b;->b(Le/f;Le/x;)D

    move-result-wide v2

    const-wide/high16 v7, 0x400e

    div-double/2addr v2, v7

    iget v4, p0, Lcom/google/android/location/localizer/j;->b:I

    int-to-double v7, v4

    add-double/2addr v2, v7

    double-to-int v7, v2

    const/high16 v3, -0x8000

    const/4 v2, 0x0

    move v4, v2

    :goto_106
    if-ge v4, v1, :cond_136

    aget-object v2, v0, v4

    invoke-static {v2}, Lcom/google/android/location/localizer/m;->b(Lcom/google/android/location/localizer/m;)I

    move-result v8

    sub-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v2}, Lcom/google/android/location/localizer/m;->c(Lcom/google/android/location/localizer/m;)I

    move-result v2

    sub-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v9, 0x78

    if-ge v8, v9, :cond_124

    const/16 v9, 0x78

    if-lt v2, v9, :cond_12f

    :cond_124
    invoke-static {v2, v8}, Lcom/google/android/location/localizer/e;->a(II)I

    move-result v2

    :goto_128
    if-le v2, v3, :cond_149

    :goto_12a
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    goto :goto_106

    :cond_12f
    sget-object v9, Lcom/google/android/location/localizer/e;->a:[[I

    aget-object v2, v9, v2

    aget v2, v2, v8

    goto :goto_128

    :cond_136
    const/16 v0, 0x14

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Le/z;

    invoke-direct {v1}, Le/z;-><init>()V

    invoke-virtual {v1, v5}, Le/z;->a(Le/f;)Le/z;

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, v1, Le/z;->c:I

    return-object v1

    :cond_149
    move v2, v3

    goto :goto_12a
.end method

.method a()V
    .registers 7

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget v2, p0, Lcom/google/android/location/localizer/j;->a:I

    if-ge v0, v2, :cond_19

    move v2, v1

    :goto_7
    iget v3, p0, Lcom/google/android/location/localizer/j;->a:I

    if-ge v2, v3, :cond_16

    iget-object v3, p0, Lcom/google/android/location/localizer/j;->c:[[D

    aget-object v3, v3, v0

    const-wide/high16 v4, 0x3ff0

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_19
    return-void
.end method

.method public a(IID)V
    .registers 11

    invoke-direct {p0, p1, p2}, Lcom/google/android/location/localizer/j;->a(II)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget v0, p0, Lcom/google/android/location/localizer/j;->b:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/location/localizer/j;->b:I

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/google/android/location/localizer/j;->c:[[D

    aget-object v0, v2, v0

    aget-wide v2, v0, v1

    const-wide/high16 v4, 0x4059

    mul-double/2addr v4, p3

    mul-double/2addr v2, v4

    aput-wide v2, v0, v1

    goto :goto_6
.end method
