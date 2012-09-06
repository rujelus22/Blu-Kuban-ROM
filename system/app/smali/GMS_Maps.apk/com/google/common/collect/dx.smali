.class final enum Lcom/google/common/collect/dx;
.super Lcom/google/common/collect/dv;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 108
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
    .line 117
    if-nez p7, :cond_3

    .line 133
    :goto_2
    return p4

    :cond_3
    move v0, p4

    move v2, p3

    .line 124
    :goto_5
    if-ge v2, v0, :cond_1d

    .line 125
    sub-int v1, v0, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    .line 126
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p6, v3, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 127
    if-gez v3, :cond_1a

    .line 128
    add-int/lit8 v1, v1, 0x1

    :goto_18
    move v2, v1

    .line 132
    goto :goto_5

    :cond_1a
    move v0, v1

    move v1, v2

    .line 130
    goto :goto_18

    :cond_1d
    move p4, v2

    .line 133
    goto :goto_2
.end method

.method a(Ljava/util/List;Ljava/lang/Object;ILjava/util/Comparator;)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    add-int/lit8 v0, p3, -0x1

    return v0
.end method
