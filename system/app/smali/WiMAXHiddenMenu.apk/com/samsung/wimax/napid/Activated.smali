.class public Lcom/samsung/wimax/napid/Activated;
.super Landroid/app/Activity;
.source "Activated.java"


# static fields
.field private static final DIALOG_ADD_ACT:I = 0x0

.field private static final DIALOG_WRNG_ACT:I = 0x1

.field private static final MSG_ACT_READ:I = 0x5

.field private static final MSG_ACT_UPDT:I = 0x7

.field private static final MSG_ACT_WRT:I = 0x6

.field private static final OPTION_MENU_WRITE_ACT:I = 0x0

.field private static final TYPE_ACT_READ:I = 0x2

.field private static final TYPE_ACT_UPDT:I = 0x4

.field private static final TYPE_ACT_WRT:I = 0x3


# instance fields
.field CancelBtn:Landroid/widget/Button;

.field TAG:Ljava/lang/String;

.field actText:Landroid/widget/EditText;

.field actVal:Ljava/lang/String;

.field mActValue:Landroid/widget/TextView;

.field mCancelListner:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field mOkListner:Landroid/view/View$OnClickListener;

.field mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

.field private mWimaxActReceiver:Landroid/content/BroadcastReceiver;

.field mWimaxActRespFilter:Landroid/content/IntentFilter;

.field mruUpdtState:Z

.field okBtn:Landroid/widget/Button;

.field private type:I

