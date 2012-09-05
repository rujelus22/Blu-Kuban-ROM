.class public Lcom/vlingo/client/core/contacts/SortedContactList;
.super Ljava/lang/Object;
.source "SortedContactList.java"


# instance fields
.field protected m_displayItems:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/contacts/DisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_listener:Lcom/vlingo/client/core/contacts/ContactListListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/contacts/SortedContactList;->m_displayItems:Ljava/util/Vector;

    return-void
.end method

.method public static MRUDiffToNextChoice(Lcom/vlingo/client/core/contacts/DisplayItem;Lcom/vlingo/client/core/contacts/DisplayItem;)F
    .registers 13
    .parameter "firstChoice"
    .parameter "secondChoice"

    .prologue
    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    .line 114
    if-eqz p0, :cond_a

    if-nez p1, :cond_a

    const/high16 v6, 0x42c8

    .line 133
    :cond_9
    :goto_9
    return v6

    .line 115
    :cond_a
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    .line 120
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 121
    .local v0, c1:Lcom/vlingo/client/core/contacts/VlingoContact;
    iget-object v1, p1, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 124
    .local v1, c2:Lcom/vlingo/client/core/contacts/VlingoContact;
    iget v7, p0, Lcom/vlingo/client/core/contacts/DisplayItem;->detailIndex:I

    invoke-virtual {v0, v7}, Lcom/vlingo/client/core/contacts/VlingoContact;->getDetail(I)Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v2

    .line 125
    .local v2, cd1:Lcom/vlingo/client/core/contacts/ContactDetail;
    iget v7, p1, Lcom/vlingo/client/core/contacts/DisplayItem;->detailIndex:I

    invoke-virtual {v1, v7}, Lcom/vlingo/client/core/contacts/VlingoContact;->getDetail(I)Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v3

    .line 127
    .local v3, cd2:Lcom/vlingo/client/core/contacts/ContactDetail;
    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/ContactDetail;->getScore()F

    move-result v4

    .line 128
    .local v4, score1:F
    invoke-virtual {v3}, Lcom/vlingo/client/core/contacts/ContactDetail;->getScore()F

    move-result v5

    .line 129
    .local v5, score2:F
    float-to-double v7, v5

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_33

    .line 130
    float-to-double v7, v4

    cmpg-double v7, v7, v9

    if-lez v7, :cond_9

    .line 131
    const/high16 v6, 0x4120

    goto :goto_9

    .line 133
    :cond_33
    div-float v6, v4, v5

    goto :goto_9
.end method


# virtual methods
.method public doneUpdate()V
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/SortedContactList;->m_listener:Lcom/vlingo/client/core/contacts/ContactListListener;

    if-nez v0, :cond_5

    .line 51
    :goto_4
    return-void

    .line 50
    :cond_5
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/SortedContactList;->m_listener:Lcom/vlingo/client/core/contacts/ContactListListener;

    invoke-interface {v0}, Lcom/vlingo/client/core/contacts/ContactListListener;->doneUpdate()V

    goto :goto_4
.end method

.method public get(I)Lcom/vlingo/client/core/contacts/DisplayItem;
    .registers 3
    .parameter "displayIndex"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/SortedContactList;->m_displayItems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/contacts/DisplayItem;

    return-object v0
.end method

.method public getAddress(I)Ljava/lang/String;
    .registers 6
    .parameter "displayIndex"

    .prologue
    .line 68
    iget-object v3, p0, Lcom/vlingo/client/core/contacts/SortedContactList;->m_displayItems:Ljava/util/Vector;

    if-eqz v3, :cond_23

    .line 69
    if-ltz p1, :cond_23

    iget-object v3, p0, Lcom/vlingo/client/core/contacts/SortedContactList;->m_displayItems:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge p1, v3, :cond_23

    .line 70
    iget-object v3, p0, Lcom/vlingo/client/core/contacts/SortedContactList;->m_displayItems:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/core/contacts/DisplayItem;

    .line 71
    .local v2, di:Lcom/vlingo/client/core/contacts/DisplayItem;
    iget-object v0, v2, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 72
    .local v0, c:Lcom/vlingo/client/core/contacts/VlingoContact;
    iget v3, v2, Lcom/vlingo/client/core/contacts/DisplayItem;->detailIndex:I

    invoke-virtual {v0, v3}, Lcom/vlingo/client/core/contacts/VlingoContact;->getDetail(I)Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v1

    .line 73
    .local v1, cd:Lcom/vlingo/client/core/contacts/ContactDetail;
    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 76
    .end local v0           #c:Lcom/vlingo/client/core/contacts/VlingoContact;
    .end local v1           #cd:Lcom/vlingo/client/core/contacts/ContactDetail;
    .end local v2           #di:Lcom/vlingo/client/core/contacts/DisplayItem;
    :goto_22
    return-object v3

    :cond_23
    const/4 v3, 0x0

    goto :goto_22
.end method

