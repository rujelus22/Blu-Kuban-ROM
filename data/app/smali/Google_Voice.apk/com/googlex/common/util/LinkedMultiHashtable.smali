.class public Lcom/googlex/common/util/LinkedMultiHashtable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlex/common/util/LinkedMultiHashtable$1;,
        Lcom/googlex/common/util/LinkedMultiHashtable$Entry;
    }
.end annotation


# instance fields
.field private orderedEntries:Ljava/util/Vector;

.field private table:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/googlex/common/util/LinkedMultiHashtable;->table:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/googlex/common/util/LinkedMultiHashtable;->orderedEntries:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, p1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/googlex/common/util/LinkedMultiHashtable;->table:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, p1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/googlex/common/util/LinkedMultiHashtable;->orderedEntries:Ljava/util/Vector;

    return-void
.end method

.method public static fromString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/googlex/common/util/LinkedMultiHashtable;
    .registers 12

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_5

    :goto_4
    return-object v3

    :cond_5
    invoke-static {p0, p1}, Lcom/googlex/common/util/text/TextUtil;->splitAndTrim(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    new-instance v5, Lcom/googlex/common/util/LinkedMultiHashtable;

    invoke-direct {v5}, Lcom/googlex/common/util/LinkedMultiHashtable;-><init>()V

    move v0, v1

    :goto_f
    array-length v2, v6

    if-ge v0, v2, :cond_3f

    aget-object v2, v6, v0

    invoke-virtual {v2, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, -0x1

    if-le v2, v4, :cond_3a

    aget-object v4, v6, v0

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aget-object v7, v6, v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v2, v8

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_34
    invoke-virtual {v5, v4, v2}, Lcom/googlex/common/util/LinkedMultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_3a
    aget-object v2, v6, v0

    move-object v4, v2

    move-object v2, v3

    goto :goto_34

    :cond_3f
    move-object v3, v5

    goto :goto_4
.end method


# virtual methods
.method public addEntries(Lcom/googlex/common/util/LinkedMultiHashtable;)V
    .registers 5

    invoke-virtual {p1}, Lcom/googlex/common/util/LinkedMultiHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlex/common/util/LinkedMultiHashtable$Entry;

    invoke-virtual {v0}, Lcom/googlex/common/util/LinkedMultiHashtable$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/googlex/common/util/LinkedMultiHashtable$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/googlex/common/util/LinkedMultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_1c
    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/googlex/common/util/LinkedMultiHashtable;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/googlex/common/util/LinkedMultiHashtable;->orderedEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public clone()Lcom/googlex/common/util/LinkedMultiHashtable;
    .registers 5

    new-instance v1, Lcom/googlex/common/util/LinkedMultiHashtable;

    invoke-direct {v1}, Lcom/googlex/common/util/LinkedMultiHashtable;-><init>()V

    invoke-virtual {p0}, Lcom/googlex/common/util/LinkedMultiHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlex/common/util/LinkedMultiHashtable$Entry;

    invoke-virtual {v0}, Lcom/googlex/common/util/LinkedMultiHashtable$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lcom/googlex/common/util/LinkedMultiHashtable$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/googlex/common/util/LinkedMultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_21
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/googlex/common/util/LinkedMultiHashtable;->clone()Lcom/googlex/common/util/LinkedMultiHashtable;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lcom/googlex/common/util/LinkedMultiHashtable;->orderedEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlex/common/util/LinkedMultiHashtable$Entry;

    if-nez p1, :cond_18

    iget-object v2, v0, Lcom/googlex/common/util/LinkedMultiHashtable$Entry;->value:Ljava/lang/Object;

    if-eqz v2, :cond_22

    :cond_18
    if-eqz p1, :cond_6

    iget-object v0, v0, Lcom/googlex/common/util/LinkedMultiHashtable$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_22
    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/googlex/common/util/LinkedMultiHashtable;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 2

    iget-object v0, p0, Lcom/googlex/common/util/LinkedMultiHashtable;->orderedEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/googlex/common/util/LinkedMultiHashtable;

    if-eqz v2, :cond_3d

    check-cast p1, Lcom/googlex/common/util/LinkedMultiHashtable;

    invoke-virtual {p0}, Lcom/googlex/common/util/LinkedMultiHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    invoke-virtual {p1}, Lcom/googlex/common/util/LinkedMultiHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    :cond_13
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    move v0, v1

    goto :goto_4

    :cond_2f
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3b
    move v0, v1

    goto :goto_4

    :cond_3d
    move v0, v1

    goto :goto_4
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Vector;
    .registers 3

    iget-object v0, p0, Lcom/googlex/common/util/LinkedMultiHashtable;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/googlex/common/util/LinkedMultiHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_18

    mul-int/lit8 v0, v0, 0x25

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_6

    :cond_18
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/googlex/common/util/LinkedMultiHashtable;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public join(CC)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/googlex/common/util/LinkedMultiHashtable;->join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lcom/googlex/common/util/LinkedMultiHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_c
    return-object v0

    :cond_d
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlex/common/util/LinkedMultiHashtable$Entry;

    invoke-virtual {v0, v2, p2}, Lcom/googlex/common/util/LinkedMultiHashtable$Entry;->appendToStringBuffer(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_1b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlex/common/util/LinkedMultiHashtable$Entry;

    invoke-virtual {v0, v2, p2}, Lcom/googlex/common/util/LinkedMultiHashtable$Entry;->appendToStringBuffer(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_1b

    :cond_2e
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/googlex/common/util/LinkedMultiHashtable;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/googlex/common/util/LinkedMultiHashtable;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/Vector;-><init>(I)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Lcom/googlex/common/util/ArrayUtil;->copyIntoVector(Ljava/util/Vector;ILjava/util/Vector;)V

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_21
    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/googlex/common/util/LinkedMultiHashtable;->orderedEntries:Ljava/util/Vector;

    new-instance v3, Lcom/googlex/common/util/LinkedMultiHashtable$Entry;

    invoke-direct {v3, p1, p2, v2}, Lcom/googlex/common/util/LinkedMultiHashtable$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/googlex/common/util/LinkedMultiHashtable$1;)V

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0

    :cond_2f
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iget-object v1, p0, Lcom/googlex/common/util/LinkedMultiHashtable;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    move-object v0, v2

    goto :goto_21
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/Vector;
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/googlex/common/util/LinkedMultiHashtable;->orderedEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_26

    iget-object v0, p0, Lcom/googlex/common/util/LinkedMultiHashtable;->orderedEntries:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlex/common/util/LinkedMultiHashtable$Entry;

    invoke-virtual {v0}, Lcom/googlex/common/util/LinkedMultiHashtable$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/googlex/common/util/LinkedMultiHashtable;->orderedEntries:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_2

    :cond_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_26
    iget-object v0, p0, Lcom/googlex/common/util/LinkedMultiHashtable;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/googlex/common/util/LinkedMultiHashtable;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method
