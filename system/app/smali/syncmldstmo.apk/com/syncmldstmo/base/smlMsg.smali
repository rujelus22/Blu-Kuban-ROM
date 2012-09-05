.class public Lcom/syncmldstmo/base/smlMsg;
.super Ljava/lang/Object;
.source "smlMsg.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;,
        Lcom/syncmldstmo/base/smlMsg$smlMsgItem;,
        Lcom/syncmldstmo/base/smlMsg$smlMsgParam;,
        Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;
    }
.end annotation


# static fields
.field static SyncMLMsgQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static UIMsgQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public msgItem:Lcom/syncmldstmo/base/smlMsg$smlMsgItem;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/syncmldstmo/base/smlMsg;->SyncMLMsgQueue:Ljava/util/Vector;

    .line 13
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/syncmldstmo/base/smlMsg;->UIMsgQueue:Ljava/util/Vector;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;

    invoke-direct {v0}, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/smlMsg;->msgItem:Lcom/syncmldstmo/base/smlMsg$smlMsgItem;

    .line 18
    return-void
.end method

.method public static smlCreateAbortMessage(II)Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;
    .registers 3
    .parameter "abortCode"
    .parameter "userReq"

    .prologue
    .line 410
    new-instance v0, Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;

    invoke-direct {v0}, Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;-><init>()V

    .line 411
    .local v0, pAbortParam:Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;
    iput p0, v0, Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;->abortCode:I

    .line 412
    iput p1, v0, Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;->userReq:I

    .line 414
    return-object v0
.end method

