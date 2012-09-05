.class public Lcom/sec/app/RilErrorNotifier/PhoneErrService;
.super Landroid/app/Service;
.source "PhoneErrService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;
    }
.end annotation


# instance fields
.field private code:I

.field private mContext:Landroid/content/Context;

.field private mDataString:Ljava/lang/String;

.field final mDeepSleepDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mResultCode:I

.field public mRilMsgHandler:Landroid/os/Handler;

.field private mServiceHandler:Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field private mString:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mContext:Landroid/content/Context;

    .line 141
    new-instance v0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$1;

    invoke-direct {v0, p0}, Lcom/sec/app/RilErrorNotifier/PhoneErrService$1;-><init>(Lcom/sec/app/RilErrorNotifier/PhoneErrService;)V

    iput-object v0, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mDeepSleepDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 171
    new-instance v0, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;

    invoke-direct {v0, p0}, Lcom/sec/app/RilErrorNotifier/PhoneErrService$2;-><init>(Lcom/sec/app/RilErrorNotifier/PhoneErrService;)V

    iput-object v0, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mRilMsgHandler:Landroid/os/Handler;

    .line 364
    return-void
.end method

.method private SMSCauseCode()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 548
    iget v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->code:I

    if-ltz v3, :cond_61

    iget v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->code:I

    if-gt v3, v6, :cond_61

    .line 549
    const v2, 0x7f050013

    .line 565
    .local v2, strNum:I
    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->code:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, msg:Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f050002

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 573
    .local v1, newDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 574
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/Window;->addFlags(I)V

    .line 576
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 578
    return-void

    .line 550
    .end local v0           #msg:Ljava/lang/String;
    .end local v1           #newDialog:Landroid/app/AlertDialog;
    .end local v2           #strNum:I
    :cond_61
    iget v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->code:I

    if-lt v3, v7, :cond_6f

    iget v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->code:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_6f

    .line 551
    const v2, 0x7f050014

    .restart local v2       #strNum:I
    goto :goto_d

    .line 552
    .end local v2           #strNum:I
    :cond_6f
    iget v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->code:I

    const/16 v4, 0x61

    if-ne v3, v4, :cond_79

    .line 553
    const v2, 0x7f050015

    .restart local v2       #strNum:I
    goto :goto_d

    .line 554
    .end local v2           #strNum:I
    :cond_79
    iget v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->code:I

    const/16 v4, 0x62

    if-ne v3, v4, :cond_83

    .line 555
    const v2, 0x7f050016

    .restart local v2       #strNum:I
    goto :goto_d

    .line 556
    .end local v2           #strNum:I
    :cond_83
    iget v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->code:I

    const/16 v4, 0x22

    if-ne v3, v4, :cond_8d

    .line 557
    const v2, 0x7f050017

    .restart local v2       #strNum:I
    goto :goto_d

    .line 558
    .end local v2           #strNum:I
    :cond_8d
    iget v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->code:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_98

    .line 559
    const v2, 0x7f050019

    .restart local v2       #strNum:I
    goto/16 :goto_d

    .line 560
    .end local v2           #strNum:I
    :cond_98
    iget v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->code:I

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_a3

    .line 561
    const v2, 0x7f05001a

    .restart local v2       #strNum:I
    goto/16 :goto_d

    .line 563
    .end local v2           #strNum:I
    :cond_a3
    const v2, 0x7f05001b

    .restart local v2       #strNum:I
    goto/16 :goto_d
.end method

