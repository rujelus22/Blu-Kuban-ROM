.class public Lcom/syncmldstmo/base/vitem/smlContactItem;
.super Ljava/lang/Object;
.source "smlContactItem.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    }
.end annotation


# instance fields
.field public m_AddCounts:I

.field public m_AddCurPos:I

.field public m_ContactId2Array:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public m_ContactList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;",
            ">;"
        }
    .end annotation
.end field

.field public m_DeleteContactList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public m_DeleteCounts:I

.field public m_DeleteCurPos:I

.field public m_ReplaceCounts:I

.field public m_ReplaceCurPos:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ContactId2Array:Ljava/util/Hashtable;

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ContactList:Ljava/util/Vector;

    .line 21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_DeleteContactList:Ljava/util/Vector;

    .line 25
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ContactId2Array:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 26
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ContactList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 27
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_DeleteContactList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 29
    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCurPos:I

    .line 30
    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ReplaceCurPos:I

    .line 31
    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_DeleteCurPos:I

    .line 32
    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCounts:I

    .line 33
    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ReplaceCounts:I

    .line 34
    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_DeleteCounts:I

    .line 35
    return-void
.end method


# virtual methods
.method public getCurAddContactItemId()I
    .registers 5

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, ContactsUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    const/4 v1, 0x0

    .line 56
    .local v1, r_id:I
    :goto_2
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCurPos:I

    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ContactList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-gt v2, v3, :cond_1f

    .line 58
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ContactList:Ljava/util/Vector;

    iget v3, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCurPos:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ContactsUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;

    .line 59
    .restart local v0       #ContactsUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    if-eqz v0, :cond_26

    .line 61
    iget v1, v0, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->_id:I

    .line 62
    iget v2, v0, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_26

    .line 68
    :cond_1f
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCurPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCurPos:I

    .line 70
    return v1

    .line 66
    :cond_26
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCurPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCurPos:I

    goto :goto_2
.end method

.method public getCurDeleteContactItemId()I
    .registers 4

    .prologue
    .line 144
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_DeleteContactList:Ljava/util/Vector;

    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_DeleteCurPos:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 146
    .local v0, rawId:I
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_DeleteCurPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_DeleteCurPos:I

    .line 148
    return v0
.end method

.method public getCurReplaceContactItemId()I
    .registers 5

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, ContactsUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    const/4 v1, 0x0

    .line 101
    .local v1, r_id:I
    :goto_2
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ReplaceCurPos:I

    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ContactList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-gt v2, v3, :cond_1f

    .line 103
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ContactList:Ljava/util/Vector;

    iget v3, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ReplaceCurPos:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ContactsUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;

    .line 104
    .restart local v0       #ContactsUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    if-eqz v0, :cond_26

    .line 106
    iget v1, v0, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->_id:I

    .line 107
    iget v2, v0, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_26

    .line 112
    :cond_1f
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ReplaceCurPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ReplaceCurPos:I

    .line 114
    return v1

    .line 110
    :cond_26
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ReplaceCurPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ReplaceCurPos:I

    goto :goto_2
.end method

.method public getPrevAddContactItemId()I
    .registers 5

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, ContactsUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    const/4 v1, 0x0

    .line 78
    .local v1, r_id:I
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCurPos:I

    if-lez v2, :cond_c

    .line 79
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCurPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCurPos:I

    .line 81
    :cond_c
    :goto_c
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCurPos:I

    if-ltz v2, :cond_23

    .line 83
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ContactList:Ljava/util/Vector;

    iget v3, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCurPos:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ContactsUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;

    .line 84
    .restart local v0       #ContactsUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    if-eqz v0, :cond_24

    .line 86
    iget v1, v0, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->_id:I

    .line 87
    iget v2, v0, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    .line 93
    :cond_23
    return v1

    .line 90
    :cond_24
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCurPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCurPos:I

    goto :goto_c
.end method

.method public getPrevDeleteContactItemId()I
    .registers 4

    .prologue
    .line 155
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_DeleteCurPos:I

    if-lez v1, :cond_a

    .line 156
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_DeleteCurPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_DeleteCurPos:I

    .line 158
    :cond_a
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_DeleteContactList:Ljava/util/Vector;

    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_DeleteCurPos:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 160
    .local v0, rawId:I
    return v0
.end method

.method public getPrevReplaceContactItemId()I
    .registers 5

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, ContactsUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    const/4 v1, 0x0

    .line 122
    .local v1, r_id:I
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ReplaceCurPos:I

    if-lez v2, :cond_c

    .line 123
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ReplaceCurPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ReplaceCurPos:I

    .line 125
    :cond_c
    :goto_c
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ReplaceCurPos:I

    if-ltz v2, :cond_23

    .line 127
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ContactList:Ljava/util/Vector;

    iget v3, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ReplaceCurPos:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ContactsUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;

    .line 128
    .restart local v0       #ContactsUpdate:Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
    if-eqz v0, :cond_24

    .line 130
    iget v1, v0, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->_id:I

    .line 131
    iget v2, v0, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_24

    .line 137
    :cond_23
    return v1

    .line 134
    :cond_24
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ReplaceCurPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ReplaceCurPos:I

    goto :goto_c
.end method

.method public init()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 39
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ContactId2Array:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 40
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ContactList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 41
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_DeleteContactList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 43
    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCurPos:I

    .line 44
    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ReplaceCurPos:I

    .line 45
    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_DeleteCurPos:I

    .line 46
    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_AddCounts:I

    .line 47
    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_ReplaceCounts:I

    .line 48
    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlContactItem;->m_DeleteCounts:I

    .line 49
    return-void
.end method
