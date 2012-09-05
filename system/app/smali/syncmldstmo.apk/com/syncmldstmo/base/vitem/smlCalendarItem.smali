.class public Lcom/syncmldstmo/base/vitem/smlCalendarItem;
.super Ljava/lang/Object;
.source "smlCalendarItem.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    }
.end annotation


# instance fields
.field public m_AddCounts:I

.field public m_AddCurPos:I

.field public m_CalendarId2Array:Ljava/util/Hashtable;
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

.field public m_CalendarList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;",
            ">;"
        }
    .end annotation
.end field

.field public m_DeleteCounts:I

.field public m_DeleteCurPos:I

.field public m_DeletedCalendarList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_CalendarId2Array:Ljava/util/Hashtable;

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_CalendarList:Ljava/util/Vector;

    .line 21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_DeletedCalendarList:Ljava/util/Vector;

    .line 25
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_CalendarId2Array:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 26
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_CalendarList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 27
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_DeletedCalendarList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 29
    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCurPos:I

    .line 30
    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_ReplaceCurPos:I

    .line 31
    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_DeleteCurPos:I

    .line 32
    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCounts:I

    .line 33
    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_ReplaceCounts:I

    .line 34
    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_DeleteCounts:I

    .line 35
    return-void
.end method


# virtual methods
.method public getCurAddCalendarItemId()Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    .registers 4

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, CalendarUpdate:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    :goto_1
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCurPos:I

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_CalendarList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gt v1, v2, :cond_1c

    .line 57
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_CalendarList:Ljava/util/Vector;

    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCurPos:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #CalendarUpdate:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    check-cast v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    .line 58
    .restart local v0       #CalendarUpdate:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    if-eqz v0, :cond_23

    .line 60
    iget v1, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    .line 67
    :cond_1c
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCurPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCurPos:I

    .line 69
    return-object v0

    .line 64
    :cond_23
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCurPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCurPos:I

    goto :goto_1
.end method

.method public getCurDeleteCalendarItemId()I
    .registers 4

    .prologue
    .line 145
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_DeletedCalendarList:Ljava/util/Vector;

    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_DeleteCurPos:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 147
    .local v0, rawId:I
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_DeleteCurPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_DeleteCurPos:I

    .line 149
    return v0
.end method

.method public getCurReplaceCalendarItemId()Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    .registers 4

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 100
    .local v0, CalendarUpdate:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    :goto_1
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_ReplaceCurPos:I

    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_CalendarList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gt v1, v2, :cond_1c

    .line 102
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_CalendarList:Ljava/util/Vector;

    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_ReplaceCurPos:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #CalendarUpdate:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    check-cast v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    .line 103
    .restart local v0       #CalendarUpdate:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    if-eqz v0, :cond_23

    .line 105
    iget v1, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    .line 112
    :cond_1c
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_ReplaceCurPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_ReplaceCurPos:I

    .line 114
    return-object v0

    .line 109
    :cond_23
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_ReplaceCurPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_ReplaceCurPos:I

    goto :goto_1
.end method

.method public getPrevAddCalendarItemId()I
    .registers 5

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, CalendarUpdate:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    const/4 v1, 0x0

    .line 77
    .local v1, r_id:I
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCurPos:I

    if-lez v2, :cond_c

    .line 78
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCurPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCurPos:I

    .line 80
    :cond_c
    :goto_c
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCurPos:I

    if-ltz v2, :cond_23

    .line 82
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_CalendarList:Ljava/util/Vector;

    iget v3, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCurPos:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #CalendarUpdate:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    check-cast v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    .line 83
    .restart local v0       #CalendarUpdate:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    if-eqz v0, :cond_24

    .line 85
    iget v1, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->_id:I

    .line 86
    iget v2, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    .line 93
    :cond_23
    return v1

    .line 90
    :cond_24
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCurPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCurPos:I

    goto :goto_c
.end method

.method public getPrevDeleteCalendarItemId()I
    .registers 4

    .prologue
    .line 156
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_DeleteCurPos:I

    if-lez v1, :cond_a

    .line 157
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_DeleteCurPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_DeleteCurPos:I

    .line 159
    :cond_a
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_DeletedCalendarList:Ljava/util/Vector;

    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_DeleteCurPos:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 161
    .local v0, rawId:I
    return v0
.end method

.method public getPrevReplaceCalendarItemId()I
    .registers 5

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, CalendarUpdate:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    const/4 v1, 0x0

    .line 122
    .local v1, r_id:I
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_ReplaceCurPos:I

    if-lez v2, :cond_c

    .line 123
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_ReplaceCurPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_ReplaceCurPos:I

    .line 125
    :cond_c
    :goto_c
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_ReplaceCurPos:I

    if-ltz v2, :cond_23

    .line 127
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_CalendarList:Ljava/util/Vector;

    iget v3, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_ReplaceCurPos:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #CalendarUpdate:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    check-cast v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;

    .line 128
    .restart local v0       #CalendarUpdate:Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
    if-eqz v0, :cond_24

    .line 130
    iget v1, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->_id:I

    .line 131
    iget v2, v0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_24

    .line 138
    :cond_23
    return v1

    .line 135
    :cond_24
    iget v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_ReplaceCurPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_ReplaceCurPos:I

    goto :goto_c
.end method

.method public init()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 39
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_CalendarId2Array:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 40
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_CalendarList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 41
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_DeletedCalendarList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 43
    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCurPos:I

    .line 44
    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_ReplaceCurPos:I

    .line 45
    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_DeleteCurPos:I

    .line 46
    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_AddCounts:I

    .line 47
    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_ReplaceCounts:I

    .line 48
    iput v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem;->m_DeleteCounts:I

    .line 49
    return-void
.end method
