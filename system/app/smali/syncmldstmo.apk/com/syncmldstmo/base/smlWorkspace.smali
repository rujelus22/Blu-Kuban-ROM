.class public Lcom/syncmldstmo/base/smlWorkspace;
.super Ljava/lang/Object;
.source "smlWorkspace.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;,
        Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;
    }
.end annotation


# instance fields
.field ReceiveLargeObject:Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;

.field SendLargeObject:Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;

.field public _e:Lcom/syncmldstmo/base/smlEncoder;

.field public _p:Lcom/syncmldstmo/base/smlParser;

.field public hostname:Ljava/lang/String;

.field public m_AlertList:Lcom/syncmldstmo/base/smlLinkedList;

.field public m_DevDatastoreCheck:I

.field public m_IsNeedDeleteAll:Z

.field public m_ItemAddList:Lcom/syncmldstmo/base/smlLinkedList;

.field public m_ItemDeleteList:Lcom/syncmldstmo/base/smlLinkedList;

.field public m_ItemReplaceList:Lcom/syncmldstmo/base/smlLinkedList;

.field public m_SyncFinish:I

.field public m_actionList:Lcom/syncmldstmo/base/smlLinkedList;

.field public m_agent:Lcom/syncmldstmo/base/smlAgent;

.field public m_appId:I

.field public m_authState:I

.field public m_bHeaderNoResp:Z

.field public m_bufRecv:Lcom/syncmldstmo/base/smlByteBuffer;

.field public m_bufSend:Lcom/syncmldstmo/base/smlByteBuffer;

.field public m_cmdAlertState:I

.field public m_cmdID:I

.field public m_cmdSyncState:I

.field public m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

.field public m_credType:I

.field public m_dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

.field public m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

.field public m_hasMultiMessage:Z

.field public m_inAtomicCmd:Z

.field public m_inSyncCmd:Z

.field public m_maxMsgSize:J

.field public m_maxObjSize:J

.field public m_msgID:J

.field public m_nDeleteAllStatus:I

.field public m_nDeleteAllTimeoutCounter:I

.field public m_nIsSyncProfileIndex:I

.field public m_password:Ljava/lang/String;

.field public m_port:I

.field public m_recentAction:Lcom/syncmldstmo/base/sml$Action_t;

.field public m_results:Lcom/syncmldstmo/base/sml$SML_RESULTS;

.field public m_serverMaxMsgSize:J

.field public m_serverMaxObjSize:J

.field public m_serverType:I

.field public m_state:I

.field public m_statusList:Lcom/syncmldstmo/base/smlLinkedList;

.field public m_syncHeader:Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;

.field public m_userID:Ljava/lang/String;

.field public m_userInfo:Ljava/lang/Object;

.field public msgRef:Ljava/lang/String;

.field public nextnonce:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public protocol:Ljava/lang/String;

.field public sessionID:Ljava/lang/String;

.field public sourceURI:Ljava/lang/String;

