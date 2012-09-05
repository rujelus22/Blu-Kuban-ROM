.class LK/cj;
.super LK/bn;


# instance fields
.field private final transient a:I

.field private final transient b:I

.field private final transient d:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, LK/cj;-><init>([Ljava/lang/Object;II)V

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;II)V
    .registers 4

    invoke-direct {p0}, LK/bn;-><init>()V

    iput p2, p0, LK/cj;->a:I

    iput p3, p0, LK/cj;->b:I

    iput-object p1, p0, LK/cj;->d:[Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(LK/cj;)[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, LK/cj;->d:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(LK/cj;)I
    .registers 2

    iget v0, p0, LK/cj;->a:I

    return v0
.end method


# virtual methods
.method public a(II)LK/bn;
    .registers 7

    iget v0, p0, LK/cj;->b:I

    invoke-static {p1, p2, v0}, Lcom/google/common/base/v;->a(III)V

    if-ne p1, p2, :cond_c

    invoke-static {}, LK/bn;->f()LK/bn;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, LK/cj;

    iget-object v1, p0, LK/cj;->d:[Ljava/lang/Object;

    iget v2, p0, LK/cj;->a:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, LK/cj;-><init>([Ljava/lang/Object;II)V

    goto :goto_b
.end method

.method public a(I)LK/cD;
    .registers 4

    new-instance v0, LK/ck;

    iget v1, p0, LK/cj;->b:I

    invoke-direct {v0, p0, v1, p1}, LK/ck;-><init>(LK/cj;II)V

    return-object v0
.end method

.method a()Z
    .registers 3

    iget v0, p0, LK/cj;->a:I

    if-nez v0, :cond_b

    iget v0, p0, LK/cj;->b:I

    iget-object v1, p0, LK/cj;->d:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v0, v1, :cond_d

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public b()LK/cC;
    .registers 4

    iget-object v0, p0, LK/cj;->d:[Ljava/lang/Object;

    iget v1, p0, LK/cj;->a:I

    iget v2, p0, LK/cj;->b:I

    invoke-static {v0, v1, v2}, LK/bI;->a([Ljava/lang/Object;II)LK/cC;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    invoke-virtual {p0, p1}, LK/cj;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, p0, :cond_6

    move v0, v3

    :goto_5
    return v0

    :cond_6
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_c

    move v0, v4

    goto :goto_5

    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0}, LK/cj;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1b

    move v0, v4

    goto :goto_5

    :cond_1b
    iget v1, p0, LK/cj;->a:I

    instance-of v2, p1, LK/cj;

    if-eqz v2, :cond_42

    check-cast p1, LK/cj;

    iget v0, p1, LK/cj;->a:I

    :goto_25
    iget v2, p1, LK/cj;->a:I

    iget v5, p1, LK/cj;->b:I

    add-int/2addr v2, v5

    if-ge v0, v2, :cond_60

    iget-object v5, p0, LK/cj;->d:[Ljava/lang/Object;

    add-int/lit8 v2, v1, 0x1

    aget-object v1, v5, v1

    iget-object v5, p1, LK/cj;->d:[Ljava/lang/Object;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    move v0, v4

    goto :goto_5

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_25

    :cond_42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, LK/cj;->d:[Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    aget-object v1, v6, v1

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    move v0, v4

    goto :goto_5

    :cond_5e
    move v1, v0

    goto :goto_46

    :cond_60
    move v0, v3

    goto :goto_5
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4

    iget v0, p0, LK/cj;->b:I

    invoke-static {p1, v0}, Lcom/google/common/base/v;->a(II)I

    iget-object v0, p0, LK/cj;->d:[Ljava/lang/Object;

    iget v1, p0, LK/cj;->a:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v1, 0x1

    iget v0, p0, LK/cj;->a:I

    :goto_3
    iget v2, p0, LK/cj;->a:I

    iget v3, p0, LK/cj;->b:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_18

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, LK/cj;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_18
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 5

    if-eqz p1, :cond_1c

    iget v0, p0, LK/cj;->a:I

    :goto_4
    iget v1, p0, LK/cj;->a:I

    iget v2, p0, LK/cj;->b:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1c

    iget-object v1, p0, LK/cj;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget v1, p0, LK/cj;->a:I

    sub-int/2addr v0, v1

    :goto_18
    return v0

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1c
    const/4 v0, -0x1

    goto :goto_18
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, LK/cj;->b()LK/cC;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 4

    if-eqz p1, :cond_1e

    iget v0, p0, LK/cj;->a:I

    iget v1, p0, LK/cj;->b:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_9
    iget v1, p0, LK/cj;->a:I

    if-lt v0, v1, :cond_1e

    iget-object v1, p0, LK/cj;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget v1, p0, LK/cj;->a:I

    sub-int/2addr v0, v1

    :goto_1a
    return v0

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_1e
    const/4 v0, -0x1

    goto :goto_1a
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3

    invoke-virtual {p0, p1}, LK/cj;->a(I)LK/cD;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, LK/cj;->b:I

    return v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .registers 4

    invoke-virtual {p0, p1, p2}, LK/cj;->a(II)LK/bn;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 6

    invoke-virtual {p0}, LK/cj;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, LK/cj;->d:[Ljava/lang/Object;

    iget v2, p0, LK/cj;->a:I

    const/4 v3, 0x0

    iget v4, p0, LK/cj;->b:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6

    array-length v0, p1

    iget v1, p0, LK/cj;->b:I

    if-ge v0, v1, :cond_16

    iget v0, p0, LK/cj;->b:I

    invoke-static {p1, v0}, LK/cf;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_b
    :goto_b
    iget-object v0, p0, LK/cj;->d:[Ljava/lang/Object;

    iget v1, p0, LK/cj;->a:I

    const/4 v2, 0x0

    iget v3, p0, LK/cj;->b:I

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_16
    array-length v0, p1

    iget v1, p0, LK/cj;->b:I

    if-le v0, v1, :cond_b

    iget v0, p0, LK/cj;->b:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, LK/cj;->size()I

    move-result v0

    invoke-static {v0}, LK/J;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LK/cj;->d:[Ljava/lang/Object;

    iget v2, p0, LK/cj;->a:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, LK/cj;->a:I

    add-int/lit8 v0, v0, 0x1

    :goto_1c
    iget v2, p0, LK/cj;->a:I

    iget v3, p0, LK/cj;->b:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_33

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LK/cj;->d:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_33
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
