.class final Lail;
.super LaiE;
.source "EmptyImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LaiE",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lail;

.field private static final a:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Lail;

    invoke-direct {v0}, Lail;-><init>()V

    sput-object v0, Lail;->a:Lail;

    .line 58
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lail;->a:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, LaiE;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lalu;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lalu",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {}, LaiY;->a()Lalu;

    move-result-object v0

    return-object v0
.end method

.method a()Z
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method b()Z
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 72
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 76
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_b

    .line 77
    check-cast p1, Ljava/util/Set;

    .line 78
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    .line 80
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lail;->a()Lalu;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 61
    sget-object v0, Lail;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 65
    array-length v0, p1

    if-lez v0, :cond_7

    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 68
    :cond_7
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    const-string v0, "[]"

    return-object v0
.end method