.field public targetURI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/syncmldstmo/base/smlAgent;)V
    .registers 9
    .parameter "dsagent"

    .prologue
    const-wide/32 v5, 0x100000

    const-wide/16 v3, 0x1000

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_nDeleteAllStatus:I

    .line 115
    iput-object p1, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_userID:Ljava/lang/String;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_password:Ljava/lang/String;

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->nextnonce:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->protocol:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->hostname:Ljava/lang/String;

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->path:Ljava/lang/String;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->sourceURI:Ljava/lang/String;

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->targetURI:Ljava/lang/String;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->sessionID:Ljava/lang/String;

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->msgRef:Ljava/lang/String;

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_authState:I

    .line 129
    iput v2, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_cmdSyncState:I

    .line 130
    iput v2, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_DevDatastoreCheck:I

    .line 131
    iput v2, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_cmdAlertState:I

    .line 133
    new-instance v0, Lcom/syncmldstmo/base/smlLinkedList;

    invoke-direct {v0}, Lcom/syncmldstmo/base/smlLinkedList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    .line 134
    new-instance v0, Lcom/syncmldstmo/base/smlLinkedList;

    invoke-direct {v0}, Lcom/syncmldstmo/base/smlLinkedList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_actionList:Lcom/syncmldstmo/base/smlLinkedList;

    .line 135
    new-instance v0, Lcom/syncmldstmo/base/smlLinkedList;

    invoke-direct {v0}, Lcom/syncmldstmo/base/smlLinkedList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_statusList:Lcom/syncmldstmo/base/smlLinkedList;

    .line 137
    new-instance v0, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;

    invoke-direct {v0}, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->ReceiveLargeObject:Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Receive_t;

    .line 138
    new-instance v0, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;

    invoke-direct {v0}, Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->SendLargeObject:Lcom/syncmldstmo/base/smlWorkspace$LargeObject_Send_t;

    .line 140
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportLargeObject()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 142
    new-instance v0, Lcom/syncmldstmo/base/smlLinkedList;

    invoke-direct {v0}, Lcom/syncmldstmo/base/smlLinkedList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_ItemAddList:Lcom/syncmldstmo/base/smlLinkedList;

    .line 143
    new-instance v0, Lcom/syncmldstmo/base/smlLinkedList;

    invoke-direct {v0}, Lcom/syncmldstmo/base/smlLinkedList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_ItemReplaceList:Lcom/syncmldstmo/base/smlLinkedList;

    .line 144
    new-instance v0, Lcom/syncmldstmo/base/smlLinkedList;

    invoke-direct {v0}, Lcom/syncmldstmo/base/smlLinkedList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_ItemDeleteList:Lcom/syncmldstmo/base/smlLinkedList;

    .line 145
    new-instance v0, Lcom/syncmldstmo/base/smlLinkedList;

    invoke-direct {v0}, Lcom/syncmldstmo/base/smlLinkedList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_AlertList:Lcom/syncmldstmo/base/smlLinkedList;

    .line 148
    :cond_84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_results:Lcom/syncmldstmo/base/sml$SML_RESULTS;

    .line 149
    iput-boolean v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_inAtomicCmd:Z

    .line 150
    iput-boolean v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_inSyncCmd:Z

    .line 152
    iput v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_nIsSyncProfileIndex:I

    .line 154
    new-instance v0, Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-direct {v0}, Lcom/syncmldstmo/base/smlByteBuffer;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_bufRecv:Lcom/syncmldstmo/base/smlByteBuffer;

    .line 155
    new-instance v0, Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-direct {v0}, Lcom/syncmldstmo/base/smlByteBuffer;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_bufSend:Lcom/syncmldstmo/base/smlByteBuffer;

    .line 156
    iput-wide v3, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_maxMsgSize:J

    .line 158
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportLargeObject()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 160
    iput-wide v5, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_maxObjSize:J

    .line 161
    iput-wide v3, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_serverMaxMsgSize:J

    .line 162
    iput-wide v5, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_serverMaxObjSize:J

    .line 165
    :cond_a9
    new-instance v0, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    invoke-direct {v0}, Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_connectInfo:Lcom/syncmldstmo/base/smlDef$SmltpConnectInfo_t;

    .line 166
    return-void
.end method

.method public static wsCreateAction(Lcom/syncmldstmo/base/smlWorkspace;Ljava/lang/String;Z)Lcom/syncmldstmo/base/sml$Action_t;
    .registers 7
    .parameter "ws"
    .parameter "cmd"
    .parameter "createItemList"

    .prologue
    const/4 v3, 0x0

    .line 240
    new-instance v0, Lcom/syncmldstmo/base/sml$Action_t;

    invoke-direct {v0}, Lcom/syncmldstmo/base/sml$Action_t;-><init>()V

    .line 242
    .local v0, action:Lcom/syncmldstmo/base/sml$Action_t;
    iget-wide v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_msgID:J

    iput-wide v1, v0, Lcom/syncmldstmo/base/sml$Action_t;->msgID:J

    .line 243
    iget v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_cmdID:I

    add-int/lit8 v1, v1, -0x1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/syncmldstmo/base/sml$Action_t;->cmdID:J

    .line 244
    iput-object p1, v0, Lcom/syncmldstmo/base/sml$Action_t;->cmdName:Ljava/lang/String;

    .line 245
    iput-object v3, v0, Lcom/syncmldstmo/base/sml$Action_t;->dbInfo:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    .line 247
    if-eqz p2, :cond_26

    .line 249
    new-instance v1, Lcom/syncmldstmo/base/smlLinkedList;

    invoke-direct {v1}, Lcom/syncmldstmo/base/smlLinkedList;-><init>()V

    iput-object v1, v0, Lcom/syncmldstmo/base/sml$Action_t;->sourceList:Lcom/syncmldstmo/base/smlLinkedList;

    .line 256
    :goto_1e
    iget-object v1, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_actionList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v1, v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlAddObjectAtLast(Ljava/lang/Object;)V

    .line 257
    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_recentAction:Lcom/syncmldstmo/base/sml$Action_t;

    .line 259
    return-object v0

    .line 253
    :cond_26
    iput-object v3, v0, Lcom/syncmldstmo/base/sml$Action_t;->sourceList:Lcom/syncmldstmo/base/smlLinkedList;

    goto :goto_1e
.end method

