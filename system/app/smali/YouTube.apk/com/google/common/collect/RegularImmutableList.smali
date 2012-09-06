.class Lcom/google/common/collect/RegularImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# instance fields
.field private final transient array:[Ljava/lang/Object;

.field private final transient offset:I

.field private final transient size:I


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    .line 46
    return-void
.end method

.method constructor <init>([Ljava/lang/Object;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 39
    iput p2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    .line 40
    iput p3, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    .line 41
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/RegularImmutableList;)[Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/RegularImmutableList;)I
    .registers 2
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableList;->indexOf(Ljava/lang/Object;)I

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
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 137
    if-ne p1, p0, :cond_6

    move v0, v3

    .line 164
    :goto_5
    return v0

    .line 140
    :cond_6
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_c

    move v0, v4

    .line 141
    goto :goto_5

    :cond_c
    move-object v0, p1

    .line 144
    check-cast v0, Ljava/util/List;

    .line 145
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableList;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1b

    move v0, v4

    .line 146
    goto :goto_5

    .line 149
    :cond_1b
    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    .line 150
    instance-of v2, p1, Lcom/google/common/collect/RegularImmutableList;

    if-eqz v2, :cond_45

    .line 151
    check-cast p1, Lcom/google/common/collect/RegularImmutableList;

    .line 152
    iget v0, p1, Lcom/google/common/collect/RegularImmutableList;->offset:I

    move v2, v0

    move v0, v1

    :goto_27
    iget v1, p1, Lcom/google/common/collect/RegularImmutableList;->offset:I

    iget v5, p1, Lcom/google/common/collect/RegularImmutableList;->size:I

    add-int/2addr v1, v5

    if-ge v2, v1, :cond_63

    .line 153
    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    add-int/lit8 v1, v0, 0x1

    aget-object v0, v5, v0

    iget-object v5, p1, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    move v0, v4

    .line 154
    goto :goto_5

    .line 152
    :cond_40
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_27

    .line 158
    :cond_45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 159
    iget-object v6, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    aget-object v1, v6, v1

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_61

    move v0, v4

    .line 160
    goto :goto_5

    :cond_61
    move v1, v0

    goto :goto_49

    :cond_63
    move v0, v3

    .line 164
    goto :goto_5
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 91
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {p1, v0}, Lcom/google/common/base/ag;->a(II)I

    .line 92
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 170
    const/4 v1, 0x1

    .line 171
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    :goto_3
    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    iget v3, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_18

    .line 172
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 174
    :cond_18
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 96
    if-eqz p1, :cond_1c

    .line 97
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    :goto_4
    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1c

    .line 98
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 99
    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    sub-int/2addr v0, v1

    .line 103
    :goto_18
    return v0

    .line 97
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 103
    :cond_1c
    const/4 v0, -0x1

    goto :goto_18
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method isPartialView()Z
    .registers 3

    .prologue
    .line 58
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    if-nez v0, :cond_b

    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

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

.method public iterator()Lcom/google/common/collect/mt;
    .registers 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ee;->a([Ljava/lang/Object;II)Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableList;->iterator()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 107
    if-eqz p1, :cond_1e

    .line 108
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_9
    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    if-lt v0, v1, :cond_1e

    .line 109
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 110
    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    sub-int/2addr v0, v1

    .line 114
    :goto_1a
    return v0

    .line 108
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 114
    :cond_1e
    const/4 v0, -0x1

    goto :goto_1a
.end method

.method public listIterator(I)Lcom/google/common/collect/mu;
    .registers 4
    .parameter

    .prologue
    .line 126
    new-instance v0, Lcom/google/common/collect/jm;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-direct {v0, p0, v1, p1}, Lcom/google/common/collect/jm;-><init>(Lcom/google/common/collect/RegularImmutableList;II)V

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableList;->listIterator(I)Lcom/google/common/collect/mu;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    return v0
.end method

.method public subList(II)Lcom/google/common/collect/ImmutableList;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 118
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {p1, p2, v0}, Lcom/google/common/base/ag;->a(III)V

    .line 119
    if-ne p1, p2, :cond_c

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/google/common/collect/RegularImmutableList;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    goto :goto_b
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 6

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .parameter

    .prologue
    .line 78
    array-length v0, p1

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    if-ge v0, v1, :cond_16

    .line 79
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {p1, v0}, Lcom/google/common/collect/jd;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 83
    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    return-object p1

    .line 80
    :cond_16
    array-length v0, p1

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    if-le v0, v1, :cond_b

    .line 81
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/cf;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 180
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    add-int/lit8 v0, v0, 0x1

    :goto_1c
    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    iget v3, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_33

    .line 181
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 183
    :cond_33
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
