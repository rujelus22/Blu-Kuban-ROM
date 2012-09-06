.class final enum Lcom/google/common/collect/dA;
.super Lcom/google/common/collect/dv;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/dv;-><init>(Ljava/lang/String;ILcom/google/common/collect/du;)V

    return-void
.end method


# virtual methods
.method a(Ljava/util/List;Ljava/lang/Object;IIILjava/util/Comparator;Z)I
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 263
    sget-object v0, Lcom/google/common/collect/dA;->d:Lcom/google/common/collect/dv;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/common/collect/dv;->a(Ljava/util/List;Ljava/lang/Object;IIILjava/util/Comparator;Z)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method a(Ljava/util/List;Ljava/lang/Object;ILjava/util/Comparator;)I
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 270
    return p3
.end method
