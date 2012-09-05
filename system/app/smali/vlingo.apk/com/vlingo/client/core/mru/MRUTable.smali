.class public Lcom/vlingo/client/core/mru/MRUTable;
.super Ljava/lang/Object;
.source "MRUTable.java"


# instance fields
.field private m_countSinceLastNormalization:I

.field private m_table:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/vlingo/client/core/mru/MRUForContact;",
            ">;"
        }
    .end annotation
.end field

.field private m_tableSum:F


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .parameter "name"
    .parameter "expectedSize"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Hashtable;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_table:Ljava/util/Hashtable;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_tableSum:F

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_countSinceLastNormalization:I

    .line 23
    return-void
.end method


# virtual methods
.method public getCountSinceLastUdate()I
    .registers 2

    .prologue
    .line 25
    iget v0, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_countSinceLastNormalization:I

    return v0
.end method

.method public getNormalizedCount(I)F
    .registers 6
    .parameter "contact"

    .prologue
    const/4 v2, 0x0

    .line 118
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 119
    .local v0, contactInt:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_table:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/mru/MRUForContact;

    .line 120
    .local v1, mfc:Lcom/vlingo/client/core/mru/MRUForContact;
    if-nez v1, :cond_11

    .line 128
    :cond_10
    :goto_10
    return v2

    .line 124
    :cond_11
    iget v3, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_tableSum:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_10

    .line 125
    invoke-virtual {v1}, Lcom/vlingo/client/core/mru/MRUForContact;->getMaxCount()F

    move-result v2

    iget v3, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_tableSum:F

    div-float/2addr v2, v3

    goto :goto_10
.end method

.method public getNormalizedCount(ILjava/lang/String;)F
    .registers 7
    .parameter "contact"
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 84
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 85
    .local v0, contactInt:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_table:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/mru/MRUForContact;

    .line 86
    .local v1, mfc:Lcom/vlingo/client/core/mru/MRUForContact;
    if-nez v1, :cond_11

    .line 93
    :cond_10
    :goto_10
    return v2

    .line 88
    :cond_11
    iget v3, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_tableSum:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_10

    .line 90
    invoke-virtual {v1, p2}, Lcom/vlingo/client/core/mru/MRUForContact;->getCount(Ljava/lang/String;)F

    move-result v2

    iget v3, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_tableSum:F

    div-float/2addr v2, v3

    goto :goto_10
.end method

.method public getNumItems()I
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public incrementCount(ILjava/lang/String;)F
    .registers 7
    .parameter "contact"
    .parameter "address"

    .prologue
    .line 97
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 98
    .local v0, contactInt:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_table:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/mru/MRUForContact;

    .line 99
    .local v1, mfc:Lcom/vlingo/client/core/mru/MRUForContact;
    if-nez v1, :cond_19

    .line 100
    new-instance v1, Lcom/vlingo/client/core/mru/MRUForContact;

    .end local v1           #mfc:Lcom/vlingo/client/core/mru/MRUForContact;
    invoke-direct {v1}, Lcom/vlingo/client/core/mru/MRUForContact;-><init>()V

    .line 101
    .restart local v1       #mfc:Lcom/vlingo/client/core/mru/MRUForContact;
    iget-object v2, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_table:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_19
    iget v2, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_tableSum:F

    const/high16 v3, 0x3f80

    add-float/2addr v2, v3

    iput v2, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_tableSum:F

    .line 104
    iget v2, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_countSinceLastNormalization:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_countSinceLastNormalization:I

    .line 105
    invoke-virtual {v1, p2}, Lcom/vlingo/client/core/mru/MRUForContact;->incrementCount(Ljava/lang/String;)F

    move-result v2

    return v2
.end method

