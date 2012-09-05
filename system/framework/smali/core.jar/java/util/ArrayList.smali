.class public Ljava/util/ArrayList;
.super Ljava/util/AbstractList;
.source "ArrayList.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ArrayList$1;,
        Ljava/util/ArrayList$ArrayListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final MIN_CAPACITY_INCREMENT:I = 0xc

.field private static final serialVersionUID:J = 0x7881d21d99c7619dL


# instance fields
.field transient array:[Ljava/lang/Object;

.field size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 81
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 82
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 71
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 72
    if-gez p1, :cond_b

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 75
    :cond_b
    if-nez p1, :cond_12

    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    :goto_f
    iput-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 76
    return-void

    .line 75
    :cond_12
    new-array v0, p1, [Ljava/lang/Object;

    goto :goto_f
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    const/4 v4, 0x0

    .line 92
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 93
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 94
    .local v0, a:[Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, [Ljava/lang/Object;

    if-eq v2, v3, :cond_18

    .line 95
    array-length v2, v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 96
    .local v1, newArray:[Ljava/lang/Object;
    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    move-object v0, v1

    .line 99
    .end local v1           #newArray:[Ljava/lang/Object;
    :cond_18
    iput-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 100
    array-length v2, v0

    iput v2, p0, Ljava/util/ArrayList;->size:I

    .line 101
    return-void
.end method

.method private static newCapacity(I)I
    .registers 3
    .parameter "currentCapacity"

    .prologue
    .line 170
    const/4 v1, 0x6

    if-ge p0, v1, :cond_8

    const/16 v0, 0xc

    .line 172
    .local v0, increment:I
    :goto_5
    add-int v1, p0, v0

    return v1

    .line 170
    .end local v0           #increment:I
    :cond_8
    shr-int/lit8 v0, p0, 0x1

    goto :goto_5
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 649
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 650
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 651
    .local v0, cap:I
    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v2, :cond_30

    .line 652
    new-instance v2, Ljava/io/InvalidObjectException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Capacity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 655
    :cond_30
    if-nez v0, :cond_46

    sget-object v2, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    :goto_34
    iput-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 656
    const/4 v1, 0x0

    .local v1, i:I
    :goto_37
    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-ge v1, v2, :cond_49

    .line 657
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 656
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 655
    .end local v1           #i:I
    :cond_46
    new-array v2, v0, [Ljava/lang/Object;

    goto :goto_34

    .line 659
    .restart local v1       #i:I
    :cond_49
    return-void
.end method

.method static throwIndexOutOfBoundsException(II)Ljava/lang/IndexOutOfBoundsException;
    .registers 5
    .parameter "index"
    .parameter "size"

    .prologue
    .line 251
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 641
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 642
    iget-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 643
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v1, :cond_18

    .line 644
    iget-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 643
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 646
    :cond_18
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 8
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    .local p2, object:Ljava/lang/Object;,"TE;"
    const/4 v4, 0x0

    .line 140
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 141
    .local v0, a:[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayList;->size:I

    .line 142
    .local v2, s:I
    if-gt p1, v2, :cond_9

    if-gez p1, :cond_c

    .line 143
    :cond_9
    invoke-static {p1, v2}, Ljava/util/ArrayList;->throwIndexOutOfBoundsException(II)Ljava/lang/IndexOutOfBoundsException;

    .line 146
    :cond_c
    array-length v3, v0

    if-ge v2, v3, :cond_23

    .line 147
    add-int/lit8 v3, p1, 0x1

    sub-int v4, v2, p1

    invoke-static {v0, p1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    :goto_16
    aput-object p2, v0, p1

    .line 156
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/ArrayList;->size:I

    .line 157
    iget v3, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/AbstractList;->modCount:I

    .line 158
    return-void

    .line 150
    :cond_23
    invoke-static {v2}, Ljava/util/ArrayList;->newCapacity(I)I

    move-result v3

    new-array v1, v3, [Ljava/lang/Object;

    .line 151
    .local v1, newArray:[Ljava/lang/Object;
    invoke-static {v0, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    add-int/lit8 v3, p1, 0x1

    sub-int v4, v2, p1

    invoke-static {v0, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    move-object v0, v1

    iput-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    goto :goto_16
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    const/4 v4, 0x0

    .line 111
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 112
    .local v0, a:[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayList;->size:I

    .line 113
    .local v2, s:I
    array-length v3, v0

    if-ne v2, v3, :cond_16

    .line 114
    const/4 v3, 0x6

    if-ge v2, v3, :cond_24

    const/16 v3, 0xc

    :goto_d
    add-int/2addr v3, v2

    new-array v1, v3, [Ljava/lang/Object;

    .line 117
    .local v1, newArray:[Ljava/lang/Object;
    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    move-object v0, v1

    iput-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 120
    .end local v1           #newArray:[Ljava/lang/Object;
    :cond_16
    aput-object p1, v0, v2

    .line 121
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/ArrayList;->size:I

    .line 122
    iget v3, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/AbstractList;->modCount:I

    .line 123
    const/4 v3, 0x1

    return v3

    .line 114
    :cond_24
    shr-int/lit8 v3, v2, 0x1

    goto :goto_d
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 13
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    const/4 v7, 0x0

    .line 220
    iget v6, p0, Ljava/util/ArrayList;->size:I

    .line 221
    .local v6, s:I
    if-gt p1, v6, :cond_7

    if-gez p1, :cond_a

    .line 222
    :cond_7
    invoke-static {p1, v6}, Ljava/util/ArrayList;->throwIndexOutOfBoundsException(II)Ljava/lang/IndexOutOfBoundsException;

    .line 224
    :cond_a
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 225
    .local v3, newPart:[Ljava/lang/Object;
    array-length v4, v3

    .line 226
    .local v4, newPartSize:I
    if-nez v4, :cond_12

    .line 243
    :goto_11
    return v7

    .line 229
    :cond_12
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 230
    .local v0, a:[Ljava/lang/Object;
    add-int v5, v6, v4

    .line 231
    .local v5, newSize:I
    array-length v8, v0

    if-gt v5, v8, :cond_2d

    .line 232
    add-int v8, p1, v4

    sub-int v9, v6, p1

    invoke-static {v0, p1, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    :goto_20
    invoke-static {v3, v7, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    iput v5, p0, Ljava/util/ArrayList;->size:I

    .line 242
    iget v7, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/util/AbstractList;->modCount:I

    .line 243
    const/4 v7, 0x1

    goto :goto_11

    .line 234
    :cond_2d
    add-int/lit8 v8, v5, -0x1

    invoke-static {v8}, Ljava/util/ArrayList;->newCapacity(I)I

    move-result v2

    .line 235
    .local v2, newCapacity:I
    new-array v1, v2, [Ljava/lang/Object;

    .line 236
    .local v1, newArray:[Ljava/lang/Object;
    invoke-static {v0, v7, v1, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    add-int v8, p1, v4

    sub-int v9, v6, p1

    invoke-static {v0, p1, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    move-object v0, v1

    iput-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    goto :goto_20
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    const/4 v7, 0x0

    .line 184
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 185
    .local v3, newPart:[Ljava/lang/Object;
    array-length v4, v3

    .line 186
    .local v4, newPartSize:I
    if-nez v4, :cond_9

    .line 201
    :goto_8
    return v7

    .line 189
    :cond_9
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 190
    .local v0, a:[Ljava/lang/Object;
    iget v6, p0, Ljava/util/ArrayList;->size:I

    .line 191
    .local v6, s:I
    add-int v5, v6, v4

    .line 192
    .local v5, newSize:I
    array-length v8, v0

    if-le v5, v8, :cond_20

    .line 193
    add-int/lit8 v8, v5, -0x1

    invoke-static {v8}, Ljava/util/ArrayList;->newCapacity(I)I

    move-result v2

    .line 194
    .local v2, newCapacity:I
    new-array v1, v2, [Ljava/lang/Object;

    .line 195
    .local v1, newArray:[Ljava/lang/Object;
    invoke-static {v0, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    move-object v0, v1

    iput-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 198
    .end local v1           #newArray:[Ljava/lang/Object;
    .end local v2           #newCapacity:I
    :cond_20
    invoke-static {v3, v7, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    iput v5, p0, Ljava/util/ArrayList;->size:I

    .line 200
    iget v7, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/util/AbstractList;->modCount:I

    .line 201
    const/4 v7, 0x1

    goto :goto_8
.end method

.method public clear()V
    .registers 5

    .prologue
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    const/4 v3, 0x0

    .line 261
    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-eqz v0, :cond_15

    .line 262
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 263
    iput v3, p0, Ljava/util/ArrayList;->size:I

    .line 264
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 266
    :cond_15
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 277
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 278
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, v1, Ljava/util/ArrayList;->array:[Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_10} :catch_11

    .line 279
    return-object v1

    .line 280
    .end local v1           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    :catch_11
    move-exception v0

    .line 281
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 7
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    const/4 v3, 0x1

    .line 331
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 332
    .local v0, a:[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayList;->size:I

    .line 333
    .local v2, s:I
    if-eqz p1, :cond_16

    .line 334
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v2, :cond_20

    .line 335
    aget-object v4, v0, v1

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 346
    :cond_12
    :goto_12
    return v3

    .line 334
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 340
    .end local v1           #i:I
    :cond_16
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_17
    if-ge v1, v2, :cond_20

    .line 341
    aget-object v4, v0, v1

    if-eqz v4, :cond_12

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 346
    :cond_20
    const/4 v3, 0x0

    goto :goto_12
.end method

.method public ensureCapacity(I)V
    .registers 6
    .parameter "minimumCapacity"

    .prologue
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    const/4 v3, 0x0

    .line 293
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 294
    .local v0, a:[Ljava/lang/Object;
    array-length v2, v0

    if-ge v2, p1, :cond_15

    .line 295
    new-array v1, p1, [Ljava/lang/Object;

    .line 296
    .local v1, newArray:[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayList;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    iput-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 298
    iget v2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/AbstractList;->modCount:I

    .line 300
    .end local v1           #newArray:[Ljava/lang/Object;
    :cond_15
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 13
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 605
    if-ne p1, p0, :cond_5

    .line 635
    :cond_4
    :goto_4
    return v8

    .line 608
    :cond_5
    instance-of v10, p1, Ljava/util/List;

    if-nez v10, :cond_b

    move v8, v9

    .line 609
    goto :goto_4

    :cond_b
    move-object v7, p1

    .line 611
    check-cast v7, Ljava/util/List;

    .line 612
    .local v7, that:Ljava/util/List;,"Ljava/util/List<*>;"
    iget v6, p0, Ljava/util/ArrayList;->size:I

    .line 613
    .local v6, s:I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-eq v10, v6, :cond_18

    move v8, v9

    .line 614
    goto :goto_4

    .line 616
    :cond_18
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 617
    .local v0, a:[Ljava/lang/Object;
    instance-of v10, v7, Ljava/util/RandomAccess;

    if-eqz v10, :cond_36

    .line 618
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1f
    if-ge v4, v6, :cond_4

    .line 619
    aget-object v2, v0, v4

    .line 620
    .local v2, eThis:Ljava/lang/Object;
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 621
    .local v3, ethat:Ljava/lang/Object;
    if-nez v2, :cond_2d

    if-eqz v3, :cond_33

    :cond_2b
    move v8, v9

    .line 622
    goto :goto_4

    .line 621
    :cond_2d
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2b

    .line 618
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 626
    .end local v2           #eThis:Ljava/lang/Object;
    .end local v3           #ethat:Ljava/lang/Object;
    .end local v4           #i:I
    :cond_36
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 627
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3b
    if-ge v4, v6, :cond_4

    .line 628
    aget-object v2, v0, v4

    .line 629
    .restart local v2       #eThis:Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 630
    .local v1, eThat:Ljava/lang/Object;
    if-nez v2, :cond_49

    if-eqz v1, :cond_4f

    :cond_47
    move v8, v9

    .line 631
    goto :goto_4

    .line 630
    :cond_49
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_47

    .line 627
    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-lt p1, v0, :cond_9

    .line 304
    iget v0, p0, Ljava/util/ArrayList;->size:I

    invoke-static {p1, v0}, Ljava/util/ArrayList;->throwIndexOutOfBoundsException(II)Ljava/lang/IndexOutOfBoundsException;

    .line 306
    :cond_9
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .registers 8

    .prologue
    .line 595
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 596
    .local v0, a:[Ljava/lang/Object;
    const/4 v2, 0x1

    .line 597
    .local v2, hashCode:I
    const/4 v3, 0x0

    .local v3, i:I
    iget v4, p0, Ljava/util/ArrayList;->size:I

    .local v4, s:I
    :goto_6
    if-ge v3, v4, :cond_19

    .line 598
    aget-object v1, v0, v3

    .line 599
    .local v1, e:Ljava/lang/Object;
    mul-int/lit8 v6, v2, 0x1f

    if-nez v1, :cond_14

    const/4 v5, 0x0

    :goto_f
    add-int v2, v6, v5

    .line 597
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 599
    :cond_14
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_f

    .line 601
    .end local v1           #e:Ljava/lang/Object;
    :cond_19
    return v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 6
    .parameter "object"

    .prologue
    .line 350
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 351
    .local v0, a:[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayList;->size:I

    .line 352
    .local v2, s:I
    if-eqz p1, :cond_16

    .line 353
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v2, :cond_22

    .line 354
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    move v3, v1

    .line 365
    :goto_12
    return v3

    .line 353
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 359
    .end local v1           #i:I
    :cond_16
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_17
    if-ge v1, v2, :cond_22

    .line 360
    aget-object v3, v0, v1

    if-nez v3, :cond_1f

    move v3, v1

    .line 361
    goto :goto_12

    .line 359
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 365
    :cond_22
    const/4 v3, -0x1

    goto :goto_12
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 319
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 548
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    new-instance v0, Ljava/util/ArrayList$ArrayListIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/ArrayList$ArrayListIterator;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList$1;)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 5
    .parameter "object"

    .prologue
    .line 369
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 370
    .local v0, a:[Ljava/lang/Object;
    if-eqz p1, :cond_17

    .line 371
    iget v2, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_8
    if-ltz v1, :cond_26

    .line 372
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move v2, v1

    .line 383
    :goto_13
    return v2

    .line 371
    :cond_14
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 377
    .end local v1           #i:I
    :cond_17
    iget v2, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v1, v2, -0x1

    .restart local v1       #i:I
    :goto_1b
    if-ltz v1, :cond_26

    .line 378
    aget-object v2, v0, v1

    if-nez v2, :cond_23

    move v2, v1

    .line 379
    goto :goto_13

    .line 377
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    .line 383
    :cond_26
    const/4 v2, -0x1

    goto :goto_13
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 7
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 397
    .local v0, a:[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayList;->size:I

    .line 398
    .local v2, s:I
    if-lt p1, v2, :cond_9

    .line 399
    invoke-static {p1, v2}, Ljava/util/ArrayList;->throwIndexOutOfBoundsException(II)Ljava/lang/IndexOutOfBoundsException;

    .line 401
    :cond_9
    aget-object v1, v0, p1

    .line 402
    .local v1, result:Ljava/lang/Object;,"TE;"
    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v2, v2, -0x1

    sub-int v4, v2, p1

    invoke-static {v0, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 403
    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 404
    iput v2, p0, Ljava/util/ArrayList;->size:I

    .line 405
    iget v3, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/AbstractList;->modCount:I

    .line 406
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 9
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 410
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 411
    .local v0, a:[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayList;->size:I

    .line 412
    .local v2, s:I
    if-eqz p1, :cond_2a

    .line 413
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v2, :cond_48

    .line 414
    aget-object v4, v0, v1

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 415
    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    sub-int v5, v2, v1

    invoke-static {v0, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    aput-object v6, v0, v2

    .line 417
    iput v2, p0, Ljava/util/ArrayList;->size:I

    .line 418
    iget v4, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/AbstractList;->modCount:I

    .line 433
    :goto_26
    return v3

    .line 413
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 423
    .end local v1           #i:I
    :cond_2a
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2b
    if-ge v1, v2, :cond_48

    .line 424
    aget-object v4, v0, v1

    if-nez v4, :cond_45

    .line 425
    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    sub-int v5, v2, v1

    invoke-static {v0, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 426
    aput-object v6, v0, v2

    .line 427
    iput v2, p0, Ljava/util/ArrayList;->size:I

    .line 428
    iget v4, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/AbstractList;->modCount:I

    goto :goto_26

    .line 423
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 433
    :cond_48
    const/4 v3, 0x0

    goto :goto_26
.end method

.method protected removeRange(II)V
    .registers 9
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 437
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    if-ne p1, p2, :cond_3

    .line 460
    :goto_2
    return-void

    .line 440
    :cond_3
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 441
    .local v0, a:[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayList;->size:I

    .line 442
    .local v2, s:I
    if-lt p1, v2, :cond_2e

    .line 443
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fromIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " >= size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 446
    :cond_2e
    if-le p2, v2, :cond_55

    .line 447
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 450
    :cond_55
    if-le p1, p2, :cond_7a

    .line 451
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fromIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > toIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 455
    :cond_7a
    sub-int v3, v2, p2

    invoke-static {v0, p2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    sub-int v1, p2, p1

    .line 457
    .local v1, rangeSize:I
    sub-int v3, v2, v1

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 458
    sub-int v3, v2, v1

    iput v3, p0, Ljava/util/ArrayList;->size:I

    .line 459
    iget v3, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/AbstractList;->modCount:I

    goto/16 :goto_2
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 475
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    .local p2, object:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 476
    .local v0, a:[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-lt p1, v2, :cond_b

    .line 477
    iget v2, p0, Ljava/util/ArrayList;->size:I

    invoke-static {p1, v2}, Ljava/util/ArrayList;->throwIndexOutOfBoundsException(II)Ljava/lang/IndexOutOfBoundsException;

    .line 479
    :cond_b
    aget-object v1, v0, p1

    .line 480
    .local v1, result:Ljava/lang/Object;,"TE;"
    aput-object p2, v0, p1

    .line 481
    return-object v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 315
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    iget v0, p0, Ljava/util/ArrayList;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5

    .prologue
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    const/4 v3, 0x0

    .line 491
    iget v1, p0, Ljava/util/ArrayList;->size:I

    .line 492
    .local v1, s:I
    new-array v0, v1, [Ljava/lang/Object;

    .line 493
    .local v0, result:[Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 494
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    .local p1, contents:[Ljava/lang/Object;,"[TT;"
    const/4 v3, 0x0

    .line 513
    iget v1, p0, Ljava/util/ArrayList;->size:I

    .line 514
    .local v1, s:I
    array-length v2, p1

    if-ge v2, v1, :cond_18

    .line 515
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 517
    .local v0, newArray:[Ljava/lang/Object;,"[TT;"
    move-object p1, v0

    .line 519
    .end local v0           #newArray:[Ljava/lang/Object;,"[TT;"
    :cond_18
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    invoke-static {v2, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 520
    array-length v2, p1

    if-le v2, v1, :cond_23

    .line 521
    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 523
    :cond_23
    return-object p1
.end method

.method public trimToSize()V
    .registers 5

    .prologue
    .local p0, this:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    const/4 v3, 0x0

    .line 533
    iget v1, p0, Ljava/util/ArrayList;->size:I

    .line 534
    .local v1, s:I
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_9

    .line 545
    :goto_8
    return-void

    .line 537
    :cond_9
    if-nez v1, :cond_16

    .line 538
    sget-object v2, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    .line 544
    :goto_f
    iget v2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/AbstractList;->modCount:I

    goto :goto_8

    .line 540
    :cond_16
    new-array v0, v1, [Ljava/lang/Object;

    .line 541
    .local v0, newArray:[Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    iput-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    goto :goto_f
.end method
