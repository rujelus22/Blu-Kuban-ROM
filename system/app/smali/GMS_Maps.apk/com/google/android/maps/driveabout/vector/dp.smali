.class public Lcom/google/android/maps/driveabout/vector/dp;
.super Ljava/lang/Object;


# static fields
.field private static final b:Lt/af;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/dq;

.field private final c:Ljava/util/Map;

.field private d:Lt/L;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Lt/af;

    invoke-direct {v0, v1, v1, v1}, Lt/af;-><init>(III)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dp;->b:Lt/af;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/maps/driveabout/vector/dq;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dp;->c:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dp;->a:Lcom/google/android/maps/driveabout/vector/dq;

    return-void
.end method

.method private a(IIILcom/google/android/maps/driveabout/vector/cU;Lcom/google/android/maps/driveabout/vector/dq;)Lcom/google/android/maps/driveabout/vector/do;
    .registers 12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dp;->a:Lcom/google/android/maps/driveabout/vector/dq;

    if-eq p5, v0, :cond_2b

    invoke-virtual {p5, p4}, Lcom/google/android/maps/driveabout/vector/dq;->a(Lcom/google/android/maps/driveabout/vector/cU;)Lcom/google/android/maps/driveabout/vector/do;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {p5, p4}, Lcom/google/android/maps/driveabout/vector/dq;->a(Lcom/google/android/maps/driveabout/vector/cU;)Lcom/google/android/maps/driveabout/vector/do;

    move-result-object v0

    if-nez v0, :cond_2a

    const-string v0, "ZoomTableQuadTree"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No zoom table for tile type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/do;->a:Lcom/google/android/maps/driveabout/vector/do;

    :cond_2a
    :goto_2a
    return-object v0

    :cond_2b
    add-int/lit8 v3, p3, -0x1

    invoke-virtual {p5, p1, p2, v3}, Lcom/google/android/maps/driveabout/vector/dq;->a(III)I

    move-result v0

    invoke-virtual {p5, v0}, Lcom/google/android/maps/driveabout/vector/dq;->a(I)Lcom/google/android/maps/driveabout/vector/dq;

    move-result-object v5

    if-nez v5, :cond_5a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dp;->a:Lcom/google/android/maps/driveabout/vector/dq;

    invoke-virtual {v0, p4}, Lcom/google/android/maps/driveabout/vector/dq;->a(Lcom/google/android/maps/driveabout/vector/cU;)Lcom/google/android/maps/driveabout/vector/do;

    move-result-object v0

    if-nez v0, :cond_2a

    const-string v0, "ZoomTableQuadTree"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No root zoom table for tile type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/do;->a:Lcom/google/android/maps/driveabout/vector/do;

    goto :goto_2a

    :cond_5a
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/dp;->a(IIILcom/google/android/maps/driveabout/vector/cU;Lcom/google/android/maps/driveabout/vector/dq;)Lcom/google/android/maps/driveabout/vector/do;

    move-result-object v0

    goto :goto_2a
.end method

.method public static a(Lam/b;)Lcom/google/android/maps/driveabout/vector/dp;
    .registers 16

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dq;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/dq;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lam/b;->l(I)I

    move-result v9

    const/4 v1, 0x0

    move v8, v1

    :goto_10
    if-ge v8, v9, :cond_a2

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v8}, Lam/b;->e(II)Lam/b;

    move-result-object v10

    const/4 v1, 0x3

    invoke-virtual {v10, v1}, Lam/b;->d(I)I

    move-result v3

    const/4 v1, 0x2

    invoke-virtual {v10, v1}, Lam/b;->l(I)I

    move-result v4

    const/4 v1, 0x5

    invoke-virtual {v10, v1}, Lam/b;->d(I)I

    move-result v6

    if-lez v4, :cond_37

    new-array v1, v4, [I

    const/4 v2, 0x0

    :goto_2b
    if-ge v2, v4, :cond_48

    const/4 v5, 0x2

    invoke-virtual {v10, v5, v2}, Lam/b;->c(II)I

    move-result v5

    aput v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_37
    add-int/lit8 v1, v3, 0x1

    sub-int/2addr v1, v6

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_3d
    sub-int v4, v3, v6

    if-gt v2, v4, :cond_48

    add-int v4, v2, v6

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_48
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lam/b;->d(I)I

    move-result v2

    new-instance v5, Lcom/google/android/maps/driveabout/vector/do;

    invoke-direct {v5, v1, v6, v2, v3}, Lcom/google/android/maps/driveabout/vector/do;-><init>([IIII)V

    const/4 v1, 0x4

    invoke-virtual {v10, v1}, Lam/b;->l(I)I

    move-result v11

    const/4 v1, 0x0

    move v7, v1

    :goto_59
    if-ge v7, v11, :cond_9d

    const/4 v1, 0x4

    invoke-virtual {v10, v1, v7}, Lam/b;->e(II)Lam/b;

    move-result-object v12

    const/4 v1, 0x2

    invoke-virtual {v12, v1}, Lam/b;->d(I)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v12, v2}, Lam/b;->d(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v12, v3}, Lam/b;->d(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Lam/b;->l(I)I

    move-result v13

    new-instance v14, Lt/af;

    invoke-direct {v14, v1, v2, v3}, Lt/af;-><init>(III)V

    const/4 v1, 0x0

    move v6, v1

    :goto_7b
    if-ge v6, v13, :cond_99

    const/4 v1, 0x1

    invoke-virtual {v12, v1, v6}, Lam/b;->c(II)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/cU;->a(I)Lcom/google/android/maps/driveabout/vector/cU;

    move-result-object v4

    invoke-virtual {v14}, Lt/af;->c()I

    move-result v1

    invoke-virtual {v14}, Lt/af;->d()I

    move-result v2

    invoke-virtual {v14}, Lt/af;->b()I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/dq;->a(IIILcom/google/android/maps/driveabout/vector/cU;Lcom/google/android/maps/driveabout/vector/do;)V

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_7b

    :cond_99
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_59

    :cond_9d
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto/16 :goto_10

    :cond_a2
    new-instance v1, Lcom/google/android/maps/driveabout/vector/dp;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/vector/dp;-><init>(Lcom/google/android/maps/driveabout/vector/dq;)V

    move-object v0, v1

    goto/16 :goto_3
.end method


# virtual methods
.method public a(Lt/L;Lcom/google/android/maps/driveabout/vector/cU;)Lcom/google/android/maps/driveabout/vector/do;
    .registers 9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dp;->d:Lt/L;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dp;->d:Lt/L;

    invoke-virtual {v0, p1}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dp;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/do;

    if-eqz v0, :cond_1c

    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dp;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1c
    const/16 v0, 0x1e

    invoke-static {v0, p1}, Lt/af;->a(ILt/L;)Lt/af;

    move-result-object v0

    if-nez v0, :cond_26

    sget-object v0, Lcom/google/android/maps/driveabout/vector/dp;->b:Lt/af;

    :cond_26
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dp;->d:Lt/L;

    invoke-virtual {v0}, Lt/af;->c()I

    move-result v1

    invoke-virtual {v0}, Lt/af;->d()I

    move-result v2

    invoke-virtual {v0}, Lt/af;->b()I

    move-result v3

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/dp;->a:Lcom/google/android/maps/driveabout/vector/dq;

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/dp;->a(IIILcom/google/android/maps/driveabout/vector/cU;Lcom/google/android/maps/driveabout/vector/dq;)Lcom/google/android/maps/driveabout/vector/do;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dp;->c:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16
.end method
