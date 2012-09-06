.class final Lcom/google/common/collect/ba;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/common/collect/ba;

.field static final b:Lcom/google/common/collect/dF;

.field private static final d:[Ljava/lang/Object;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Lcom/google/common/collect/ba;

    invoke-direct {v0}, Lcom/google/common/collect/ba;-><init>()V

    sput-object v0, Lcom/google/common/collect/ba;->a:Lcom/google/common/collect/ba;

    .line 39
    new-instance v0, Lcom/google/common/collect/bb;

    invoke-direct {v0}, Lcom/google/common/collect/bb;-><init>()V

    sput-object v0, Lcom/google/common/collect/ba;->b:Lcom/google/common/collect/dF;

    .line 90
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/common/collect/ba;->d:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)Lcom/google/common/collect/ImmutableList;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/P;->a(III)V

    .line 120
    return-object p0
.end method

.method public a(I)Lcom/google/common/collect/dF;
    .registers 3
    .parameter

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/common/base/P;->b(II)I

    .line 133
    sget-object v0, Lcom/google/common/collect/ba;->b:Lcom/google/common/collect/dF;

    return-object v0
.end method

.method a()Z
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/google/common/collect/dE;
    .registers 2

    .prologue
    .line 87
    invoke-static {}, Lcom/google/common/collect/bZ;->a()Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/common/collect/dF;
    .registers 2

    .prologue
    .line 128
    sget-object v0, Lcom/google/common/collect/ba;->b:Lcom/google/common/collect/dF;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 137
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 141
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_b

    .line 142
    check-cast p1, Ljava/util/List;

    .line 143
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 145
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/common/base/P;->a(II)I

    .line 107
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 111
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/common/collect/ba;->b()Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 115
    const/4 v0, -0x1

    return v0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .registers 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/common/collect/ba;->c()Lcom/google/common/collect/dF;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ba;->a(I)Lcom/google/common/collect/dF;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ba;->a(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 93
    sget-object v0, Lcom/google/common/collect/ba;->d:[Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 97
    array-length v0, p1

    if-lez v0, :cond_7

    .line 98
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 100
    :cond_7
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    const-string v0, "[]"

    return-object v0
.end method
