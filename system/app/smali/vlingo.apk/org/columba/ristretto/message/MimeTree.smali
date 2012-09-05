.class public Lorg/columba/ristretto/message/MimeTree;
.super Ljava/lang/Object;
.source "MimeTree.java"


# instance fields
.field rootMimeNode:Lorg/columba/ristretto/message/MimePart;


# direct methods
.method public constructor <init>(Lorg/columba/ristretto/message/MimePart;)V
    .registers 2
    .parameter "root"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/columba/ristretto/message/MimeTree;->rootMimeNode:Lorg/columba/ristretto/message/MimePart;

    .line 57
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/columba/ristretto/message/MimeTree;->rootMimeNode:Lorg/columba/ristretto/message/MimePart;

    .line 85
    return-void
.end method

.method public count()I
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/columba/ristretto/message/MimeTree;->rootMimeNode:Lorg/columba/ristretto/message/MimePart;

    if-nez v0, :cond_6

    .line 76
    const/4 v0, 0x0

    .line 77
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/columba/ristretto/message/MimeTree;->rootMimeNode:Lorg/columba/ristretto/message/MimePart;

    invoke-virtual {v0}, Lorg/columba/ristretto/message/MimePart;->count()I

    move-result v0

    goto :goto_5
.end method

.method public get(I)Lorg/columba/ristretto/message/MimePart;
    .registers 4
    .parameter "number"

    .prologue
    .line 64
    invoke-virtual {p0}, Lorg/columba/ristretto/message/MimeTree;->getAllLeafs()Ljava/util/List;

    move-result-object v0

    .line 66
    .local v0, leafs:Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/columba/ristretto/message/MimePart;

    return-object v1
.end method