.method static synthetic access$000(Lcom/sec/app/RilErrorNotifier/PhoneErrService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/app/RilErrorNotifier/PhoneErrService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/app/RilErrorNotifier/PhoneErrService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/app/RilErrorNotifier/PhoneErrService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/app/RilErrorNotifier/PhoneErrService;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->handlePhoneDebugMsg(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/app/RilErrorNotifier/PhoneErrService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mDataString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/app/RilErrorNotifier/PhoneErrService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mDataString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/app/RilErrorNotifier/PhoneErrService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->SMSCauseCode()V

    return-void
.end method

.method static synthetic access$502(Lcom/sec/app/RilErrorNotifier/PhoneErrService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->code:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/app/RilErrorNotifier/PhoneErrService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->handleRilMsg(I)V

    return-void
.end method

.method private handlePhoneDebugMsg(Landroid/content/Intent;)V
    .registers 6
    .parameter "i"

    .prologue
    .line 455
    const-string v1, "PhoneErrService"

    const-string v2, "handlePhoneDebugMsg"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string v1, "debug_msg"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, debug_msg:Ljava/lang/String;
    const-string v1, "PhoneErrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debug_msg from : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {p0}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, " Phone Debug Message"

    invoke-static {v1, v2, v0}, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->showAlertPanel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method private handleRilMsg(I)V
    .registers 4
    .parameter "errType"

    .prologue
    .line 467
    sparse-switch p1, :sswitch_data_7e

    .line 523
    :goto_3
    return-void

    .line 470
    :sswitch_4
    iget-object v0, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mRilMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 473
    :sswitch_b
    iget-object v0, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mRilMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 476
    :sswitch_12
    iget-object v0, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mRilMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 479
    :sswitch_19
    iget-object v0, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mRilMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 482
    :sswitch_20
    iget-object v0, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mRilMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 485
    :sswitch_27
    iget-object v0, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mRilMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 488
    :sswitch_2e
    iget-object v0, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mRilMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 491
    :sswitch_35
    iget-object v0, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mRilMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 494
    :sswitch_3d
    iget-object v0, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mRilMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 497
    :sswitch_45
    iget-object v0, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mRilMsgHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 502
    :sswitch_4d
    iget-object v0, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mRilMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 505
    :sswitch_55
    iget-object v0, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mRilMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 508
    :sswitch_5d
    iget-object v0, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mRilMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 511
    :sswitch_65
    iget-object v0, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mRilMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 514
    :sswitch_6d
    iget-object v0, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mRilMsgHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 517
    :sswitch_75
    iget-object v0, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mRilMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 467
    nop

    :sswitch_data_7e
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_b
        0x3 -> :sswitch_12
        0x4 -> :sswitch_19
        0x5 -> :sswitch_20
        0x6 -> :sswitch_27
        0x7 -> :sswitch_2e
        0x8 -> :sswitch_35
        0x9 -> :sswitch_3d
        0xa -> :sswitch_45
        0x33 -> :sswitch_4d
        0x65 -> :sswitch_55
        0x66 -> :sswitch_5d
        0x67 -> :sswitch_65
        0xc9 -> :sswitch_6d
        0x12d -> :sswitch_75
    .end sparse-switch
.end method

.method static showAlertPanel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "title"
    .parameter "text"

    .prologue
    .line 526
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 533
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 535
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 538
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 540
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 362
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 322
    const-string v1, "PhoneErrService"

    const-string v2, "Creating SmsReceiverService"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PhoneErrService"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 329
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 331
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mServiceLooper:Landroid/os/Looper;

    .line 332
    new-instance v1, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;

    iget-object v2, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;-><init>(Lcom/sec/app/RilErrorNotifier/PhoneErrService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mServiceHandler:Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;

    .line 333
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 355
    const-string v0, "PhoneErrService"

    const-string v1, "Destroying PhoneErrorReceiverService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 358
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 7
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 338
    const-string v1, "PhoneErrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v1, "result"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mResultCode:I

    .line 342
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mDataString:Ljava/lang/String;

    .line 344
    const-string v1, "PhoneErrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mResultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mResultCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v1, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mServiceHandler:Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;

    invoke-virtual {v1}, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 347
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 348
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 349
    iget-object v1, p0, Lcom/sec/app/RilErrorNotifier/PhoneErrService;->mServiceHandler:Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/sec/app/RilErrorNotifier/PhoneErrService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 350
    return-void
.end method
