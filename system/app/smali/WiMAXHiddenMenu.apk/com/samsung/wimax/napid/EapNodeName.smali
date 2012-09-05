.class public Lcom/samsung/wimax/napid/EapNodeName;
.super Landroid/app/Activity;
.source "EapNodeName.java"


# static fields
.field private static final DIALOG_ADD_EAPNAME:I = 0x0

.field private static final MSG_ENN_READ:I = 0x4

.field private static final MSG_ENN_UPDT:I = 0x6

.field private static final MSG_ENN_WRT:I = 0x5

.field private static final OPTION_MENU_WRITE_EAPNAME:I = 0x0

.field private static final TYPE_ENN_READ:I = 0x1

.field private static final TYPE_ENN_UPDT:I = 0x3

.field private static final TYPE_ENN_WRT:I = 0x2

.field public static writeEapNameRequest:Z


# instance fields
.field CancelBtn:Landroid/widget/Button;

.field TAG:Ljava/lang/String;

.field eapName:Landroid/widget/TextView;

.field eapText:Landroid/widget/EditText;

.field eapVal:Ljava/lang/String;

.field mCancelListner:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field mOkListner:Landroid/view/View$OnClickListener;

.field mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

.field private mWimaxEapNameReceiver:Landroid/content/BroadcastReceiver;

.field mWimaxEapNameRespFilter:Landroid/content/IntentFilter;

.field mWimaxRmRespFilter:Landroid/content/IntentFilter;

.field mruUpdtState:Z

.field okBtn:Landroid/widget/Button;

