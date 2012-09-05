.class public Lcom/samsung/wimax/wibropath/WiBroPath;
.super Landroid/app/Activity;
.source "WiBroPath.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final PDA:[B = null

.field public static final RET_FAIL:I = 0x0

.field public static final RET_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Java MSG"

.field private static final USB_PATH:Ljava/lang/String; = "/sys/class/sec/switch/usb_sel"

.field private static final WiMAX:[B


# instance fields
.field private cm:Landroid/net/ConnectivityManager;

.field private mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

.field public m_bOpenDevice:Z

.field public m_bpoweron:Z

.field natives:Lcom/samsung/wimax/wibropath/WiBroNative;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/samsung/wimax/wibropath/WiBroPath;->PDA:[B

    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_18

    sput-object v0, Lcom/samsung/wimax/wibropath/WiBroPath;->WiMAX:[B

    return-void

    .line 37
    nop

    :array_12
    .array-data 0x1
        0x50t
        0x44t
        0x41t
        0x0t
    .end array-data

    .line 38
    :array_18
    .array-data 0x1
        0x57t
        0x49t
        0x4dt
        0x41t
        0x58t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    new-instance v0, Lcom/samsung/wimax/wibropath/WiBroNative;

    invoke-direct {v0}, Lcom/samsung/wimax/wibropath/WiBroNative;-><init>()V

    iput-object v0, p0, Lcom/samsung/wimax/wibropath/WiBroPath;->natives:Lcom/samsung/wimax/wibropath/WiBroNative;

    .line 34
    iput-boolean v1, p0, Lcom/samsung/wimax/wibropath/WiBroPath;->m_bOpenDevice:Z

    .line 35
    iput-boolean v1, p0, Lcom/samsung/wimax/wibropath/WiBroPath;->m_bpoweron:Z

    return-void
.end method

.method private CheckWimaxOn()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 254
    const-string v2, "Java MSG"

    const-string v3, "CheckWimaxOn"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v2, p0, Lcom/samsung/wimax/wibropath/WiBroPath;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 258
    const-string v2, "Java MSG"

    const-string v3, "WiMAX modem is ON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v2, p0, Lcom/samsung/wimax/wibropath/WiBroPath;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2, v1}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 260
    iput-boolean v0, p0, Lcom/samsung/wimax/wibropath/WiBroPath;->m_bpoweron:Z

    .line 269
    :goto_1f
    return v0

    .line 267
    :cond_20
    const-string v0, "Java MSG"

    const-string v2, "WiMAX modem is OFF"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iput-boolean v1, p0, Lcom/samsung/wimax/wibropath/WiBroPath;->m_bpoweron:Z

    move v0, v1

    .line 269
    goto :goto_1f
.end method


# virtual methods
.method public CloseDevice()V
    .registers 4

    .prologue
    .line 291
    const-string v1, "Java MSG"

    const-string v2, "closeDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v1, p0, Lcom/samsung/wimax/wibropath/WiBroPath;->natives:Lcom/samsung/wimax/wibropath/WiBroNative;

    invoke-virtual {v1}, Lcom/samsung/wimax/wibropath/WiBroNative;->closeDevice()I

    move-result v0

    .line 294
    .local v0, close:I
    if-nez v0, :cond_1a

    .line 295
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/wimax/wibropath/WiBroPath;->m_bOpenDevice:Z

    .line 296
    const-string v1, "Java MSG"

    const-string v2, "CloseDevice success!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :goto_19
    return-void

    .line 299
    :cond_1a
    const-string v1, "Java MSG"

    const-string v2, "CloseDevice fail!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method public CloseDriver()V
    .registers 4

    .prologue
    .line 304
    const-string v1, "Java MSG"

    const-string v2, "closeDriver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v1, p0, Lcom/samsung/wimax/wibropath/WiBroPath;->natives:Lcom/samsung/wimax/wibropath/WiBroNative;

    invoke-virtual {v1}, Lcom/samsung/wimax/wibropath/WiBroNative;->closeDriver()I

    move-result v0

    .line 307
    .local v0, CloseDri:I
    if-nez v0, :cond_17

    .line 308
    const-string v1, "Java MSG"

    const-string v2, "closeDriver success!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :goto_16
    return-void

    .line 311
    :cond_17
    const-string v1, "Java MSG"

    const-string v2, "closeDriver fail!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public OpenDevice()V
    .registers 4

    .prologue
    .line 275
    const-string v1, "Java MSG"

    const-string v2, "OpenDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/samsung/wimax/wibropath/WiBroPath;->natives:Lcom/samsung/wimax/wibropath/WiBroNative;

    invoke-virtual {v1}, Lcom/samsung/wimax/wibropath/WiBroNative;->openDevice()I

    move-result v0

    .line 278
    .local v0, open:I
    if-nez v0, :cond_22

    .line 279
    const-string v1, "Open Driver Failed"

    const/16 v2, 0x1388

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 280
    const-string v1, "Java MSG"

    const-string v2, "OpenDevice fail!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_21
    return-void

    .line 283
    :cond_22
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/wimax/wibropath/WiBroPath;->m_bOpenDevice:Z

    .line 285
    const-string v1, "Java MSG"

    const-string v2, "OpenDevice success!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public onClick(Landroid/view/View;)V
    .registers 17
    .parameter "v"

    .prologue
    .line 90
    const v12, 0x7f080113

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/wibropath/WiBroPath;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    .line 91
    .local v9, sdio_mode:Landroid/widget/RadioButton;
    const v12, 0x7f080117

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/wibropath/WiBroPath;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RadioButton;

    .line 92
    .local v11, wtm_mode:Landroid/widget/RadioButton;
    const v12, 0x7f080114

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/wibropath/WiBroPath;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 93
    .local v2, dm_mode:Landroid/widget/RadioButton;
    const v12, 0x7f080118

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/wibropath/WiBroPath;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    .line 94
    .local v10, usb_mode:Landroid/widget/RadioButton;
    const v12, 0x7f080119

    invoke-virtual {p0, v12}, Lcom/samsung/wimax/wibropath/WiBroPath;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 98
    .local v0, auth_mode:Landroid/widget/RadioButton;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v12

    packed-switch v12, :pswitch_data_25a

    .line 232
    :goto_34
    return-void

    .line 131
    :pswitch_35
    const/4 v12, 0x5

    new-array v7, v12, [Landroid/widget/RadioButton;

    const/4 v12, 0x0

    aput-object v9, v7, v12

    const/4 v12, 0x1

    aput-object v11, v7, v12

    const/4 v12, 0x2

    aput-object v2, v7, v12

    const/4 v12, 0x3

    aput-object v10, v7, v12

    const/4 v12, 0x4

    aput-object v0, v7, v12

    .line 132
    .local v7, oRadioBtn:[Landroid/widget/RadioButton;
    const/4 v12, 0x5

    new-array v6, v12, [I

    fill-array-data v6, :array_260

    .line 133
    .local v6, nMode:[I
    const/4 v12, 0x5

    new-array v8, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "SDIO"

    aput-object v13, v8, v12

    const/4 v12, 0x1

    const-string v13, "WTM"

    aput-object v13, v8, v12

    const/4 v12, 0x2

    const-string v13, "DM"

    aput-object v13, v8, v12

    const/4 v12, 0x3

    const-string v13, "USB"

    aput-object v13, v8, v12

    const/4 v12, 0x4

    const-string v13, "AUTH"

    aput-object v13, v8, v12

    .line 134
    .local v8, sMsg:[Ljava/lang/String;
    const/4 v12, 0x5

    new-array v1, v12, [Z

    fill-array-data v1, :array_26e

    .line 135
    .local v1, bSetUSB:[Z
    const/4 v5, 0x0

    .line 136
    .local v5, nIndex:I
    const/4 v5, 0x0

    :goto_71
    array-length v12, v6

    if-gt v5, v12, :cond_77

    .line 138
    const/4 v12, 0x5

    if-ne v5, v12, :cond_8c

    .line 144
    :cond_77
    const/4 v12, 0x5

    if-ne v5, v12, :cond_97

    .line 145
    const-string v12, "Please select the WiMAX mode. "

    const/4 v13, 0x1

    invoke-static {p0, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 146
    const-string v12, "Java MSG"

    const-string v13, "Please select the WiMAX mode. "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 140
    :cond_8c
    aget-object v12, v7, v5

    invoke-virtual {v12}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v12

    if-nez v12, :cond_77

    .line 136
    add-int/lit8 v5, v5, 0x1

    goto :goto_71

    .line 151
    :cond_97
    const-string v12, "Java MSG"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "rahul Start to change "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v8, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mode"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v12

    iput-object v12, p0, Lcom/samsung/wimax/wibropath/WiBroPath;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 160
    invoke-direct {p0}, Lcom/samsung/wimax/wibropath/WiBroPath;->CheckWimaxOn()Z

    move-result v12

    if-eqz v12, :cond_d4

    .line 161
    :cond_c3
    iget-boolean v12, p0, Lcom/samsung/wimax/wibropath/WiBroPath;->m_bpoweron:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_d1

    .line 170
    iget-object v12, p0, Lcom/samsung/wimax/wibropath/WiBroPath;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v12}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c3

    .line 173
    :cond_d1
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/samsung/wimax/wibropath/WiBroPath;->m_bpoweron:Z

    .line 176
    :cond_d4
    aget-object v12, v7, v5

    invoke-virtual {v12}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_246

    .line 177
    aget v12, v6, v5

    if-eqz v12, :cond_e5

    aget v12, v6, v5

    const/4 v13, 0x4

    if-ne v12, v13, :cond_1aa

    .line 180
    :cond_e5
    aget v12, v6, v5

    if-nez v12, :cond_155

    .line 181
    iget-object v12, p0, Lcom/samsung/wimax/wibropath/WiBroPath;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/net/fourG/wimax/Wimax4GManager;->setWimaxMode(IZ)I

    .line 185
    :goto_f0
    iget-object v12, p0, Lcom/samsung/wimax/wibropath/WiBroPath;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 186
    const/4 v4, 0x0

    .line 187
    .local v4, n:I
    :goto_f7
    const/16 v12, 0x1e

    if-ge v4, v12, :cond_108

    .line 191
    const-wide/16 v12, 0xc8

    :try_start_fd
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_100
    .catch Ljava/lang/InterruptedException; {:try_start_fd .. :try_end_100} :catch_15d

    .line 196
    :goto_100
    iget-object v12, p0, Lcom/samsung/wimax/wibropath/WiBroPath;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v12}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v12

    if-eqz v12, :cond_162

    .line 200
    :cond_108
    iget-object v12, p0, Lcom/samsung/wimax/wibropath/WiBroPath;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v12}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v12

    if-eqz v12, :cond_165

    .line 201
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Chnage to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v8, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mode Success"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {p0, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 202
    const-string v12, "Java MSG"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Change to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v8, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mode Success"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    .line 183
    .end local v4           #n:I
    :cond_155
    iget-object v12, p0, Lcom/samsung/wimax/wibropath/WiBroPath;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v13, 0x3

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/net/fourG/wimax/Wimax4GManager;->setWimaxMode(IZ)I

    goto :goto_f0

    .line 192
    .restart local v4       #n:I
    :catch_15d
    move-exception v3

    .line 194
    .local v3, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_100

    .line 198
    .end local v3           #e1:Ljava/lang/InterruptedException;
    :cond_162
    add-int/lit8 v4, v4, 0x1

    goto :goto_f7

    .line 205
    :cond_165
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Chnage to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v8, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mode failed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {p0, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 206
    const-string v12, "Java MSG"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Change to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v8, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mode failed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    .line 212
    .end local v4           #n:I
    :cond_1aa
    iget-object v12, p0, Lcom/samsung/wimax/wibropath/WiBroPath;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/net/fourG/wimax/Wimax4GManager;->setWimaxMode(IZ)I

    .line 214
    iget-object v12, p0, Lcom/samsung/wimax/wibropath/WiBroPath;->natives:Lcom/samsung/wimax/wibropath/WiBroNative;

    aget v13, v6, v5

    invoke-virtual {v12, v13}, Lcom/samsung/wimax/wibropath/WiBroNative;->wibropathchange(I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_201

    .line 216
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Chnage to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v8, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mode Success"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {p0, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 217
    const-string v12, "Java MSG"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Chnage to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v8, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mode Success"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    .line 220
    :cond_201
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Chnage to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v8, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mode failed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {p0, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 221
    const-string v12, "Java MSG"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Chnage to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v8, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mode failed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    .line 226
    :cond_246
    const-string v12, "Please select the WiMAX mode. "

    const/4 v13, 0x1

    invoke-static {p0, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 227
    const-string v12, "Java MSG"

    const-string v13, "Please select the WiMAX mode. "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    .line 98
    nop

    :pswitch_data_25a
    .packed-switch 0x7f080115
        :pswitch_35
    .end packed-switch

    .line 132
    :array_260
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 134
    :array_26e
    .array-data 0x1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    move-object v0, p0

    .line 68
    .local v0, cxt:Landroid/content/Context;
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/samsung/wimax/wibropath/WiBroPath;->cm:Landroid/net/ConnectivityManager;

    .line 69
    const-string v2, "Java MSG"

    const-string v3, "rahul: onCreate!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const v2, 0x7f030020

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/wibropath/WiBroPath;->setContentView(I)V

    .line 72
    const v2, 0x7f080115

    invoke-virtual {p0, v2}, Lcom/samsung/wimax/wibropath/WiBroPath;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 73
    .local v1, ok:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 324
    const-string v0, "Java MSG"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 329
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 316
    const-string v0, "Java MSG"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 319
    return-void
.end method

.method protected setUSBTo(Z)V
    .registers 8
    .parameter "enable"

    .prologue
    .line 235
    if-eqz p1, :cond_16

    .line 236
    sget-object v0, Lcom/samsung/wimax/wibropath/WiBroPath;->WiMAX:[B

    .line 240
    .local v0, data:[B
    :goto_4
    const/4 v2, 0x0

    .line 242
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_5
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/class/sec/switch/usb_sel"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_28
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_1c

    .line 243
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_c
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_31
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_34

    .line 247
    if-eqz v3, :cond_37

    .line 248
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_19

    move-object v2, v3

    .line 251
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :cond_15
    :goto_15
    return-void

    .line 238
    .end local v0           #data:[B
    .end local v2           #out:Ljava/io/FileOutputStream;
    :cond_16
    sget-object v0, Lcom/samsung/wimax/wibropath/WiBroPath;->PDA:[B

    .restart local v0       #data:[B
    goto :goto_4

    .line 248
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_19
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_15

    .line 244
    :catch_1c
    move-exception v1

    .line 245
    .local v1, e:Ljava/io/IOException;
    :goto_1d
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_28

    .line 247
    if-eqz v2, :cond_15

    .line 248
    :try_start_22
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_15

    :catch_26
    move-exception v4

    goto :goto_15

    .line 247
    .end local v1           #e:Ljava/io/IOException;
    :catchall_28
    move-exception v4

    :goto_29
    if-eqz v2, :cond_2e

    .line 248
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    :cond_2e
    :goto_2e
    throw v4

    :catch_2f
    move-exception v5

    goto :goto_2e

    .line 247
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catchall_31
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_29

    .line 244
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_34
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_1d

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :cond_37
    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_15
.end method
