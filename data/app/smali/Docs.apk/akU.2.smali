.class final LakU;
.super LakG;
.source "ReverseNaturalOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LakG",
        "<",
        "Ljava/lang/Comparable;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final a:LakU;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, LakU;

    invoke-direct {v0}, LakU;-><init>()V

    sput-object v0, LakU;->a:LakU;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 89
    invoke-direct {p0}, LakG;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    if-ne p1, p2, :cond_7

    .line 36
    const/4 v0, 0x0

    .line 39
    :goto_6
    return v0

    :cond_7
    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_6
.end method

.method public a()LakG;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable;",
            ">()",
            "LakG",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {}, LakG;->b()LakG;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, LakU;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    const-string v0, "Ordering.natural().reverse()"

    return-object v0
.end method
