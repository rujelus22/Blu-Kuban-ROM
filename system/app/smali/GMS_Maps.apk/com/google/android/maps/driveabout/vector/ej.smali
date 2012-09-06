.class Lcom/google/android/maps/driveabout/vector/ej;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/HashMap;

.field private b:[Lcom/google/android/maps/driveabout/vector/ej;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public a(III)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    shr-int v0, p1, p3

    and-int/lit8 v0, v0, 0x1

    .line 100
    shr-int v1, p2, p3

    and-int/lit8 v1, v1, 0x1

    .line 101
    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dg;)Lcom/google/android/maps/driveabout/vector/eh;
    .registers 3
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ej;->a:Ljava/util/HashMap;

    if-nez v0, :cond_6

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ej;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/eh;

    goto :goto_5
.end method

.method public a(I)Lcom/google/android/maps/driveabout/vector/ej;
    .registers 3
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ej;->b:[Lcom/google/android/maps/driveabout/vector/ej;

    if-eqz v0, :cond_9

    if-ltz p1, :cond_9

    const/4 v0, 0x3

    if-le p1, v0, :cond_b

    .line 110
    :cond_9
    const/4 v0, 0x0

    .line 112
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ej;->b:[Lcom/google/android/maps/driveabout/vector/ej;

    aget-object v0, v0, p1

    goto :goto_a
.end method

.method public a(IIILcom/google/android/maps/driveabout/vector/dg;Lcom/google/android/maps/driveabout/vector/eh;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    if-gtz p3, :cond_12

    .line 75
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ej;->a:Ljava/util/HashMap;

    if-nez v0, :cond_c

    .line 76
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ej;->a:Ljava/util/HashMap;

    .line 78
    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ej;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :goto_11
    return-void

    .line 81
    :cond_12
    add-int/lit8 v3, p3, -0x1

    .line 82
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/maps/driveabout/vector/ej;->a(III)I

    move-result v1

    .line 83
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ej;->b:[Lcom/google/android/maps/driveabout/vector/ej;

    if-nez v0, :cond_21

    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/ej;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ej;->b:[Lcom/google/android/maps/driveabout/vector/ej;

    .line 86
    :cond_21
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ej;->b:[Lcom/google/android/maps/driveabout/vector/ej;

    aget-object v0, v0, v1

    .line 87
    if-nez v0, :cond_30

    .line 88
    new-instance v0, Lcom/google/android/maps/driveabout/vector/ej;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/ej;-><init>()V

    .line 89
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ej;->b:[Lcom/google/android/maps/driveabout/vector/ej;

    aput-object v0, v2, v1

    :cond_30
    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 91
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/ej;->a(IIILcom/google/android/maps/driveabout/vector/dg;Lcom/google/android/maps/driveabout/vector/eh;)V

    goto :goto_11
.end method
