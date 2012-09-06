.class final enum Lalq;
.super Lall;
.source "SortedLists.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lall;-><init>(Ljava/lang/String;ILalg;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I
    .registers 6
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
    .line 128
    sget-object v0, Lalq;->c:Lall;

    invoke-virtual {v0, p1, p2, p3, p4}, Lall;->a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
