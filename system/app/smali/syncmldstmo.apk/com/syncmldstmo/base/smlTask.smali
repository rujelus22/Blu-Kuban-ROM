.class public Lcom/syncmldstmo/base/smlTask;
.super Ljava/lang/Object;
.source "smlTask.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;
.implements Ljava/lang/Runnable;


# static fields
.field public static g_IsSyncTaskInit:Z

.field public static m_TaskHandler:Landroid/os/Handler;


# instance fields
.field public m_agent:Lcom/syncmldstmo/base/smlAgent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syncmldstmo/base/smlTask;->g_IsSyncTaskInit:Z

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    .line 32
    sget-boolean v0, Lcom/syncmldstmo/base/smlTask;->g_IsSyncTaskInit:Z

    if-nez v0, :cond_12

    .line 34
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 36
    :cond_12
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 40
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 42
    new-instance v0, Lcom/syncmldstmo/base/smlTask$1;

    invoke-direct {v0, p0}, Lcom/syncmldstmo/base/smlTask$1;-><init>(Lcom/syncmldstmo/base/smlTask;)V

    sput-object v0, Lcom/syncmldstmo/base/smlTask;->m_TaskHandler:Landroid/os/Handler;

    .line 49
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 50
    return-void
.end method

.method public smlDsInitInfo()V
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlAgent;->smlInitRemoteSyncDb()V

    .line 55
    return-void
.end method

