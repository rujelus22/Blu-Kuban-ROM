.class final LakE;
.super LakG;
.source "NaturalOrdering.java"

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
.field static final a:LakE;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, LakE;

    invoke-direct {v0}, LakE;-><init>()V

    sput-object v0, LakE;->a:LakE;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, LakG;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    if-ne p1, p2, :cond_a

    .line 38
    const/4 v0, 0x0

    .line 41
    :goto_9
    return v0

    :cond_a
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_9
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
    .line 45
    sget-object v0, LakU;->a:LakU;

    return-object v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 28
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, LakE;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    const-string v0, "Ordering.natural()"

    return-object v0
.end method
