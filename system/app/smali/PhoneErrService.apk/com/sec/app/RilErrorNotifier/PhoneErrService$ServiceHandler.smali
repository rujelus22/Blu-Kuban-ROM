.class final Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;
.super Landroid/os/Handler;
.source "PhoneErrService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/app/RilErrorNotifier/PhoneErrService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;


# direct methods
.method public constructor <init>(Lcom/sec/app/RilErrorNotifier/PhoneErrService;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    .line 366
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 367
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/16 v8, 0xa

    .line 372
    const-string v5, "PhoneErrService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Handling incoming message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 375
    .local v4, serviceId:I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    .line 376
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, action:Ljava/lang/String;
    const-string v5, "CauseCodeNum"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, ccode:Ljava/lang/String;
    if-eqz v1, :cond_35

    .line 381
    iget-object v5, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    #setter for: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->code:I
    invoke-static {v5, v6}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$502(Lcom/sec/app/RilErrorNotifier/PhoneErrService;I)I

    .line 384
    :cond_35
    const-string v5, "android.intent.action.SMS_FDN_RESTRICTED"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 385
    iget-object v5, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    const/4 v6, 0x1

    #calls: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->handleRilMsg(I)V
    invoke-static {v5, v6}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$600(Lcom/sec/app/RilErrorNotifier/PhoneErrService;I)V

    .line 449
    :cond_47
    :goto_47
    iget-object v5, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    invoke-static {v5, v4}, Lcom/sec/app/RilErrorNotifier/PhoneErrorReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 450
    return-void

    .line 387
    :cond_4d
    const-string v5, "android.intent.action.SIM_NOT_INSERTED"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 388
    iget-object v5, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    const/4 v6, 0x2

    #calls: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->handleRilMsg(I)V
    invoke-static {v5, v6}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$600(Lcom/sec/app/RilErrorNotifier/PhoneErrService;I)V

    goto :goto_47

    .line 390
    :cond_60
    const-string v5, "android.intent.action.SDCARD_COPY_ERROR"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 391
    iget-object v5, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    const/4 v6, 0x3

    #calls: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->handleRilMsg(I)V
    invoke-static {v5, v6}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$600(Lcom/sec/app/RilErrorNotifier/PhoneErrService;I)V

    goto :goto_47

    .line 393
    :cond_73
    const-string v5, "android.intent.action.DATA_COPY_ERROR"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 394
    iget-object v5, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    const/4 v6, 0x4

    #calls: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->handleRilMsg(I)V
    invoke-static {v5, v6}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$600(Lcom/sec/app/RilErrorNotifier/PhoneErrService;I)V

    goto :goto_47

    .line 396
    :cond_86
    const-string v5, "android.intent.action.SIM_INIT_CRASH"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 397
    iget-object v5, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    const/4 v6, 0x5

    #calls: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->handleRilMsg(I)V
    invoke-static {v5, v6}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$600(Lcom/sec/app/RilErrorNotifier/PhoneErrService;I)V

    goto :goto_47

    .line 399
    :cond_99
    const-string v5, "android.intent.action.RIL_RESET_ACTION"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 400
    iget-object v5, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    const/4 v6, 0x6

    #calls: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->handleRilMsg(I)V
    invoke-static {v5, v6}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$600(Lcom/sec/app/RilErrorNotifier/PhoneErrService;I)V

    goto :goto_47

    .line 403
    :cond_ac
    const-string v5, "android.intent.action.PHONEAPP_RESET_ACTION"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 404
    iget-object v5, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    const/4 v6, 0x7

    #calls: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->handleRilMsg(I)V
    invoke-static {v5, v6}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$600(Lcom/sec/app/RilErrorNotifier/PhoneErrService;I)V

    goto :goto_47

    .line 406
    :cond_bf
    const-string v5, "android.intent.action.RIL_TIMEOUT_ACTION"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d4

    .line 407
    iget-object v5, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    const/16 v6, 0x8

    #calls: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->handleRilMsg(I)V
    invoke-static {v5, v6}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$600(Lcom/sec/app/RilErrorNotifier/PhoneErrService;I)V

    goto/16 :goto_47

    .line 409
    :cond_d4
    const-string v5, "android.intent.action.NO_SIM_NOTY"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e9

    .line 410
    iget-object v5, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    const/16 v6, 0x9

    #calls: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->handleRilMsg(I)V
    invoke-static {v5, v6}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$600(Lcom/sec/app/RilErrorNotifier/PhoneErrService;I)V

    goto/16 :goto_47

    .line 412
    :cond_e9
    const-string v5, "android.intent.action.DATA_ROUTER_DISPLAY"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_187

    .line 413
    const-string v5, "PhoneErrService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DATA_ROUTER_DISPLAY_ACTION 1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "msg1"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const-string v5, "PhoneErrService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DATA_ROUTER_DISPLAY_ACTION 2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "msg2"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v5, "PhoneErrService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DATA_ROUTER_DISPLAY_ACTION 3: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "index"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v5, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    const-string v6, "index"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mTitle:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$002(Lcom/sec/app/RilErrorNotifier/PhoneErrService;Ljava/lang/String;)Ljava/lang/String;

    .line 418
    iget-object v5, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "msg1"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "msg2"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mString:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$102(Lcom/sec/app/RilErrorNotifier/PhoneErrService;Ljava/lang/String;)Ljava/lang/String;

    .line 420
    iget-object v5, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    #calls: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->handleRilMsg(I)V
    invoke-static {v5, v8}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$600(Lcom/sec/app/RilErrorNotifier/PhoneErrService;I)V

    goto/16 :goto_47

    .line 423
    :cond_187
    const-string v5, "android.intent.action.CALL_DIAG_OUTGOING"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19c

    .line 424
    iget-object v5, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    const/16 v6, 0x33

    #calls: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->handleRilMsg(I)V
    invoke-static {v5, v6}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$600(Lcom/sec/app/RilErrorNotifier/PhoneErrService;I)V

    goto/16 :goto_47

    .line 426
    :cond_19c
    const-string v5, "android.intent.action.SS_INFO_DISPLAY"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b1

    .line 427
    iget-object v5, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    const/16 v6, 0x65

    #calls: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->handleRilMsg(I)V
    invoke-static {v5, v6}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$600(Lcom/sec/app/RilErrorNotifier/PhoneErrService;I)V

    goto/16 :goto_47

    .line 429
    :cond_1b1
    const-string v5, "android.intent.action.SS_INFO_CLI"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c6

    .line 430
    iget-object v5, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    const/16 v6, 0x66

    #calls: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->handleRilMsg(I)V
    invoke-static {v5, v6}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$600(Lcom/sec/app/RilErrorNotifier/PhoneErrService;I)V

    goto/16 :goto_47

    .line 432
    :cond_1c6
    const-string v5, "android.intent.action.SS_INFO_CNA"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1db

    .line 433
    iget-object v5, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    const/16 v6, 0x67

    #calls: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->handleRilMsg(I)V
    invoke-static {v5, v6}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$600(Lcom/sec/app/RilErrorNotifier/PhoneErrService;I)V

    goto/16 :goto_47

    .line 435
    :cond_1db
    const-string v5, "android.intent.action.PHONE_DEEP_SLEEP"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f0

    .line 436
    iget-object v5, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    const/16 v6, 0xc9

    #calls: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->handleRilMsg(I)V
    invoke-static {v5, v6}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$600(Lcom/sec/app/RilErrorNotifier/PhoneErrService;I)V

    goto/16 :goto_47

    .line 438
    :cond_1f0
    const-string v5, "android.intent.action.SMS_CAUSE_CODES"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_205

    .line 439
    iget-object v5, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    const/16 v6, 0x12d

    #calls: Lcom/sec/app/RilErrorNotifier/PhoneErrService;->handleRilMsg(I)V
    invoke-static {v5, v6}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->access$600(Lcom/sec/app/RilErrorNotifier/PhoneErrService;I)V

    goto/16 :goto_47

    .line 441
    :cond_205
    const-string v5, "android.intent.action.PHONE_DBG_MSG"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 442
    iget-object v5, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    iget-object v5, v5, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mRilMsgHandler:Landroid/os/Handler;

    const/16 v6, 0xb

    invoke-static {v5, v6, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 443
    .local v3, msg2:Landroid/os/Message;
    iget-object v5, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;->this$0:Lcom/sec/app/RilErrorNotifier/PhoneErrService;

    iget-object v5, v5, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mRilMsgHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_47
.end method
