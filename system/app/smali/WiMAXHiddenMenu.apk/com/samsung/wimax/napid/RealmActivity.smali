.class public Lcom/samsung/wimax/napid/RealmActivity;
.super Landroid/app/Activity;
.source "RealmActivity.java"


# static fields
.field private static final DIALOG_ADD_REALM:I = 0x0

.field private static final MSG_RLM_READ:I = 0x4

.field private static final MSG_RLM_UPDT:I = 0x6

.field private static final MSG_RLM_WRT:I = 0x5

.field private static final OPTION_MENU_WRITE_RLM:I = 0x0

.field private static final TYPE_RLM_READ:I = 0x1

.field private static final TYPE_RLM_UPDT:I = 0x3

.field private static final TYPE_RLM_WRT:I = 0x2


# instance fields
.field CancelBtn:Landroid/widget/Button;

.field TAG:Ljava/lang/String;

.field mCancelListner:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field mOkListner:Landroid/view/View$OnClickListener;

.field mRmValue:Landroid/widget/TextView;

.field mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

.field private mWimaxRmReceiver:Landroid/content/BroadcastReceiver;

.field mWimaxRmRespFilter:Landroid/content/IntentFilter;

.field private m_nCurrentStateDetail:I

.field mruUpdtState:Z

.field okBtn:Landroid/widget/Button;

.field rlmText:Landroid/widget/EditText;