.method public smlTaskHandler(Landroid/os/Message;)Z
    .registers 11
    .parameter

    .prologue
    const/16 v8, 0x26

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v7, 0x40

    const/4 v2, 0x0

    .line 104
    .line 108
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_d

    move v3, v4

    .line 724
    :cond_c
    :goto_c
    :sswitch_c
    return v3

    .line 111
    :cond_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;

    .line 113
    iget-object v1, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    if-eqz v1, :cond_58

    .line 114
    iget-object v1, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    .line 118
    :goto_19
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Message Type : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->type:I

    invoke-static {v6}, Lcom/syncmldstmo/base/smlMsg;->smlGetMsgString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 120
    iget v5, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->type:I

    sparse-switch v5, :sswitch_data_4f2

    goto :goto_c

    .line 127
    :sswitch_49
    const-string v0, "SMLMSG_CONTACT_INITIALIZED"

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlDbInit()V

    .line 129
    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlTask;->smlDsInitInfo()V

    .line 131
    invoke-static {v4}, Lcom/syncmldstmo/cust/smlPhoneStatus;->smlSetContactInitializing(Z)V

    goto :goto_c

    .line 116
    :cond_58
    new-instance v1, Lcom/syncmldstmo/base/smlAgent;

    invoke-direct {v1}, Lcom/syncmldstmo/base/smlAgent;-><init>()V

    iput-object v1, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    move-object v1, v2

    goto :goto_19

    .line 137
    :sswitch_61
    sget-boolean v1, Lcom/syncmldstmo/base/smlTask;->g_IsSyncTaskInit:Z

    if-nez v1, :cond_6b

    .line 139
    const-string v0, "Task Not Initialized"

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_c

    .line 142
    :cond_6b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Profile Index : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->param:Lcom/syncmldstmo/base/smlMsg$smlMsgParam;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgParam;->param:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_c

    .line 148
    :sswitch_82
    iget-object v0, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->param:Lcom/syncmldstmo/base/smlMsg$smlMsgParam;

    if-nez v0, :cond_8c

    .line 150
    const-string v0, "SMLMSG_NETWORK_STATUS : msgItem.param is NULL"

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_c

    .line 153
    :cond_8c
    const-string v0, "FIXME SMLMSG_NETWORK_STATUS"

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_c

    .line 158
    :sswitch_93
    const-string v0, "SMLMSG_NETWORK_STATUS_UPDATED"

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_c

    .line 167
    :sswitch_9a
    invoke-static {}, Lcom/syncmldstmo/cust/smlPhoneStatus;->smlGetNetworkState()Z

    move-result v0

    if-nez v0, :cond_c0

    .line 169
    const-string v0, "SMLMSG_DS_SYNCML_CONNECT : smlGetNetworkState() is false"

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 173
    const-wide/16 v0, 0x7d0

    :try_start_a7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_aa
    .catch Ljava/lang/InterruptedException; {:try_start_a7 .. :try_end_aa} :catch_b7

    .line 180
    :goto_aa
    const/16 v0, 0x1f

    invoke-static {v2, v0}, Lcom/syncmldstmo/cust/smlUiEvent;->smlSetEvent(Ljava/lang/Object;I)V

    .line 181
    invoke-static {}, Lcom/syncmldstmo/network/smlRetrySync;->smlSetRetrySyncReset()V

    .line 182
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->setSyncFinish()V

    goto/16 :goto_c

    .line 175
    :catch_b7
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_aa

    .line 186
    :cond_c0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "inSyncMode() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->inSyncMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", smltplIsActiveStatus() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlTask;->smltplIsActiveStatus()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->inSyncMode()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/syncmldstmo/base/smlTask;->smltplIsActiveStatus()Z

    move-result v0

    if-nez v0, :cond_c

    .line 192
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlInitSyncResultValues()V

    .line 194
    iget-object v0, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlAgent;->ghttpAdapter:Lcom/syncmldstmo/network/smlHttpAdapter;

    invoke-virtual {v0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpInit()Z

    move-result v0

    if-eqz v0, :cond_103

    .line 196
    const/4 v0, 0x7

    invoke-static {v0, v2, v2}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 202
    :cond_103
    invoke-static {}, Lcom/syncmldstmo/DSService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/cust/smlPhoneStatus;->smlIsWiFiConnect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_124

    .line 205
    iget-object v0, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlAgent;->ghttpAdapter:Lcom/syncmldstmo/network/smlHttpAdapter;

    invoke-virtual {v0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpApnOpen()I

    move-result v0

    .line 206
    if-eqz v0, :cond_12b

    .line 208
    const/16 v0, 0x21

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 214
    :cond_124
    iget-object v0, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlAgent;->ghttpAdapter:Lcom/syncmldstmo/network/smlHttpAdapter;

    invoke-virtual {v0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpOpen()V

    .line 222
    :cond_12b
    const/4 v0, 0x2

    invoke-static {v2, v0}, Lcom/syncmldstmo/cust/smlUiEvent;->smlSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_c

    .line 227
    :sswitch_131
    iget-object v0, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlAgent;->ghttpAdapter:Lcom/syncmldstmo/network/smlHttpAdapter;

    invoke-virtual {v0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpClose()V

    .line 228
    invoke-static {}, Lcom/syncmldstmo/network/smlRetrySync;->smlGetExistSIMforRetry()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 230
    invoke-static {v4}, Lcom/syncmldstmo/network/smlRetrySync;->smlSetRetrySync(Z)V

    .line 231
    invoke-static {}, Lcom/syncmldstmo/network/smlRetrySync;->smlStartRetrySync()V

    goto/16 :goto_c

    .line 237
    :sswitch_146
    invoke-virtual {p0, v4}, Lcom/syncmldstmo/base/smlTask;->smltplRestartNetwork(I)I

    goto/16 :goto_c

    .line 242
    :sswitch_14b
    const/16 v1, 0xb

    .line 243
    iget-object v5, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->param:Lcom/syncmldstmo/base/smlMsg$smlMsgParam;

    if-eqz v5, :cond_4ee

    .line 244
    iget-object v0, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->param:Lcom/syncmldstmo/base/smlMsg$smlMsgParam;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgParam;->param:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 246
    :goto_15b
    iget-object v1, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlAgent;->ghttpAdapter:Lcom/syncmldstmo/network/smlHttpAdapter;

    invoke-virtual {v1}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpClose()V

    .line 250
    const-wide/16 v5, 0x7d0

    :try_start_164
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_167
    .catch Ljava/lang/InterruptedException; {:try_start_164 .. :try_end_167} :catch_178

    .line 257
    :goto_167
    sparse-switch v0, :sswitch_data_5a0

    .line 285
    :goto_16a
    invoke-static {}, Lcom/syncmldstmo/network/smlRetrySync;->smlGetExistSIMforRetry()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 287
    invoke-static {v4}, Lcom/syncmldstmo/network/smlRetrySync;->smlSetRetrySync(Z)V

    .line 288
    invoke-static {}, Lcom/syncmldstmo/network/smlRetrySync;->smlStartRetrySync()V

    goto/16 :goto_c

    .line 252
    :catch_178
    move-exception v1

    .line 254
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_167

    .line 260
    :sswitch_181
    const/16 v0, 0xf

    invoke-static {v2, v0}, Lcom/syncmldstmo/cust/smlUiEvent;->smlSetEvent(Ljava/lang/Object;I)V

    goto :goto_16a

    .line 265
    :sswitch_187
    const/16 v0, 0x14

    invoke-static {v2, v0}, Lcom/syncmldstmo/cust/smlUiEvent;->smlSetEvent(Ljava/lang/Object;I)V

    goto :goto_16a

    .line 270
    :sswitch_18d
    const/16 v0, 0xe

    invoke-static {v2, v0}, Lcom/syncmldstmo/cust/smlUiEvent;->smlSetEvent(Ljava/lang/Object;I)V

    goto :goto_16a

    .line 274
    :sswitch_193
    const/16 v0, 0x15

    invoke-static {v2, v0}, Lcom/syncmldstmo/cust/smlUiEvent;->smlSetEvent(Ljava/lang/Object;I)V

    goto :goto_16a

    .line 278
    :sswitch_199
    const/16 v0, 0x16

    invoke-static {v2, v0}, Lcom/syncmldstmo/cust/smlUiEvent;->smlSetEvent(Ljava/lang/Object;I)V

    goto :goto_16a

    .line 282
    :sswitch_19f
    const/16 v0, 0x23

    invoke-static {v2, v0}, Lcom/syncmldstmo/cust/smlUiEvent;->smlSetEvent(Ljava/lang/Object;I)V

    goto :goto_16a

    .line 294
    :sswitch_1a5
    const-string v0, "SMLMSG_DS_SYNCML_APN_CONNECTIVITY"

    invoke-static {v4, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 296
    invoke-static {}, Lcom/syncmldstmo/network/smlHttpAdapter;->getIsConnected()Z

    move-result v0

    .line 297
    if-nez v0, :cond_1c0

    .line 299
    sget-object v0, Lcom/syncmldstmo/DSService;->agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlAgent;->ghttpAdapter:Lcom/syncmldstmo/network/smlHttpAdapter;

    invoke-virtual {v0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpApnActive()I

    move-result v0

    .line 300
    if-eqz v0, :cond_c

    .line 302
    const/4 v0, 0x7

    invoke-static {v0, v2, v2}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 309
    :cond_1c0
    const-wide/16 v0, 0x1f40

    :try_start_1c2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c5
    .catch Ljava/lang/InterruptedException; {:try_start_1c2 .. :try_end_1c5} :catch_1cc

    .line 316
    :goto_1c5
    const/16 v0, 0x23

    invoke-static {v0, v2, v2}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 311
    :catch_1cc
    move-exception v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_1c5

    .line 322
    :sswitch_1d5
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetCurrentProfileInfo()Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    invoke-virtual {v1, v0}, Lcom/syncmldstmo/base/smlAgent;->zero_initSync(Ljava/lang/Object;)I

    move-result v0

    .line 325
    if-nez v0, :cond_1f0

    .line 327
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlSetCurrentProfileInfo()V

    .line 329
    iget-object v0, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlAgent;->smlInitLocalSyncDb()V

    .line 330
    const/16 v0, 0x24

    invoke-static {v0, v2, v2}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 335
    :cond_1f0
    const/16 v0, 0xfd

    invoke-static {v0, v3}, Lcom/syncmldstmo/base/smlMsg;->smlCreateAbortMessage(II)Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;

    move-result-object v0

    .line 336
    invoke-static {v8, v0, v2}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 343
    :sswitch_1fb
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetCurrentProfileInfo()Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v0

    .line 344
    invoke-static {v0}, Lcom/syncmldstmo/database/smlDb;->smlSetCurrentProfileInfo(Lcom/syncmldstmo/database/smlDbProfileInfo;)V

    .line 346
    const/4 v1, 0x3

    invoke-static {v2, v1}, Lcom/syncmldstmo/cust/smlUiEvent;->smlSetEvent(Ljava/lang/Object;I)V

    .line 348
    iget-object v1, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    invoke-virtual {v1, v0}, Lcom/syncmldstmo/base/smlAgent;->initSync(Ljava/lang/Object;)I

    move-result v0

    .line 349
    iget-object v1, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlAgent;->m_ws:Lcom/syncmldstmo/base/smlWorkspace;

    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v4

    iput v4, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_nIsSyncProfileIndex:I

    .line 351
    if-eqz v0, :cond_c

    .line 354
    packed-switch v0, :pswitch_data_5c2

    .line 365
    :pswitch_21b
    const/16 v0, 0xfe

    invoke-static {v0, v3}, Lcom/syncmldstmo/base/smlMsg;->smlCreateAbortMessage(II)Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;

    move-result-object v0

    .line 369
    :goto_221
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->inSyncMode()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v1

    if-nez v1, :cond_c

    if-eqz v0, :cond_c

    .line 371
    invoke-static {v8, v0, v2}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 357
    :pswitch_234
    invoke-static {v8, v3}, Lcom/syncmldstmo/base/smlMsg;->smlCreateAbortMessage(II)Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;

    move-result-object v0

    goto :goto_221

    .line 361
    :pswitch_239
    const/16 v0, 0xfd

    invoke-static {v0, v3}, Lcom/syncmldstmo/base/smlMsg;->smlCreateAbortMessage(II)Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;

    move-result-object v0

    goto :goto_221

    .line 379
    :sswitch_240
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->inSyncMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 384
    iget-object v0, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlAgent;->doSync()I

    move-result v0

    .line 385
    if-ne v0, v4, :cond_271

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMLMSG_DS_SYNCML_CONTINUE-SML_AGENT_RET_FINISH getIsStopping() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v0

    if-nez v0, :cond_c

    .line 390
    const/16 v0, 0x27

    invoke-static {v0, v2, v2}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 393
    :cond_271
    const/4 v1, -0x7

    if-eq v0, v1, :cond_c

    .line 396
    if-eqz v0, :cond_c

    .line 400
    packed-switch v0, :pswitch_data_5cc

    .line 440
    :pswitch_279
    const/16 v0, 0xfe

    invoke-static {v0, v3}, Lcom/syncmldstmo/base/smlMsg;->smlCreateAbortMessage(II)Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;

    move-result-object v0

    .line 444
    :goto_27f
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->inSyncMode()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v1

    if-nez v1, :cond_c

    if-eqz v0, :cond_c

    .line 446
    invoke-static {v8, v0, v2}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 404
    :pswitch_292
    const/16 v0, 0xff

    invoke-static {v0, v3}, Lcom/syncmldstmo/base/smlMsg;->smlCreateAbortMessage(II)Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;

    move-result-object v0

    goto :goto_27f

    .line 408
    :pswitch_299
    const/16 v0, 0xfd

    invoke-static {v0, v3}, Lcom/syncmldstmo/base/smlMsg;->smlCreateAbortMessage(II)Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;

    move-result-object v0

    goto :goto_27f

    .line 412
    :pswitch_2a0
    const/16 v0, 0xfc

    invoke-static {v0, v3}, Lcom/syncmldstmo/base/smlMsg;->smlCreateAbortMessage(II)Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;

    move-result-object v0

    goto :goto_27f

    .line 416
    :pswitch_2a7
    const/16 v0, 0xf7

    invoke-static {v0, v3}, Lcom/syncmldstmo/base/smlMsg;->smlCreateAbortMessage(II)Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;

    move-result-object v0

    goto :goto_27f

    .line 420
    :pswitch_2ae
    const/16 v0, 0xf5

    invoke-static {v0, v3}, Lcom/syncmldstmo/base/smlMsg;->smlCreateAbortMessage(II)Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;

    move-result-object v0

    goto :goto_27f

    .line 424
    :pswitch_2b5
    const/16 v0, 0xf2

    invoke-static {v0, v3}, Lcom/syncmldstmo/base/smlMsg;->smlCreateAbortMessage(II)Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;

    move-result-object v0

    goto :goto_27f

    .line 428
    :pswitch_2bc
    const/16 v0, 0xf0

    invoke-static {v0, v3}, Lcom/syncmldstmo/base/smlMsg;->smlCreateAbortMessage(II)Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;

    move-result-object v0

    goto :goto_27f

    .line 432
    :pswitch_2c3
    const/16 v0, 0xf1

    invoke-static {v0, v3}, Lcom/syncmldstmo/base/smlMsg;->smlCreateAbortMessage(II)Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;

    move-result-object v0

    goto :goto_27f

    .line 436
    :pswitch_2ca
    const/16 v0, 0xef

    invoke-static {v0, v3}, Lcom/syncmldstmo/base/smlMsg;->smlCreateAbortMessage(II)Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;

    move-result-object v0

    goto :goto_27f

    .line 453
    :sswitch_2d1
    const-string v0, "[suspend&resume] START SuspendSync "

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 454
    invoke-static {v4}, Lcom/syncmldstmo/base/smlAgent;->smlSetSuspending(Z)V

    goto/16 :goto_c

    .line 458
    :sswitch_2db
    iget-object v0, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlAgent;->ghttpAdapter:Lcom/syncmldstmo/network/smlHttpAdapter;

    invoke-virtual {v0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpInterrupt()V

    goto/16 :goto_c

    .line 463
    :sswitch_2e4
    iget-object v0, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->param:Lcom/syncmldstmo/base/smlMsg$smlMsgParam;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgParam;->param:Ljava/lang/Object;

    check-cast v0, Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;

    .line 466
    iget v1, v0, Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;->abortCode:I

    sparse-switch v1, :sswitch_data_5e6

    .line 517
    :goto_2ef
    iget-object v1, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v1, v1, Lcom/syncmldstmo/base/smlAgent;->ghttpAdapter:Lcom/syncmldstmo/network/smlHttpAdapter;

    invoke-virtual {v1}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpClose()V

    .line 518
    iget-object v1, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget v2, v0, Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;->abortCode:I

    invoke-virtual {v1, v2}, Lcom/syncmldstmo/base/smlAgent;->abortSync(I)I

    .line 520
    invoke-static {}, Lcom/syncmldstmo/network/smlRetrySync;->smlGetExistSIMforRetry()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 522
    iget v1, v0, Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;->abortCode:I

    const/16 v2, 0xfb

    if-eq v1, v2, :cond_c

    iget v0, v0, Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;->abortCode:I

    const/16 v1, 0xf7

    if-eq v0, v1, :cond_c

    .line 525
    invoke-static {v4}, Lcom/syncmldstmo/network/smlRetrySync;->smlSetRetrySync(Z)V

    .line 526
    invoke-static {}, Lcom/syncmldstmo/network/smlRetrySync;->smlStartRetrySync()V

    goto/16 :goto_c

    .line 470
    :sswitch_317
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "abortCode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;->abortCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : RECEIVE_FAILED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 471
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportSuspendResume()Z

    move-result v1

    if-eqz v1, :cond_33f

    .line 473
    const-string v1, "[suspend&resume] receive fail. so suspending set"

    invoke-static {v7, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 474
    invoke-static {v4}, Lcom/syncmldstmo/base/smlAgent;->smlSetSuspending(Z)V

    .line 476
    :cond_33f
    const/16 v1, 0xfc

    iput v1, v0, Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;->abortCode:I

    goto :goto_2ef

    .line 481
    :sswitch_344
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "abortCode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;->abortCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : SEND_FAILED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 482
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportSuspendResume()Z

    move-result v1

    if-eqz v1, :cond_36c

    .line 484
    const-string v1, "[suspend&resume] send fail. so suspending set"

    invoke-static {v7, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 485
    invoke-static {v4}, Lcom/syncmldstmo/base/smlAgent;->smlSetSuspending(Z)V

    .line 487
    :cond_36c
    const/16 v1, 0xfd

    iput v1, v0, Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;->abortCode:I

    goto/16 :goto_2ef

    .line 491
    :sswitch_372
    const/16 v1, 0xc0

    iput v1, v0, Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;->abortCode:I

    goto/16 :goto_2ef

    .line 495
    :sswitch_378
    const/16 v1, 0xf9

    iput v1, v0, Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;->abortCode:I

    goto/16 :goto_2ef

    .line 499
    :sswitch_37e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "abortCode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;->abortCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : USER_REQ"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 500
    const/16 v1, 0xfb

    iput v1, v0, Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;->abortCode:I

    goto/16 :goto_2ef

    .line 504
    :sswitch_39e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "abortCode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;->abortCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : AUTH_FAIL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 505
    const/16 v1, 0xf7

    iput v1, v0, Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;->abortCode:I

    goto/16 :goto_2ef

    .line 509
    :sswitch_3be
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "abortCode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;->abortCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : SERVER_FAIL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 510
    const/16 v1, 0xf5

    iput v1, v0, Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;->abortCode:I

    goto/16 :goto_2ef

    .line 534
    :sswitch_3de
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMLMSG_DS_SYNCML_FINISH getIsStopping() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 536
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v0

    if-nez v0, :cond_406

    .line 538
    iget-object v0, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlAgent;->exitSync()I

    .line 539
    iget-object v0, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlAgent;->ghttpAdapter:Lcom/syncmldstmo/network/smlHttpAdapter;

    invoke-virtual {v0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpClose()V

    .line 543
    :cond_406
    invoke-static {}, Lcom/syncmldstmo/network/smlRetrySync;->smlSetRetrySyncReset()V

    goto/16 :goto_c

    .line 559
    :sswitch_40b
    const-string v0, "obex_device_deactivate"

    invoke-static {v7, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlAgent;->isLocalSync()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->inSyncMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 562
    iget-object v0, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    const/16 v1, 0xfe

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/base/smlAgent;->abortSync(I)I

    goto/16 :goto_c

    .line 567
    :sswitch_427
    iget-object v0, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlAgent;->ghttpAdapter:Lcom/syncmldstmo/network/smlHttpAdapter;

    invoke-virtual {v0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpOpen()V

    goto/16 :goto_c

    .line 574
    :sswitch_430
    iget-object v0, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlAgent;->ghttpAdapter:Lcom/syncmldstmo/network/smlHttpAdapter;

    invoke-virtual {v0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpClose()V

    goto/16 :goto_c

    .line 578
    :sswitch_439
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->setSyncing()V

    goto/16 :goto_c

    .line 582
    :sswitch_43e
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->setSyncFinish()V

    goto/16 :goto_c

    .line 590
    :sswitch_443
    if-eqz v1, :cond_c

    .line 592
    iget v0, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_nDeleteAllStatus:I

    and-int/lit8 v0, v0, -0x2

    iput v0, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_nDeleteAllStatus:I

    .line 594
    iget v0, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_nDeleteAllStatus:I

    if-nez v0, :cond_c

    .line 596
    const/16 v0, 0x89

    invoke-static {v0, v2, v2}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 604
    :sswitch_456
    if-eqz v1, :cond_c

    .line 606
    iget v0, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_nDeleteAllStatus:I

    and-int/lit8 v0, v0, -0x3

    iput v0, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_nDeleteAllStatus:I

    .line 608
    iget v0, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_nDeleteAllStatus:I

    if-nez v0, :cond_c

    .line 610
    const/16 v0, 0x89

    invoke-static {v0, v2, v2}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 618
    :sswitch_469
    if-eqz v1, :cond_c

    .line 620
    iget v0, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_nDeleteAllStatus:I

    and-int/lit8 v0, v0, -0x5

    iput v0, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_nDeleteAllStatus:I

    .line 622
    iget v0, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_nDeleteAllStatus:I

    if-nez v0, :cond_c

    .line 624
    const/16 v0, 0x89

    invoke-static {v0, v2, v2}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 632
    :sswitch_47c
    if-eqz v1, :cond_c

    .line 634
    iget v0, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_nDeleteAllStatus:I

    and-int/lit8 v0, v0, -0x9

    iput v0, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_nDeleteAllStatus:I

    .line 636
    iget v0, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_nDeleteAllStatus:I

    if-nez v0, :cond_c

    .line 638
    const/16 v0, 0x89

    invoke-static {v0, v2, v2}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 645
    :sswitch_48f
    if-eqz v1, :cond_c

    .line 647
    iput-boolean v3, v1, Lcom/syncmldstmo/base/smlWorkspace;->m_IsNeedDeleteAll:Z

    goto/16 :goto_c

    .line 654
    :sswitch_495
    new-instance v2, Lcom/syncmldstmo/push/smlPushMessageHandler;

    invoke-direct {v2}, Lcom/syncmldstmo/push/smlPushMessageHandler;-><init>()V

    .line 655
    new-instance v1, Lcom/syncmldstmo/push/smlNoti;

    invoke-direct {v1}, Lcom/syncmldstmo/push/smlNoti;-><init>()V

    .line 656
    iget-object v0, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->param:Lcom/syncmldstmo/base/smlMsg$smlMsgParam;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgParam;->param:Ljava/lang/Object;

    check-cast v0, Lcom/syncmldstmo/push/smlPushMessage;

    .line 658
    const-string v1, "SMLMSG_NOTI_RECEIVED"

    invoke-static {v7, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 660
    invoke-virtual {v2, v0}, Lcom/syncmldstmo/push/smlPushMessageHandler;->smlpushHdleMessageCopy(Ljava/lang/Object;)Lcom/syncmldstmo/push/smlPushMessage;

    move-result-object v0

    .line 661
    if-nez v0, :cond_4b5

    .line 663
    const-string v1, "NotiErr: pPushMsg is NULL"

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 666
    :cond_4b5
    invoke-virtual {v2, v0}, Lcom/syncmldstmo/push/smlPushMessageHandler;->smlpushHdleMsgHandler(Lcom/syncmldstmo/push/smlPushMessage;)Lcom/syncmldstmo/push/smlNoti;

    move-result-object v4

    .line 667
    if-eqz v4, :cond_c

    .line 670
    iget v0, v4, Lcom/syncmldstmo/push/smlNoti;->appId:I

    packed-switch v0, :pswitch_data_60c

    .line 699
    const-string v0, "NotiErr: Not Support Application"

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 703
    :cond_4c5
    :goto_4c5
    :pswitch_4c5
    invoke-virtual {v2, v4}, Lcom/syncmldstmo/push/smlPushMessageHandler;->smlpushHdleFreeNotiMsg(Lcom/syncmldstmo/push/smlNoti;)V

    goto/16 :goto_c

    .line 677
    :pswitch_4ca
    iget-object v0, v4, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    if-eqz v0, :cond_4ec

    .line 679
    iget-object v0, v4, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    invoke-static {v0}, Lcom/syncmldstmo/push/smlPushMessageAdapter;->smlPushAdpNotiHeaderMessage(Lcom/syncmldstmo/push/smlNotiTriggerHeader;)Z

    move-result v0

    .line 682
    :goto_4d4
    iget-object v1, v4, Lcom/syncmldstmo/push/smlNoti;->triggerBody:Lcom/syncmldstmo/push/smlNotiTriggerBody;

    if-eqz v1, :cond_4ea

    .line 684
    iget-object v1, v4, Lcom/syncmldstmo/push/smlNoti;->triggerBody:Lcom/syncmldstmo/push/smlNotiTriggerBody;

    invoke-static {v1}, Lcom/syncmldstmo/push/smlPushMessageAdapter;->smlPushAdpNotiBodyMessage(Lcom/syncmldstmo/push/smlNotiTriggerBody;)Z

    move-result v1

    .line 687
    :goto_4de
    if-eqz v0, :cond_4c5

    if-eqz v1, :cond_4c5

    .line 689
    iget-object v0, v4, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    iget v0, v0, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->uiMode:I

    invoke-static {v0}, Lcom/syncmldstmo/push/smlPushMessageAdapter;->smlPushAdpNotiMessageUiMode(I)V

    goto :goto_4c5

    :cond_4ea
    move v1, v3

    goto :goto_4de

    :cond_4ec
    move v0, v3

    goto :goto_4d4

    :cond_4ee
    move v0, v1

    goto/16 :goto_15b

    .line 120
    nop

    :sswitch_data_4f2
    .sparse-switch
        0x0 -> :sswitch_c
        0x1 -> :sswitch_49
        0x2 -> :sswitch_61
        0x3 -> :sswitch_82
        0x4 -> :sswitch_93
        0x6 -> :sswitch_c
        0x7 -> :sswitch_131
        0x9 -> :sswitch_1d5
        0x17 -> :sswitch_c
        0x18 -> :sswitch_c
        0x20 -> :sswitch_9a
        0x21 -> :sswitch_14b
        0x22 -> :sswitch_146
        0x23 -> :sswitch_1a5
        0x24 -> :sswitch_1fb
        0x25 -> :sswitch_240
        0x26 -> :sswitch_2e4
        0x27 -> :sswitch_3de
        0x28 -> :sswitch_427
        0x29 -> :sswitch_c
        0x2a -> :sswitch_430
        0x2b -> :sswitch_439
        0x2c -> :sswitch_43e
        0x2d -> :sswitch_c
        0x2e -> :sswitch_2d1
        0x2f -> :sswitch_2db
        0x50 -> :sswitch_495
        0x51 -> :sswitch_c
        0x52 -> :sswitch_c
        0x53 -> :sswitch_c
        0x54 -> :sswitch_c
        0x71 -> :sswitch_c
        0x72 -> :sswitch_c
        0x73 -> :sswitch_40b
        0x74 -> :sswitch_c
        0x75 -> :sswitch_c
        0x80 -> :sswitch_c
        0x81 -> :sswitch_443
        0x82 -> :sswitch_456
        0x83 -> :sswitch_469
        0x84 -> :sswitch_47c
        0x89 -> :sswitch_48f
        0xa0 -> :sswitch_c
    .end sparse-switch

    .line 257
    :sswitch_data_5a0
    .sparse-switch
        0x3 -> :sswitch_199
        0x5 -> :sswitch_181
        0x6 -> :sswitch_193
        0x9 -> :sswitch_187
        0xa -> :sswitch_187
        0xb -> :sswitch_18d
        0xc -> :sswitch_18d
        0x16 -> :sswitch_19f
    .end sparse-switch

    .line 354
    :pswitch_data_5c2
    .packed-switch -0x3
        :pswitch_239
        :pswitch_21b
        :pswitch_234
    .end packed-switch

    .line 400
    :pswitch_data_5cc
    .packed-switch -0xc
        :pswitch_2ae
        :pswitch_2ca
        :pswitch_2bc
        :pswitch_2c3
        :pswitch_2b5
        :pswitch_279
        :pswitch_292
        :pswitch_292
        :pswitch_2a0
        :pswitch_299
        :pswitch_2a7
    .end packed-switch

    .line 466
    :sswitch_data_5e6
    .sparse-switch
        0xd -> :sswitch_317
        0xe -> :sswitch_317
        0xf -> :sswitch_344
        0x10 -> :sswitch_344
        0x11 -> :sswitch_372
        0x16 -> :sswitch_378
        0xf5 -> :sswitch_3be
        0xf7 -> :sswitch_39e
        0xfb -> :sswitch_37e
    .end sparse-switch

    .line 670
    :pswitch_data_60c
    .packed-switch 0x1
        :pswitch_4ca
        :pswitch_4c5
    .end packed-switch
.end method

.method public smlUserAbort()I
    .registers 5

    .prologue
    const/16 v3, 0xfb

    const/16 v2, 0x40

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "m_socket : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 84
    sget-object v0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    if-eqz v0, :cond_3d

    sget-object v0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 86
    iget-object v0, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlAgent;->ghttpAdapter:Lcom/syncmldstmo/network/smlHttpAdapter;

    invoke-virtual {v0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpInterrupt()V

    .line 88
    const-string v0, "TP_Interrupt"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 89
    const/16 v0, 0x26

    const/4 v1, 0x1

    invoke-static {v3, v1}, Lcom/syncmldstmo/base/smlMsg;->smlCreateAbortMessage(II)Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 99
    :goto_3b
    const/4 v0, 0x0

    return v0

    .line 93
    :cond_3d
    const-string v0, "TP_Close"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlAgent;->ghttpAdapter:Lcom/syncmldstmo/network/smlHttpAdapter;

    invoke-virtual {v0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpClose()V

    .line 96
    iget-object v0, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    invoke-virtual {v0, v3}, Lcom/syncmldstmo/base/smlAgent;->abortSync(I)I

    goto :goto_3b
.end method

.method public smltpInterruptNetwork()I
    .registers 3

    .prologue
    .line 71
    const/16 v0, 0x40

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    iget-object v0, v0, Lcom/syncmldstmo/base/smlAgent;->ghttpAdapter:Lcom/syncmldstmo/network/smlHttpAdapter;

    invoke-virtual {v0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpInterrupt()V

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method smltplIsActiveStatus()Z
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method smltplRestartNetwork(I)I
    .registers 4
    .parameter "appId"

    .prologue
    .line 64
    const/16 v0, 0x40

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    return v0
.end method