.method public static smlGetMsgString(I)Ljava/lang/String;
    .registers 2
    .parameter "type"

    .prologue
    .line 252
    sparse-switch p0, :sswitch_data_88

    .line 399
    const-string v0, "SMLMSG_NOT_DEFINED"

    .line 403
    .local v0, pcMsgString:Ljava/lang/String;
    :goto_5
    return-object v0

    .line 258
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_6
    const-string v0, "SMLMSG_CONTACT_INITIALIZED"

    .line 259
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 261
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_9
    const-string v0, "SMLMSG_SET_PROFILE_INDEX"

    .line 262
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 264
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_c
    const-string v0, "SMLMSG_NETWORK_STATUS"

    .line 265
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 267
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_f
    const-string v0, "SMLMSG_NETWORK_STATUS_UPDATED"

    .line 268
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 270
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_12
    const-string v0, "SMLMSG_FDN_ACTIVATED"

    .line 271
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 273
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_15
    const-string v0, "SMLMSG_PROTO_MAX_CONNECTIONS"

    .line 274
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 276
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_18
    const-string v0, "SMLMSG_DS_SYNCML_CANNOT_CONNECT"

    .line 277
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 279
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_1b
    const-string v0, "SMLMSG_DS_SYNCML_PKG0"

    .line 280
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 285
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_1e
    const-string v0, "SMLMSG_DS_SYNCML_CONNECT"

    .line 286
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 288
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_21
    const-string v0, "SMLMSG_DS_SYNCML_CONNECTFAIL"

    .line 289
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 291
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_24
    const-string v0, "SMLMSG_DS_SYNCML_CONNECTRETRY"

    .line 292
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 294
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_27
    const-string v0, "SMLMSG_DS_SYNCML_START"

    .line 295
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 297
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_2a
    const-string v0, "SMLMSG_DS_SYNCML_CONTINUE"

    .line 298
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 300
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_2d
    const-string v0, "SMLMSG_DS_SYNCML_ABORT"

    .line 301
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 303
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_30
    const-string v0, "SMLMSG_DS_SYNCML_FINISH"

    .line 304
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 306
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_33
    const-string v0, "SMLMSG_DS_TCPIP_OPEN"

    .line 307
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 309
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_36
    const-string v0, "SMLMSG_DS_TCPIP_SEND"

    .line 310
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 312
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_39
    const-string v0, "SMLMSG_DS_TCPIP_CLOSE"

    .line 313
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 315
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_3c
    const-string v0, "SMLMSG_DS_SOCKET_CONNECTED"

    .line 316
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 318
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_3f
    const-string v0, "SMLMSG_DS_SOCKET_DISCONNECTED"

    .line 319
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 321
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_42
    const-string v0, "SMLMSG_DS_SOCKET_DATA_RECEIVED"

    .line 322
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 324
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_45
    const-string v0, "SMLMSG_DS_SOCKET_SSL_TUNNEL_CONNECT"

    .line 325
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 329
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_48
    const-string v0, "SMLMSG_NOTI_ATCOMMAND"

    .line 330
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 332
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_4b
    const-string v0, "SMLMSG_NOTI_PCSYNC_ATCOMMAND"

    .line 333
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 336
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_4e
    const-string v0, "SMLMSG_IRMC_OBEX_DEVICE_ACTIVATE"

    .line 337
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 339
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_51
    const-string v0, "SMLMSG_IRMC_OBEX_DATA_RECEIVED"

    .line 340
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 342
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_54
    const-string v0, "SMLMSG_IRMC_OBEX_DEVICE_DEACTIVATE"

    .line 343
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 346
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_57
    const-string v0, "SMLMSG_DS_OBEX_USB_ACTIVATE"

    .line 347
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 349
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_5a
    const-string v0, "SMLMSG_DS_OBEX_USB_DEACTIVATE"

    .line 350
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 352
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_5d
    const-string v0, "SMLMSG_DS_OBEX_DEVICE_ACTIVATE"

    .line 353
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 355
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_60
    const-string v0, "SMLMSG_DS_OBEX_DATA_RECEIVED"

    .line 356
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 358
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_63
    const-string v0, "SMLMSG_DS_OBEX_DATA_SEND"

    .line 359
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 361
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_66
    const-string v0, "SMLMSG_DS_OBEX_DEVICE_DEACTIVATE"

    .line 362
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 364
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_69
    const-string v0, "SMLMSG_DS_OBEX_RETURN_ATMODE"

    .line 365
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 367
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_6c
    const-string v0, "SMLMSG_LONGKEY_PRESSED"

    .line 368
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 372
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_6f
    const-string v0, "SMLMSG_CONTACT_DELETEALL_FINISH"

    .line 373
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 375
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_72
    const-string v0, "SMLMSG_CALENDAR_DELETEALL_FINISH"

    .line 376
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 378
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_75
    const-string v0, "SMLMSG_TASK_DELETEALL_FINISH"

    .line 379
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 381
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_78
    const-string v0, "SMLMSG_NOTE_DELETEALL_FINISH"

    .line 382
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 384
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_7b
    const-string v0, "SMLMSG_DELETEALL_FINISH"

    .line 385
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 387
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_7e
    const-string v0, "SMLMSG_DS_SERVERPROGRESS"

    .line 388
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 390
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_81
    const-string v0, "SMLMSG_DS_PHONEPROGRESS"

    .line 391
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto :goto_5

    .line 396
    .end local v0           #pcMsgString:Ljava/lang/String;
    :sswitch_84
    const-string v0, "SMLMSG_DS_NOTI_RECEIVED"

    .line 397
    .restart local v0       #pcMsgString:Ljava/lang/String;
    goto/16 :goto_5

    .line 252
    :sswitch_data_88
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_9
        0x3 -> :sswitch_c
        0x4 -> :sswitch_f
        0x5 -> :sswitch_15
        0x6 -> :sswitch_12
        0x7 -> :sswitch_18
        0x9 -> :sswitch_1b
        0x17 -> :sswitch_57
        0x18 -> :sswitch_5a
        0x20 -> :sswitch_1e
        0x21 -> :sswitch_21
        0x22 -> :sswitch_24
        0x24 -> :sswitch_27
        0x25 -> :sswitch_2a
        0x26 -> :sswitch_2d
        0x27 -> :sswitch_30
        0x28 -> :sswitch_33
        0x29 -> :sswitch_36
        0x2a -> :sswitch_39
        0x2b -> :sswitch_3c
        0x2c -> :sswitch_3f
        0x2d -> :sswitch_42
        0x30 -> :sswitch_45
        0x55 -> :sswitch_48
        0x56 -> :sswitch_4b
        0x60 -> :sswitch_4e
        0x61 -> :sswitch_51
        0x62 -> :sswitch_54
        0x71 -> :sswitch_60
        0x72 -> :sswitch_63
        0x73 -> :sswitch_66
        0x74 -> :sswitch_69
        0x80 -> :sswitch_6c
        0x81 -> :sswitch_6f
        0x82 -> :sswitch_72
        0x83 -> :sswitch_75
        0x84 -> :sswitch_78
        0x89 -> :sswitch_7b
        0x8a -> :sswitch_7e
        0x8b -> :sswitch_81
        0x8d -> :sswitch_84
        0x8e -> :sswitch_84
        0x8f -> :sswitch_84
        0x90 -> :sswitch_84
        0xa0 -> :sswitch_5d
    .end sparse-switch
.end method