.field rlmVal:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    iput v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->m_nCurrentStateDetail:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->type:I

    .line 47
    iput-boolean v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->mruUpdtState:Z

    .line 48
    const-string v0, "WIMAX_CFG"

    iput-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/samsung/wimax/napid/RealmActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/RealmActivity$1;-><init>(Lcom/samsung/wimax/napid/RealmActivity;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/samsung/wimax/napid/RealmActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/RealmActivity$2;-><init>(Lcom/samsung/wimax/napid/RealmActivity;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimaxRmReceiver:Landroid/content/BroadcastReceiver;

    .line 370
    new-instance v0, Lcom/samsung/wimax/napid/RealmActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/RealmActivity$3;-><init>(Lcom/samsung/wimax/napid/RealmActivity;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mOkListner:Landroid/view/View$OnClickListener;

    .line 383
    new-instance v0, Lcom/samsung/wimax/napid/RealmActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/napid/RealmActivity$4;-><init>(Lcom/samsung/wimax/napid/RealmActivity;)V

    iput-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mCancelListner:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private CheckWimaxOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 439
    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v2, "CheckWimaxOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 442
    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v2, "WiMAX modem is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :goto_17
    return v0

    .line 446
    :cond_18
    const-string v1, "WiMAX modem is OFF , Please turn on WiMAX in Settings!"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 447
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v1, "WiMAX modem is OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v0, 0x0

    goto :goto_17
.end method

.method static synthetic access$000(Lcom/samsung/wimax/napid/RealmActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/wimax/napid/RealmActivity;->checkWimaxStateAndUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/wimax/napid/RealmActivity;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/RealmActivity;->handleRlmReadResponse(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/wimax/napid/RealmActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/RealmActivity;->setMruWorkingStatus(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/wimax/napid/RealmActivity;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/RealmActivity;->handleRlmWriteResponse(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/wimax/napid/RealmActivity;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/wimax/napid/RealmActivity;->handleRlmUpdateResponse(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/wimax/napid/RealmActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static byteToInt([B)J
    .registers 7
    .parameter "by"

    .prologue
    .line 214
    const-wide/16 v1, 0x0

    .line 215
    .local v1, value:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    array-length v3, p0

    if-ge v0, v3, :cond_12

    .line 217
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v0, 0x8

    shl-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 219
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

    .line 220
    return-wide v1
.end method

.method private checkWimaxStateAndUpdate()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 490
    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v0

    .line 491
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

    .line 494
    :cond_1b
    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v2, "in checkWimaxStateAndUpdate state is other then disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1, v3}, Landroid/net/fourG/wimax/Wimax4GManager;->setMruWorking(Z)V

    .line 496
    invoke-direct {p0, v3}, Lcom/samsung/wimax/napid/RealmActivity;->setMruWorkingStatus(Z)V

    .line 497
    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->disconnect()Z

    .line 515
    :goto_2f
    return-void

    .line 500
    :cond_30
    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v2, "Rlm inside  checkWimaxStateAndUpdate else part"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/wimax/napid/RealmActivity;->setMruWorkingStatus(Z)V

    .line 503
    iget v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->type:I

    packed-switch v1, :pswitch_data_4e

    goto :goto_2f

    .line 506
    :pswitch_41
    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v2, "******write Rlm called  "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->rlmVal:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/wimax/napid/RealmActivity;->writeRlm(Ljava/lang/String;)V

    goto :goto_2f

    .line 503
    :pswitch_data_4e
    .packed-switch 0x2
        :pswitch_41
    .end packed-switch
.end method

.method private getMruWorkingStatus()Z
    .registers 2

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mruUpdtState:Z

    return v0
.end method

.method private handleRlmReadResponse(Landroid/content/Intent;)V
    .registers 16
    .parameter "intent"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 113
    iget-object v9, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v10, "handleRlmReadResponse is called"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/16 v9, 0xb

    new-array v5, v9, [B

    .line 115
    .local v5, respRlmIdArray:[B
    const-string v9, "WimaxOMADMRespData"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    .line 116
    if-nez v5, :cond_17

    .line 147
    :goto_16
    return-void

    .line 120
    :cond_17
    aget-byte v4, v5, v12

    .line 121
    .local v4, res:I
    if-ne v4, v11, :cond_90

    array-length v9, v5

    if-eq v9, v11, :cond_90

    .line 125
    iget-object v9, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v10, "handleRlmReadResponse  read success"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-array v3, v13, [B

    .line 128
    .local v3, nTagArray:[B
    new-array v2, v13, [B

    .line 129
    .local v2, nLenArray:[B
    aget-byte v9, v5, v11

    aput-byte v9, v3, v12

    .line 130
    aget-byte v9, v5, v13

    aput-byte v9, v3, v11

    .line 131
    const/4 v9, 0x3

    aget-byte v9, v5, v9

    aput-byte v9, v2, v12

    .line 132
    const/4 v9, 0x4

    aget-byte v9, v5, v9

    aput-byte v9, v2, v11

    .line 133
    invoke-static {v3}, Lcom/samsung/wimax/napid/RealmActivity;->byteToInt([B)J

    move-result-wide v7

    .line 134
    .local v7, tag:J
    invoke-static {v2}, Lcom/samsung/wimax/napid/RealmActivity;->byteToInt([B)J

    move-result-wide v0

    .line 135
    .local v0, len:J
    iget-object v9, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleRlmReadResponse tag ="

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

    .line 136
    new-instance v6, Ljava/lang/String;

    const/4 v9, 0x5

    long-to-int v10, v0

    invoke-direct {v6, v5, v9, v10}, Ljava/lang/String;-><init>([BII)V

    .line 137
    .local v6, sValue:Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleRlmReadResponse value  ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v9, p0, Lcom/samsung/wimax/napid/RealmActivity;->mRmValue:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    .line 145
    .end local v0           #len:J
    .end local v2           #nLenArray:[B
    .end local v3           #nTagArray:[B
    .end local v6           #sValue:Ljava/lang/String;
    .end local v7           #tag:J
    :cond_90
    iget-object v9, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v10, "handleRlmReadResponse read fails"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16
.end method

.method private handleRlmUpdateResponse(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 180
    iget-object v3, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v4, "handleRlmUpdateResponse is called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/16 v3, 0xb

    new-array v2, v3, [B

    .line 182
    .local v2, respRlmIdArray:[B
    const-string v3, "WimaxOMADMRespData"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 183
    if-nez v2, :cond_15

    .line 208
    :cond_14
    :goto_14
    return-void

    .line 187
    :cond_15
    const/4 v3, 0x0

    aget-byte v1, v2, v3

    .line 188
    .local v1, res:I
    array-length v3, v2

    if-ne v3, v5, :cond_14

    .line 190
    iget-object v3, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v4, "update callback"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    if-ne v1, v5, :cond_3a

    .line 194
    iget-object v3, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v4, "handleRlmUpdateResponse success update call"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iput v5, p0, Lcom/samsung/wimax/napid/RealmActivity;->type:I

    .line 196
    iget-object v3, p0, Lcom/samsung/wimax/napid/RealmActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 197
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/wimax/napid/RealmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14

    .line 203
    .end local v0           #msg:Landroid/os/Message;
    :cond_3a
    iget-object v3, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v4, "handleRlmUpdateResponse failed update call"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private handleRlmWriteResponse(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 151
    iget-object v3, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v4, "handleRlmWriteResponse is called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/16 v3, 0xb

    new-array v2, v3, [B

    .line 153
    .local v2, respRlmIdArray:[B
    const-string v3, "WimaxOMADMRespData"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 154
    if-nez v2, :cond_15

    .line 176
    :cond_14
    :goto_14
    return-void

    .line 158
    :cond_15
    const/4 v3, 0x0

    aget-byte v1, v2, v3

    .line 159
    .local v1, res:I
    array-length v3, v2

    if-ne v3, v5, :cond_14

    .line 161
    iget-object v3, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v4, "handleRlmWriteResponse write callback"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    if-ne v1, v5, :cond_3b

    .line 164
    iget-object v3, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v4, "handleRlmWriteResponse success write calback"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v3, 0x3

    iput v3, p0, Lcom/samsung/wimax/napid/RealmActivity;->type:I

    .line 166
    iget-object v3, p0, Lcom/samsung/wimax/napid/RealmActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 167
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/wimax/napid/RealmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14

    .line 172
    .end local v0           #msg:Landroid/os/Message;
    :cond_3b
    iget-object v3, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v4, " handleRlmWriteResponse failed write callback"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private setMruWorkingStatus(Z)V
    .registers 2
    .parameter "mruStateVal"

    .prologue
    .line 483
    iput-boolean p1, p0, Lcom/samsung/wimax/napid/RealmActivity;->mruUpdtState:Z

    .line 485
    return-void
.end method

.method private writeRlm(Ljava/lang/String;)V
    .registers 16
    .parameter "vlaue"

    .prologue
    .line 394
    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 395
    .local v1, byReq:[B
    const/4 v2, 0x0

    .line 396
    .local v2, nIndex:I
    const/16 v9, 0x100

    .line 398
    .local v9, nBufferLen:I
    const/4 v10, -0x1

    .line 399
    .local v10, nRet:I
    const-string v11, "WiMAXSupp"

    .line 400
    .local v11, sValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/16 v3, 0x100

    const/16 v4, 0x1f4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 401
    const-string v11, "Operator"

    .line 402
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x1f5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 403
    const-string v11, "Sprint"

    .line 404
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0xe4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 405
    const-string v11, "SubscriptionParameters"

    .line 406
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20d

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 407
    const-string v11, "PrimarySubscription"

    .line 408
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20e

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 409
    const-string v11, "EAP"

    .line 410
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x211

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 411
    const-string v11, "0"

    .line 412
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0xe4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 414
    move-object v11, p1

    .line 415
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x218

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 416
    new-array v8, v2, [B

    .line 417
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

    .line 418
    .local v12, strBuf:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

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

    .line 419
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
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

    .line 421
    .local v13, strTlv:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

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

    .line 422
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v3, "in realm OdbWriteReq is callled"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbWriteReq([B)I

    move-result v10

    .line 424
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

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

    .line 425
    const/4 v7, 0x1

    .line 426
    .local v7, SUCCESS:I
    if-ne v10, v7, :cond_178

    .line 428
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v3, "in realm OdbWriteReq is success waiting for intent"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :goto_177
    return-void

    .line 433
    :cond_178
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v3, " realm OdbWriteReq for REALM failed"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_177
.end method


# virtual methods
.method ReadRmRequest()V
    .registers 15

    .prologue
    .line 269
    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 270
    .local v1, byReq:[B
    const/4 v2, 0x0

    .line 271
    .local v2, nIndex:I
    const/16 v9, 0x100

    .line 273
    .local v9, nBufferLen:I
    const/4 v10, -0x1

    .line 274
    .local v10, nRet:I
    const-string v11, "WiMAXSupp"

    .line 275
    .local v11, sValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/16 v3, 0x100

    const/16 v4, 0x1f4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 276
    const-string v11, "Operator"

    .line 277
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x1f5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 278
    const-string v11, "Sprint"

    .line 279
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0xe4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 280
    const-string v11, "SubscriptionParameters"

    .line 281
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20d

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 282
    const-string v11, "PrimarySubscription"

    .line 283
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x20e

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 284
    const-string v11, "EAP"

    .line 285
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x211

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 286
    const-string v11, "0"

    .line 287
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0xe4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 288
    const-string v11, "REALM"

    .line 289
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    sub-int v3, v9, v2

    const/16 v4, 0x218

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/net/fourG/wimax/Wimax4GManager;->makeOdbTlvData([BIIII[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 291
    new-array v8, v2, [B

    .line 292
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

    .line 293
    .local v12, strBuf:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

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

    .line 294
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
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

    .line 296
    .local v13, strTlv:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

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

    .line 297
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v3, "in realm OdbReadReq is callled"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->OdbReadReq([B)I

    move-result v10

    .line 299
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

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

    .line 300
    const/4 v7, 0x1

    .line 301
    .local v7, SUCCESS:I
    if-ne v10, v7, :cond_179

    .line 303
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v3, "in realm odbReadReq is success waiting for intent"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_178
    return-void

    .line 308
    :cond_179
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v3, "realm odbReadReq failed"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_178
.end method

.method createRlmDlg()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 356
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 357
    .local v0, dialog:Landroid/app/Dialog;
    const v1, 0x7f03000f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 358
    const-string v1, "Add REALM Value"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 359
    const v1, 0x7f0800d8

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->rlmText:Landroid/widget/EditText;

    .line 360
    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->rlmText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 361
    const v1, 0x7f0800d2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->okBtn:Landroid/widget/Button;

    .line 362
    const v1, 0x7f0800d3

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->CancelBtn:Landroid/widget/Button;

    .line 363
    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->okBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/wimax/napid/RealmActivity;->mOkListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->CancelBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/wimax/napid/RealmActivity;->mCancelListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 366
    return-object v0
.end method

.method public handleWimaxStateChange(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    .line 455
    const-string v2, "WimaxState"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 456
    .local v0, ordinal:I
    invoke-static {}, Landroid/net/fourG/wimax/WimaxState;->values()[Landroid/net/fourG/wimax/WimaxState;

    move-result-object v2

    aget-object v1, v2, v0

    .line 458
    .local v1, wimaxState:Landroid/net/fourG/wimax/WimaxState;
    iget-object v2, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

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

    .line 460
    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v1, v2, :cond_40

    .line 463
    iget-object v2, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v3, "Rlm DisConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-direct {p0}, Lcom/samsung/wimax/napid/RealmActivity;->getMruWorkingStatus()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 467
    iget-object v2, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v3, "in Rlm handleWimaxStateChange calling  checkwimaxsate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-direct {p0}, Lcom/samsung/wimax/napid/RealmActivity;->checkWimaxStateAndUpdate()V

    .line 473
    :cond_40
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v1, "onconfig change called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 521
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 228
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/RealmActivity;->setContentView(I)V

    .line 229
    const v0, 0x7f0800ec

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/RealmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mRmValue:Landroid/widget/TextView;

    .line 231
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 232
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "id"

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_c

    .line 346
    const/4 v0, 0x0

    .line 348
    :goto_5
    return-object v0

    .line 342
    :pswitch_6
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/RealmActivity;->createRlmDlg()Landroid/app/Dialog;

    move-result-object v0

    .line 343
    goto :goto_5

    .line 340
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

    .line 315
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 316
    const-string v0, "WRITE Rlm"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 323
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 324
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 331
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 327
    :pswitch_c
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/RealmActivity;->showRlmDlg()V

    .line 328
    const/4 v0, 0x1

    goto :goto_b

    .line 324
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

    .line 259
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 260
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause is callled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GManager;->setMruWorking(Z)V

    .line 262
    invoke-direct {p0, v2}, Lcom/samsung/wimax/napid/RealmActivity;->setMruWorkingStatus(Z)V

    .line 263
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/RealmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimaxRmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 265
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 238
    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->TAG:Ljava/lang/String;

    const-string v2, "onResume is callled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 241
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimaxRmRespFilter:Landroid/content/IntentFilter;

    .line 242
    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimaxRmRespFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wimax.WIMAX_RESPONSE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimaxRmRespFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/samsung/wimax/napid/RealmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimaxRmReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/wimax/napid/RealmActivity;->mWimaxRmRespFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    invoke-direct {p0}, Lcom/samsung/wimax/napid/RealmActivity;->CheckWimaxOn()Z

    move-result v1

    if-nez v1, :cond_38

    .line 247
    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->mRmValue:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :goto_37
    return-void

    .line 250
    :cond_38
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->type:I

    .line 251
    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 252
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/wimax/napid/RealmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_37
.end method

.method public showRlmDlg()V
    .registers 2

    .prologue
    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/napid/RealmActivity;->showDialog(I)V

    .line 337
    return-void
.end method
