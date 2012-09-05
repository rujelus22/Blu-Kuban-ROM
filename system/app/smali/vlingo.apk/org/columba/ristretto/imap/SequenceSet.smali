.class public Lorg/columba/ristretto/imap/SequenceSet;
.super Ljava/lang/Object;
.source "SequenceSet.java"


# static fields
.field private static final all:Lorg/columba/ristretto/imap/SequenceSet;


# instance fields
.field private set:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    new-instance v0, Lorg/columba/ristretto/imap/SequenceSet;

    invoke-direct {v0}, Lorg/columba/ristretto/imap/SequenceSet;-><init>()V

    sput-object v0, Lorg/columba/ristretto/imap/SequenceSet;->all:Lorg/columba/ristretto/imap/SequenceSet;

    .line 54
    sget-object v0, Lorg/columba/ristretto/imap/SequenceSet;->all:Lorg/columba/ristretto/imap/SequenceSet;

    invoke-virtual {v0}, Lorg/columba/ristretto/imap/SequenceSet;->addAll()V

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/columba/ristretto/imap/SequenceSet;->set:Ljava/util/List;

    .line 65
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "a"

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/columba/ristretto/imap/SequenceSet;-><init>()V

    .line 74
    invoke-virtual {p0, p1}, Lorg/columba/ristretto/imap/SequenceSet;->add(I)V

    .line 75
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/columba/ristretto/imap/SequenceSet;-><init>()V

    .line 85
    invoke-virtual {p0, p1, p2}, Lorg/columba/ristretto/imap/SequenceSet;->add(II)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 121
    invoke-direct {p0}, Lorg/columba/ristretto/imap/SequenceSet;-><init>()V

    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 123
    .local v0, it:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/columba/ristretto/imap/SequenceSet;->add(I)V

    goto :goto_7

    .line 126
    :cond_1b
    return-void
.end method

