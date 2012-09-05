.class public Lcom/google/android/maps/driveabout/vector/bM;
.super Lcom/google/android/maps/driveabout/vector/cn;


# instance fields
.field private final d:Lcom/google/android/maps/driveabout/vector/cL;


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->e:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cn;-><init>(Lcom/google/android/maps/driveabout/vector/cU;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cL;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/cL;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bM;->d:Lcom/google/android/maps/driveabout/vector/cL;

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v4, :cond_e

    move v0, v1

    :goto_d
    return v0

    :cond_e
    move v3, v2

    :goto_f
    if-ge v3, v4, :cond_27

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lt/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    move v0, v1

    goto :goto_d

    :cond_23
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_f

    :cond_27
    move v0, v2

    goto :goto_d
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/t;)Ljava/util/List;
    .registers 6

    const/16 v3, 0x10

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/cn;->a(Lcom/google/android/maps/driveabout/vector/t;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bM;->d:Lcom/google/android/maps/driveabout/vector/cL;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->c()Lt/L;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/cL;->a(Lt/L;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bM;->d:Lcom/google/android/maps/driveabout/vector/cL;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1f

    const/4 v1, 0x0

    invoke-interface {v0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_1f
    return-object v0
.end method
