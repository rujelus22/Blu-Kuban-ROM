.class public Lcom/google/android/youtube/core/player/mp4/ContainerAtom;
.super Lcom/google/android/youtube/core/player/mp4/Atom;
.source "ContainerAtom.java"


# instance fields
.field private final children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/youtube/core/player/mp4/Atom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/youtube/core/player/mp4/Tag;)V
    .registers 4
    .parameter "size"
    .parameter "tag"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/mp4/Atom;-><init>(ILcom/google/android/youtube/core/player/mp4/Tag;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->children:Ljava/util/ArrayList;

    .line 31
    return-void
.end method


# virtual methods
.method public getChildCountWithTag(Lcom/google/android/youtube/core/player/mp4/Tag;Z)I
    .registers 7
    .parameter "tag"
    .parameter "mustBeContainer"

    .prologue
    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, count:I
    iget-object v3, p0, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/mp4/Atom;

    .line 139
    .local v0, atom:Lcom/google/android/youtube/core/player/mp4/Atom;
    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/mp4/Atom;->getTag()Lcom/google/android/youtube/core/player/mp4/Tag;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/youtube/core/player/mp4/Tag;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz p2, :cond_25

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/mp4/Atom;->isContainer()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 140
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 143
    .end local v0           #atom:Lcom/google/android/youtube/core/player/mp4/Atom;
    :cond_28
    return v1
.end method

.method public getChildWithTag(Lcom/google/android/youtube/core/player/mp4/Tag;)Lcom/google/android/youtube/core/player/mp4/Atom;
    .registers 3
    .parameter "tag"

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->getChildWithTag(Lcom/google/android/youtube/core/player/mp4/Tag;IZ)Lcom/google/android/youtube/core/player/mp4/Atom;

    move-result-object v0

    return-object v0
.end method

.method public getChildWithTag(Lcom/google/android/youtube/core/player/mp4/Tag;IZ)Lcom/google/android/youtube/core/player/mp4/Atom;
    .registers 8
    .parameter "tag"
    .parameter "index"
    .parameter "mustBeContainer"

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, i:I
    iget-object v3, p0, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/mp4/Atom;

    .line 105
    .local v0, atom:Lcom/google/android/youtube/core/player/mp4/Atom;
    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/mp4/Atom;->getTag()Lcom/google/android/youtube/core/player/mp4/Tag;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/youtube/core/player/mp4/Tag;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz p3, :cond_25

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/mp4/Atom;->isContainer()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 106
    :cond_25
    if-ne v1, p2, :cond_28

    .line 113
    .end local v0           #atom:Lcom/google/android/youtube/core/player/mp4/Atom;
    :goto_27
    return-object v0

    .line 109
    .restart local v0       #atom:Lcom/google/android/youtube/core/player/mp4/Atom;
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 113
    .end local v0           #atom:Lcom/google/android/youtube/core/player/mp4/Atom;
    :cond_2b
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public getContainerCountWithTag(Lcom/google/android/youtube/core/player/mp4/Tag;)I
    .registers 3
    .parameter "tag"

    .prologue
    .line 127
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->getChildCountWithTag(Lcom/google/android/youtube/core/player/mp4/Tag;Z)I

    move-result v0

    return v0
.end method

.method public getContainerWithTag(Lcom/google/android/youtube/core/player/mp4/Tag;)Lcom/google/android/youtube/core/player/mp4/ContainerAtom;
    .registers 4
    .parameter "tag"

    .prologue
    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->getChildWithTag(Lcom/google/android/youtube/core/player/mp4/Tag;IZ)Lcom/google/android/youtube/core/player/mp4/Atom;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;

    return-object v0
.end method

.method public getContainerWithTag(Lcom/google/android/youtube/core/player/mp4/Tag;I)Lcom/google/android/youtube/core/player/mp4/ContainerAtom;
    .registers 4
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->getChildWithTag(Lcom/google/android/youtube/core/player/mp4/Tag;IZ)Lcom/google/android/youtube/core/player/mp4/Atom;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;

    return-object v0
.end method

.method public getSize()I
    .registers 5

    .prologue
    .line 51
    const/4 v2, 0x0

    .line 52
    .local v2, totalSize:I
    iget-object v3, p0, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/mp4/Atom;

    .line 53
    .local v0, atom:Lcom/google/android/youtube/core/player/mp4/Atom;
    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/mp4/Atom;->getSize()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_7

    .line 55
    .end local v0           #atom:Lcom/google/android/youtube/core/player/mp4/Atom;
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->getHeaderSize()I

    move-result v3

    add-int/2addr v3, v2

    return v3
.end method

.method public isContainer()Z
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public readFrom(Ljava/io/DataInputStream;)V
    .registers 6
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 37
    .local v1, numRead:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->getContentSize()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 38
    invoke-static {p1}, Lcom/google/android/youtube/core/player/mp4/AtomFactory;->readNextAtom(Ljava/io/DataInputStream;)Lcom/google/android/youtube/core/player/mp4/Atom;

    move-result-object v0

    .line 39
    .local v0, child:Lcom/google/android/youtube/core/player/mp4/Atom;
    iget-object v2, p0, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/mp4/Atom;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 41
    goto :goto_1

    .line 43
    .end local v0           #child:Lcom/google/android/youtube/core/player/mp4/Atom;
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/mp4/ContainerAtom;->getContentSize()I

    move-result v2

    if-eq v1, v2, :cond_24

    .line 44
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Incorrect container atom size."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_24
    return-void
.end method
