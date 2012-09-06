.class Lcom/google/common/collect/bf;
.super Lcom/google/common/collect/bR;
.source "SourceFile"


# static fields
.field private static final b:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/common/collect/bf;->b:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .registers 2
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/common/collect/bR;-><init>(Ljava/util/Comparator;)V

    .line 38
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Lcom/google/common/collect/bR;
    .registers 2
    .parameter

    .prologue
    .line 105
    return-object p0
.end method

.method a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bR;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 109
    return-object p0
.end method

.method a()Z
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method b(Ljava/lang/Object;)Lcom/google/common/collect/bR;
    .registers 2
    .parameter

    .prologue
    .line 113
    return-object p0
.end method

.method public b()Lcom/google/common/collect/dE;
    .registers 2

    .prologue
    .line 54
    invoke-static {}, Lcom/google/common/collect/bZ;->a()Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method c(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 117
    const/4 v0, -0x1

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 75
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 79
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_b

    .line 80
    check-cast p1, Ljava/util/Set;

    .line 81
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    .line 83
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public first()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 96
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/common/collect/bf;->b()Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 101
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 64
    sget-object v0, Lcom/google/common/collect/bf;->b:[Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 68
    array-length v0, p1

    if-lez v0, :cond_7

    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 71
    :cond_7
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    const-string v0, "[]"

    return-object v0
.end method
