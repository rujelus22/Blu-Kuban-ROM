.class public Lcom/syncmldstmo/push/smlPushMessageAdapter;
.super Ljava/lang/Object;
.source "smlPushMessageAdapter.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static smlPushAdpNotiBodyMessage(Lcom/syncmldstmo/push/smlNotiTriggerBody;)Z
    .registers 10
    .parameter "bodyMsg"

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x20

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, bRet:Z
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v5

    invoke-static {v5}, Lcom/syncmldstmo/database/smlDb;->smlGetProfileInfo(I)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v4

    .line 167
    .local v4, profile:Lcom/syncmldstmo/database/smlDbProfileInfo;
    const/4 v3, 0x0

    .line 169
    .local v3, nUiSyncType:I
    iget v5, p0, Lcom/syncmldstmo/push/smlNotiTriggerBody;->number_Of_Syncs:I

    if-nez v5, :cond_18

    .line 171
    const-string v5, "Number of sync is 0, bRet = false"

    invoke-static {v7, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v1, v0

    .line 254
    .end local v0           #bRet:Z
    .local v1, bRet:I
    :goto_17
    return v1

    .line 175
    .end local v1           #bRet:I
    .restart local v0       #bRet:Z
    :cond_18
    const/4 v2, 0x0

    .local v2, i:I
    :goto_19
    iget v5, p0, Lcom/syncmldstmo/push/smlNotiTriggerBody;->number_Of_Syncs:I

    if-ge v2, v5, :cond_78

    .line 177
    iget-object v5, p0, Lcom/syncmldstmo/push/smlNotiTriggerBody;->syncInfo:[Lcom/syncmldstmo/push/smlNotiSyncInfo;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/syncmldstmo/push/smlNotiSyncInfo;->serverUri:Ljava/lang/String;

    iget-object v6, v4, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v6, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_49

    .line 179
    iget-object v5, v4, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput-boolean v8, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 180
    iget-object v5, v4, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v6, p0, Lcom/syncmldstmo/push/smlNotiTriggerBody;->syncInfo:[Lcom/syncmldstmo/push/smlNotiSyncInfo;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/syncmldstmo/push/smlNotiSyncInfo;->syncType:I

    invoke-static {v6}, Lcom/syncmldstmo/push/smlPushMessageAdapter;->smlPushAdpNotiMessageSyncType(I)I

    move-result v6

    iput v6, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    .line 181
    iget-object v5, v4, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    .line 182
    const-string v5, "Selected Contacts"

    invoke-static {v7, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 184
    const/4 v0, 0x1

    .line 189
    :cond_49
    iget-object v5, p0, Lcom/syncmldstmo/push/smlNotiTriggerBody;->syncInfo:[Lcom/syncmldstmo/push/smlNotiSyncInfo;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/syncmldstmo/push/smlNotiSyncInfo;->serverUri:Ljava/lang/String;

    iget-object v6, v4, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v6, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_75

    .line 191
    iget-object v5, v4, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput-boolean v8, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 192
    iget-object v5, v4, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v6, p0, Lcom/syncmldstmo/push/smlNotiTriggerBody;->syncInfo:[Lcom/syncmldstmo/push/smlNotiSyncInfo;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/syncmldstmo/push/smlNotiSyncInfo;->syncType:I

    invoke-static {v6}, Lcom/syncmldstmo/push/smlPushMessageAdapter;->smlPushAdpNotiMessageSyncType(I)I

    move-result v6

    iput v6, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    .line 193
    iget-object v5, v4, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v3, v5, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    .line 194
    const-string v5, "Selected Calendar"

    invoke-static {v7, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 196
    const/4 v0, 0x1

    .line 175
    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 227
    :cond_78
    packed-switch v3, :pswitch_data_9a

    .line 248
    const-string v5, "UISyncType is not exist"

    invoke-static {v7, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 249
    const/4 v0, 0x0

    .line 252
    :goto_81
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v5

    invoke-static {v4, v5}, Lcom/syncmldstmo/database/smlDb;->smlSetProfileInfo(Lcom/syncmldstmo/database/smlDbProfileInfo;I)V

    move v1, v0

    .line 254
    .restart local v1       #bRet:I
    goto :goto_17

    .line 230
    .end local v1           #bRet:I
    :pswitch_8a
    iput v8, v4, Lcom/syncmldstmo/database/smlDbProfileInfo;->UISyncType:I

    goto :goto_81

    .line 234
    :pswitch_8d
    const/4 v5, 0x2

    iput v5, v4, Lcom/syncmldstmo/database/smlDbProfileInfo;->UISyncType:I

    goto :goto_81

    .line 239
    :pswitch_91
    const/4 v5, 0x4

    iput v5, v4, Lcom/syncmldstmo/database/smlDbProfileInfo;->UISyncType:I

    goto :goto_81

    .line 244
    :pswitch_95
    const/4 v5, 0x3

    iput v5, v4, Lcom/syncmldstmo/database/smlDbProfileInfo;->UISyncType:I

    goto :goto_81

    .line 227
    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_8d
        :pswitch_95
        :pswitch_91
        :pswitch_95
        :pswitch_91
    .end packed-switch
.end method

.method public static smlPushAdpNotiHeaderMessage(Lcom/syncmldstmo/push/smlNotiTriggerHeader;)Z
    .registers 6
    .parameter "headerMsg"

    .prologue
    const/16 v4, 0x20

    const/4 v1, 0x0

    .line 127
    const/4 v0, 0x0

    .line 129
    .local v0, profile:Lcom/syncmldstmo/database/smlDbProfileInfo;
    if-eqz p0, :cond_49

    iget-object v2, p0, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->pServerID:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "headerMsg.pServerID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->pServerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->pServerID:Ljava/lang/String;

    const-string v3, "cp.t-mobile.net"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 141
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v1

    invoke-static {v1}, Lcom/syncmldstmo/database/smlDb;->smlGetProfileInfo(I)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v0

    .line 150
    iget v1, p0, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->sessionID:I

    if-lez v1, :cond_40

    .line 152
    iget v1, p0, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->sessionID:I

    iput v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->SessionId:I

    .line 154
    :cond_40
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/database/smlDb;->smlSetProfileInfo(Lcom/syncmldstmo/database/smlDbProfileInfo;I)V

    .line 160
    const/4 v1, 0x1

    :goto_48
    return v1

    .line 135
    :cond_49
    const-string v2, "headerMsg.pServerID is null"

    invoke-static {v4, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_48

    .line 145
    :cond_4f
    const-string v2, "Undefine server Id !!!!!!!!!!!!!"

    invoke-static {v4, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_48
.end method

.method public static smlPushAdpNotiMessageSyncType(I)I
    .registers 4
    .parameter "nSyncType"

    .prologue
    const/16 v2, 0x20

    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, SyncType:I
    packed-switch p0, :pswitch_data_30

    .line 118
    const-string v1, "SYNC_TYPE_UNDEFINE"

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 119
    const/4 v0, 0x0

    .line 122
    :goto_c
    return v0

    .line 93
    :pswitch_d
    const-string v1, "TWO-WAY BY SERVER"

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 94
    const/4 v0, 0x2

    .line 95
    goto :goto_c

    .line 98
    :pswitch_14
    const-string v1, "ONE-WAY FROM CLIENT BY SERVER"

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 99
    const/4 v0, 0x4

    .line 100
    goto :goto_c

    .line 103
    :pswitch_1b
    const-string v1, "REFRESH FROM CLIENT BY SERVER"

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 104
    const/4 v0, 0x6

    .line 105
    goto :goto_c

    .line 108
    :pswitch_22
    const-string v1, "ONE-WAY FROM SERVER BY SERVER"

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 109
    const/4 v0, 0x3

    .line 110
    goto :goto_c

    .line 113
    :pswitch_29
    const-string v1, "REFRESH FROM SERVER BY SERVER"

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 114
    const/4 v0, 0x5

    .line 115
    goto :goto_c

    .line 90
    :pswitch_data_30
    .packed-switch 0xce
        :pswitch_d
        :pswitch_14
        :pswitch_1b
        :pswitch_22
        :pswitch_29
    .end packed-switch
.end method

.method public static smlPushAdpNotiMessageUiMode(I)V
    .registers 5
    .parameter "nNotiUiEvent"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x20

    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, nMessage:I
    packed-switch p0, :pswitch_data_32

    .line 79
    const-string v1, "default"

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 80
    const/16 v0, 0x3c

    .line 83
    :goto_e
    invoke-static {v0, v3, v3}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessageUI(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 84
    return-void

    .line 59
    :pswitch_12
    const-string v1, "SYNCML_NOTI_NOT_SPECIFIED"

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 60
    const/16 v0, 0x3c

    .line 61
    goto :goto_e

    .line 64
    :pswitch_1a
    const-string v1, "SYNCML_NOTI_BACKGROUND"

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 65
    const/16 v0, 0x3d

    .line 66
    goto :goto_e

    .line 69
    :pswitch_22
    const-string v1, "SYNCML_NOTI_INFORMATIVE"

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 70
    const/16 v0, 0x3e

    .line 71
    goto :goto_e

    .line 74
    :pswitch_2a
    const-string v1, "SYNCML_NOTI_INTERACTIVE"

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 75
    const/16 v0, 0x3f

    .line 76
    goto :goto_e

    .line 56
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_12
        :pswitch_1a
        :pswitch_22
        :pswitch_2a
    .end packed-switch
.end method


# virtual methods
.method public smlPushAdpReceiveMsg([BILjava/lang/String;)Z
    .registers 12
    .parameter "pMsg"
    .parameter "nMsgLen"
    .parameter "date"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    const/4 v1, 0x0

    .line 19
    .local v1, ptWapPush:Lcom/syncmldstmo/push/smlWapPush;
    const/4 v0, 0x0

    .line 21
    .local v0, ptNoti:Lcom/syncmldstmo/push/smlPushMessage;
    invoke-static {p1, p2}, Lcom/syncmldstmo/push/smlPushMessageHandler;->smlpushHdlrParsingWSPHeader([BI)Lcom/syncmldstmo/push/smlWapPush;

    move-result-object v1

    .line 22
    if-nez v1, :cond_10

    .line 24
    const-string v3, "smlpushHdlrParsingWSPHeader Error"

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 49
    :goto_f
    return v2

    .line 28
    :cond_10
    iget-object v4, v1, Lcom/syncmldstmo/push/smlWapPush;->tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;

    iget v4, v4, Lcom/syncmldstmo/push/smlWapPushInfo;->nContentType:I

    sparse-switch v4, :sswitch_data_58

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not Support Content Type :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0x%x"

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/syncmldstmo/push/smlWapPush;->tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;

    iget v7, v7, Lcom/syncmldstmo/push/smlWapPushInfo;->nContentType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    :goto_3f
    :sswitch_3f
    move v2, v3

    .line 49
    goto :goto_f

    .line 31
    :sswitch_41
    new-instance v0, Lcom/syncmldstmo/push/smlPushMessage;

    .end local v0           #ptNoti:Lcom/syncmldstmo/push/smlPushMessage;
    invoke-direct {v0}, Lcom/syncmldstmo/push/smlPushMessage;-><init>()V

    .line 32
    .restart local v0       #ptNoti:Lcom/syncmldstmo/push/smlPushMessage;
    const/4 v2, 0x2

    iput v2, v0, Lcom/syncmldstmo/push/smlPushMessage;->push_type:I

    .line 33
    new-array v2, p2, [B

    iput-object v2, v0, Lcom/syncmldstmo/push/smlPushMessage;->pData:[B

    .line 34
    iput p2, v0, Lcom/syncmldstmo/push/smlPushMessage;->dataSize:I

    .line 35
    iput-object p1, v0, Lcom/syncmldstmo/push/smlPushMessage;->pData:[B

    .line 36
    const/16 v2, 0x50

    const/4 v4, 0x0

    invoke-static {v2, v0, v4}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3f

    .line 28
    :sswitch_data_58
    .sparse-switch
        0x42 -> :sswitch_3f
        0x44 -> :sswitch_3f
        0x4e -> :sswitch_41
    .end sparse-switch
.end method
