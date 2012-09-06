.class final enum Lcom/google/common/collect/SortedLists$KeyPresentBehavior$3;
.super Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;-><init>(Ljava/lang/String;ILcom/google/common/collect/kf;)V

    return-void
.end method


# virtual methods
.method final resultIndex(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 97
    :goto_1
    if-ge v0, p4, :cond_16

    .line 98
    add-int v1, v0, p4

    ushr-int/lit8 v1, v1, 0x1

    .line 99
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 100
    if-gez v2, :cond_14

    .line 101
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    :cond_14
    move p4, v1

    .line 105
    goto :goto_1

    .line 106
    :cond_16
    return v0
.end method
