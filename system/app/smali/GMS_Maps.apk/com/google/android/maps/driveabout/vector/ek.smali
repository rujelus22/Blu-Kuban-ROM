.class public abstract Lcom/google/android/maps/driveabout/vector/ek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cY;


# instance fields
.field protected final a:Lcom/google/android/maps/driveabout/vector/dg;

.field protected final b:Lcom/google/android/maps/driveabout/vector/df;

.field protected final c:Lcom/google/android/maps/driveabout/vector/ei;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/dg;Lcom/google/android/maps/driveabout/vector/df;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {}, Lt/m;->d()Lcom/google/android/maps/driveabout/vector/ei;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/maps/driveabout/vector/ek;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Lcom/google/android/maps/driveabout/vector/ei;Lcom/google/android/maps/driveabout/vector/df;)V

    .line 41
    return-void
.end method

.method protected constructor <init>(Lcom/google/android/maps/driveabout/vector/dg;Lcom/google/android/maps/driveabout/vector/ei;Lcom/google/android/maps/driveabout/vector/df;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ek;->a:Lcom/google/android/maps/driveabout/vector/dg;

    .line 49
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/ek;->c:Lcom/google/android/maps/driveabout/vector/ei;

    .line 50
    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/ek;->b:Lcom/google/android/maps/driveabout/vector/df;

    .line 51
    if-nez p2, :cond_13

    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Null zoom table"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_13
    return-void
.end method


# virtual methods
.method public a(Ln/Q;)F
    .registers 3
    .parameter

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/ek;->b(Ln/Q;)Lcom/google/android/maps/driveabout/vector/eh;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/eh;->a()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public a(ILn/Q;)Ljava/util/List;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 104
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/vector/ek;->b(Ln/Q;)Lcom/google/android/maps/driveabout/vector/eh;

    move-result-object v5

    move v3, v1

    .line 106
    :goto_b
    if-gt v3, p1, :cond_35

    .line 107
    invoke-virtual {v5, v3}, Lcom/google/android/maps/driveabout/vector/eh;->c(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 106
    :cond_13
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_b

    .line 110
    :cond_17
    const/4 v0, 0x1

    shl-int v6, v0, v3

    move v2, v1

    .line 111
    :goto_1b
    if-ge v2, v6, :cond_13

    move v0, v1

    .line 112
    :goto_1e
    if-ge v0, v6, :cond_31

    .line 113
    new-instance v7, Ln/am;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/ek;->b:Lcom/google/android/maps/driveabout/vector/df;

    invoke-interface {v8}, Lcom/google/android/maps/driveabout/vector/df;->a()Ln/av;

    move-result-object v8

    invoke-direct {v7, v3, v2, v0, v8}, Ln/am;-><init>(IIILn/av;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 111
    :cond_31
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1b

    .line 117
    :cond_35
    return-object v4
.end method

.method public a(Ln/am;Ln/Q;)Ln/am;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/vector/ek;->b(Ln/Q;)Lcom/google/android/maps/driveabout/vector/eh;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Ln/am;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/eh;->a(I)I

    move-result v0

    .line 69
    if-gez v0, :cond_10

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {p1, v0}, Ln/am;->a(I)Ln/am;

    move-result-object v0

    goto :goto_f
.end method

.method protected b(Ln/Q;)Lcom/google/android/maps/driveabout/vector/eh;
    .registers 4
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ek;->c:Lcom/google/android/maps/driveabout/vector/ei;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ek;->a:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/ei;->a(Ln/Q;Lcom/google/android/maps/driveabout/vector/dg;)Lcom/google/android/maps/driveabout/vector/eh;

    move-result-object v0

    return-object v0
.end method

.method public b(Ln/am;Ln/Q;)Ljava/util/List;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/vector/ek;->b(Ln/Q;)Lcom/google/android/maps/driveabout/vector/eh;

    move-result-object v1

    .line 85
    invoke-virtual {p1}, Ln/am;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/maps/driveabout/vector/eh;->b(I)I

    move-result v4

    .line 86
    if-gez v4, :cond_15

    .line 99
    :cond_14
    return-object v0

    .line 89
    :cond_15
    invoke-virtual {p1}, Ln/am;->b()I

    move-result v1

    sub-int v5, v4, v1

    .line 90
    const/4 v1, 0x1

    shl-int v6, v1, v5

    move v3, v2

    .line 91
    :goto_1f
    if-ge v3, v6, :cond_14

    move v1, v2

    .line 92
    :goto_22
    if-ge v1, v6, :cond_3a

    .line 93
    invoke-virtual {p1}, Ln/am;->c()I

    move-result v7

    shl-int/2addr v7, v5

    add-int/2addr v7, v1

    invoke-virtual {p1}, Ln/am;->d()I

    move-result v8

    shl-int/2addr v8, v5

    add-int/2addr v8, v3

    invoke-virtual {p1, v4, v7, v8}, Ln/am;->a(III)Ln/am;

    move-result-object v7

    .line 96
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 91
    :cond_3a
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1f
.end method