.method public static smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .parameter "type"
    .parameter "param"
    .parameter "paramFree"

    .prologue
    .line 184
    const/4 v2, 0x0

    .line 185
    .local v2, msgParam:Lcom/syncmldstmo/base/smlMsg$smlMsgParam;
    const/4 v1, 0x0

    .line 187
    .local v1, msgItem:Lcom/syncmldstmo/base/smlMsg$smlMsgItem;
    if-eqz p1, :cond_12

    .line 189
    new-instance v2, Lcom/syncmldstmo/base/smlMsg$smlMsgParam;

    .end local v2           #msgParam:Lcom/syncmldstmo/base/smlMsg$smlMsgParam;
    invoke-direct {v2}, Lcom/syncmldstmo/base/smlMsg$smlMsgParam;-><init>()V

    .line 190
    .restart local v2       #msgParam:Lcom/syncmldstmo/base/smlMsg$smlMsgParam;
    iput-object p1, v2, Lcom/syncmldstmo/base/smlMsg$smlMsgParam;->param:Ljava/lang/Object;

    .line 192
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/syncmldstmo/base/smlMsg$smlMsgParam;->paramFree:Ljava/lang/Object;

    .line 193
    if-eqz p2, :cond_12

    .line 195
    iput-object p2, v2, Lcom/syncmldstmo/base/smlMsg$smlMsgParam;->paramFree:Ljava/lang/Object;

    .line 199
    :cond_12
    new-instance v1, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;

    .end local v1           #msgItem:Lcom/syncmldstmo/base/smlMsg$smlMsgItem;
    invoke-direct {v1}, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;-><init>()V

    .line 200
    .restart local v1       #msgItem:Lcom/syncmldstmo/base/smlMsg$smlMsgItem;
    if-eqz v1, :cond_2b

    .line 202
    iput p0, v1, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->type:I

    .line 203
    iput-object v2, v1, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->param:Lcom/syncmldstmo/base/smlMsg$smlMsgParam;

    .line 205
    sget-object v3, Lcom/syncmldstmo/base/smlTask;->m_TaskHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 206
    .local v0, msg:Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 207
    sget-object v3, Lcom/syncmldstmo/base/smlTask;->m_TaskHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 213
    .end local v0           #msg:Landroid/os/Message;
    :goto_2a
    return-void

    .line 211
    :cond_2b
    const/16 v3, 0x40

    const-string v4, "Can\'t send message"

    invoke-static {v3, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_2a
.end method

.method public static smlSendMessageUI(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .parameter "type"
    .parameter "param"
    .parameter "paramFree"

    .prologue
    .line 217
    const/4 v2, 0x0

    .line 218
    .local v2, msgParam:Lcom/syncmldstmo/base/smlMsg$smlMsgParam;
    const/4 v1, 0x0

    .line 220
    .local v1, msgItem:Lcom/syncmldstmo/base/smlMsg$smlMsgItem;
    if-eqz p1, :cond_12

    .line 222
    new-instance v2, Lcom/syncmldstmo/base/smlMsg$smlMsgParam;

    .end local v2           #msgParam:Lcom/syncmldstmo/base/smlMsg$smlMsgParam;
    invoke-direct {v2}, Lcom/syncmldstmo/base/smlMsg$smlMsgParam;-><init>()V

    .line 223
    .restart local v2       #msgParam:Lcom/syncmldstmo/base/smlMsg$smlMsgParam;
    iput-object p1, v2, Lcom/syncmldstmo/base/smlMsg$smlMsgParam;->param:Ljava/lang/Object;

    .line 225
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/syncmldstmo/base/smlMsg$smlMsgParam;->paramFree:Ljava/lang/Object;

    .line 226
    if-eqz p2, :cond_12

    .line 228
    iput-object p2, v2, Lcom/syncmldstmo/base/smlMsg$smlMsgParam;->paramFree:Ljava/lang/Object;

    .line 232
    :cond_12
    new-instance v1, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;

    .end local v1           #msgItem:Lcom/syncmldstmo/base/smlMsg$smlMsgItem;
    invoke-direct {v1}, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;-><init>()V

    .line 233
    .restart local v1       #msgItem:Lcom/syncmldstmo/base/smlMsg$smlMsgItem;
    if-eqz v1, :cond_2b

    .line 235
    iput p0, v1, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->type:I

    .line 236
    iput-object v2, v1, Lcom/syncmldstmo/base/smlMsg$smlMsgItem;->param:Lcom/syncmldstmo/base/smlMsg$smlMsgParam;

    .line 238
    sget-object v3, Lcom/syncmldstmo/smluiTask;->m_UiTaskHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 239
    .local v0, msg:Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    sget-object v3, Lcom/syncmldstmo/smluiTask;->m_UiTaskHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 246
    .end local v0           #msg:Landroid/os/Message;
    :goto_2a
    return-void

    .line 244
    :cond_2b
    const/16 v3, 0x40

    const-string v4, "Can\'t send message"

    invoke-static {v3, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_2a
.end method
