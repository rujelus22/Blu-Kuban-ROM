.class public Lcom/x/google/common/util/IntMap;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/google/common/util/IntMap$KeyIterator;
    }
.end annotation


# static fields
.field private static final INITIAL_LOWER_BUFFER_SIZE:I = 0x10

.field private static final MAX_LOWER_BUFFER_SIZE:I = 0x80


# instance fields
.field private higher:Ljava/util/Hashtable;

.field private lower:[Ljava/lang/Object;

.field private lowerCount:I

.field private maxKey:I

.field private maxLowerKey:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/x/google/common/util/IntMap;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 4

    const/high16 v1, -0x8000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    if-lez p1, :cond_f

    const/16 v0, 0x80

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_f
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/x/google/common/util/IntMap;->lowerCount:I

    iput v1, p0, Lcom/x/google/common/util/IntMap;->maxKey:I

    iput v1, p0, Lcom/x/google/common/util/IntMap;->maxLowerKey:I

    return-void
.end method

.method static synthetic access$000(Lcom/x/google/common/util/IntMap;)I
    .registers 2

    iget v0, p0, Lcom/x/google/common/util/IntMap;->maxLowerKey:I

    return v0
.end method

.method static synthetic access$100(Lcom/x/google/common/util/IntMap;)[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/x/google/common/util/IntMap;)Ljava/util/Hashtable;
    .registers 2

    iget-object v0, p0, Lcom/x/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    return-object v0
.end method

.method private static compareHashtable(Ljava/util/Hashtable;Ljava/util/Hashtable;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-eq v2, v3, :cond_17

    move v0, v1

    goto :goto_4

    :cond_17
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1b
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    move v0, v1

    goto :goto_4
.end method

.method private compareLowerBuffer([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 8

    const/4 v1, 0x0

    array-length v0, p1

    array-length v2, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_25

    aget-object v3, p1, v2

    if-nez v3, :cond_12

    aget-object v3, p2, v2

    if-nez v3, :cond_20

    :cond_12
    aget-object v3, p1, v2

    if-eqz v3, :cond_22

    aget-object v3, p1, v2

    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    :cond_20
    move v0, v1

    :goto_21
    return v0

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_25
    array-length v2, p1

    array-length v3, p2

    if-le v2, v3, :cond_35

    :goto_29
    array-length v2, p1

    if-ge v0, v2, :cond_45

    aget-object v2, p1, v0

    if-eqz v2, :cond_32

    move v0, v1

    goto :goto_21

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_35
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_45

    :goto_39
    array-length v2, p2

    if-ge v0, v2, :cond_45

    aget-object v2, p2, v0

    if-eqz v2, :cond_42

    move v0, v1

    goto :goto_21

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_45
    const/4 v0, 0x1

    goto :goto_21
.end method

.method private expandLowerIfNecessary(I)Z
    .registers 6

    const/16 v2, 0x80

    const/4 v0, 0x0

    if-ge p1, v2, :cond_24

    iget-object v1, p0, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v1, v1

    if-lt p1, v1, :cond_24

    if-lez p1, :cond_24

    iget-object v1, p0, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v1, v1

    :cond_f
    shl-int/lit8 v1, v1, 0x1

    if-le v1, p1, :cond_f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_24
    return v0
.end method


# virtual methods
.method public clear()V
    .registers 6

    const/4 v1, 0x0

    const/high16 v4, -0x8000

    move v0, v1

    :goto_4
    iget-object v2, p0, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_11

    iget-object v2, p0, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_11
    iget-object v0, p0, Lcom/x/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/x/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_1a
    iput v4, p0, Lcom/x/google/common/util/IntMap;->maxKey:I

    iput v4, p0, Lcom/x/google/common/util/IntMap;->maxLowerKey:I

    iput v1, p0, Lcom/x/google/common/util/IntMap;->lowerCount:I

    return-void
.end method

.method public containsKey(I)Z
    .registers 4

    const/4 v0, 0x0

    if-ltz p1, :cond_10

    iget-object v1, p0, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v1, v1

    if-ge p1, v1, :cond_10

    iget-object v1, p0, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v1, v1, p1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    :goto_f
    return v0

    :cond_10
    iget-object v1, p0, Lcom/x/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-eqz v1, :cond_f

    iget-object v0, p0, Lcom/x/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/x/google/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_f
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_b

    instance-of v2, p1, Lcom/x/google/common/util/IntMap;

    if-nez v2, :cond_d

    :cond_b
    move v0, v1

    goto :goto_4

    :cond_d
    check-cast p1, Lcom/x/google/common/util/IntMap;

    invoke-virtual {p0}, Lcom/x/google/common/util/IntMap;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/x/google/common/util/IntMap;->size()I

    move-result v3

    if-eq v2, v3, :cond_1b

    move v0, v1

    goto :goto_4

    :cond_1b
    iget-object v2, p0, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    iget-object v3, p1, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/x/google/common/util/IntMap;->compareLowerBuffer([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/x/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    iget-object v3, p1, Lcom/x/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-static {v2, v3}, Lcom/x/google/common/util/IntMap;->compareHashtable(Ljava/util/Hashtable;Ljava/util/Hashtable;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2f
    move v0, v1

    goto :goto_4
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/x/google/common/util/IntMap;->maxLowerKey:I

    if-gt p1, v1, :cond_c

    if-ltz p1, :cond_c

    iget-object v0, p0, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v0, v0, p1

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    iget v1, p0, Lcom/x/google/common/util/IntMap;->maxKey:I

    if-gt p1, v1, :cond_b

    iget-object v1, p0, Lcom/x/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/x/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/x/google/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_b
.end method

.method public getNumBytesOverhead()I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v1, v1

    mul-int/lit8 v2, v1, 0x4

    iget-object v1, p0, Lcom/x/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-eqz v1, :cond_21

    iget-object v0, p0, Lcom/x/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x4

    iget-object v0, p0, Lcom/x/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    :goto_1e
    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0

    :cond_21
    move v1, v0

    goto :goto_1e
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_18

    iget-object v2, p0, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eqz v2, :cond_15

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_18
    iget-object v0, p0, Lcom/x/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-nez v0, :cond_1d

    :goto_1c
    return v1

    :cond_1d
    iget-object v0, p0, Lcom/x/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1c
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lcom/x/google/common/util/IntMap;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public keys()Lcom/x/google/common/util/IntMap$KeyIterator;
    .registers 2

    new-instance v0, Lcom/x/google/common/util/IntMap$KeyIterator;

    invoke-direct {v0, p0}, Lcom/x/google/common/util/IntMap$KeyIterator;-><init>(Lcom/x/google/common/util/IntMap;)V

    return-object v0
.end method

.method public maxKey()I
    .registers 2

    iget v0, p0, Lcom/x/google/common/util/IntMap;->maxKey:I

    return v0
.end method

.method public newIntMapWithSameBufferSize()Lcom/x/google/common/util/IntMap;
    .registers 3

    new-instance v0, Lcom/x/google/common/util/IntMap;

    iget v1, p0, Lcom/x/google/common/util/IntMap;->maxLowerKey:I

    invoke-direct {v0, v1}, Lcom/x/google/common/util/IntMap;-><init>(I)V

    return-object v0
.end method

.method public put(ILjava/lang/Object;)V
    .registers 5

    if-nez p2, :cond_6

    invoke-virtual {p0, p1}, Lcom/x/google/common/util/IntMap;->remove(I)Ljava/lang/Object;

    :goto_5
    return-void

    :cond_6
    iget v0, p0, Lcom/x/google/common/util/IntMap;->maxKey:I

    if-le p1, v0, :cond_c

    iput p1, p0, Lcom/x/google/common/util/IntMap;->maxKey:I

    :cond_c
    if-ltz p1, :cond_13

    iget-object v0, p0, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_19

    :cond_13
    invoke-direct {p0, p1}, Lcom/x/google/common/util/IntMap;->expandLowerIfNecessary(I)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_19
    iget v0, p0, Lcom/x/google/common/util/IntMap;->maxLowerKey:I

    if-le p1, v0, :cond_2a

    iput p1, p0, Lcom/x/google/common/util/IntMap;->maxLowerKey:I

    iget v0, p0, Lcom/x/google/common/util/IntMap;->lowerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/x/google/common/util/IntMap;->lowerCount:I

    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    aput-object p2, v0, p1

    goto :goto_5

    :cond_2a
    iget-object v0, p0, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v0, v0, p1

    if-nez v0, :cond_25

    iget v0, p0, Lcom/x/google/common/util/IntMap;->lowerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/x/google/common/util/IntMap;->lowerCount:I

    goto :goto_25

    :cond_37
    iget-object v0, p0, Lcom/x/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-nez v0, :cond_42

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    :cond_42
    iget-object v0, p0, Lcom/x/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/x/google/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 5

    const/4 v1, 0x0

    if-ltz p1, :cond_19

    iget-object v0, p0, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_19

    iget-object v0, p0, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v0, v0, p1

    if-eqz v0, :cond_14

    iget v2, p0, Lcom/x/google/common/util/IntMap;->lowerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/x/google/common/util/IntMap;->lowerCount:I

    :cond_14
    iget-object v2, p0, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    aput-object v1, v2, p1

    :goto_18
    return-object v0

    :cond_19
    iget-object v0, p0, Lcom/x/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/x/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/x/google/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_18

    :cond_28
    move-object v0, v1

    goto :goto_18
.end method

.method public size()I
    .registers 3

    iget-object v0, p0, Lcom/x/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-nez v0, :cond_7

    iget v0, p0, Lcom/x/google/common/util/IntMap;->lowerCount:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/x/google/common/util/IntMap;->lowerCount:I

    iget-object v1, p0, Lcom/x/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "IntMap{lower:"

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_8
    iget-object v2, p0, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_2a

    iget-object v2, p0, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eqz v2, :cond_27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/x/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", higher:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/x/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
