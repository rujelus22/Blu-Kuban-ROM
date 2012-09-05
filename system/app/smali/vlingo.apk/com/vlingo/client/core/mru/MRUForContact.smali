.class public Lcom/vlingo/client/core/mru/MRUForContact;
.super Ljava/lang/Object;
.source "MRUForContact.java"


# instance fields
.field m_addressTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private m_maxCount:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/core/mru/MRUForContact;->m_maxCount:F

    .line 19
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/vlingo/client/core/mru/MRUForContact;->m_addressTable:Ljava/util/Hashtable;

    .line 20
    return-void
.end method


# virtual methods
.method public getCount(Ljava/lang/String;)F
    .registers 4
    .parameter "address"

    .prologue
    .line 29
    iget-object v1, p0, Lcom/vlingo/client/core/mru/MRUForContact;->m_addressTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 30
    .local v0, fv:Ljava/lang/Float;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    .line 31
    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_b
.end method

.method public getMaxCount()F
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lcom/vlingo/client/core/mru/MRUForContact;->m_maxCount:F

    return v0
.end method

.method public getNumItems()F
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vlingo/client/core/mru/MRUForContact;->m_addressTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getSum()F
    .registers 5

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, sum:F
    iget-object v3, p0, Lcom/vlingo/client/core/mru/MRUForContact;->m_addressTable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 77
    .local v2, values:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 78
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 80
    .local v1, value:Ljava/lang/Float;
    if-eqz v1, :cond_7

    .line 81
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v0, v3

    goto :goto_7

    .line 84
    .end local v1           #value:Ljava/lang/Float;
    :cond_1b
    return v0
.end method

.method public incrementCount(Ljava/lang/String;)F
    .registers 6
    .parameter "address"

    .prologue
    .line 38
    iget-object v2, p0, Lcom/vlingo/client/core/mru/MRUForContact;->m_addressTable:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 39
    .local v0, fv:Ljava/lang/Float;
    const/high16 v1, 0x3f80

    .line 40
    .local v1, newValue:F
    if-nez v0, :cond_1f

    .line 41
    iget-object v2, p0, Lcom/vlingo/client/core/mru/MRUForContact;->m_addressTable:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, v1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v2, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :goto_16
    iget v2, p0, Lcom/vlingo/client/core/mru/MRUForContact;->m_maxCount:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1e

    iput v1, p0, Lcom/vlingo/client/core/mru/MRUForContact;->m_maxCount:F

    .line 49
    :cond_1e
    return v1

    .line 44
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    .line 45
    iget-object v2, p0, Lcom/vlingo/client/core/mru/MRUForContact;->m_addressTable:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, v1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v2, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16
.end method

.method public scaleValues(F)V
    .registers 8
    .parameter "scale"

    .prologue
    .line 64
    iget-object v3, p0, Lcom/vlingo/client/core/mru/MRUForContact;->m_addressTable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 65
    .local v1, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 66
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    .local v0, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/vlingo/client/core/mru/MRUForContact;->m_addressTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 68
    .local v2, value:Ljava/lang/Float;
    if-eqz v2, :cond_6

    .line 69
    iget-object v3, p0, Lcom/vlingo/client/core/mru/MRUForContact;->m_addressTable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v5, p1

    invoke-direct {v4, v5}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v3, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 72
    .end local v0           #key:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/Float;
    :cond_2c
    iget v3, p0, Lcom/vlingo/client/core/mru/MRUForContact;->m_maxCount:F

    mul-float/2addr v3, p1

    iput v3, p0, Lcom/vlingo/client/core/mru/MRUForContact;->m_maxCount:F

    .line 73
    return-void
.end method

.method public setCount(Ljava/lang/String;F)V
    .registers 5
    .parameter "address"
    .parameter "count"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vlingo/client/core/mru/MRUForContact;->m_addressTable:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p2}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget v0, p0, Lcom/vlingo/client/core/mru/MRUForContact;->m_maxCount:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_12

    iput p2, p0, Lcom/vlingo/client/core/mru/MRUForContact;->m_maxCount:F

    .line 24
    :cond_12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 52
    const-string v2, ""

    .line 53
    .local v2, outputString:Ljava/lang/String;
    iget-object v4, p0, Lcom/vlingo/client/core/mru/MRUForContact;->m_addressTable:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 54
    .local v1, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_8
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 55
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    .local v0, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/vlingo/client/core/mru/MRUForContact;->m_addressTable:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 57
    .local v3, value:Ljava/lang/Float;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    goto :goto_8

    .line 59
    .end local v0           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/Float;
    :cond_42
    return-object v2
.end method
