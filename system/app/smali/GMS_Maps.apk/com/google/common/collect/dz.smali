.class final enum Lcom/google/common/collect/dz;
.super Lcom/google/common/collect/dv;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/dv;-><init>(Ljava/lang/String;ILcom/google/common/collect/du;)V

    return-void
.end method


# virtual methods
.method a(Ljava/util/List;Ljava/lang/Object;IIILjava/util/Comparator;Z)I
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    if-nez p7, :cond_3

    .line 226
    :goto_2
    return p4

    :cond_3
    move v0, p5

    move v1, p4

    .line 217
    :goto_5
    if-ge v1, v0, :cond_1d

    .line 218
    sub-int v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 219
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p6, v3, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 220
    if-lez v3, :cond_1b

    .line 221
    add-int/lit8 v0, v2, -0x1

    goto :goto_5

    :cond_1b
    move v1, v2

    .line 223
    goto :goto_5

    :cond_1d
    move p4, v1

    .line 226
    goto :goto_2
.end method

.method a(Ljava/util/List;Ljava/lang/Object;ILjava/util/Comparator;)I
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    return p3
.end method