.method public getAllLeafs()Ljava/util/List;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/columba/ristretto/message/MimeTree;->rootMimeNode:Lorg/columba/ristretto/message/MimePart;

    invoke-virtual {p0, v0}, Lorg/columba/ristretto/message/MimeTree;->getLeafs(Lorg/columba/ristretto/message/MimePart;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFirstLeafWithContentType(Lorg/columba/ristretto/message/MimePart;Ljava/lang/String;)Lorg/columba/ristretto/message/MimePart;
    .registers 6
    .parameter "root"
    .parameter "contentType"

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 188
    .local v1, result:Lorg/columba/ristretto/message/MimePart;
    invoke-virtual {p1}, Lorg/columba/ristretto/message/MimePart;->countChilds()I

    move-result v2

    if-lez v2, :cond_1d

    .line 190
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    invoke-virtual {p1}, Lorg/columba/ristretto/message/MimePart;->countChilds()I

    move-result v2

    if-ge v0, v2, :cond_2f

    .line 191
    invoke-virtual {p1, v0}, Lorg/columba/ristretto/message/MimePart;->getChild(I)Lorg/columba/ristretto/message/MimePart;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/columba/ristretto/message/MimeTree;->getFirstLeafWithContentType(Lorg/columba/ristretto/message/MimePart;Ljava/lang/String;)Lorg/columba/ristretto/message/MimePart;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_1a

    move-object p1, v1

    .line 204
    .end local v0           #i:I
    .end local p1
    :cond_19
    :goto_19
    return-object p1

    .line 190
    .restart local v0       #i:I
    .restart local p1
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 200
    .end local v0           #i:I
    :cond_1d
    invoke-virtual {p1}, Lorg/columba/ristretto/message/MimePart;->getHeader()Lorg/columba/ristretto/message/MimeHeader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/columba/ristretto/message/MimeHeader;->getMimeType()Lorg/columba/ristretto/message/MimeType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/columba/ristretto/message/MimeType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 204
    :cond_2f
    const/4 p1, 0x0

    goto :goto_19
.end method

.method public getFirstTextPart(Ljava/lang/String;)Lorg/columba/ristretto/message/MimePart;
    .registers 10
    .parameter "preferedSubtype"

    .prologue
    .line 125
    iget-object v6, p0, Lorg/columba/ristretto/message/MimeTree;->rootMimeNode:Lorg/columba/ristretto/message/MimePart;

    const-string v7, "text"

    invoke-virtual {p0, v6, v7}, Lorg/columba/ristretto/message/MimeTree;->getFirstLeafWithContentType(Lorg/columba/ristretto/message/MimePart;Ljava/lang/String;)Lorg/columba/ristretto/message/MimePart;

    move-result-object v4

    .line 128
    .local v4, textPart:Lorg/columba/ristretto/message/MimePart;
    if-nez v4, :cond_c

    .line 129
    const/4 v4, 0x0

    .line 172
    .end local v4           #textPart:Lorg/columba/ristretto/message/MimePart;
    :cond_b
    :goto_b
    return-object v4

    .line 132
    .restart local v4       #textPart:Lorg/columba/ristretto/message/MimePart;
    :cond_c
    if-eqz p1, :cond_b

    .line 135
    invoke-virtual {v4}, Lorg/columba/ristretto/message/MimePart;->getHeader()Lorg/columba/ristretto/message/MimeHeader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/columba/ristretto/message/MimeHeader;->getMimeType()Lorg/columba/ristretto/message/MimeType;

    move-result-object v5

    .line 137
    .local v5, type:Lorg/columba/ristretto/message/MimeType;
    invoke-virtual {v5}, Lorg/columba/ristretto/message/MimeType;->getSubtype()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 143
    invoke-virtual {v4}, Lorg/columba/ristretto/message/MimePart;->getParent()Lorg/columba/ristretto/message/MimePart;

    move-result-object v3

    .line 145
    .local v3, parent:Lorg/columba/ristretto/message/MimePart;
    if-eqz v3, :cond_b

    .line 146
    invoke-virtual {v3}, Lorg/columba/ristretto/message/MimePart;->getHeader()Lorg/columba/ristretto/message/MimeHeader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/columba/ristretto/message/MimeHeader;->getMimeType()Lorg/columba/ristretto/message/MimeType;

    move-result-object v6

    invoke-virtual {v6}, Lorg/columba/ristretto/message/MimeType;->getSubtype()Ljava/lang/String;

    move-result-object v6

    const-string v7, "alternative"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 150
    const-string v6, "text"

    invoke-virtual {p0, v3, v6}, Lorg/columba/ristretto/message/MimeTree;->getLeafsWithContentType(Lorg/columba/ristretto/message/MimePart;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 156
    .local v0, alternatives:Ljava/util/List;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_41
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_b

    .line 158
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/columba/ristretto/message/MimePart;

    .line 161
    .local v2, nextTextPart:Lorg/columba/ristretto/message/MimePart;
    invoke-virtual {v2}, Lorg/columba/ristretto/message/MimePart;->getHeader()Lorg/columba/ristretto/message/MimeHeader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/columba/ristretto/message/MimeHeader;->getMimeType()Lorg/columba/ristretto/message/MimeType;

    move-result-object v6

    invoke-virtual {v6}, Lorg/columba/ristretto/message/MimeType;->getSubtype()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    move-object v4, v2

    .line 165
    goto :goto_b

    .line 156
    :cond_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_41
.end method

.method public getFromAddress([Ljava/lang/Integer;)Lorg/columba/ristretto/message/MimePart;
    .registers 6
    .parameter "address"

    .prologue
    .line 104
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1b

    iget-object v2, p0, Lorg/columba/ristretto/message/MimeTree;->rootMimeNode:Lorg/columba/ristretto/message/MimePart;

    invoke-virtual {v2}, Lorg/columba/ristretto/message/MimePart;->countChilds()I

    move-result v2

    if-nez v2, :cond_1b

    .line 105
    iget-object v0, p0, Lorg/columba/ristretto/message/MimeTree;->rootMimeNode:Lorg/columba/ristretto/message/MimePart;

    .line 113
    :cond_1a
    return-object v0

    .line 107
    :cond_1b
    iget-object v0, p0, Lorg/columba/ristretto/message/MimeTree;->rootMimeNode:Lorg/columba/ristretto/message/MimePart;

    .line 109
    .local v0, actPart:Lorg/columba/ristretto/message/MimePart;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1e
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 110
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/columba/ristretto/message/MimePart;->getChild(I)Lorg/columba/ristretto/message/MimePart;

    move-result-object v0

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e
.end method

.method public getLeafs(Lorg/columba/ristretto/message/MimePart;)Ljava/util/List;
    .registers 5
    .parameter "root"

    .prologue
    .line 244
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 246
    .local v1, result:Ljava/util/LinkedList;
    invoke-virtual {p1}, Lorg/columba/ristretto/message/MimePart;->countChilds()I

    move-result v2

    if-lez v2, :cond_20

    .line 248
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    invoke-virtual {p1}, Lorg/columba/ristretto/message/MimePart;->countChilds()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 249
    invoke-virtual {p1, v0}, Lorg/columba/ristretto/message/MimePart;->getChild(I)Lorg/columba/ristretto/message/MimePart;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/columba/ristretto/message/MimeTree;->getLeafs(Lorg/columba/ristretto/message/MimePart;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 253
    .end local v0           #i:I
    :cond_20
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_23
    return-object v1
.end method

.method public getLeafsWithContentType(Lorg/columba/ristretto/message/MimePart;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .parameter "root"
    .parameter "contentType"

    .prologue
    .line 219
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 221
    .local v1, result:Ljava/util/LinkedList;
    invoke-virtual {p1}, Lorg/columba/ristretto/message/MimePart;->countChilds()I

    move-result v2

    if-lez v2, :cond_20

    .line 222
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    invoke-virtual {p1}, Lorg/columba/ristretto/message/MimePart;->countChilds()I

    move-result v2

    if-ge v0, v2, :cond_35

    .line 223
    invoke-virtual {p1, v0}, Lorg/columba/ristretto/message/MimePart;->getChild(I)Lorg/columba/ristretto/message/MimePart;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/columba/ristretto/message/MimeTree;->getLeafsWithContentType(Lorg/columba/ristretto/message/MimePart;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 230
    .end local v0           #i:I
    :cond_20
    invoke-virtual {p1}, Lorg/columba/ristretto/message/MimePart;->getHeader()Lorg/columba/ristretto/message/MimeHeader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/columba/ristretto/message/MimeHeader;->getMimeType()Lorg/columba/ristretto/message/MimeType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/columba/ristretto/message/MimeType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 231
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_35
    return-object v1
.end method

.method public getRootMimeNode()Lorg/columba/ristretto/message/MimePart;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lorg/columba/ristretto/message/MimeTree;->rootMimeNode:Lorg/columba/ristretto/message/MimePart;

    return-object v0
.end method

.method public setRootMimeNode(Lorg/columba/ristretto/message/MimePart;)V
    .registers 2
    .parameter "rootMimeNode"

    .prologue
    .line 272
    iput-object p1, p0, Lorg/columba/ristretto/message/MimeTree;->rootMimeNode:Lorg/columba/ristretto/message/MimePart;

    .line 273
    return-void
.end method
