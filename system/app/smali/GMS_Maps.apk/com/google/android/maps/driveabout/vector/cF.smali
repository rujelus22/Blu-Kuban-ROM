.class public Lcom/google/android/maps/driveabout/vector/cf;
.super Lcom/google/android/maps/driveabout/vector/cJ;
.source "SourceFile"


# instance fields
.field private final d:Lcom/google/android/maps/driveabout/vector/de;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/df;)V
    .registers 3
    .parameter

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->h:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/vector/cJ;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Lcom/google/android/maps/driveabout/vector/df;)V

    .line 20
    new-instance v0, Lcom/google/android/maps/driveabout/vector/de;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/de;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cf;->d:Lcom/google/android/maps/driveabout/vector/de;

    .line 24
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 54
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v4, :cond_e

    move v0, v1

    .line 62
    :goto_d
    return v0

    :cond_e
    move v3, v2

    .line 57
    :goto_f
    if-ge v3, v4, :cond_27

    .line 58
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ln/am;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    move v0, v1

    .line 59
    goto :goto_d

    .line 57
    :cond_23
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_f

    :cond_27
    move v0, v2

    .line 62
    goto :goto_d
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/k;)Ljava/util/List;
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x10

    .line 38
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->a(Lcom/google/android/maps/driveabout/vector/k;)Ljava/util/List;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cf;->d:Lcom/google/android/maps/driveabout/vector/de;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->c()Ln/Q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/de;->a(Ln/Q;)V

    .line 40
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cf;->d:Lcom/google/android/maps/driveabout/vector/de;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 41
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1f

    .line 42
    const/4 v1, 0x0

    invoke-interface {v0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 44
    :cond_1f
    return-object v0
.end method