.method public getId(I)I
    .registers 5
    .parameter "displayIndex"

    .prologue
    .line 80
    iget-object v2, p0, Lcom/vlingo/client/core/contacts/SortedContactList;->m_displayItems:Ljava/util/Vector;

    if-eqz v2, :cond_1d

    .line 81
    if-ltz p1, :cond_1d

    iget-object v2, p0, Lcom/vlingo/client/core/contacts/SortedContactList;->m_displayItems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge p1, v2, :cond_1d

    .line 82
    iget-object v2, p0, Lcom/vlingo/client/core/contacts/SortedContactList;->m_displayItems:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/contacts/DisplayItem;

    .line 83
    .local v1, di:Lcom/vlingo/client/core/contacts/DisplayItem;
    iget-object v0, v1, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 84
    .local v0, c:Lcom/vlingo/client/core/contacts/VlingoContact;
    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/VlingoContact;->getId()I

    move-result v2

    .line 87
    .end local v0           #c:Lcom/vlingo/client/core/contacts/VlingoContact;
    .end local v1           #di:Lcom/vlingo/client/core/contacts/DisplayItem;
    :goto_1c
    return v2

    :cond_1d
    const/4 v2, -0x1

    goto :goto_1c
.end method

.method public getName(I)Ljava/lang/String;
    .registers 5
    .parameter "displayIndex"

    .prologue
    .line 91
    iget-object v2, p0, Lcom/vlingo/client/core/contacts/SortedContactList;->m_displayItems:Ljava/util/Vector;

    if-eqz v2, :cond_1d

    .line 92
    if-ltz p1, :cond_1d

    iget-object v2, p0, Lcom/vlingo/client/core/contacts/SortedContactList;->m_displayItems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge p1, v2, :cond_1d

    .line 93
    iget-object v2, p0, Lcom/vlingo/client/core/contacts/SortedContactList;->m_displayItems:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/contacts/DisplayItem;

    .line 94
    .local v1, di:Lcom/vlingo/client/core/contacts/DisplayItem;
    iget-object v0, v1, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 95
    .local v0, c:Lcom/vlingo/client/core/contacts/VlingoContact;
    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v2

    .line 98
    .end local v0           #c:Lcom/vlingo/client/core/contacts/VlingoContact;
    .end local v1           #di:Lcom/vlingo/client/core/contacts/DisplayItem;
    :goto_1c
    return-object v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public getNumDisplayItems()I
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/SortedContactList;->m_displayItems:Ljava/util/Vector;

    if-nez v0, :cond_6

    .line 55
    const/4 v0, 0x0

    .line 56
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/SortedContactList;->m_displayItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getScore(I)F
    .registers 7
    .parameter "displayIndex"

    .prologue
    .line 102
    iget-object v3, p0, Lcom/vlingo/client/core/contacts/SortedContactList;->m_displayItems:Ljava/util/Vector;

    if-eqz v3, :cond_29

    .line 103
    if-ltz p1, :cond_29

    iget-object v3, p0, Lcom/vlingo/client/core/contacts/SortedContactList;->m_displayItems:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge p1, v3, :cond_29

    .line 104
    iget-object v3, p0, Lcom/vlingo/client/core/contacts/SortedContactList;->m_displayItems:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/core/contacts/DisplayItem;

    .line 105
    .local v2, di:Lcom/vlingo/client/core/contacts/DisplayItem;
    iget-object v0, v2, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 106
    .local v0, c:Lcom/vlingo/client/core/contacts/VlingoContact;
    iget v3, v2, Lcom/vlingo/client/core/contacts/DisplayItem;->detailIndex:I

    invoke-virtual {v0, v3}, Lcom/vlingo/client/core/contacts/VlingoContact;->getDetail(I)Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v1

    .line 107
    .local v1, cd:Lcom/vlingo/client/core/contacts/ContactDetail;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/vlingo/client/core/contacts/VlingoContact;->getScore(Z)F

    move-result v3

    invoke-virtual {v1}, Lcom/vlingo/client/core/contacts/ContactDetail;->getScore()F

    move-result v4

    add-float/2addr v3, v4

    .line 110
    .end local v0           #c:Lcom/vlingo/client/core/contacts/VlingoContact;
    .end local v1           #cd:Lcom/vlingo/client/core/contacts/ContactDetail;
    .end local v2           #di:Lcom/vlingo/client/core/contacts/DisplayItem;
    :goto_28
    return v3

    :cond_29
    const/4 v3, 0x0

    goto :goto_28
.end method

.method public isNoDisplayItems()Z
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/SortedContactList;->m_displayItems:Ljava/util/Vector;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected notifyListener()V
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/SortedContactList;->m_listener:Lcom/vlingo/client/core/contacts/ContactListListener;

    if-nez v0, :cond_5

    .line 45
    :goto_4
    return-void

    .line 44
    :cond_5
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/SortedContactList;->m_listener:Lcom/vlingo/client/core/contacts/ContactListListener;

    invoke-interface {v0}, Lcom/vlingo/client/core/contacts/ContactListListener;->listChanged()V

    goto :goto_4
.end method

.method public setListener(Lcom/vlingo/client/core/contacts/ContactListListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vlingo/client/core/contacts/SortedContactList;->m_listener:Lcom/vlingo/client/core/contacts/ContactListListener;

    .line 39
    return-void
.end method

.method public updateList(Ljava/util/Vector;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/contacts/DisplayItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, newList:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    iget-object v1, p0, Lcom/vlingo/client/core/contacts/SortedContactList;->m_displayItems:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 30
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 31
    iget-object v2, p0, Lcom/vlingo/client/core/contacts/SortedContactList;->m_displayItems:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/contacts/DisplayItem;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 33
    :cond_1a
    invoke-virtual {p0}, Lcom/vlingo/client/core/contacts/SortedContactList;->notifyListener()V

    .line 34
    return-void
.end method