.method public removeLowestScoringContact()Ljava/lang/Integer;
    .registers 9

    .prologue
    .line 45
    const/4 v3, 0x0

    .line 46
    .local v3, lowestScoringContact:Ljava/lang/Integer;
    iget v2, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_tableSum:F

    .line 48
    .local v2, lowestScore:F
    iget-object v6, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_table:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 49
    .local v1, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 50
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 51
    .local v0, key:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_table:Ljava/util/Hashtable;

    invoke-virtual {v6, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vlingo/client/core/mru/MRUForContact;

    .line 52
    .local v4, mru:Lcom/vlingo/client/core/mru/MRUForContact;
    if-eqz v4, :cond_9

    .line 53
    invoke-virtual {v4}, Lcom/vlingo/client/core/mru/MRUForContact;->getMaxCount()F

    move-result v5

    .line 54
    .local v5, mruScore:F
    if-eqz v3, :cond_29

    cmpg-float v6, v5, v2

    if-gez v6, :cond_9

    .line 55
    :cond_29
    move v2, v5

    .line 56
    move-object v3, v0

    goto :goto_9

    .line 60
    .end local v0           #key:Ljava/lang/Integer;
    .end local v4           #mru:Lcom/vlingo/client/core/mru/MRUForContact;
    .end local v5           #mruScore:F
    :cond_2c
    if-eqz v3, :cond_46

    .line 61
    iget-object v6, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_table:Ljava/util/Hashtable;

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vlingo/client/core/mru/MRUForContact;

    .line 62
    .restart local v4       #mru:Lcom/vlingo/client/core/mru/MRUForContact;
    if-eqz v4, :cond_41

    .line 63
    iget v6, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_tableSum:F

    invoke-virtual {v4}, Lcom/vlingo/client/core/mru/MRUForContact;->getSum()F

    move-result v7

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_tableSum:F

    .line 65
    :cond_41
    iget-object v6, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_table:Ljava/util/Hashtable;

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .end local v4           #mru:Lcom/vlingo/client/core/mru/MRUForContact;
    :cond_46
    return-object v3
.end method

.method public scaleValues(F)V
    .registers 5
    .parameter "scale"

    .prologue
    .line 108
    const/4 v2, 0x0

    iput v2, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_countSinceLastNormalization:I

    .line 109
    iget v2, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_tableSum:F

    mul-float/2addr v2, p1

    iput v2, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_tableSum:F

    .line 110
    iget-object v2, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_table:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 111
    .local v0, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/vlingo/client/core/mru/MRUForContact;>;"
    :goto_e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 112
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/mru/MRUForContact;

    .line 113
    .local v1, mru:Lcom/vlingo/client/core/mru/MRUForContact;
    invoke-virtual {v1, p1}, Lcom/vlingo/client/core/mru/MRUForContact;->scaleValues(F)V

    goto :goto_e

    .line 115
    .end local v1           #mru:Lcom/vlingo/client/core/mru/MRUForContact;
    :cond_1e
    return-void
.end method

.method public setCount(ILjava/lang/String;F)V
    .registers 7
    .parameter "contact"
    .parameter "address"
    .parameter "count"

    .prologue
    .line 74
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 75
    .local v0, contactInt:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_table:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/mru/MRUForContact;

    .line 76
    .local v1, mfc:Lcom/vlingo/client/core/mru/MRUForContact;
    if-nez v1, :cond_19

    .line 77
    new-instance v1, Lcom/vlingo/client/core/mru/MRUForContact;

    .end local v1           #mfc:Lcom/vlingo/client/core/mru/MRUForContact;
    invoke-direct {v1}, Lcom/vlingo/client/core/mru/MRUForContact;-><init>()V

    .line 78
    .restart local v1       #mfc:Lcom/vlingo/client/core/mru/MRUForContact;
    iget-object v2, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_table:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_19
    invoke-virtual {v1, p2, p3}, Lcom/vlingo/client/core/mru/MRUForContact;->setCount(Ljava/lang/String;F)V

    .line 81
    iget v2, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_tableSum:F

    add-float/2addr v2, p3

    iput v2, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_tableSum:F

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 31
    const-string v3, ""

    .line 32
    .local v3, outputString:Ljava/lang/String;
    iget-object v4, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_table:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 33
    .local v1, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 34
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 35
    .local v0, key:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/vlingo/client/core/mru/MRUTable;->m_table:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/core/mru/MRUForContact;

    .line 36
    .local v2, mru:Lcom/vlingo/client/core/mru/MRUForContact;
    if-eqz v2, :cond_8

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Contact "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/vlingo/client/core/mru/MRUForContact;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 40
    .end local v0           #key:Ljava/lang/Integer;
    .end local v2           #mru:Lcom/vlingo/client/core/mru/MRUForContact;
    :cond_4a
    return-object v3
.end method
