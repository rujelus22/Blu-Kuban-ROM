.class final enum Lalo;
.super Lall;
.source "SortedLists.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lall;-><init>(Ljava/lang/String;ILalg;)V

    return-void
.end method


# virtual methods
.method a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;",
            "Ljava/util/List",
            "<+TE;>;I)I"
        }
    .end annotation

    .prologue
    .line 93
    const/4 v2, 0x0

    move v0, p4

    .line 97
    :goto_2
    if-ge v2, v0, :cond_19

    .line 98
    add-int v1, v2, v0

    ushr-int/lit8 v1, v1, 0x1

    .line 99
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 100
    if-gez v3, :cond_16

    .line 101
    add-int/lit8 v1, v1, 0x1

    :goto_14
    move v2, v1

    .line 105
    goto :goto_2

    :cond_16
    move v0, v1

    move v1, v2

    .line 103
    goto :goto_14

    .line 106
    :cond_19
    return v2
.end method
