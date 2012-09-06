.class final Lcom/google/common/collect/do;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# instance fields
.field final transient a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/do;->a:Ljava/lang/Object;

    .line 42
    return-void
.end method


# virtual methods
.method public a(II)Lcom/google/common/collect/ImmutableList;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/google/common/base/P;->a(III)V

    .line 109
    if-ne p1, p2, :cond_a

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method public a(I)Lcom/google/common/collect/dF;
    .registers 3
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/common/base/P;->b(II)I

    .line 64
    new-instance v0, Lcom/google/common/collect/dp;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/dp;-><init>(Lcom/google/common/collect/do;I)V

    return-object v0
.end method

.method a()Z
    .registers 2

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/google/common/collect/dE;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/common/collect/do;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/bZ;->a(Ljava/lang/Object;)Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/common/collect/do;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    if-ne p1, p0, :cond_5

    .line 128
    :cond_4
    :goto_4
    return v0

    .line 124
    :cond_5
    instance-of v2, p1, Ljava/util/List;

    if-eqz v2, :cond_1f

    .line 125
    check-cast p1, Ljava/util/List;

    .line 126
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_1d

    iget-object v2, p0, Lcom/google/common/collect/do;->a:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1d
    move v0, v1

    goto :goto_4

    :cond_1f
    move v0, v1

    .line 128
    goto :goto_4
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/common/base/P;->a(II)I

    .line 47
    iget-object v0, p0, Lcom/google/common/collect/do;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/common/collect/do;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/common/collect/do;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/common/collect/do;->b()Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/common/collect/do;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/google/common/collect/do;->a(I)Lcom/google/common/collect/dF;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/do;->a(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 4

    .prologue
    .line 155
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/collect/do;->a:Ljava/lang/Object;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 159
    array-length v0, p1

    if-nez v0, :cond_e

    .line 160
    invoke-static {p1, v1}, Lcom/google/common/collect/cU;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 166
    :cond_8
    :goto_8
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/common/collect/do;->a:Ljava/lang/Object;

    aput-object v1, p1, v0

    .line 167
    return-object p1

    .line 161
    :cond_e
    array-length v0, p1

    if-le v0, v1, :cond_8

    .line 162
    const/4 v0, 0x0

    aput-object v0, p1, v1

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/common/collect/do;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
