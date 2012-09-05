.class public Lcom/syncmldstmo/cust/smlUiEvent;
.super Ljava/lang/Object;
.source "smlUiEvent.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static smlCreateProcessMessage(Lcom/syncmldstmo/base/smlAgent;Ljava/lang/Object;I)Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;
    .registers 10
    .parameter "agent"
    .parameter "userinfo"
    .parameter "type"

    .prologue
    const/16 v6, 0x40

    const/4 v5, 0x1

    .line 184
    move-object v2, p1

    check-cast v2, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 186
    .local v2, profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    new-instance v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;

    invoke-direct {v1}, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;-><init>()V

    .line 188
    .local v1, pProcessMsgParam:Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;
    if-nez p2, :cond_184

    .line 190
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_37

    .line 192
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2STotalItem:I

    iput v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactTotal:I

    .line 193
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    iget-object v4, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    add-int/2addr v3, v4

    iget-object v4, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactCount:I

    .line 195
    iget v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactTotal:I

    iget v4, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactCount:I

    if-eq v3, v4, :cond_35

    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsServerFull:Z

    if-eqz v3, :cond_37

    .line 197
    :cond_35
    iput-boolean v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactComplete:Z

    .line 201
    :cond_37
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_61

    .line 203
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2STotalItem:I

    iput v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarTotal:I

    .line 204
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    iget-object v4, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    add-int/2addr v3, v4

    iget-object v4, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarCount:I

    .line 206
    iget v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarTotal:I

    iget v4, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarCount:I

    if-eq v3, v4, :cond_5f

    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsServerFull:Z

    if-eqz v3, :cond_61

    .line 208
    :cond_5f
    iput-boolean v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarComplete:Z

    .line 212
    :cond_61
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_8b

    .line 214
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2STotalItem:I

    iput v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->TaskTotal:I

    .line 215
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    iget-object v4, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    add-int/2addr v3, v4

    iget-object v4, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->TaskCount:I

    .line 217
    iget v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->TaskTotal:I

    iget v4, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->TaskCount:I

    if-eq v3, v4, :cond_89

    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsServerFull:Z

    if-eqz v3, :cond_8b

    .line 219
    :cond_89
    iput-boolean v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->TaskComplete:Z

    .line 223
    :cond_8b
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_b5

    .line 225
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2STotalItem:I

    iput v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->MemoTotal:I

    .line 226
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    iget-object v4, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    add-int/2addr v3, v4

    iget-object v4, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->MemoCount:I

    .line 228
    iget v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->MemoTotal:I

    iget v4, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->MemoCount:I

    if-eq v3, v4, :cond_b3

    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsServerFull:Z

    if-eqz v3, :cond_b5

    .line 230
    :cond_b3
    iput-boolean v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->MemoComplete:Z

    .line 234
    :cond_b5
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_df

    .line 236
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2STotalItem:I

    iput v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileTotal:I

    .line 237
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    iget-object v4, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    add-int/2addr v3, v4

    iget-object v4, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileCount:I

    .line 239
    iget v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileTotal:I

    iget v4, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileCount:I

    if-eq v3, v4, :cond_dd

    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsServerFull:Z

    if-eqz v3, :cond_df

    .line 241
    :cond_dd
    iput-boolean v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileComplete:Z

    .line 325
    :cond_df
    :goto_df
    iput-object p1, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->syncInfo:Ljava/lang/Object;

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Contact total "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactTotal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Contact count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (complete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactComplete:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calendar total "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarTotal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Calendar count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (complete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarComplete:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Profile total "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileTotal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Profile count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (complete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileComplete:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 333
    return-object v1

    .line 245
    :cond_184
    if-ne p2, v5, :cond_df

    .line 247
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->smlGetCurrentSyncDbStatus()[I

    move-result-object v0

    .line 249
    .local v0, pCurDbStatus:[I
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_1b4

    .line 251
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PTotalItem:I

    iput v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactTotal:I

    .line 252
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    iget-object v4, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    add-int/2addr v3, v4

    iget-object v4, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactCount:I

    .line 254
    iget v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactTotal:I

    iget v4, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactCount:I

    if-eq v3, v4, :cond_1b2

    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsDeviceFull:Z

    if-eqz v3, :cond_25e

    .line 256
    :cond_1b2
    iput-boolean v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactComplete:Z

    .line 264
    :cond_1b4
    :goto_1b4
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_1de

    .line 266
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PTotalItem:I

    iput v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarTotal:I

    .line 267
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    iget-object v4, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    add-int/2addr v3, v4

    iget-object v4, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarCount:I

    .line 269
    iget v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarTotal:I

    iget v4, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarCount:I

    if-eq v3, v4, :cond_1dc

    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsDeviceFull:Z

    if-eqz v3, :cond_26b

    .line 271
    :cond_1dc
    iput-boolean v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarComplete:Z

    .line 279
    :cond_1de
    :goto_1de
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_208

    .line 281
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PTotalItem:I

    iput v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->TaskTotal:I

    .line 282
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    iget-object v4, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    add-int/2addr v3, v4

    iget-object v4, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->TaskCount:I

    .line 284
    iget v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->TaskTotal:I

    iget v4, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->TaskCount:I

    if-eq v3, v4, :cond_206

    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsDeviceFull:Z

    if-eqz v3, :cond_277

    .line 286
    :cond_206
    iput-boolean v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->TaskComplete:Z

    .line 294
    :cond_208
    :goto_208
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_232

    .line 296
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PTotalItem:I

    iput v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->MemoTotal:I

    .line 297
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    iget-object v4, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    add-int/2addr v3, v4

    iget-object v4, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->MemoCount:I

    .line 299
    iget v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->MemoTotal:I

    iget v4, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->MemoCount:I

    if-eq v3, v4, :cond_230

    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsDeviceFull:Z

    if-eqz v3, :cond_283

    .line 301
    :cond_230
    iput-boolean v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->MemoComplete:Z

    .line 309
    :cond_232
    :goto_232
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_df

    .line 311
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PTotalItem:I

    iput v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileTotal:I

    .line 312
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    iget-object v4, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    add-int/2addr v3, v4

    iget-object v4, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileCount:I

    .line 314
    iget v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileTotal:I

    iget v4, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileCount:I

    if-eq v3, v4, :cond_25a

    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->IsDeviceFull:Z

    if-eqz v3, :cond_28f

    .line 316
    :cond_25a
    iput-boolean v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileComplete:Z

    goto/16 :goto_df

    .line 258
    :cond_25e
    iget v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactTotal:I

    if-nez v3, :cond_1b4

    const/4 v3, 0x0

    aget v3, v0, v3

    if-ne v3, v5, :cond_1b4

    .line 260
    iput-boolean v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactComplete:Z

    goto/16 :goto_1b4

    .line 273
    :cond_26b
    iget v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarTotal:I

    if-nez v3, :cond_1de

    aget v3, v0, v5

    if-ne v3, v5, :cond_1de

    .line 275
    iput-boolean v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarComplete:Z

    goto/16 :goto_1de

    .line 288
    :cond_277
    iget v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->TaskTotal:I

    if-nez v3, :cond_208

    const/4 v3, 0x2

    aget v3, v0, v3

    if-ne v3, v5, :cond_208

    .line 290
    iput-boolean v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->TaskComplete:Z

    goto :goto_208

    .line 303
    :cond_283
    iget v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->MemoCount:I

    if-nez v3, :cond_232

    const/4 v3, 0x3

    aget v3, v0, v3

    if-ne v3, v5, :cond_232

    .line 305
    iput-boolean v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->MemoComplete:Z

    goto :goto_232

    .line 318
    :cond_28f
    iget v3, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileCount:I

    if-nez v3, :cond_df

    const/4 v3, 0x4

    aget v3, v0, v3

    if-ne v3, v5, :cond_df

    .line 320
    iput-boolean v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileComplete:Z

    goto/16 :goto_df
.end method

.method public static smlGetEventString(I)Ljava/lang/String;
    .registers 2
    .parameter "type"

    .prologue
    .line 18
    packed-switch p0, :pswitch_data_a8

    .line 174
    :pswitch_3
    const-string v0, "####### !!!SMLMSG_NOT_DEFINED!!! #######"

    .line 178
    .local v0, pcMsgString:Ljava/lang/String;
    :goto_5
    return-object v0

    .line 21
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_6
    const-string v0, "####### SML_DS_EVENT_UI_BEGIN_EVENT #######"

    .line 22
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 24
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_9
    const-string v0, "SML_DS_EVENT_UI_SYNC_START"

    .line 25
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 27
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_c
    const-string v0, "SML_DS_EVENT_UI_SERVER_CONNECT"

    .line 28
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 30
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_f
    const-string v0, "SML_DS_EVENT_UI_SERVER_PROGRESS"

    .line 31
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 33
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_12
    const-string v0, "SML_DS_EVENT_UI_PHONE_PROGRESS"

    .line 34
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 36
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_15
    const-string v0, "SML_DS_EVENT_UI_CANNOT_START_FDN"

    .line 37
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 39
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_18
    const-string v0, "SML_DS_EVENT_UI_CANNOT_START_NET_INIT"

    .line 40
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 42
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_1b
    const-string v0, "SML_DS_EVENT_UI_CANNOT_START_TP_INIT"

    .line 43
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 45
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_1e
    const-string v0, "SML_DS_EVENT_UI_CANNOT_START_NO_SELECT_DB"

    .line 46
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 48
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_21
    const-string v0, "SML_DS_EVENT_UI_SYNC_RESTART"

    .line 49
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 51
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_24
    const-string v0, "SML_DS_EVENT_UI_CANNOT_SUPPORT_SIM"

    .line 52
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 54
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_27
    const-string v0, "SML_DS_EVENT_UI_CANNOT_START_CONTACT_INIT"

    .line 55
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 57
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_2a
    const-string v0, "SML_DS_EVENT_UI_CANNOT_START_NET_MAX"

    .line 58
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 60
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_2d
    const-string v0, "SML_DS_EVENT_UI_SERVER_CONNECT_FAIL"

    .line 61
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 63
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_30
    const-string v0, "SML_DS_EVENT_UI_SERVER_ATTACH_FAIL"

    .line 64
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 66
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_33
    const-string v0, "SML_DS_EVENT_UI_SERVER_DNS_FAIL"

    .line 67
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 69
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_36
    const-string v0, "SML_DS_EVENT_UI_SERVER_ACCOUNT_FAIL"

    .line 70
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 72
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_39
    const-string v0, "SML_DS_EVENT_UI_PROTO_MAX_CONNENTIONS"

    .line 73
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 75
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_3c
    const-string v0, "SML_DS_EVENT_UI_PROTO_FLIGHT_MODE"

    .line 76
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 78
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_3f
    const-string v0, "SML_DS_EVENT_UI_NETWORK_BUSY"

    .line 79
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 81
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_42
    const-string v0, "SML_DS_EVENT_UI_IN_PROGRESS"

    .line 82
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 84
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_45
    const-string v0, "SML_DS_EVENT_UI_SERVER_BUSY"

    .line 85
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 87
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_48
    const-string v0, "SML_DS_EVENT_UI_INVALID_CREDENTIALS"

    .line 88
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 90
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_4b
    const-string v0, "SML_DS_EVENT_UI_MISSING_CREDENTIALS"

    .line 91
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 93
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_4e
    const-string v0, "SML_DS_EVENT_UI_PAYMENT_REQIRED"

    .line 94
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 96
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_51
    const-string v0, "SML_DS_EVENT_UI_FORBIDDEN_SESSION"

    .line 97
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 99
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_54
    const-string v0, "SML_DS_EVENT_UI_NETWORK_NOT_AVAILABLE"

    .line 100
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 102
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_57
    const-string v0, "SML_DS_EVENT_UI_ALERT_DISPLAY"

    .line 103
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 105
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_5a
    const-string v0, "SML_DS_EVENT_UI_SERVER_NOT_SUPPORTED"

    .line 106
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 108
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_5d
    const-string v0, "SML_DS_EVENT_UI_NETWORK_ERR"

    .line 109
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 111
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_60
    const-string v0, "SML_DS_EVENT_UI_ABORT_BYUSER"

    .line 112
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 114
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_63
    const-string v0, "SML_DS_EVENT_UI_RECV_FAIL"

    .line 115
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 117
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_66
    const-string v0, "SML_DS_EVENT_UI_SEND_FAIL"

    .line 118
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 120
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_69
    const-string v0, "SML_DS_EVENT_UI_HTTP_INTERNAL_ERROR"

    .line 121
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 123
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_6c
    const-string v0, "SML_DS_EVENT_UI_WBXML_ERROR"

    .line 124
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 126
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_6f
    const-string v0, "SML_DS_EVENT_UI_USB_DEACTIVATE"

    .line 127
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 129
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_72
    const-string v0, "SML_DS_EVENT_UI_OBEX_ERROR"

    .line 130
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 132
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_75
    const-string v0, "SML_DS_EVENT_UI_UNKNOWN_ERROR"

    .line 133
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 135
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_78
    const-string v0, "SML_DS_EVENT_UI_SYNCHRONIZATION_ERROR"

    .line 136
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 138
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_7b
    const-string v0, "SML_DS_EVENT_UI_DEVICE_FULL_ERROR"

    .line 139
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 141
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_7e
    const-string v0, "SML_DS_EVENT_UI_ONEWAYSYNC_NOTSUPPORTED"

    .line 142
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 144
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_81
    const-string v0, "SML_DS_EVENT_UI_DATASTORE_ERROR"

    .line 145
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 147
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_84
    const-string v0, "SML_DS_EVENT_UI_SYNC_FINISH"

    .line 148
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto/16 :goto_5

    .line 150
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_88
    const-string v0, "SML_DS_EVENT_UI_CONTACT_FULL"

    .line 151
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto/16 :goto_5

    .line 153
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_8c
    const-string v0, "SML_DS_EVENT_UI_SYNC_START_INDICATOR"

    .line 154
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto/16 :goto_5

    .line 156
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_90
    const-string v0, "SML_DS_EVENT_UI_SYNC_FINISH_INDICATOR"

    .line 157
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto/16 :goto_5

    .line 159
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_94
    const-string v0, "SML_DS_EVENT_CONTACT_SYNC_STATUS_TRUE"

    .line 160
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto/16 :goto_5

    .line 162
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_98
    const-string v0, "SML_DS_EVENT_CALENDAR_SYNC_STATUS_TRUE"

    .line 163
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto/16 :goto_5

    .line 165
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_9c
    const-string v0, "SML_DS_EVENT_MEMO_SYNC_STATUS_TRUE"

    .line 166
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto/16 :goto_5

    .line 168
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_a0
    const-string v0, "SML_DS_EVENT_SYNC_STATUS_FALSE"

    .line 169
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto/16 :goto_5

    .line 171
    .end local v0           #pcMsgString:Ljava/lang/String;
    :pswitch_a4
    const-string v0, "####### SML_DS_EVENT_UI_END_EVENT #######"

    .line 172
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto/16 :goto_5

    .line 18
    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
        :pswitch_51
        :pswitch_54
        :pswitch_57
        :pswitch_5a
        :pswitch_3
        :pswitch_5d
        :pswitch_60
        :pswitch_63
        :pswitch_66
        :pswitch_69
        :pswitch_6c
        :pswitch_6f
        :pswitch_72
        :pswitch_75
        :pswitch_78
        :pswitch_7b
        :pswitch_7e
        :pswitch_81
        :pswitch_84
        :pswitch_88
        :pswitch_8c
        :pswitch_90
        :pswitch_94
        :pswitch_98
        :pswitch_9c
        :pswitch_3
        :pswitch_a0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_a4
    .end packed-switch
.end method

.method public static smlSetEvent(Ljava/lang/Object;I)V
    .registers 8
    .parameter "userdata"
    .parameter "event"

    .prologue
    .line 339
    move-object v2, p0

    check-cast v2, Lcom/syncmldstmo/base/smlWorkspace;

    .line 340
    .local v2, ws:Lcom/syncmldstmo/base/smlWorkspace;
    const/4 v0, 0x0

    .line 342
    .local v0, msgParam:Ljava/lang/Object;
    const/16 v3, 0x40

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smlGetEventString(event) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/syncmldstmo/cust/smlUiEvent;->smlGetEventString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", event : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 344
    packed-switch p1, :pswitch_data_52

    .line 357
    .end local v0           #msgParam:Ljava/lang/Object;
    :goto_2d
    const/16 v3, 0x24

    if-eq p1, v3, :cond_3b

    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v3

    if-nez v3, :cond_3b

    .line 359
    const/4 v3, 0x0

    invoke-static {p1, v0, v3}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessageUI(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 361
    :cond_3b
    return-void

    .line 347
    .restart local v0       #msgParam:Ljava/lang/Object;
    :pswitch_3c
    iget-object v3, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v4, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/syncmldstmo/cust/smlUiEvent;->smlCreateProcessMessage(Lcom/syncmldstmo/base/smlAgent;Ljava/lang/Object;I)Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;

    move-result-object v1

    .line 348
    .local v1, processMsgParam:Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;
    move-object v0, v1

    .line 349
    .local v0, msgParam:Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;
    goto :goto_2d

    .line 352
    .end local v1           #processMsgParam:Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;
    .local v0, msgParam:Ljava/lang/Object;
    :pswitch_47
    iget-object v3, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v4, v2, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/syncmldstmo/cust/smlUiEvent;->smlCreateProcessMessage(Lcom/syncmldstmo/base/smlAgent;Ljava/lang/Object;I)Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;

    move-result-object v1

    .line 353
    .restart local v1       #processMsgParam:Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;
    move-object v0, v1

    .local v0, msgParam:Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;
    goto :goto_2d

    .line 344
    :pswitch_data_52
    .packed-switch 0x4
        :pswitch_3c
        :pswitch_47
    .end packed-switch
.end method
