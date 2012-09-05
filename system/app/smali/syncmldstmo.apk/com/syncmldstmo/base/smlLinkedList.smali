.class public Lcom/syncmldstmo/base/smlLinkedList;
.super Ljava/lang/Object;
.source "smlLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syncmldstmo/base/smlLinkedList$smlNode;
    }
.end annotation


# instance fields
.field public m_count:J

.field public m_cur:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

.field public m_top:Lcom/syncmldstmo/base/smlLinkedList$smlNode;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    .line 20
    .local v0, node:Lcom/syncmldstmo/base/smlLinkedList$smlNode;
    invoke-static {}, Lcom/syncmldstmo/base/smlLinkedList;->smlCreateNodeFromMemory()Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    move-result-object v0

    .line 21
    if-nez v0, :cond_10

    .line 23
    const-string v1, "smlCreateNodeFromMemory Fail !!!"

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 33
    :goto_f
    return-void

    .line 27
    :cond_10
    iput-object v0, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->next:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 28
    iput-object v0, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->previous:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 30
    iput-object v0, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_top:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 31
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_count:J

    .line 32
    iput-object v0, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_cur:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    goto :goto_f
.end method

.method public static smlBindObjectToNode(Lcom/syncmldstmo/base/smlLinkedList$smlNode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "node"
    .parameter "obj"

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, ret:Ljava/lang/Object;
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    .line 159
    iget-object v0, p0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->obj:Ljava/lang/Object;

    .line 160
    iput-object p1, p0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->obj:Ljava/lang/Object;

    .line 163
    .end local v0           #ret:Ljava/lang/Object;
    :cond_9
    return-object v0
.end method

.method public static smlCreateNodeFromMemory()Lcom/syncmldstmo/base/smlLinkedList$smlNode;
    .registers 1

    .prologue
    .line 50
    new-instance v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    invoke-direct {v0}, Lcom/syncmldstmo/base/smlLinkedList$smlNode;-><init>()V

    return-object v0
.end method

.method public static smlFreeNodeFromMemory(Lcom/syncmldstmo/base/smlLinkedList$smlNode;)Ljava/lang/Object;
    .registers 2
    .parameter "node"

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, ret:Ljava/lang/Object;
    if-eqz p0, :cond_6

    .line 172
    iget-object v0, p0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->obj:Ljava/lang/Object;

    .line 173
    const/4 p0, 0x0

    .line 176
    .end local v0           #ret:Ljava/lang/Object;
    :cond_6
    return-object v0
.end method


# virtual methods
.method public smlAddObjectAtLast(Ljava/lang/Object;)V
    .registers 8
    .parameter "obj"

    .prologue
    .line 70
    iget-object v1, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_top:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 71
    .local v1, top:Lcom/syncmldstmo/base/smlLinkedList$smlNode;
    new-instance v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    invoke-direct {v0}, Lcom/syncmldstmo/base/smlLinkedList$smlNode;-><init>()V

    .line 73
    .local v0, node:Lcom/syncmldstmo/base/smlLinkedList$smlNode;
    invoke-static {v0, p1}, Lcom/syncmldstmo/base/smlLinkedList;->smlBindObjectToNode(Lcom/syncmldstmo/base/smlLinkedList$smlNode;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    if-eqz v0, :cond_1f

    .line 77
    iput-object v1, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->next:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 78
    iget-object v2, v1, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->previous:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    iput-object v2, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->previous:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 79
    iget-object v2, v1, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->previous:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    iput-object v0, v2, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->next:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 80
    iput-object v0, v1, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->previous:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 82
    iget-wide v2, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_count:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_count:J

    .line 84
    :cond_1f
    return-void
.end method

.method public smlClearLinkedList()V
    .registers 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_top:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    iget-object v1, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_top:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    iput-object v1, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->next:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 43
    iget-object v0, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_top:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    iget-object v1, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_top:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    iput-object v1, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->previous:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 44
    iget-object v0, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_top:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    iput-object v0, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_cur:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_count:J

    .line 46
    return-void
.end method

.method public smlGetNextObject()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_cur:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 198
    .local v0, cur:Lcom/syncmldstmo/base/smlLinkedList$smlNode;
    iget-object v1, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_top:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    if-ne v0, v1, :cond_8

    .line 199
    const/4 v1, 0x0

    .line 205
    :goto_7
    return-object v1

    .line 201
    :cond_8
    iget-object v0, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->next:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 203
    iput-object v0, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_cur:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 205
    iget-object v1, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->previous:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->obj:Ljava/lang/Object;

    goto :goto_7
.end method

.method public smlRemoveObject(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 10
    .parameter "obj"
    .parameter "size"

    .prologue
    .line 102
    iget-object v2, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_top:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 103
    .local v2, top:Lcom/syncmldstmo/base/smlLinkedList$smlNode;
    iget-object v0, v2, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->next:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 104
    .local v0, cur:Lcom/syncmldstmo/base/smlLinkedList$smlNode;
    const/4 v1, 0x0

    .line 106
    .local v1, ret:Ljava/lang/Object;
    :goto_5
    if-ne v0, v2, :cond_8

    .line 124
    .end local v1           #ret:Ljava/lang/Object;
    :goto_7
    return-object v1

    .line 108
    .restart local v1       #ret:Ljava/lang/Object;
    :cond_8
    iget-object v3, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->obj:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 110
    iget-object v3, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->previous:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    iget-object v4, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->next:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    iput-object v4, v3, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->next:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 111
    iget-object v3, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->next:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    iget-object v4, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->previous:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    iput-object v4, v3, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->previous:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 113
    invoke-static {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlFreeNodeFromMemory(Lcom/syncmldstmo/base/smlLinkedList$smlNode;)Ljava/lang/Object;

    move-result-object v1

    .line 114
    iget-wide v3, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_count:J

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_count:J

    goto :goto_7

    .line 120
    :cond_28
    iget-object v0, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->next:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    goto :goto_5
.end method

.method public smlRemoveObjectAt(J)Ljava/lang/Object;
    .registers 14
    .parameter "index"

    .prologue
    const-wide/16 v9, 0x1

    const-wide/16 v7, 0x0

    .line 129
    iget-object v4, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_top:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 130
    .local v4, top:Lcom/syncmldstmo/base/smlLinkedList$smlNode;
    move-object v0, v4

    .line 133
    .local v0, cur:Lcom/syncmldstmo/base/smlLinkedList$smlNode;
    iget-wide v5, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_count:J

    cmp-long v5, p1, v5

    if-gez v5, :cond_11

    cmp-long v5, p1, v7

    if-gez v5, :cond_32

    .line 134
    :cond_11
    const/4 v3, 0x0

    .line 145
    :goto_12
    return-object v3

    .line 137
    :cond_13
    iget-object v0, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->next:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    move-wide v1, p1

    .line 136
    .end local p1
    .local v1, index:J
    :goto_16
    sub-long p1, v1, v9

    .end local v1           #index:J
    .restart local p1
    cmp-long v5, v1, v7

    if-gez v5, :cond_13

    .line 139
    iget-object v5, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->previous:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    iget-object v6, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->next:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    iput-object v6, v5, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->next:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 140
    iget-object v5, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->next:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    iget-object v6, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->previous:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    iput-object v6, v5, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->previous:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 142
    invoke-static {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlFreeNodeFromMemory(Lcom/syncmldstmo/base/smlLinkedList$smlNode;)Ljava/lang/Object;

    move-result-object v3

    .line 143
    .local v3, obj:Ljava/lang/Object;
    iget-wide v5, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_count:J

    sub-long/2addr v5, v9

    iput-wide v5, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_count:J

    goto :goto_12

    .end local v3           #obj:Ljava/lang/Object;
    :cond_32
    move-wide v1, p1

    .end local p1
    .restart local v1       #index:J
    goto :goto_16
.end method

.method public smlRemoveObjectAtFirst()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 150
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/syncmldstmo/base/smlLinkedList;->smlRemoveObjectAt(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public smlRemovePreviousObject()Ljava/lang/Object;
    .registers 7

    .prologue
    .line 226
    iget-object v0, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_cur:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 229
    .local v0, cur:Lcom/syncmldstmo/base/smlLinkedList$smlNode;
    iget-object v2, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->previous:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    iget-object v3, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_top:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    if-eq v2, v3, :cond_22

    .line 231
    iget-object v0, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->previous:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 233
    iget-object v2, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->previous:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    iget-object v3, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->next:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    iput-object v3, v2, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->next:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 234
    iget-object v2, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->next:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    iget-object v3, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->previous:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    iput-object v3, v2, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->previous:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 236
    iget-wide v2, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_count:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_count:J

    .line 238
    invoke-static {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlFreeNodeFromMemory(Lcom/syncmldstmo/base/smlLinkedList$smlNode;)Ljava/lang/Object;

    move-result-object v1

    .line 243
    :goto_21
    return-object v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method

.method public smlSetCurrentObject(I)V
    .registers 8
    .parameter "index"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_top:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 183
    .local v0, cur:Lcom/syncmldstmo/base/smlLinkedList$smlNode;
    if-ltz p1, :cond_10

    int-to-long v2, p1

    iget-wide v4, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_count:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_10

    move v1, p1

    .line 185
    .end local p1
    .local v1, index:I
    :goto_c
    add-int/lit8 p1, v1, -0x1

    .end local v1           #index:I
    .restart local p1
    if-gez v1, :cond_13

    .line 191
    :cond_10
    iput-object v0, p0, Lcom/syncmldstmo/base/smlLinkedList;->m_cur:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    .line 192
    return-void

    .line 187
    :cond_13
    iget-object v0, v0, Lcom/syncmldstmo/base/smlLinkedList$smlNode;->next:Lcom/syncmldstmo/base/smlLinkedList$smlNode;

    move v1, p1

    .end local p1
    .restart local v1       #index:I
    goto :goto_c
.end method