.field writeActRequest:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const-string v0, "WIMAX_CFG"

    iput-object v0, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lcom/samsung/wimax/napid/Activated;->writeActRequest:Z

    .line 40
    iput-boolean v1, p0, Lcom/samsung/wimax/napid/Activated;->mruUpdtState:Z

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/wimax/napid/Activated;->type:I

    .line 53
    new-instance v0, Lcom/samsung/wimax/napid/Activated$1;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/Activated$1;-><init>(Lcom/samsung/wimax/napid/Activated;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/Activated;->mHandler:Landroid/os/Handler;

    .line 85
    new-instance v0, Lcom/samsung/wimax/napid/Activated$2;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/Activated$2;-><init>(Lcom/samsung/wimax/napid/Activated;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/Activated;->mWimaxActReceiver:Landroid/content/BroadcastReceiver;

    .line 403
    new-instance v0, Lcom/samsung/wimax/napid/Activated$4;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/Activated$4;-><init>(Lcom/samsung/wimax/napid/Activated;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/Activated;->mOkListner:Landroid/view/View$OnClickListener;

    .line 426
    new-instance v0, Lcom/samsung/wimax/napid/Activated$5;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/Activated$5;-><init>(Lcom/samsung/wimax/napid/Activated;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/Activated;->mCancelListner:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private CheckWimaxOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 490
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v2, "CheckWimaxOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 493
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v2, "WiMAX modem is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :goto_17
    return v0

    .line 497
    :cond_18
    const-string v1, "WiMAX modem is OFF , Please turn on WiMAX in Settings!"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 498
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v1, "WiMAX modem is OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private ReadActivated()V
    .registers 15

    .prologue
    .line 288
    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 289
    .local v1, byReq:[B
    const/4 v2, 0x0

    .line 290
    .local v2, nIndex:I
    const/16 v9, 0x100

    .line 292
    .local v9, nBufferLen:I
    const/4 v10, -0x1

    .line 294
    .local v10, nRet:I
    const-string v11, "WiMAXSupp"

    .line 295
    .local v11, sValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/16 v3, 0x100

    const/16 v4, 0x1f4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 296
    const-string v11, "Operator"

    .line 297
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x1f5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 298
    const-string v11, "Sprint"

    .line 299
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0xe4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 300
    const-string v11, "SubscriptionParameters"

    .line 301
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20d

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 302
    const-string v11, "PrimarySubscription"

    .line 303
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20e

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 305
    const-string v11, "Activated"

    .line 306
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x210

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 310
    new-array v8, v2, [B

    .line 311
    .local v8, byTlvData:[B
    const-string v0, "%02X%02X-%02X%02X"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x3

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 312
    .local v12, strBuf:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strBuf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    const-string v0, "%02X%02X-%02X%02X"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-byte v5, v8, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-byte v5, v8, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-byte v5, v8, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x3

    aget-byte v5, v8, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 315
    .local v13, strTlv:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strTlv = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v3, "in activated OdbReadReq is callled"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbReadReq([B)I

    move-result v10

    .line 318
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v7, 0x1

    .line 320
    .local v7, SUCCESS:I
    if-ne v10, v7, :cond_14f

    .line 322
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v3, "in activated odbReadReq is success waiting for intent"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :goto_14e
    return-void

    .line 327
    :cond_14f
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v3, "activated odbReadReq failed"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14e
.end method

.method static synthetic access$000(Lcom/samsung/wimax/napid/Activated;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/wimax/napid/Activated;->ReadActivated()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/wimax/napid/Activated;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/wimax/napid/Activated;->checkWimaxStateAndUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/wimax/napid/Activated;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/samsung/wimax/napid/Activated;->type:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/wimax/napid/Activated;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/samsung/wimax/napid/Activated;->type:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/wimax/napid/Activated;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/Activated;->handleActReadResponse(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/wimax/napid/Activated;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/Activated;->setMruWorkingStatus(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/wimax/napid/Activated;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/Activated;->handleActWriteResponse(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/wimax/napid/Activated;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/Activated;->handleActUpdateResponse(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/wimax/napid/Activated;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static byteToInt([B)J
    .registers 7
    .parameter "by"

    .prologue
    .line 231
    const-wide/16 v1, 0x0

    .line 232
    .local v1, value:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    array-length v3, p0

    if-ge v0, v3, :cond_12

    .line 234
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v0, 0x8

    shl-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 236
    :cond_12
    const-string v3, "WiMAX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value LSB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-wide v1
.end method

.method private checkWimaxStateAndUpdate()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 541
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v0

    .line 542
    .local v0, wimaxState:Landroid/net/fourG/wimax/WimaxState;
    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->SCANNING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v0, v1, :cond_1b

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->READY:Landroid/net/fourG/wimax/WimaxState;

    if-eq v0, v1, :cond_1b

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-eq v0, v1, :cond_1b

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v0, v1, :cond_1b

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v0, v1, :cond_30

    .line 545
    :cond_1b
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v2, "in checkWimaxStateAndUpdate state is other then disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1, v3}, Landroid/net/fourG/wimax/Wimax4GManager;->setMruWorking(Z)V

    .line 547
    invoke-direct {p0, v3}, Lcom/samsung/wimax/napid/Activated;->setMruWorkingStatus(Z)V

    .line 548
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->disconnect()Z

    .line 565
    :goto_2f
    return-void

    .line 551
    :cond_30
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v2, "act inside  checkWimaxStateAndUpdate else part"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/wimax/napid/Activated;->setMruWorkingStatus(Z)V

    .line 554
    iget v1, p0, Lcom/samsung/wimax/napid/Activated;->type:I

    packed-switch v1, :pswitch_data_4e

    goto :goto_2f

    .line 557
    :pswitch_41
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v2, "******write actVal called  "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated;->actVal:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/wimax/napid/Activated;->writeAct(Ljava/lang/String;)V

    goto :goto_2f

    .line 554
    :pswitch_data_4e
    .packed-switch 0x3
        :pswitch_41
    .end packed-switch
.end method

.method private getMruWorkingStatus()Z
    .registers 2

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/samsung/wimax/napid/Activated;->mruUpdtState:Z

    return v0
.end method

.method private handleActReadResponse(Landroid/content/Intent;)V
    .registers 18
    .parameter "intent"

    .prologue
    .line 117
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v13, "handleActReadResponse is called"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/16 v12, 0xb

    new-array v7, v12, [B

    .line 119
    .local v7, respActIdArray:[B
    const-string v12, "WimaxOMADMRespData"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v7

    .line 121
    if-nez v7, :cond_18

    .line 165
    :goto_17
    return-void

    .line 125
    :cond_18
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    array-length v12, v7

    if-ge v1, v12, :cond_4b

    .line 127
    const-string v12, "%02X "

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aget-byte v15, v7, v1

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 128
    .local v9, strTlv:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "strTlv"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 130
    .end local v9           #strTlv:Ljava/lang/String;
    :cond_4b
    const/4 v12, 0x0

    aget-byte v6, v7, v12

    .line 131
    .local v6, res:I
    const/4 v12, 0x1

    if-ne v6, v12, :cond_ed

    array-length v12, v7

    const/4 v13, 0x1

    if-eq v12, v13, :cond_ed

    .line 135
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v13, "handleActReadResponse read success"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v12, 0x2

    new-array v5, v12, [B

    .line 138
    .local v5, nTagArray:[B
    const/4 v12, 0x2

    new-array v4, v12, [B

    .line 139
    .local v4, nLenArray:[B
    const/4 v12, 0x0

    const/4 v13, 0x1

    aget-byte v13, v7, v13

    aput-byte v13, v5, v12

    .line 140
    const/4 v12, 0x1

    const/4 v13, 0x2

    aget-byte v13, v7, v13

    aput-byte v13, v5, v12

    .line 141
    const/4 v12, 0x0

    const/4 v13, 0x3

    aget-byte v13, v7, v13

    aput-byte v13, v4, v12

    .line 142
    const/4 v12, 0x1

    const/4 v13, 0x4

    aget-byte v13, v7, v13

    aput-byte v13, v4, v12

    .line 143
    invoke-static {v5}, Lcom/samsung/wimax/napid/Activated;->byteToInt([B)J

    move-result-wide v10

    .line 144
    .local v10, tag:J
    invoke-static {v4}, Lcom/samsung/wimax/napid/Activated;->byteToInt([B)J

    move-result-wide v2

    .line 145
    .local v2, len:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleActReadResponse tag ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "len =  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v8, Ljava/lang/String;

    const/4 v12, 0x5

    long-to-int v13, v2

    invoke-direct {v8, v7, v12, v13}, Ljava/lang/String;-><init>([BII)V

    .line 147
    .local v8, sValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleActReadResponse value  ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v12, "0"

    invoke-virtual {v8, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_e2

    .line 150
    const-string v8, "FALSE"

    .line 156
    :cond_d9
    :goto_d9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wimax/napid/Activated;->mActValue:Landroid/widget/TextView;

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_17

    .line 152
    :cond_e2
    const-string v12, "1"

    invoke-virtual {v8, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_d9

    .line 154
    const-string v8, "TRUE"

    goto :goto_d9

    .line 163
    .end local v2           #len:J
    .end local v4           #nLenArray:[B
    .end local v5           #nTagArray:[B
    .end local v8           #sValue:Ljava/lang/String;
    .end local v10           #tag:J
    :cond_ed
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v13, "handleActReadResponse read fails"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17
.end method

.method private handleActUpdateResponse(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 200
    iget-object v3, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v4, "handleActUpdateResponse is called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/16 v3, 0xb

    new-array v2, v3, [B

    .line 202
    .local v2, respActIdArray:[B
    const-string v3, "WimaxOMADMRespData"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 203
    if-nez v2, :cond_15

    .line 226
    :cond_14
    :goto_14
    return-void

    .line 207
    :cond_15
    const/4 v3, 0x0

    aget-byte v1, v2, v3

    .line 208
    .local v1, res:I
    array-length v3, v2

    if-ne v3, v5, :cond_14

    .line 210
    iget-object v3, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v4, "handleActUpdateResponse update callback"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    if-ne v1, v5, :cond_3b

    .line 214
    iget-object v3, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v4, "handleActUpdateResponse success update call"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v3, 0x2

    iput v3, p0, Lcom/samsung/wimax/napid/Activated;->type:I

    .line 216
    iget-object v3, p0, Lcom/samsung/wimax/napid/Activated;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 217
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/wimax/napid/Activated;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14

    .line 222
    .end local v0           #msg:Landroid/os/Message;
    :cond_3b
    iget-object v3, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v4, "handleActUpdateResponse failed update call"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private handleActWriteResponse(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 169
    iget-object v3, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v4, "handleActWriteResponse is called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/16 v3, 0xb

    new-array v2, v3, [B

    .line 171
    .local v2, respActIdArray:[B
    const-string v3, "WimaxOMADMRespData"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 172
    if-nez v2, :cond_15

    .line 195
    :cond_14
    :goto_14
    return-void

    .line 176
    :cond_15
    const/4 v3, 0x0

    aget-byte v1, v2, v3

    .line 177
    .local v1, res:I
    array-length v3, v2

    if-ne v3, v5, :cond_14

    .line 179
    iget-object v3, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v4, "handleActWriteResponse write callback"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-ne v1, v5, :cond_3b

    .line 182
    iget-object v3, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v4, "handleActWriteResponse success write calback"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v3, 0x4

    iput v3, p0, Lcom/samsung/wimax/napid/Activated;->type:I

    .line 184
    iget-object v3, p0, Lcom/samsung/wimax/napid/Activated;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 185
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/wimax/napid/Activated;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14

    .line 191
    .end local v0           #msg:Landroid/os/Message;
    :cond_3b
    iget-object v3, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v4, "handleActWriteResponse failed write callback"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private setMruWorkingStatus(Z)V
    .registers 2
    .parameter "mruStateVal"

    .prologue
    .line 534
    iput-boolean p1, p0, Lcom/samsung/wimax/napid/Activated;->mruUpdtState:Z

    .line 536
    return-void
.end method

.method private writeAct(Ljava/lang/String;)V
    .registers 16
    .parameter "value"

    .prologue
    .line 436
    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 437
    .local v1, byReq:[B
    const/4 v2, 0x0

    .line 438
    .local v2, nIndex:I
    const/16 v9, 0x100

    .line 440
    .local v9, nBufferLen:I
    const/4 v10, -0x1

    .line 442
    .local v10, nRet:I
    const-string v11, "WiMAXSupp"

    .line 443
    .local v11, sValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/16 v3, 0x100

    const/16 v4, 0x1f4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 444
    const-string v11, "Operator"

    .line 445
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x1f5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 446
    const-string v11, "Sprint"

    .line 447
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0xe4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 448
    const-string v11, "SubscriptionParameters"

    .line 449
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20d

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 450
    const-string v11, "PrimarySubscription"

    .line 451
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20e

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 454
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15f

    .line 456
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v3, "-----------TRUE -----------"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string p1, "TRUE"

    .line 464
    :cond_82
    :goto_82
    move-object v11, p1

    .line 465
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x210

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 466
    new-array v8, v2, [B

    .line 467
    .local v8, byTlvData:[B
    const-string v0, "%02X%02X-%02X%02X"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x3

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 468
    .local v12, strBuf:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strBuf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    const-string v0, "%02X%02X-%02X%02X"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-byte v5, v8, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-byte v5, v8, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-byte v5, v8, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x3

    aget-byte v5, v8, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 471
    .local v13, strTlv:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strTlv = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v3, "in activated OdbWriteReq is callled"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbWriteReq([B)I

    move-result v10

    .line 476
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v7, 0x1

    .line 478
    .local v7, SUCCESS:I
    if-ne v10, v7, :cond_172

    .line 480
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v3, "in activated OdbWriteReq is success waiting for intent"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :goto_15e
    return-void

    .line 459
    .end local v7           #SUCCESS:I
    .end local v8           #byTlvData:[B
    .end local v12           #strBuf:Ljava/lang/String;
    .end local v13           #strTlv:Ljava/lang/String;
    :cond_15f
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_82

    .line 461
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v3, "-----------FALSE -----------"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string p1, "FALSE"

    goto/16 :goto_82

    .line 485
    .restart local v7       #SUCCESS:I
    .restart local v8       #byTlvData:[B
    .restart local v12       #strBuf:Ljava/lang/String;
    .restart local v13       #strTlv:Ljava/lang/String;
    :cond_172
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v3, "activated OdbWriteReq failed"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15e
.end method


# virtual methods
.method createActDlg()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 388
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 389
    .local v0, dialog:Landroid/app/Dialog;
    const v1, 0x7f03000b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 390
    const-string v1, "Add Activation value"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 391
    const v1, 0x7f0800d4

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/wimax/napid/Activated;->actText:Landroid/widget/EditText;

    .line 392
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated;->actText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 393
    const v1, 0x7f0800d2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/wimax/napid/Activated;->okBtn:Landroid/widget/Button;

    .line 394
    const v1, 0x7f0800d3

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/wimax/napid/Activated;->CancelBtn:Landroid/widget/Button;

    .line 396
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated;->okBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/wimax/napid/Activated;->mOkListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated;->CancelBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/wimax/napid/Activated;->mCancelListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 399
    return-object v0
.end method

.method public handleWimaxStateChange(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    .line 507
    const-string v2, "WimaxState"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 508
    .local v0, ordinal:I
    invoke-static {}, Landroid/net/fourG/wimax/WimaxState;->values()[Landroid/net/fourG/wimax/WimaxState;

    move-result-object v2

    aget-object v1, v2, v0

    .line 509
    .local v1, wimaxState:Landroid/net/fourG/wimax/WimaxState;
    iget-object v2, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onReceive] Received wimaxstate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v1, v2, :cond_40

    .line 514
    iget-object v2, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v3, "act DisConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-direct {p0}, Lcom/samsung/wimax/napid/Activated;->getMruWorkingStatus()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 518
    iget-object v2, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v3, "in act handleWimaxStateChange calling  checkwimaxsate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-direct {p0}, Lcom/samsung/wimax/napid/Activated;->checkWimaxStateAndUpdate()V

    .line 524
    :cond_40
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v1, "onconfig change called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 572
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 245
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/Activated;->setContentView(I)V

    .line 246
    const v0, 0x7f0800c6

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/Activated;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/wimax/napid/Activated;->mActValue:Landroid/widget/TextView;

    .line 248
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/wimax/napid/Activated;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 249
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_34

    .line 378
    const/4 v0, 0x0

    :goto_5
    move-object v1, v0

    .line 380
    :goto_6
    return-object v1

    .line 363
    :pswitch_7
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/Activated;->createActDlg()Landroid/app/Dialog;

    move-result-object v0

    .line 364
    goto :goto_5

    .line 366
    :pswitch_c
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Wrong value entered!!!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Please enter either 0 or 1."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/samsung/wimax/napid/Activated$3;

    invoke-direct {v3, p0}, Lcom/samsung/wimax/napid/Activated$3;-><init>(Lcom/samsung/wimax/napid/Activated;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_6

    .line 361
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 335
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 336
    const-string v0, "Write Activation"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 337
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 343
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 344
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 351
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 347
    :pswitch_c
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/Activated;->writeActDlg()V

    .line 348
    const/4 v0, 0x1

    goto :goto_b

    .line 344
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 276
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 277
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v1, "act onPause is callled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/samsung/wimax/napid/Activated;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GManager;->setMruWorking(Z)V

    .line 279
    invoke-direct {p0, v2}, Lcom/samsung/wimax/napid/Activated;->setMruWorkingStatus(Z)V

    .line 280
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/Activated;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated;->mWimaxActReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 284
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 254
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated;->TAG:Ljava/lang/String;

    const-string v2, "onResume is callled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/wimax/napid/Activated;->mWimaxActRespFilter:Landroid/content/IntentFilter;

    .line 258
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated;->mWimaxActRespFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wimax.WIMAX_RESPONSE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated;->mWimaxActRespFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/Activated;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/wimax/napid/Activated;->mWimaxActReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/wimax/napid/Activated;->mWimaxActRespFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    invoke-direct {p0}, Lcom/samsung/wimax/napid/Activated;->CheckWimaxOn()Z

    move-result v1

    if-nez v1, :cond_38

    .line 263
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated;->mActValue:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :goto_37
    return-void

    .line 266
    :cond_38
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/wimax/napid/Activated;->type:I

    .line 267
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 268
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/wimax/napid/Activated;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_37
.end method

.method public writeActDlg()V
    .registers 2

    .prologue
    .line 356
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/Activated;->showDialog(I)V

    .line 357
    return-void
.end method
