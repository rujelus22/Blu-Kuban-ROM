.class public Lorg/columba/ristretto/message/MimePart;
.super Ljava/lang/Object;
.source "MimePart.java"


# instance fields
.field private childs:Ljava/util/List;

.field protected header:Lorg/columba/ristretto/message/MimeHeader;

.field private parent:Lorg/columba/ristretto/message/MimePart;

.field protected size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    new-instance v0, Lorg/columba/ristretto/message/MimeHeader;

    invoke-direct {v0}, Lorg/columba/ristretto/message/MimeHeader;-><init>()V

    invoke-direct {p0, v0}, Lorg/columba/ristretto/message/MimePart;-><init>(Lorg/columba/ristretto/message/MimeHeader;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/columba/ristretto/message/MimeHeader;)V
    .registers 3
    .parameter "header"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/columba/ristretto/message/MimePart;->header:Lorg/columba/ristretto/message/MimeHeader;

    .line 69
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/columba/ristretto/message/MimePart;->childs:Ljava/util/List;

    .line 70
    return-void
.end method


# virtual methods
.method public addChild(Lorg/columba/ristretto/message/MimePart;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 138
    if-nez p1, :cond_3

    .line 141
    :goto_2
    return-void

    .line 139
    :cond_3
    iget-object v0, p0, Lorg/columba/ristretto/message/MimePart;->childs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {p1, p0}, Lorg/columba/ristretto/message/MimePart;->setParent(Lorg/columba/ristretto/message/MimePart;)V

    goto :goto_2
.end method

.method public count()I
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 151
    iget-object v2, p0, Lorg/columba/ristretto/message/MimePart;->header:Lorg/columba/ristretto/message/MimeHeader;

    invoke-virtual {v2}, Lorg/columba/ristretto/message/MimeHeader;->getMimeType()Lorg/columba/ristretto/message/MimeType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/columba/ristretto/message/MimeType;->getSubtype()Ljava/lang/String;

    move-result-object v2

    const-string v3, "alternative"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 163
    :cond_13
    return v1

    .line 154
    :cond_14
    invoke-virtual {p0}, Lorg/columba/ristretto/message/MimePart;->countChilds()I

    move-result v2

    if-eqz v2, :cond_13

    .line 157
    const/4 v1, 0x0

    .line 159
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1c
    invoke-virtual {p0}, Lorg/columba/ristretto/message/MimePart;->countChilds()I

    move-result v2

    if-ge v0, v2, :cond_13

    .line 160
    invoke-virtual {p0, v0}, Lorg/columba/ristretto/message/MimePart;->getChild(I)Lorg/columba/ristretto/message/MimePart;

    move-result-object v2

    invoke-virtual {v2}, Lorg/columba/ristretto/message/MimePart;->count()I

    move-result v2

    add-int/2addr v1, v2

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c
.end method

.method public countChilds()I
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lorg/columba/ristretto/message/MimePart;->childs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAddress()[Ljava/lang/Integer;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 77
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 79
    .local v3, result:Ljava/util/List;
    iget-object v5, p0, Lorg/columba/ristretto/message/MimePart;->parent:Lorg/columba/ristretto/message/MimePart;

    if-nez v5, :cond_2a

    .line 80
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_12
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/Integer;

    .line 95
    .local v4, returnValue:[Ljava/lang/Integer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_41

    .line 96
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    aput-object v5, v4, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 82
    .end local v0           #i:I
    .end local v4           #returnValue:[Ljava/lang/Integer;
    :cond_2a
    iget-object v2, p0, Lorg/columba/ristretto/message/MimePart;->parent:Lorg/columba/ristretto/message/MimePart;

    .line 83
    .local v2, nextParent:Lorg/columba/ristretto/message/MimePart;
    move-object v1, p0

    .line 85
    .local v1, nextChild:Lorg/columba/ristretto/message/MimePart;
    :goto_2d
    if-eqz v2, :cond_12

    .line 86
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Lorg/columba/ristretto/message/MimePart;->getNumber(Lorg/columba/ristretto/message/MimePart;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v7, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 88
    move-object v1, v2

    .line 89
    invoke-virtual {v2}, Lorg/columba/ristretto/message/MimePart;->getParent()Lorg/columba/ristretto/message/MimePart;

    move-result-object v2

    goto :goto_2d

    .line 98
    .end local v1           #nextChild:Lorg/columba/ristretto/message/MimePart;
    .end local v2           #nextParent:Lorg/columba/ristretto/message/MimePart;
    .restart local v0       #i:I
    .restart local v4       #returnValue:[Ljava/lang/Integer;
    :cond_41
    return-object v4
.end method

.method public getChild(I)Lorg/columba/ristretto/message/MimePart;
    .registers 3
    .parameter "nr"

    .prologue
    .line 129
    iget-object v0, p0, Lorg/columba/ristretto/message/MimePart;->childs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/columba/ristretto/message/MimePart;

    return-object v0
.end method

.method public getChilds()Ljava/util/List;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lorg/columba/ristretto/message/MimePart;->childs:Ljava/util/List;

    return-object v0
.end method

.method public getHeader()Lorg/columba/ristretto/message/MimeHeader;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lorg/columba/ristretto/message/MimePart;->header:Lorg/columba/ristretto/message/MimeHeader;

    return-object v0
.end method

.method public getNumber(Lorg/columba/ristretto/message/MimePart;)I
    .registers 3
    .parameter "child"

    .prologue
    .line 171
    iget-object v0, p0, Lorg/columba/ristretto/message/MimePart;->childs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getParent()Lorg/columba/ristretto/message/MimePart;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/columba/ristretto/message/MimePart;->parent:Lorg/columba/ristretto/message/MimePart;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 209
    iget v0, p0, Lorg/columba/ristretto/message/MimePart;->size:I

    return v0
.end method

.method public setHeader(Lorg/columba/ristretto/message/MimeHeader;)V
    .registers 2
    .parameter "h"

    .prologue
    .line 193
    iput-object p1, p0, Lorg/columba/ristretto/message/MimePart;->header:Lorg/columba/ristretto/message/MimeHeader;

    .line 194
    return-void
.end method

.method public setParent(Lorg/columba/ristretto/message/MimePart;)V
    .registers 2
    .parameter "parent"

    .prologue
    .line 114
    iput-object p1, p0, Lorg/columba/ristretto/message/MimePart;->parent:Lorg/columba/ristretto/message/MimePart;

    .line 115
    return-void
.end method

.method public setSize(I)V
    .registers 2
    .parameter "size"

    .prologue
    .line 202
    iput p1, p0, Lorg/columba/ristretto/message/MimePart;->size:I

    .line 203
    return-void
.end method
