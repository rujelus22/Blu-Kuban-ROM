.class final enum Lalm;
.super Lall;
.source "SortedLists.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lall;-><init>(Ljava/lang/String;ILalg;)V

    return-void
.end method


# virtual methods
.method a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I
    .registers 5
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
    .line 57
    return p4
.end method