.method public static wsCreateMap(Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "dbInfo"
    .parameter "luid"
    .parameter "guid"

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, map:Lcom/syncmldstmo/base/sml$MapItem_t;
    invoke-static {p1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {p2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 230
    new-instance v0, Lcom/syncmldstmo/base/sml$MapItem_t;

    .end local v0           #map:Lcom/syncmldstmo/base/sml$MapItem_t;
    invoke-direct {v0}, Lcom/syncmldstmo/base/sml$MapItem_t;-><init>()V

    .line 231
    .restart local v0       #map:Lcom/syncmldstmo/base/sml$MapItem_t;
    iput-object p1, v0, Lcom/syncmldstmo/base/sml$MapItem_t;->luid:Ljava/lang/String;

    .line 232
    iput-object p2, v0, Lcom/syncmldstmo/base/sml$MapItem_t;->guid:Ljava/lang/String;

    .line 235
    :cond_16
    iget-object v1, p0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->mapList:Lcom/syncmldstmo/base/smlLinkedList;

    invoke-virtual {v1, v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlAddObjectAtLast(Ljava/lang/Object;)V

    .line 236
    return-void
.end method

.method public static wsRemoveAction(Lcom/syncmldstmo/base/smlWorkspace;Lcom/syncmldstmo/base/sml$Action_t;)V
    .registers 5
    .parameter "ws"
    .parameter "action"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_actionList:Lcom/syncmldstmo/base/smlLinkedList;

    .line 207
    .local v0, actionList:Lcom/syncmldstmo/base/smlLinkedList;
    if-nez p1, :cond_5

    .line 222
    :cond_4
    :goto_4
    return-void

    .line 210
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/syncmldstmo/base/smlLinkedList;->smlSetCurrentObject(I)V

    .line 211
    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syncmldstmo/base/sml$Action_t;

    .line 212
    .local v1, obj:Lcom/syncmldstmo/base/sml$Action_t;
    :goto_f
    if-eqz v1, :cond_4

    .line 214
    if-ne v1, p1, :cond_1b

    .line 216
    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlRemovePreviousObject()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #obj:Lcom/syncmldstmo/base/sml$Action_t;
    check-cast v1, Lcom/syncmldstmo/base/sml$Action_t;

    .line 217
    .restart local v1       #obj:Lcom/syncmldstmo/base/sml$Action_t;
    const/4 v1, 0x0

    .line 218
    goto :goto_4

    .line 220
    :cond_1b
    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #obj:Lcom/syncmldstmo/base/sml$Action_t;
    check-cast v1, Lcom/syncmldstmo/base/sml$Action_t;

    .restart local v1       #obj:Lcom/syncmldstmo/base/sml$Action_t;
    goto :goto_f
.end method


# virtual methods
.method public smlDSFreeWorkSpace()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_statusList:Lcom/syncmldstmo/base/smlLinkedList;

    .line 171
    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_actionList:Lcom/syncmldstmo/base/smlLinkedList;

    .line 172
    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_dbInfoList:Lcom/syncmldstmo/base/smlLinkedList;

    .line 173
    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_results:Lcom/syncmldstmo/base/sml$SML_RESULTS;

    .line 174
    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_syncHeader:Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;

    .line 175
    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_bufRecv:Lcom/syncmldstmo/base/smlByteBuffer;

    .line 176
    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_bufSend:Lcom/syncmldstmo/base/smlByteBuffer;

    .line 177
    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_ItemAddList:Lcom/syncmldstmo/base/smlLinkedList;

    .line 178
    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_ItemReplaceList:Lcom/syncmldstmo/base/smlLinkedList;

    .line 179
    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_ItemDeleteList:Lcom/syncmldstmo/base/smlLinkedList;

    .line 180
    iput-object v0, p0, Lcom/syncmldstmo/base/smlWorkspace;->m_AlertList:Lcom/syncmldstmo/base/smlLinkedList;

    .line 181
    return-void
.end method

.method public wsFindAction(Lcom/syncmldstmo/base/smlWorkspace;IILjava/lang/String;)Lcom/syncmldstmo/base/sml$Action_t;
    .registers 11
    .parameter "ws"
    .parameter "msgRef"
    .parameter "cmdRef"
    .parameter "cmd"

    .prologue
    .line 185
    iget-object v0, p1, Lcom/syncmldstmo/base/smlWorkspace;->m_actionList:Lcom/syncmldstmo/base/smlLinkedList;

    .line 188
    .local v0, list:Lcom/syncmldstmo/base/smlLinkedList;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/syncmldstmo/base/smlLinkedList;->smlSetCurrentObject(I)V

    .line 189
    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syncmldstmo/base/sml$Action_t;

    .line 190
    .local v1, obj:Lcom/syncmldstmo/base/sml$Action_t;
    :goto_c
    if-nez v1, :cond_10

    .line 199
    const/4 v1, 0x0

    .end local v1           #obj:Lcom/syncmldstmo/base/sml$Action_t;
    :cond_f
    return-object v1

    .line 192
    .restart local v1       #obj:Lcom/syncmldstmo/base/sml$Action_t;
    :cond_10
    iget-wide v2, v1, Lcom/syncmldstmo/base/sml$Action_t;->msgID:J

    int-to-long v4, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1e

    iget-wide v2, v1, Lcom/syncmldstmo/base/sml$Action_t;->cmdID:J

    int-to-long v4, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    .line 196
    :cond_1e
    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #obj:Lcom/syncmldstmo/base/sml$Action_t;
    check-cast v1, Lcom/syncmldstmo/base/sml$Action_t;

    .restart local v1       #obj:Lcom/syncmldstmo/base/sml$Action_t;
    goto :goto_c
.end method
