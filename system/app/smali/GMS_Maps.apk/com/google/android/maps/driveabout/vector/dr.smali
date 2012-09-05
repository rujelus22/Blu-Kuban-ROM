.class public abstract Lcom/google/android/maps/driveabout/vector/dr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cz;


# instance fields
.field protected final a:Lcom/google/android/maps/driveabout/vector/cU;

.field protected final b:Lcom/google/android/maps/driveabout/vector/dp;

.field protected final c:Lt/m;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/cU;Lt/m;)V
    .registers 4

    invoke-static {}, Lz/n;->c()Lcom/google/android/maps/driveabout/vector/dp;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/maps/driveabout/vector/dr;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Lt/m;Lcom/google/android/maps/driveabout/vector/dp;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/maps/driveabout/vector/cU;Lt/m;Lcom/google/android/maps/driveabout/vector/dp;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dr;->a:Lcom/google/android/maps/driveabout/vector/cU;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/dr;->b:Lcom/google/android/maps/driveabout/vector/dp;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/dr;->c:Lt/m;

    return-void
.end method


# virtual methods
.method public a(Lt/L;)F
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/dr;->b(Lt/L;)Lcom/google/android/maps/driveabout/vector/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/do;->a()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public a(ILt/L;)Ljava/util/List;
    .registers 12

    const/4 v1, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/vector/dr;->b(Lt/L;)Lcom/google/android/maps/driveabout/vector/do;

    move-result-object v5

    move v3, v1

    :goto_b
    if-gt v3, p1, :cond_31

    invoke-virtual {v5, v3}, Lcom/google/android/maps/driveabout/vector/do;->c(I)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_13
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_b

    :cond_17
    const/4 v0, 0x1

    shl-int v6, v0, v3

    move v2, v1

    :goto_1b
    if-ge v2, v6, :cond_13

    move v0, v1

    :goto_1e
    if-ge v0, v6, :cond_2d

    new-instance v7, Lt/af;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/dr;->c:Lt/m;

    invoke-direct {v7, v3, v2, v0, v8}, Lt/af;-><init>(IIILt/m;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_2d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1b

    :cond_31
    return-object v4
.end method

.method public a(Lt/af;Lt/L;)Lt/af;
    .registers 5

    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/vector/dr;->b(Lt/L;)Lcom/google/android/maps/driveabout/vector/do;

    move-result-object v0

    invoke-virtual {p1}, Lt/af;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/do;->a(I)I

    move-result v0

    if-gez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {p1, v0}, Lt/af;->a(I)Lt/af;

    move-result-object v0

    goto :goto_f
.end method

.method protected b(Lt/L;)Lcom/google/android/maps/driveabout/vector/do;
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dr;->b:Lcom/google/android/maps/driveabout/vector/dp;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dr;->a:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/dp;->a(Lt/L;Lcom/google/android/maps/driveabout/vector/cU;)Lcom/google/android/maps/driveabout/vector/do;

    move-result-object v0

    return-object v0
.end method

.method public b(Lt/af;Lt/L;)Ljava/util/List;
    .registers 12

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/vector/dr;->b(Lt/L;)Lcom/google/android/maps/driveabout/vector/do;

    move-result-object v1

    invoke-virtual {p1}, Lt/af;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/maps/driveabout/vector/do;->b(I)I

    move-result v4

    if-gez v4, :cond_15

    :cond_14
    return-object v0

    :cond_15
    invoke-virtual {p1}, Lt/af;->b()I

    move-result v1

    sub-int v5, v4, v1

    const/4 v1, 0x1

    shl-int v6, v1, v5

    move v3, v2

    :goto_1f
    if-ge v3, v6, :cond_14

    move v1, v2

    :goto_22
    if-ge v1, v6, :cond_3a

    invoke-virtual {p1}, Lt/af;->c()I

    move-result v7

    shl-int/2addr v7, v5

    add-int/2addr v7, v1

    invoke-virtual {p1}, Lt/af;->d()I

    move-result v8

    shl-int/2addr v8, v5

    add-int/2addr v8, v3

    invoke-virtual {p1, v4, v7, v8}, Lt/af;->b(III)Lt/af;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_3a
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1f
.end method
