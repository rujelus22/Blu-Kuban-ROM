.class public Lcom/vlingo/client/core/contacts/ContactDetail;
.super Ljava/lang/Object;
.source "ContactDetail.java"

# interfaces
.implements Lcom/vlingo/client/core/util/SortUtils$Comparable;


# static fields
.field public static final ANY_TYPE:I = -0x1


# instance fields
.field private index:Ljava/lang/Integer;

.field private m_MRUScore:F

.field private m_Starred:I

.field private m_address:Ljava/lang/String;

.field private m_boostScore:F

.field private m_isPhoneNumber:Z

.field private m_type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IFIZ)V
    .registers 8
    .parameter "address"
    .parameter "type"
    .parameter "boostScore"
    .parameter "starred"
    .parameter "isPhoneNumber"

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v1, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_boostScore:F

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->index:Ljava/lang/Integer;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_Starred:I

    .line 38
    iput-object p1, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_address:Ljava/lang/String;

    .line 39
    iput p2, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_type:I

    .line 40
    iput v1, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_MRUScore:F

    .line 41
    iput p3, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_boostScore:F

    .line 42
    iput p4, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_Starred:I

    .line 43
    iput-boolean p5, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_isPhoneNumber:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 6
    .parameter "address"
    .parameter "type"
    .parameter "isPhoneNumber"

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v1, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_boostScore:F

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->index:Ljava/lang/Integer;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_Starred:I

    .line 21
    iput-object p1, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_address:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_type:I

    .line 23
    iput v1, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_MRUScore:F

    .line 24
    iput v1, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_boostScore:F

    .line 25
    iput-boolean p3, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_isPhoneNumber:Z

    .line 26
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 6
    .parameter "o2"

    .prologue
    const/4 v1, -0x1

    .line 79
    instance-of v2, p1, Lcom/vlingo/client/core/contacts/ContactDetail;

    if-nez v2, :cond_6

    .line 84
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 81
    check-cast v0, Lcom/vlingo/client/core/contacts/ContactDetail;

    .line 82
    .local v0, d2:Lcom/vlingo/client/core/contacts/ContactDetail;
    iget v2, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_MRUScore:F

    iget v3, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_boostScore:F

    add-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/ContactDetail;->getScore()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_18

    const/4 v1, 0x1

    goto :goto_5

    .line 83
    :cond_18
    iget v2, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_MRUScore:F

    iget v3, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_boostScore:F

    add-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/ContactDetail;->getScore()F

    move-result v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_5

    .line 84
    const/4 v1, 0x0

    goto :goto_5
.end method

.method public computeMRUScore(Lcom/vlingo/client/core/mru/MRU;Ljava/lang/String;I)V
    .registers 5
    .parameter "mru"
    .parameter "applicationName"
    .parameter "contactID"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_address:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Lcom/vlingo/client/core/mru/MRU;->getNormalizedCount(Ljava/lang/String;ILjava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_MRUScore:F

    .line 76
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_address:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->index:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMRUScore()F
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_MRUScore:F

    return v0
.end method

.method public getScore()F
    .registers 3

    .prologue
    .line 68
    iget v0, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_MRUScore:F

    iget v1, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_boostScore:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_Starred:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_type:I

    return v0
.end method

.method public hasIndex()Z
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->index:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPhoneNumber()Z
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_isPhoneNumber:Z

    return v0
.end method

.method public isStarred()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 46
    iget v1, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_Starred:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public sameDetail(Lcom/vlingo/client/core/contacts/ContactDetail;)Z
    .registers 8
    .parameter "other"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 89
    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/ContactDetail;->getType()I

    move-result v4

    iget v5, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_type:I

    if-eq v4, v5, :cond_b

    .line 112
    :cond_a
    :goto_a
    return v2

    .line 91
    :cond_b
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_address:Ljava/lang/String;

    .line 92
    .local v0, a1:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, a2:Ljava/lang/String;
    if-nez v0, :cond_17

    if-nez v1, :cond_17

    move v2, v3

    .line 95
    goto :goto_a

    .line 97
    :cond_17
    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    .line 100
    iget-boolean v2, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_isPhoneNumber:Z

    if-eqz v2, :cond_57

    .line 101
    invoke-static {v0}, Lcom/vlingo/client/core/util/StringUtils;->cleanPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v1}, Lcom/vlingo/client/core/util/StringUtils;->cleanPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_33
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_3f
    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    :cond_4b
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    :cond_57
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_a
.end method

.method public setIndex(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->index:Ljava/lang/Integer;

    .line 118
    return-void
.end method

.method public setScore(F)V
    .registers 2
    .parameter "score"

    .prologue
    .line 72
    iput p1, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_boostScore:F

    iput p1, p0, Lcom/vlingo/client/core/contacts/ContactDetail;->m_MRUScore:F

    .line 73
    return-void
.end method
