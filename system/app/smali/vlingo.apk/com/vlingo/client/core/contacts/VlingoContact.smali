.class public Lcom/vlingo/client/core/contacts/VlingoContact;
.super Ljava/lang/Object;
.source "VlingoContact.java"

# interfaces
.implements Lcom/vlingo/client/core/util/SortUtils$Comparable;


# instance fields
.field private m_bestMRUScore:F

.field private m_detailProvider:Lcom/vlingo/client/core/contacts/ContactDetailProvider;

.field private m_details:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/contacts/ContactDetail;",
            ">;"
        }
    .end annotation
.end field

.field private m_id:I

.field private m_name:Ljava/lang/String;

.field private m_score:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vlingo/client/core/contacts/ContactDetailProvider;)V
    .registers 3
    .parameter "name"
    .parameter "detailProvider"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_name:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_detailProvider:Lcom/vlingo/client/core/contacts/ContactDetailProvider;

    .line 73
    return-void
.end method

.method private containsDetail(Lcom/vlingo/client/core/contacts/ContactDetail;)Z
    .registers 6
    .parameter "detail"

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v3, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_details:Ljava/util/Vector;

    if-eqz v3, :cond_1e

    .line 116
    iget-object v3, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_details:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/contacts/ContactDetail;

    .line 117
    .local v1, other:Lcom/vlingo/client/core/contacts/ContactDetail;
    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/contacts/ContactDetail;->sameDetail(Lcom/vlingo/client/core/contacts/ContactDetail;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 118
    const/4 v2, 0x1

    .line 122
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #other:Lcom/vlingo/client/core/contacts/ContactDetail;
    :cond_1e
    return v2
.end method


# virtual methods
.method public addDetail(Lcom/vlingo/client/core/contacts/ContactDetail;)V
    .registers 3
    .parameter "detail"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_details:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 127
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_details:Ljava/util/Vector;

    .line 129
    :cond_b
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/contacts/VlingoContact;->containsDetail(Lcom/vlingo/client/core/contacts/ContactDetail;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 130
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_details:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 132
    :cond_16
    return-void
.end method

.method public addEmailDetails(I)V
    .registers 6
    .parameter "type"

    .prologue
    .line 106
    iget-object v2, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_detailProvider:Lcom/vlingo/client/core/contacts/ContactDetailProvider;

    if-eqz v2, :cond_1f

    .line 107
    iget-object v2, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_detailProvider:Lcom/vlingo/client/core/contacts/ContactDetailProvider;

    iget v3, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_id:I

    invoke-interface {v2, p1, v3}, Lcom/vlingo/client/core/contacts/ContactDetailProvider;->getEmailDetails(II)Ljava/util/Vector;

    move-result-object v0

    .line 108
    .local v0, details:Ljava/util/Vector;,"Ljava/util/Vector<*>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 109
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/core/contacts/ContactDetail;

    invoke-virtual {p0, v2}, Lcom/vlingo/client/core/contacts/VlingoContact;->addDetail(Lcom/vlingo/client/core/contacts/ContactDetail;)V

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 112
    .end local v0           #details:Ljava/util/Vector;,"Ljava/util/Vector<*>;"
    .end local v1           #i:I
    :cond_1f
    return-void
.end method

.method public addPhoneNumberDetails(I)V
    .registers 6
    .parameter "type"

    .prologue
    .line 97
    iget-object v2, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_detailProvider:Lcom/vlingo/client/core/contacts/ContactDetailProvider;

    if-eqz v2, :cond_1f

    .line 98
    iget-object v2, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_detailProvider:Lcom/vlingo/client/core/contacts/ContactDetailProvider;

    iget v3, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_id:I

    invoke-interface {v2, p1, v3}, Lcom/vlingo/client/core/contacts/ContactDetailProvider;->getPhoneDetails(II)Ljava/util/Vector;

    move-result-object v0

    .line 99
    .local v0, details:Ljava/util/Vector;,"Ljava/util/Vector<*>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 100
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/core/contacts/ContactDetail;

    invoke-virtual {p0, v2}, Lcom/vlingo/client/core/contacts/VlingoContact;->addDetail(Lcom/vlingo/client/core/contacts/ContactDetail;)V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 103
    .end local v0           #details:Ljava/util/Vector;,"Ljava/util/Vector<*>;"
    .end local v1           #i:I
    :cond_1f
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 8
    .parameter "o2"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 135
    instance-of v4, p1, Lcom/vlingo/client/core/contacts/VlingoContact;

    if-nez v4, :cond_7

    .line 149
    :cond_6
    :goto_6
    return v2

    :cond_7
    move-object v0, p1

    .line 137
    check-cast v0, Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 138
    .local v0, c2:Lcom/vlingo/client/core/contacts/VlingoContact;
    invoke-virtual {v0, v3}, Lcom/vlingo/client/core/contacts/VlingoContact;->getScore(Z)F

    move-result v1

    .line 139
    .local v1, score2:F
    iget v4, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_score:F

    iget v5, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_bestMRUScore:F

    add-float/2addr v4, v5

    cmpl-float v4, v4, v1

    if-gtz v4, :cond_6

    .line 141
    iget v2, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_score:F

    iget v4, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_bestMRUScore:F

    add-float/2addr v2, v4

    cmpg-float v2, v2, v1

    if-gez v2, :cond_22

    move v2, v3

    .line 142
    goto :goto_6

    .line 144
    :cond_22
    iget-object v2, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_name:Ljava/lang/String;

    if-eqz v2, :cond_33

    .line 145
    iget-object v2, v0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_name:Ljava/lang/String;

    if-eqz v2, :cond_33

    .line 146
    iget-object v2, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_name:Ljava/lang/String;

    iget-object v3, v0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    goto :goto_6

    .line 149
    :cond_33
    const/4 v2, 0x0

    goto :goto_6
.end method

.method public computeMRUScore(Lcom/vlingo/client/core/mru/MRU;Ljava/lang/String;)V
    .registers 4
    .parameter "mru"
    .parameter "applicationName"

    .prologue
    .line 48
    iget v0, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_id:I

    invoke-virtual {p1, p2, v0}, Lcom/vlingo/client/core/mru/MRU;->getNormalizedCount(Ljava/lang/String;I)F

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_bestMRUScore:F

    .line 50
    return-void
.end method

.method public computeMRUScoresForDetails(Lcom/vlingo/client/core/mru/MRU;Ljava/lang/String;)V
    .registers 6
    .parameter "mru"
    .parameter "applicationName"

    .prologue
    .line 53
    iget-object v2, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_details:Ljava/util/Vector;

    if-eqz v2, :cond_1d

    .line 54
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget-object v2, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_details:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 55
    iget-object v2, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_details:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/contacts/ContactDetail;

    .line 56
    .local v0, cd:Lcom/vlingo/client/core/contacts/ContactDetail;
    iget v2, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_id:I

    invoke-virtual {v0, p1, p2, v2}, Lcom/vlingo/client/core/contacts/ContactDetail;->computeMRUScore(Lcom/vlingo/client/core/mru/MRU;Ljava/lang/String;I)V

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 59
    .end local v0           #cd:Lcom/vlingo/client/core/contacts/ContactDetail;
    .end local v1           #i:I
    :cond_1d
    return-void
.end method

.method public getBestMRUScore()F
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_bestMRUScore:F

    return v0
.end method

.method public getDetail(I)Lcom/vlingo/client/core/contacts/ContactDetail;
    .registers 3
    .parameter "index"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_details:Ljava/util/Vector;

    if-eqz v0, :cond_17

    .line 24
    if-ltz p1, :cond_17

    iget-object v0, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_details:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_17

    .line 25
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_details:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/contacts/ContactDetail;

    .line 28
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumDetails()I
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_details:Ljava/util/Vector;

    if-nez v0, :cond_6

    .line 85
    const/4 v0, 0x0

    .line 87
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_details:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getScore(Z)F
    .registers 4
    .parameter "includeMRUScore"

    .prologue
    .line 36
    if-eqz p1, :cond_8

    .line 37
    iget v0, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_score:F

    iget v1, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_bestMRUScore:F

    add-float/2addr v0, v1

    .line 39
    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_score:F

    goto :goto_7
.end method

.method public setId(I)V
    .registers 2
    .parameter "id"

    .prologue
    .line 67
    iput p1, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_id:I

    .line 68
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_name:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setScore(F)V
    .registers 2
    .parameter "score"

    .prologue
    .line 32
    iput p1, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_score:F

    .line 33
    return-void
.end method

.method public sortDetails()V
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_details:Ljava/util/Vector;

    if-eqz v0, :cond_9

    .line 92
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_details:Ljava/util/Vector;

    invoke-static {v0}, Lcom/vlingo/client/core/util/SortUtils;->quicksort(Ljava/util/Vector;)V

    .line 94
    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vlingo/client/core/contacts/VlingoContact;->m_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