.field type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/wimax/napid/EapNodeName;->writeEapNameRequest:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->type:I

    .line 44
    const-string v0, "WIMAX_CFG"

    iput-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->mruUpdtState:Z

    .line 56
    new-instance v0, Lcom/samsung/wimax/napid/EapNodeName$1;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/EapNodeName$1;-><init>(Lcom/samsung/wimax/napid/EapNodeName;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->mHandler:Landroid/os/Handler;

    .line 87
    new-instance v0, Lcom/samsung/wimax/napid/EapNodeName$2;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/EapNodeName$2;-><init>(Lcom/samsung/wimax/napid/EapNodeName;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimaxEapNameReceiver:Landroid/content/BroadcastReceiver;

    .line 382
    new-instance v0, Lcom/samsung/wimax/napid/EapNodeName$3;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/EapNodeName$3;-><init>(Lcom/samsung/wimax/napid/EapNodeName;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->mOkListner:Landroid/view/View$OnClickListener;

    .line 395
    new-instance v0, Lcom/samsung/wimax/napid/EapNodeName$4;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/EapNodeName$4;-><init>(Lcom/samsung/wimax/napid/EapNodeName;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->mCancelListner:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private CheckWimaxOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 450
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v2, "CheckWimaxOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 453
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v2, "WiMAX modem is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :goto_17
    return v0

    .line 457
    :cond_18
    const-string v1, "WiMAX modem is OFF , Please turn on WiMAX in Settings!"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 458
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v1, "WiMAX modem is OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private ReadEapName()V
    .registers 15

    .prologue
    .line 280
    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 281
    .local v1, byReq:[B
    const/4 v2, 0x0

    .line 282
    .local v2, nIndex:I
    const/16 v9, 0x100

    .line 284
    .local v9, nBufferLen:I
    const/4 v10, -0x1

    .line 285
    .local v10, nRet:I
    const-string v11, "WiMAXSupp"

    .line 286
    .local v11, sValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/16 v3, 0x100

    const/16 v4, 0x1f4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 287
    const-string v11, "Operator"

    .line 288
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x1f5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 289
    const-string v11, "Sprint"

    .line 290
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0xe4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 291
    const-string v11, "SubscriptionParameters"

    .line 292
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20d

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 293
    const-string v11, "PrimarySubscription"

    .line 294
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20e

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 295
    const-string v11, "Name"

    .line 296
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20f

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 299
    new-array v8, v2, [B

    .line 300
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

    .line 301
    .local v12, strBuf:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

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

    .line 303
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
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

    .line 306
    .local v13, strTlv:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

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

    .line 307
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v3, "in eapname  OdbReadReq is callled"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbReadReq([B)I

    move-result v10

    .line 309
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

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

    .line 310
    const/4 v7, 0x1

    .line 311
    .local v7, SUCCESS:I
    if-ne v10, v7, :cond_14f

    .line 314
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v3, "in EapNodeName odbReadReq is success waiting for intent"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_14e
    return-void

    .line 318
    :cond_14f
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v3, "EapNodeName OdbReadReq failed"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14e
.end method

.method static synthetic access$000(Lcom/samsung/wimax/napid/EapNodeName;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/wimax/napid/EapNodeName;->ReadEapName()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/wimax/napid/EapNodeName;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/wimax/napid/EapNodeName;->checkWimaxStateAndUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/wimax/napid/EapNodeName;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/EapNodeName;->handleEapNameReadResponse(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/wimax/napid/EapNodeName;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/EapNodeName;->setMruWorkingStatus(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/wimax/napid/EapNodeName;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/EapNodeName;->handleEapNameWriteResponse(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/wimax/napid/EapNodeName;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/EapNodeName;->handleEapNameUpdateResponse(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/wimax/napid/EapNodeName;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static byteToInt([B)J
    .registers 7
    .parameter "by"

    .prologue
    .line 225
    const-wide/16 v1, 0x0

    .line 226
    .local v1, value:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    array-length v3, p0

    if-ge v0, v3, :cond_12

    .line 228
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v0, 0x8

    shl-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 230
    :cond_12
    const-string v3, "EapNodeName"

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

    .line 231
    return-wide v1
.end method

.method private checkWimaxStateAndUpdate()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 501
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v0

    .line 502
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

    .line 505
    :cond_1b
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v2, "in checkWimaxStateAndUpdate state is other then disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1, v3}, Landroid/net/fourG/wimax/Wimax4GManager;->setMruWorking(Z)V

    .line 507
    invoke-direct {p0, v3}, Lcom/samsung/wimax/napid/EapNodeName;->setMruWorkingStatus(Z)V

    .line 508
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->disconnect()Z

    .line 526
    :goto_2f
    return-void

    .line 511
    :cond_30
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v2, "eaptype inside  checkWimaxStateAndUpdate else part"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/wimax/napid/EapNodeName;->setMruWorkingStatus(Z)V

    .line 514
    iget v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->type:I

    packed-switch v1, :pswitch_data_4e

    goto :goto_2f

    .line 517
    :pswitch_41
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v2, "******write eaptype called  "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->eapVal:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/wimax/napid/EapNodeName;->writeEapName(Ljava/lang/String;)V

    goto :goto_2f

    .line 514
    :pswitch_data_4e
    .packed-switch 0x2
        :pswitch_41
    .end packed-switch
.end method

.method private getMruWorkingStatus()Z
    .registers 2

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->mruUpdtState:Z

    return v0
.end method

.method private handleEapNameReadResponse(Landroid/content/Intent;)V
    .registers 16
    .parameter "intent"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 117
    iget-object v9, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v10, "handleEapNameReadResponse is called"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/16 v9, 0xb

    new-array v5, v9, [B

    .line 119
    .local v5, respEnnIdArray:[B
    const-string v9, "WimaxOMADMRespData"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    .line 120
    if-nez v5, :cond_17

    .line 160
    :goto_16
    return-void

    .line 124
    :cond_17
    aget-byte v4, v5, v12

    .line 125
    .local v4, res:I
    if-ne v4, v11, :cond_a6

    array-length v9, v5

    if-eq v9, v11, :cond_a6

    .line 128
    iget-object v9, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v10, "handleEapNameReadResponse read success"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-array v3, v13, [B

    .line 131
    .local v3, nTagArray:[B
    new-array v2, v13, [B

    .line 132
    .local v2, nLenArray:[B
    aget-byte v9, v5, v11

    aput-byte v9, v3, v12

    .line 133
    aget-byte v9, v5, v13

    aput-byte v9, v3, v11

    .line 134
    const/4 v9, 0x3

    aget-byte v9, v5, v9

    aput-byte v9, v2, v12

    .line 135
    const/4 v9, 0x4

    aget-byte v9, v5, v9

    aput-byte v9, v2, v11

    .line 136
    invoke-static {v3}, Lcom/samsung/wimax/napid/EapNodeName;->byteToInt([B)J

    move-result-wide v7

    .line 137
    .local v7, tag:J
    invoke-static {v2}, Lcom/samsung/wimax/napid/EapNodeName;->byteToInt([B)J

    move-result-wide v0

    .line 138
    .local v0, len:J
    iget-object v9, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleEapNameReadResponse tag ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "len =  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v6, Ljava/lang/String;

    const/4 v9, 0x5

    long-to-int v10, v0

    invoke-direct {v6, v5, v9, v10}, Ljava/lang/String;-><init>([BII)V

    .line 140
    .local v6, sValue:Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleEapNameReadResponse value  ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v9, "13"

    invoke-virtual {v6, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_9b

    .line 143
    const-string v6, "EAPTLS"

    .line 149
    :cond_94
    :goto_94
    iget-object v9, p0, Lcom/samsung/wimax/napid/EapNodeName;->eapName:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    .line 145
    :cond_9b
    const-string v9, "21"

    invoke-virtual {v6, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_94

    .line 147
    const-string v6, "EAPTTLS"

    goto :goto_94

    .line 155
    .end local v0           #len:J
    .end local v2           #nLenArray:[B
    .end local v3           #nTagArray:[B
    .end local v6           #sValue:Ljava/lang/String;
    .end local v7           #tag:J
    :cond_a6
    iget-object v9, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v10, "handleEapNameReadResponse read fails"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16
.end method

.method private handleEapNameUpdateResponse(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 194
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v4, "handleEapNameUpdateResponse is called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/16 v3, 0xb

    new-array v2, v3, [B

    .line 196
    .local v2, respEnnIdArray:[B
    const-string v3, "WimaxOMADMRespData"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 197
    if-nez v2, :cond_15

    .line 221
    :cond_14
    :goto_14
    return-void

    .line 201
    :cond_15
    const/4 v3, 0x0

    aget-byte v1, v2, v3

    .line 202
    .local v1, res:I
    array-length v3, v2

    if-ne v3, v5, :cond_14

    .line 204
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v4, "update callback"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    if-ne v1, v5, :cond_3a

    .line 207
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v4, " handleEapNameUpdateResponse success update call"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iput v5, p0, Lcom/samsung/wimax/napid/EapNodeName;->type:I

    .line 210
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapNodeName;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 211
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapNodeName;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14

    .line 217
    .end local v0           #msg:Landroid/os/Message;
    :cond_3a
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v4, "handleEapNameUpdateResponse failed update call"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private handleEapNameWriteResponse(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 164
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v4, "handleEapNameWriteResponse is called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/16 v3, 0xb

    new-array v2, v3, [B

    .line 166
    .local v2, respEnnIdArray:[B
    const-string v3, "WimaxOMADMRespData"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 167
    if-nez v2, :cond_15

    .line 190
    :cond_14
    :goto_14
    return-void

    .line 171
    :cond_15
    const/4 v3, 0x0

    aget-byte v1, v2, v3

    .line 172
    .local v1, res:I
    array-length v3, v2

    if-ne v3, v5, :cond_14

    .line 174
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v4, "handleEapNameWriteResponse write callback"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-ne v1, v5, :cond_3b

    .line 177
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v4, " handleEapNameWriteResponse success write calback"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v3, 0x3

    iput v3, p0, Lcom/samsung/wimax/napid/EapNodeName;->type:I

    .line 179
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapNodeName;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 180
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapNodeName;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14

    .line 185
    .end local v0           #msg:Landroid/os/Message;
    :cond_3b
    iget-object v3, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v4, "handleEapNameWriteResponse failed write callback"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private setMruWorkingStatus(Z)V
    .registers 2
    .parameter "mruStateVal"

    .prologue
    .line 494
    iput-boolean p1, p0, Lcom/samsung/wimax/napid/EapNodeName;->mruUpdtState:Z

    .line 496
    return-void
.end method

.method private writeEapName(Ljava/lang/String;)V
    .registers 16
    .parameter "value"

    .prologue
    .line 406
    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 407
    .local v1, byReq:[B
    const/4 v2, 0x0

    .line 408
    .local v2, nIndex:I
    const/16 v9, 0x100

    .line 410
    .local v9, nBufferLen:I
    const/4 v10, -0x1

    .line 411
    .local v10, nRet:I
    const-string v11, "WiMAXSupp"

    .line 412
    .local v11, sValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/16 v3, 0x100

    const/16 v4, 0x1f4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 413
    const-string v11, "Operator"

    .line 414
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x1f5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 415
    const-string v11, "Sprint"

    .line 416
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0xe4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 417
    const-string v11, "SubscriptionParameters"

    .line 418
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20d

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 419
    const-string v11, "PrimarySubscription"

    .line 420
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20e

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 421
    move-object v11, p1

    .line 422
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20f

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 423
    new-array v8, v2, [B

    .line 424
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

    .line 425
    .local v12, strBuf:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

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

    .line 427
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 429
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

    .line 430
    .local v13, strTlv:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

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

    .line 431
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v3, "in eapnodename  OdbWriteReq is callled"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/wimax/napid/EapNodeName;->writeEapNameRequest:Z

    .line 433
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbWriteReq([B)I

    move-result v10

    .line 435
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

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

    .line 436
    const/4 v7, 0x1

    .line 437
    .local v7, SUCCESS:I
    if-ne v10, v7, :cond_151

    .line 440
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v3, "in eapnodename OdbWriteReq is success waiting for intent"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_150
    return-void

    .line 444
    :cond_151
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v3, "eapnodename OdbWriteReq failed"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_150
.end method


# virtual methods
.method createActDlg()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 368
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 369
    .local v0, dialog:Landroid/app/Dialog;
    const v1, 0x7f03000c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 370
    const-string v1, "Add EAPNodeName value"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 371
    const v1, 0x7f0800d5

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->eapText:Landroid/widget/EditText;

    .line 372
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->eapText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 373
    const v1, 0x7f0800d2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->okBtn:Landroid/widget/Button;

    .line 374
    const v1, 0x7f0800d3

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->CancelBtn:Landroid/widget/Button;

    .line 375
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->okBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/wimax/napid/EapNodeName;->mOkListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->CancelBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/wimax/napid/EapNodeName;->mCancelListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 378
    return-object v0
.end method

.method public handleWimaxStateChange(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    .line 467
    const-string v2, "WimaxState"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 468
    .local v0, ordinal:I
    invoke-static {}, Landroid/net/fourG/wimax/WimaxState;->values()[Landroid/net/fourG/wimax/WimaxState;

    move-result-object v2

    aget-object v1, v2, v0

    .line 469
    .local v1, wimaxState:Landroid/net/fourG/wimax/WimaxState;
    iget-object v2, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

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

    .line 471
    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v1, v2, :cond_40

    .line 474
    iget-object v2, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v3, "eapnode DisConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-direct {p0}, Lcom/samsung/wimax/napid/EapNodeName;->getMruWorkingStatus()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 478
    iget-object v2, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v3, "in eapnode handleWimaxStateChange calling  checkwimaxsate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-direct {p0}, Lcom/samsung/wimax/napid/EapNodeName;->checkWimaxStateAndUpdate()V

    .line 484
    :cond_40
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 530
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v1, "onconfig change called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 533
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 237
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/EapNodeName;->setContentView(I)V

    .line 238
    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/EapNodeName;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->eapName:Landroid/widget/TextView;

    .line 240
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 241
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "id"

    .prologue
    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_c

    .line 358
    const/4 v0, 0x0

    .line 360
    :goto_5
    return-object v0

    .line 354
    :pswitch_6
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/EapNodeName;->createActDlg()Landroid/app/Dialog;

    move-result-object v0

    .line 355
    goto :goto_5

    .line 352
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 326
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 327
    const-string v0, "Write Eapnodename"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 328
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 335
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 336
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_12

    .line 345
    :goto_b
    return v0

    .line 340
    :pswitch_c
    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/EapNodeName;->showDialog(I)V

    .line 341
    const/4 v0, 0x1

    goto :goto_b

    .line 336
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

    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 271
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v1, "EapNodeName onPause is callled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GManager;->setMruWorking(Z)V

    .line 273
    invoke-direct {p0, v2}, Lcom/samsung/wimax/napid/EapNodeName;->setMruWorkingStatus(Z)V

    .line 274
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/EapNodeName;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimaxEapNameReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 277
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 246
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 247
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->TAG:Ljava/lang/String;

    const-string v2, "EapNodeName onResume is callled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimaxEapNameRespFilter:Landroid/content/IntentFilter;

    .line 252
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimaxEapNameRespFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wimax.WIMAX_RESPONSE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimaxEapNameRespFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/EapNodeName;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimaxEapNameReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/wimax/napid/EapNodeName;->mWimaxEapNameRespFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    invoke-direct {p0}, Lcom/samsung/wimax/napid/EapNodeName;->CheckWimaxOn()Z

    move-result v1

    if-nez v1, :cond_38

    .line 257
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->eapName:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :goto_37
    return-void

    .line 260
    :cond_38
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->type:I

    .line 261
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 262
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/wimax/napid/EapNodeName;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_37
.end method
