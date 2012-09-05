.class public Lcom/syncmldstmo/smluiTask;
.super Ljava/lang/Object;
.source "smluiTask.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;
.implements Ljava/lang/Runnable;


# static fields
.field public static m_UiTaskHandler:Landroid/os/Handler;


# instance fields
.field public m_TaskInit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/syncmldstmo/smluiTask;->m_UiTaskHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syncmldstmo/smluiTask;->m_TaskInit:Z

    .line 22
    iget-boolean v0, p0, Lcom/syncmldstmo/smluiTask;->m_TaskInit:Z

    if-nez v0, :cond_12

    .line 24
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 26
    :cond_12
    return-void
.end method


# virtual methods
.method Handler(Landroid/os/Message;)Z
    .registers 14
    .parameter "msg"

    .prologue
    const/16 v11, 0x30

    const-wide/16 v9, 0x3e8

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x20

    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, msgItem:Lcom/syncmldstmo/base/smlMsg$smlMsgItem;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v4, :cond_e

    .line 244
    :cond_d
    :goto_d
    return v7

    .line 53
    :cond_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #msgItem:Lcom/syncmldstmo/base/smlMsg$smlMsgItem;
    check-cast v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;

    .line 55
    .restart local v0       #msgItem:Lcom/syncmldstmo/base/smlMsg$smlMsgItem;
    if-eqz v0, :cond_18

    iget v4, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->type:I

    if-nez v4, :cond_1e

    .line 57
    :cond_18
    const-string v4, "warning msg is null. type = 0"

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_d

    .line 61
    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message Type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->type:I

    invoke-static {v5}, Lcom/syncmldstmo/base/smlMsg;->smlGetMsgString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "warning msg is msg.type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 63
    iget v4, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->type:I

    packed-switch v4, :pswitch_data_274

    .line 241
    :pswitch_69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msgtype("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") not found."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_d

    .line 67
    :pswitch_88
    const-string v4, "SML_DS_EVENT_UI_SYNC_START"

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_d

    .line 73
    :pswitch_8e
    const-string v4, "SML_DS_EVENT_UI_SERVER_CONNECT"

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 79
    :pswitch_95
    const/4 v3, 0x0

    .line 80
    .local v3, server_msg:Landroid/os/Message;
    const/4 v1, 0x0

    .line 82
    .local v1, pProcessMsg:Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;
    iget-object v4, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->param:Lcom/syncmldstmo/base/smlMsg$smlMsgParam;

    if-eqz v4, :cond_a1

    iget-object v4, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->param:Lcom/syncmldstmo/base/smlMsg$smlMsgParam;

    iget-object v4, v4, Lcom/syncmldstmo/base/smlMsg$smlMsgParam;->param:Ljava/lang/Object;

    if-nez v4, :cond_a8

    .line 84
    :cond_a1
    const-string v4, "SML_DS_EVENT_UI_SERVER_PROGRESS : msg is NULL !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 88
    :cond_a8
    iget-object v4, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->param:Lcom/syncmldstmo/base/smlMsg$smlMsgParam;

    iget-object v4, v4, Lcom/syncmldstmo/base/smlMsg$smlMsgParam;->param:Ljava/lang/Object;

    check-cast v4, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;

    move-object v1, v4

    check-cast v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;

    .line 89
    const-string v4, "Phone=>Server"

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Contact : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactTotal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calendar : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarTotal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileTotal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 96
    sget-object v4, Lcom/syncmldstmo/smluiStartSync;->hProgress:Landroid/os/Handler;

    if-eqz v4, :cond_d

    .line 98
    sget-object v4, Lcom/syncmldstmo/smluiStartSync;->hProgress:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-static {v4, v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 99
    sget-object v4, Lcom/syncmldstmo/smluiStartSync;->hProgress:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_d

    .line 106
    .end local v1           #pProcessMsg:Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;
    .end local v3           #server_msg:Landroid/os/Message;
    :pswitch_134
    const/4 v2, 0x0

    .line 107
    .local v2, phone_msg:Landroid/os/Message;
    const/4 v1, 0x0

    .line 109
    .restart local v1       #pProcessMsg:Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;
    iget-object v4, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->param:Lcom/syncmldstmo/base/smlMsg$smlMsgParam;

    if-eqz v4, :cond_140

    iget-object v4, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->param:Lcom/syncmldstmo/base/smlMsg$smlMsgParam;

    iget-object v4, v4, Lcom/syncmldstmo/base/smlMsg$smlMsgParam;->param:Ljava/lang/Object;

    if-nez v4, :cond_147

    .line 111
    :cond_140
    const-string v4, "SML_DS_EVENT_UI_PHONE_PROGRESS : msg is NULL !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 115
    :cond_147
    iget-object v4, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->param:Lcom/syncmldstmo/base/smlMsg$smlMsgParam;

    iget-object v4, v4, Lcom/syncmldstmo/base/smlMsg$smlMsgParam;->param:Ljava/lang/Object;

    check-cast v4, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;

    move-object v1, v4

    check-cast v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;

    .line 116
    const-string v4, "Server=>Phone"

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Contact : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactTotal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calendar : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarTotal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileTotal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 123
    sget-object v4, Lcom/syncmldstmo/smluiStartSync;->hProgress:Landroid/os/Handler;

    if-eqz v4, :cond_d

    .line 125
    sget-object v4, Lcom/syncmldstmo/smluiStartSync;->hProgress:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-static {v4, v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 126
    sget-object v4, Lcom/syncmldstmo/smluiStartSync;->hProgress:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_d

    .line 133
    .end local v1           #pProcessMsg:Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;
    .end local v2           #phone_msg:Landroid/os/Message;
    :pswitch_1d3
    const-string v4, "SML_DS_EVENT_UI_SYNC_FINISH"

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->smlGetBackgroundState()Z

    move-result v4

    if-eqz v4, :cond_1ec

    .line 137
    invoke-static {v8}, Lcom/syncmldstmo/base/smlAgent;->smlSetBackgroundState(Z)V

    .line 138
    sget-object v4, Lcom/syncmldstmo/DSService;->ErrorMessage:Landroid/os/Handler;

    if-eqz v4, :cond_d

    .line 139
    sget-object v4, Lcom/syncmldstmo/DSService;->ErrorMessage:Landroid/os/Handler;

    invoke-virtual {v4, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_d

    .line 143
    :cond_1ec
    sget-object v4, Lcom/syncmldstmo/smluiStartSync;->hProgress:Landroid/os/Handler;

    if-eqz v4, :cond_d

    .line 144
    sget-object v4, Lcom/syncmldstmo/smluiStartSync;->hProgress:Landroid/os/Handler;

    invoke-virtual {v4, v11, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_d

    .line 151
    :pswitch_1f7
    const-string v4, "SML_DS_EVENT_UI_CONTACT_FULL"

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->smlGetBackgroundState()Z

    move-result v4

    if-eqz v4, :cond_212

    .line 155
    invoke-static {v8}, Lcom/syncmldstmo/base/smlAgent;->smlSetBackgroundState(Z)V

    .line 156
    sget-object v4, Lcom/syncmldstmo/DSService;->ErrorMessage:Landroid/os/Handler;

    if-eqz v4, :cond_d

    .line 157
    sget-object v4, Lcom/syncmldstmo/DSService;->ErrorMessage:Landroid/os/Handler;

    const/16 v5, 0x31

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_d

    .line 161
    :cond_212
    sget-object v4, Lcom/syncmldstmo/smluiStartSync;->hProgress:Landroid/os/Handler;

    if-eqz v4, :cond_d

    .line 162
    sget-object v4, Lcom/syncmldstmo/smluiStartSync;->hProgress:Landroid/os/Handler;

    const/16 v5, 0x31

    invoke-virtual {v4, v5, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_d

    .line 168
    :pswitch_21f
    invoke-static {v7}, Lcom/syncmldstmo/DSService;->smlSetIndicatorState(I)V

    goto/16 :goto_d

    .line 172
    :pswitch_224
    invoke-static {v8}, Lcom/syncmldstmo/DSService;->smlSetIndicatorState(I)V

    goto/16 :goto_d

    .line 213
    :pswitch_229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed step : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->smlGetBackgroundState()Z

    move-result v4

    if-eqz v4, :cond_257

    .line 217
    invoke-static {v8}, Lcom/syncmldstmo/base/smlAgent;->smlSetBackgroundState(Z)V

    .line 218
    sget-object v4, Lcom/syncmldstmo/DSService;->ErrorMessage:Landroid/os/Handler;

    if-eqz v4, :cond_d

    .line 219
    sget-object v4, Lcom/syncmldstmo/DSService;->ErrorMessage:Landroid/os/Handler;

    iget v5, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->type:I

    invoke-virtual {v4, v5, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_d

    .line 223
    :cond_257
    sget-object v4, Lcom/syncmldstmo/smluiStartSync;->hProgress:Landroid/os/Handler;

    if-eqz v4, :cond_d

    .line 224
    sget-object v4, Lcom/syncmldstmo/smluiStartSync;->hProgress:Landroid/os/Handler;

    iget v5, v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->type:I

    invoke-virtual {v4, v5, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_d

    .line 234
    :pswitch_264
    const-string v4, "SAN Received. Sync start"

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 235
    sget-object v4, Lcom/syncmldstmo/DSService;->hAutoConnecting:Landroid/os/Handler;

    if-eqz v4, :cond_d

    .line 236
    sget-object v4, Lcom/syncmldstmo/DSService;->hAutoConnecting:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_d

    .line 63
    :pswitch_data_274
    .packed-switch 0x2
        :pswitch_88
        :pswitch_8e
        :pswitch_95
        :pswitch_134
        :pswitch_229
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_1d3
        :pswitch_1f7
        :pswitch_21f
        :pswitch_224
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_264
        :pswitch_264
        :pswitch_264
        :pswitch_264
    .end packed-switch
.end method

.method public run()V
    .registers 2

    .prologue
    .line 30
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 32
    new-instance v0, Lcom/syncmldstmo/smluiTask$1;

    invoke-direct {v0, p0}, Lcom/syncmldstmo/smluiTask$1;-><init>(Lcom/syncmldstmo/smluiTask;)V

    sput-object v0, Lcom/syncmldstmo/smluiTask;->m_UiTaskHandler:Landroid/os/Handler;

    .line 40
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 41
    return-void
.end method