.method public constructor <init>([III)V
    .registers 6
    .parameter "s"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/columba/ristretto/imap/SequenceSet;-><init>()V

    .line 110
    move v0, p2

    .local v0, i:I
    :goto_4
    add-int v1, p2, p3

    if-ge v0, v1, :cond_10

    .line 111
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/columba/ristretto/imap/SequenceSet;->add(I)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 113
    :cond_10
    return-void
.end method

.method public constructor <init>([Ljava/lang/Integer;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/columba/ristretto/imap/SequenceSet;-><init>()V

    .line 95
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    array-length v1, p1

    if-ge v0, v1, :cond_13

    .line 96
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/columba/ristretto/imap/SequenceSet;->add(I)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 98
    :cond_13
    return-void
.end method

.method public static getAll()Lorg/columba/ristretto/imap/SequenceSet;
    .registers 1

    .prologue
    .line 134
    sget-object v0, Lorg/columba/ristretto/imap/SequenceSet;->all:Lorg/columba/ristretto/imap/SequenceSet;

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .registers 4
    .parameter "a"

    .prologue
    .line 143
    iget-object v0, p0, Lorg/columba/ristretto/imap/SequenceSet;->set:Ljava/util/List;

    new-instance v1, Lorg/columba/ristretto/imap/SequenceEntry;

    invoke-direct {v1, p1}, Lorg/columba/ristretto/imap/SequenceEntry;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public add(II)V
    .registers 5
    .parameter "a"
    .parameter "b"

    .prologue
    .line 153
    iget-object v0, p0, Lorg/columba/ristretto/imap/SequenceSet;->set:Ljava/util/List;

    new-instance v1, Lorg/columba/ristretto/imap/SequenceEntry;

    invoke-direct {v1, p1, p2}, Lorg/columba/ristretto/imap/SequenceEntry;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method public addAll()V
    .registers 5

    .prologue
    .line 170
    iget-object v0, p0, Lorg/columba/ristretto/imap/SequenceSet;->set:Ljava/util/List;

    new-instance v1, Lorg/columba/ristretto/imap/SequenceEntry;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lorg/columba/ristretto/imap/SequenceEntry;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method public addOpenRange(I)V
    .registers 5
    .parameter "a"

    .prologue
    .line 162
    iget-object v0, p0, Lorg/columba/ristretto/imap/SequenceSet;->set:Ljava/util/List;

    new-instance v1, Lorg/columba/ristretto/imap/SequenceEntry;

    const/4 v2, -0x1

    invoke-direct {v1, p1, v2}, Lorg/columba/ristretto/imap/SequenceEntry;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method public getLength(I)I
    .registers 7
    .parameter "exists"

    .prologue
    .line 221
    const/4 v2, 0x0

    .line 223
    .local v2, length:I
    iget-object v3, p0, Lorg/columba/ristretto/imap/SequenceSet;->set:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 224
    .local v1, it:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 225
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/columba/ristretto/imap/SequenceEntry;

    .line 227
    .local v0, entry:Lorg/columba/ristretto/imap/SequenceEntry;
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/SequenceEntry;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_38

    goto :goto_7

    .line 243
    :pswitch_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 233
    :pswitch_1e
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/SequenceEntry;->getA()I

    move-result v3

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 234
    goto :goto_7

    .line 238
    :pswitch_28
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/SequenceEntry;->getB()I

    move-result v3

    invoke-virtual {v0}, Lorg/columba/ristretto/imap/SequenceEntry;->getA()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 239
    goto :goto_7

    .end local v0           #entry:Lorg/columba/ristretto/imap/SequenceEntry;
    :cond_35
    move p1, v2

    .line 249
    .end local p1
    :pswitch_36
    return p1

    .line 227
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_28
        :pswitch_1e
        :pswitch_36
    .end packed-switch
.end method

.method public pack()V
    .registers 6

    .prologue
    .line 179
    iget-object v3, p0, Lorg/columba/ristretto/imap/SequenceSet;->set:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_a

    .line 195
    :cond_9
    return-void

    .line 180
    :cond_a
    iget-object v3, p0, Lorg/columba/ristretto/imap/SequenceSet;->set:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 181
    iget-object v3, p0, Lorg/columba/ristretto/imap/SequenceSet;->set:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 183
    .local v2, it:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/columba/ristretto/imap/SequenceEntry;

    .line 186
    .local v0, a:Lorg/columba/ristretto/imap/SequenceEntry;
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 187
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/columba/ristretto/imap/SequenceEntry;

    .line 188
    .local v1, b:Lorg/columba/ristretto/imap/SequenceEntry;
    invoke-virtual {v0, v1}, Lorg/columba/ristretto/imap/SequenceEntry;->canMergeWith(Lorg/columba/ristretto/imap/SequenceEntry;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 189
    invoke-virtual {v0, v1}, Lorg/columba/ristretto/imap/SequenceEntry;->merge(Lorg/columba/ristretto/imap/SequenceEntry;)V

    .line 190
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1b

    .line 192
    :cond_34
    move-object v0, v1

    goto :goto_1b
.end method

.method public toArray(I)[I
    .registers 11
    .parameter "exists"

    .prologue
    .line 260
    invoke-virtual {p0}, Lorg/columba/ristretto/imap/SequenceSet;->pack()V

    .line 261
    invoke-virtual {p0, p1}, Lorg/columba/ristretto/imap/SequenceSet;->getLength(I)I

    move-result v7

    new-array v6, v7, [I

    .line 262
    .local v6, result:[I
    const/4 v4, 0x0

    .line 263
    .local v4, pos:I
    const/4 v2, 0x1

    .line 265
    .local v2, index:I
    iget-object v7, p0, Lorg/columba/ristretto/imap/SequenceSet;->set:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 266
    .local v3, it:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_63

    .line 267
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/columba/ristretto/imap/SequenceEntry;

    .line 269
    .local v0, entry:Lorg/columba/ristretto/imap/SequenceEntry;
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/SequenceEntry;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_64

    goto :goto_11

    .line 291
    :pswitch_25
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pos:I
    .local v5, pos:I
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/SequenceEntry;->getA()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_5e

    move v7, p1

    :goto_2f
    aput v7, v6, v4

    :cond_31
    move v4, v5

    .end local v5           #pos:I
    .restart local v4       #pos:I
    goto :goto_11

    .line 271
    :pswitch_33
    const/4 v1, 0x0

    .local v1, i:I
    :goto_34
    if-ge v1, p1, :cond_3d

    .line 272
    add-int/lit8 v7, v1, 0x1

    aput v7, v6, v1

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 277
    .end local v1           #i:I
    :cond_3d
    :pswitch_3d
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/SequenceEntry;->getA()I

    move-result v2

    move v5, v4

    .end local v4           #pos:I
    .restart local v5       #pos:I
    :goto_42
    if-gt v2, p1, :cond_31

    .line 278
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pos:I
    .restart local v4       #pos:I
    aput v2, v6, v5

    .line 277
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4           #pos:I
    .restart local v5       #pos:I
    goto :goto_42

    .line 284
    .end local v5           #pos:I
    .restart local v4       #pos:I
    :pswitch_4c
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/SequenceEntry;->getA()I

    move-result v2

    :goto_50
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/SequenceEntry;->getB()I

    move-result v7

    if-gt v2, v7, :cond_11

    .line 285
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pos:I
    .restart local v5       #pos:I
    aput v2, v6, v4

    .line 284
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .end local v5           #pos:I
    .restart local v4       #pos:I
    goto :goto_50

    .line 291
    .end local v4           #pos:I
    .restart local v5       #pos:I
    :cond_5e
    invoke-virtual {v0}, Lorg/columba/ristretto/imap/SequenceEntry;->getA()I

    move-result v7

    goto :goto_2f

    .line 298
    .end local v0           #entry:Lorg/columba/ristretto/imap/SequenceEntry;
    .end local v5           #pos:I
    .restart local v4       #pos:I
    :cond_63
    return-object v6

    .line 269
    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_25
        :pswitch_4c
        :pswitch_3d
        :pswitch_33
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 202
    invoke-virtual {p0}, Lorg/columba/ristretto/imap/SequenceSet;->pack()V

    .line 203
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 204
    .local v1, result:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lorg/columba/ristretto/imap/SequenceSet;->set:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 205
    .local v0, it:Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 207
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_19

    .line 210
    :cond_30
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
